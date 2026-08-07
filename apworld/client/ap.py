"""Runtime client for communicating with the AP server. Requires core imports."""
from typing import Sequence, cast, Iterable, Any, IO
import asyncio
import sys
import multiprocessing
from collections import Counter
from dataclasses import dataclass, field
import time
import os
import shutil
import time
import tomllib
import colorama

from CommonClient import CommonContext, server_loop, ClientCommandProcessor, gui_enabled, get_base_parser, handle_url_arg
from NetUtils import NetworkItem, ClientStatus, JSONtoTextParser, JSONMessagePart
from Utils import async_start

from ..world import Wc3World
from ..data.locations import Wc3Location, global_location_id
from ..data import items, heroes, missions, locations, mission_orders
from ..data.game_ids import GameID
from .. import logger, options
from ..generation import gen_slot_data
from . import comm


@dataclass(slots=True)
class MissionRequirement:
    missions_: list[missions.Wc3Mission] = field(default_factory=list)
    items_: list[items.Wc3Item] = field(default_factory=list)
    subrules: list['MissionRequirement'] = field(default_factory=list)
    amount: int = 1

    def evaluate(
        self,
        completed_missions: Iterable[missions.Wc3Mission | int],
        held_items: Counter[items.Wc3Item],
    ) -> int:
        """Returns the surplus amount; >=0 means the rule is satisfied"""
        count = 0
        for mission in self.missions_:
            if mission in completed_missions:
                count += 1
        for item in self.items_:
            count += held_items[item]
        for subrule in self.subrules:
            if subrule.evaluate(completed_missions, held_items) >= 0:
                count += 1
        return count - self.amount


def slot_data_to_requirement(
    slot: str,
    slot_data: gen_slot_data.RequirementSlotData
) -> MissionRequirement | None:
    result = MissionRequirement()
    result.amount = slot_data.get("amount", 0)
    if result.amount == 0:
        return None
    for mission_id in slot_data.get("missions", ()):
        mission = missions.ID_TO_MISSION.get(mission_id)
        if mission is None:
            logger.warning(f"Mission order slot '{slot}' required unknown mission ID {mission_id}, skipping")
            continue
        result.missions_.append(missions.ID_TO_MISSION[mission_id])
    for item_id in slot_data.get("items", ()):
        item = items.ID_TO_ITEM.get(item_id)
        if item is None:
            logger.warning(f"Mission order slot '{slot}' required unknown item ID {item_id}, skipping")
            continue
        result.items_.append(items.ID_TO_ITEM[item_id])
    for subrule_data in slot_data.get("groups", ()):
        subrule = slot_data_to_requirement(slot, subrule_data)
        if subrule is None:
            if result.amount > 0:
                result.amount -= 1
        else:
            result.subrules.append(subrule)
    if result.amount < 0:
        result.amount = (
            len(result.items_)
            + len(result.missions_)
            + len(result.subrules)
            + result.amount
            + 1
        )
    return result


def requirement_to_item_mission_requirements(
    requirement: MissionRequirement,
    missions_result: set[missions.Wc3Mission],
    items_result: set[items.Wc3Item],
) -> None:
    for mission in requirement.missions_:
        missions_result.add(mission)
    for item in requirement.items_:
        items_result.add(item)
    for subrequirement in requirement.subrules:
        requirement_to_item_mission_requirements(subrequirement, missions_result, items_result)


class Wc3CommandProcessor(ClientCommandProcessor):
    ctx: 'Wc3Context'

    def _cmd_setup(self) -> None:
        """Sets up the registry to play on 1.29 or older. Windows-only"""
        if sys.platform != "win32":
            logger.info(
                "Cannot perform registry operations outside Windows. You must set the "
                r"'HKEY_CURRENT_USER\Software\Blizzard Entertainment\Warcraft III\Allow Local Files' key "
                "to 1 manually"
            )
            return
        import winreg
        wc3_key = winreg.CreateKey(
            winreg.HKEY_CURRENT_USER,
            r'Software\Blizzard Entertainment\Warcraft III'
        )
        winreg.SetValueEx(wc3_key, 'Allow Local Files', 0, winreg.REG_DWORD, 1)
        logger.info("Set up registry key to allow communication on wc3 1.29")

    def _cmd_unlock_missions(self) -> None:
        """Debug command to unlock all missions"""
        for _, mission_info in self.ctx.comm_ctx.game_status.mission_order.items():
            mission_info.availability = comm.MissionAvailability.AVAILABLE
        self.ctx.comm_ctx.game_status.pending_update |= comm.PacketType.MISSIONS

    def _cmd_debug(self, key: str) -> None:
        """Debug: prints current value of a member of the communication client"""
        parts = key.split('.')
        current: dict | list | object = self.ctx.comm_ctx
        for index, part in enumerate(parts):
            if part.isnumeric():
                part = int(part)  # type: ignore
            if isinstance(current, dict):
                try:
                    current = current[part]
                except KeyError:
                    logger.warning(f'Dict member {".".join(parts[:index])} has no key {part}')
                    logger.warning(f'Valid keys are: {list(current)}')  # type: ignore
                    return
            elif isinstance(current, list):
                try:
                    current = current[int(part)]
                except IndexError:
                    logger.warning(f'List member {".".join(parts[:index])} has no index {part}')
                    logger.warning(f'The length of the member is: {len(current)}')  # type: ignore [arg-type]
                    return
            else:
                try:
                    current = getattr(current, part)
                except AttributeError:
                    logger.warning(f'Object member {".".join(parts[:index])} has no member {part}')
                    logger.warning(f'Valid attributes are: {[x for x in dir(current) if not x.startswith("_")]}')
                    return
        logger.info(current)
        return

    def _cmd_save(self) -> None:
        """Save the hero state to a local file"""
        save_hero_state(self.ctx.comm_ctx.game_status)
        return

    def _cmd_load(self) -> None:
        """Load the hero state from a local file"""
        load_hero_state(self.ctx.comm_ctx.game_status)
        return


class Wc3Context(CommonContext):
    game = Wc3World.game
    command_processor = Wc3CommandProcessor
    items_handling = 0b111

    def __init__(self, *args, **kwargs) -> None:
        super().__init__(*args, **kwargs)
        self.generation_version = (-1, -1, -1)
        self.message_parser = Wc3JSONtoTextParser(self)
        self.comm_ctx = comm.AsyncContext(True, client_interface=self)
        self.bonus_mercenary_camps = options.BonusMercenaryCamps.default
        self.goal_locations: dict[locations.Wc3Location | int, int] = {}
        # Mission unlock requirements
        self.held_items: Counter[items.Wc3Item] = Counter()
        self.completed_missions: set[int] = set()
        self.mission_to_slot: dict[missions.Wc3Mission | int, tuple[int, int]] = {}
        self.mission_to_requirement: dict[tuple[int, int], MissionRequirement] = {}
        self.mission_unlock_effects: dict[missions.Wc3Mission | int, list[tuple[int, int]]] = {}
        self.item_unlock_effects: dict[items.Wc3Item | int, list[tuple[int, int]]] = {}
        # Inter-client communication
        self.last_notification_bounce_value = 0

    async def server_auth(self, password_requested: bool = False) -> None:
        self.game = Wc3World.game
        if password_requested and not self.password:
            await super(Wc3Context, self).server_auth(password_requested)
        await self.get_username()
        await self.send_connect()

    def on_package(self, cmd: str, args: dict) -> None:
        if cmd == "Connected":
            self._handle_connected(args)
        elif cmd == "ReceivedItems":
            self._handle_received_items(args)
        elif cmd == "Retrieved":
            self._handle_retrieved_data(args)
        elif cmd == "Bounced":
            self._handle_bounced(args)

    def on_print_json(self, args: dict) -> None:
        super().on_print_json(args)

        # goes to this world
        if "receiving" in args and self.slot_concerns_self(args["receiving"]):
            relevant = True
        # found in this world
        elif "item" in args and self.slot_concerns_self(args["item"].player):
            relevant = True
        # not related
        else:
            relevant = False

        if relevant:
            self.comm_ctx.game_status.pending_messages.append(self.message_parser(args["data"]))
            self.comm_ctx.game_status.pending_update |= comm.PacketType.MESSAGES

    def _handle_connected(self, args: dict) -> None:
        slot_data: gen_slot_data.Wc3SlotData = args["slot_data"]
        self.generation_version = (
            slot_data["version_public"],
            slot_data["version_major"],
            slot_data["version_minor"],
        )
        self.comm_ctx.game_status.world_id = slot_data["world_id"]
        self.comm_ctx.game_status.settings.extra_merc_camps = slot_data["bonus_mercenary_camps"]
        self.comm_ctx.game_status.mercenary_allocation.clear()
        for mission_id, allocation_data in slot_data["mercenary_allocation"].items():
            allocation: dict[int, GameID] = {}
            mission = missions.ID_TO_MISSION[int(mission_id)]
            self.comm_ctx.game_status.mercenary_allocation[mission] = allocation
            for key, value in allocation_data.items():
                if value not in GameID:
                    logger.warning(
                        f"Slot data for mission {mission.mission_name} held unrecognized mercenary ID "
                        f"'{value}', skipping slot {key}"
                    )
                    continue
                allocation[int(key)] = cast(GameID, value)
        self.comm_ctx.game_status.hero_data = comm.init_hero_data()
        self.comm_ctx.game_status.item_channel_state = comm.init_item_channels()
        for hero_id, hero_class_id in slot_data["hero_class"].items():
            self.comm_ctx.game_status.hero_data[int(hero_id)].hero = heroes.HERO_CHOICE_ID_TO_DATA[hero_class_id]
            self.comm_ctx.game_status.hero_data[int(hero_id)].reset_abils()
        for hero_id, hero_name in slot_data["hero_names"].items():
            self.comm_ctx.game_status.hero_data[int(hero_id)].name = hero_name
        load_hero_state(self.comm_ctx.game_status)

        # Mission Order
        self.comm_ctx.game_status.mission_order.clear()
        self.mission_to_requirement.clear()
        self.goal_locations.clear()
        self.item_unlock_effects.clear()
        self.mission_unlock_effects.clear()
        self.held_items.clear()
        self.completed_missions.clear()
        self.mission_to_slot.clear()
        mission_ids: list[int] = []
        for position_tuple, mission_slot_data in slot_data["mission_order"].items():
            parts = position_tuple.split(",")
            if len(parts) != 2:
                logger.warning(f"Mission order data is corrupted; skipping slot {position_tuple}")
                continue
            try:
                x = int(parts[0])
                y = int(parts[1])
            except ValueError:
                logger.warning(f"Mission order data is corrupted; skipping slot {position_tuple}")
                continue
            mission_id = mission_slot_data.get("mission", 0)
            if mission_id not in missions.ID_TO_MISSION:
                logger.warning(f"Mission order slot data held unknown mission ID {mission_id}, skipping")
                continue
            mission_ids.append(mission_id)
            mission = missions.ID_TO_MISSION[mission_id]
            self.mission_to_slot[mission] = (x, y)
            slot_info = comm.MissionSlotInfo(mission)
            self.comm_ctx.game_status.mission_order[x, y] = slot_info
            flags = mission_slot_data.get("flags", 0)
            if mission_orders.FLAG_GOAL & flags:
                self.goal_locations[locations.MISSION_TO_VICTORY_LOCATION[mission]] = 0
            if "requirements" in mission_slot_data:
                requirement = slot_data_to_requirement(position_tuple, mission_slot_data["requirements"])
                if requirement is not None:
                    self.mission_to_requirement[x, y] = requirement
                    slot_info.availability = comm.MissionAvailability.LOCKED
                    affecting_missions: set[missions.Wc3Mission] = set()
                    affecting_items: set[items.Wc3Item] = set()
                    requirement_to_item_mission_requirements(requirement, affecting_missions, affecting_items)
                    for affecting_mission in affecting_missions:
                        self.mission_unlock_effects.setdefault(affecting_mission, []).append((x, y))
                    for affecting_item in affecting_items:
                        self.item_unlock_effects.setdefault(affecting_item, []).append((x, y))

        # Request mission completion state
        async_start(self.send_msgs([{
            "cmd": "Get",
            "keys": [
                f"wc3.{self.slot}.missions_beaten.{mission_id}"
                for mission_id in mission_ids
            ],
        }]))

        # Finalize
        self.comm_ctx.game_status.is_victorious = False
        self.comm_ctx.game_status.do_startup = True
        logger.info(f"Connected. World version {self.generation_version}")

    def _handle_received_items(self, args: dict) -> None:
        received_items: list[NetworkItem] = args["items"]
        for received_item in received_items:
            item_data = items.ID_TO_ITEM[received_item.item]
            if (isinstance(item_data.type, items.Building)
                or isinstance(item_data.type, items.Unit)
                or isinstance(item_data.type, items.ShopItem)
            ):
                self.comm_ctx.game_status.inventory.add_tech_and_prereqs(item_data.type.game_id)
                self.comm_ctx.game_status.pending_update |= comm.PacketType.UNLOCKS
            elif (isinstance(item_data.type, items.Upgrade)
                or isinstance(item_data.type, items.CaptainPromotion)
            ):
                self.comm_ctx.game_status.inventory.add_tech_and_prereqs(item_data.type.game_id, 1)
                self.comm_ctx.game_status.pending_update |= comm.PacketType.UNLOCKS
            elif isinstance(item_data.type, items.Resources):
                self.comm_ctx.game_status.inventory.tech[item_data.type.game_id] += item_data.type.amount
                self.comm_ctx.game_status.pending_update |= comm.PacketType.UNLOCKS
            elif isinstance(item_data.type, items.Level):
                self.comm_ctx.game_status.hero_data[item_data.type.slot].max_level += 1
                self.comm_ctx.game_status.pending_update |= comm.PacketType.HERO_LEVEL
            elif isinstance(item_data.type, items.PickupItem):
                self.comm_ctx.game_status.item_channel_state[item_data.type.channel].items_received.append(item_data.type.game_id)
            elif isinstance(item_data.type, items.QuestItem):
                self.comm_ctx.game_status.inventory.tech[item_data.type.gameid] += 1
                self.comm_ctx.game_status.pending_update |= comm.PacketType.UNLOCKS
            elif isinstance(item_data.type, items.Mercenary):
                self.comm_ctx.game_status.inventory.mercenaries.add(item_data.type.game_id)
                self.comm_ctx.game_status.pending_update |= comm.PacketType.MERCENARIES
            else:
                logger.error(f"Received unknown item type: {item_data.type}")

            self.held_items[item_data] += 1

            self.evaluate_requirements(self.item_unlock_effects.get(item_data, []))

    def _handle_retrieved_data(self, args: dict) -> None:
        key_values = args.get("keys", {})
        local_prefix = f"wc3.{self.slot}."
        for key, value in key_values.items():
            if not key.startswith(local_prefix):
                continue
            local_key = key[len(local_prefix):]
            if local_key.startswith("missions_beaten"):
                if value is None:
                    continue
                raw_mission_id = local_key.split(".")[1]
                try:
                    mission_id = int(raw_mission_id)
                except ValueError:
                    continue
                if mission_id not in self.completed_missions:
                    self.set_mission_beaten(mission_id)
                    self.evaluate_requirements(self.mission_unlock_effects.get(mission_id, []))

    def _handle_bounced(self, args: dict) -> None:
        sender = args.get("id", -1)
        if sender == self.last_notification_bounce_value:
            return
        reason = args.get("reason", "")
        if reason == "mission":
            mission_id = args.get("mission")
            if mission_id is not None and isinstance(mission_id, int):
                self.set_mission_beaten(mission_id)
                self.evaluate_requirements(self.mission_unlock_effects.get(mission_id, []))


    def on_location_received(self, mission_id: int, location_ids: list[int]) -> None:
        global_locations: list[int] = []
        mission_slot = self.comm_ctx.game_status.mission_order[self.mission_to_slot[mission_id]]
        for location_id in location_ids:
            global_location = global_location_id(mission_id, location_id)
            global_locations.append(global_location)
            if location_id == 0:
                for index in range(locations.MAX_VICTORY_CACHE_SIZE):
                    global_locations.append(global_location + locations.VICTORY_CACHE_OFFSET + index)
                if mission_id not in self.completed_missions:
                    self.set_mission_beaten(mission_id)
                    self.signal_mission_beaten(mission_id)
                    self.evaluate_requirements(self.mission_unlock_effects.get(mission_id, []))
        async_start(self.send_msgs([{
            "cmd": "LocationChecks",
            "locations": global_locations,
        }]))
        goal_progress = False
        for location_id in global_locations:
            if not self.goal_locations.get(location_id, 1):
                self.goal_locations[location_id] += 1
                goal_progress = True
        if goal_progress and all(self.goal_locations.values()):
            async_start(self.send_msgs([{
                "cmd": 'StatusUpdate', "status": ClientStatus.CLIENT_GOAL,
            }]))
            self.comm_ctx.game_status.is_victorious = True
        save_hero_state(self.comm_ctx.game_status)

    def evaluate_requirements(self, affected_slots: list[tuple[int, int]]) -> None:
        removal_indices: list[int] = []
        for index, slot_id in enumerate(affected_slots):
            requirement = self.mission_to_requirement[slot_id]
            satisfied = requirement.evaluate(self.completed_missions, self.held_items)
            if satisfied >= 0:
                slot = self.comm_ctx.game_status.mission_order[slot_id]
                if slot.availability == comm.MissionAvailability.LOCKED:
                    slot.availability = comm.MissionAvailability.AVAILABLE
                removal_indices.append(index)
        for index in reversed(removal_indices):
            affected_slots.pop(index)

    def set_mission_beaten(self, mission: int | comm.MissionSlotInfo) -> None:
        if isinstance(mission, int):
            slot_id = self.mission_to_slot[mission]
            mission_slot = self.comm_ctx.game_status.mission_order[slot_id]
            mission_slot.availability = comm.MissionAvailability.BEATEN
            self.completed_missions.add(mission)
        else:
            mission.availability = comm.MissionAvailability.BEATEN
            self.completed_missions.add(mission.mission)

    def signal_mission_beaten(self, mission_id: int) -> None:
        # New ID every 0.5 ms
        self.last_notification_bounce_value = time.time_ns() >> 19
        async_start(self.send_msgs([
            {
                "cmd": "Set",
                "key": f"wc3.{self.slot}.missions_beaten.{mission_id}",
                "operations": [{"operation": "default", "value": time.time()}]
            },
            {
                "cmd": "Bounce",
                "slots": [self.slot],
                "data": {
                    "id": self.last_notification_bounce_value,
                    "reason": "mission",
                    "mission": mission_id,
                }
            },
        ]))

    def check_set_mission_beaten(self, slot: comm.MissionSlotInfo) -> None:
        if locations.MISSION_TO_VICTORY_LOCATION[slot.mission] in self.locations_checked:
            slot.availability = comm.MissionAvailability.BEATEN

    def fetch_locations_collected(self, location_status: dict[int, int], new_mission_id: int) -> None:
        for k in location_status:
            location_status[k] = global_location_id(new_mission_id, k) in self.locations_checked

    def run_gui(self) -> None:
        from .gui import start_gui
        start_gui(self)


def load_hero_state(game_status: comm.GameStatus) -> None:
    save_file_dir = os.path.expanduser("~/Documents/Archipelago")
    save_file_path = f"{save_file_dir}/wc3save.toml"
    if not os.path.isfile(save_file_path):
        logger.debug(f"No save file data found at {save_file_path}")
        return
    try:
        with open(save_file_path, "rb") as fp:
            all_save_data = tomllib.load(fp)
    except tomllib.TOMLDecodeError:
        logger.debug(f"Invalid save data format at {save_file_path}")
        return
    save_data = all_save_data.get(str(game_status.world_id))
    if save_data is None:
        logger.debug(f"No save data for world ID {game_status.world_id} in {save_file_path}")
        return
    if not isinstance(save_data, dict):
        logger.debug(f"Invalid data format for world ID {game_status.world_id} in {save_file_path}")
        return
    all_hero_save_data = save_data.get("heroes", {})
    for hero_id, hero_data in game_status.hero_data.items():
        hero_save_data = all_hero_save_data.get(str(hero_id))
        if not isinstance(hero_save_data, dict):
            hero_save_data = {}
        xp_data = hero_save_data.get("xp")
        if isinstance(xp_data, int):
            hero_data.xp = xp_data
        else:
            level_data = items.HERO_SLOT_TO_LEVEL_ITEM.get(hero_id)
            if level_data is None:
                hero_data.xp = 0
            else:
                assert isinstance(level_data.type, items.Level)
                hero_data.xp = heroes.LEVEL_THRESHOLDS[level_data.type.start_level - 1]
        strength = hero_save_data.get("strength")
        if isinstance(strength, int):
            hero_data.strength = strength
        else:
            hero_data.strength = 0
        agility = hero_save_data.get("agility")
        if isinstance(agility, int):
            hero_data.agility = agility
        else:
            hero_data.agility = 0
        intelligence = hero_save_data.get("intelligence")
        if isinstance(intelligence, int):
            hero_data.intelligence = intelligence
        else:
            hero_data.intelligence = 0
        max_health = hero_save_data.get("max_health")
        if isinstance(max_health, int):
            hero_data.max_health = max_health
        else:
            hero_data.max_health = 0

        # Abilities
        for abil_key in hero_data.abilities:
            hero_data.abilities[abil_key] = 0
        abilities = hero_save_data.get("abilities")
        if isinstance(abilities, dict):
            for abil_key in hero_data.abilities:
                abil_level = abilities.get(abil_key)
                if isinstance(abil_level, int) and abil_level >= 0:
                    hero_data.abilities[abil_key] = abil_level

        # Inventory items
        for current_item in hero_data.items:
            current_item.item_id = ""
            current_item.charges = 0
        inventory_items = hero_save_data.get("items")
        if isinstance(inventory_items, list):
            for index, inventory_item in enumerate(inventory_items):
                hero_data.items[index].item_id = None
                hero_data.items[index].charges = 0
                if not isinstance(inventory_item, dict):
                    continue
                item_id = inventory_item.get("item_id")
                if isinstance(item_id, str) and item_id:
                    typed_item_id: str | GameID
                    try:
                        typed_item_id = GameID(item_id)
                    except ValueError:
                        typed_item_id = item_id
                    hero_data.items[index].item_id = typed_item_id
                charges = inventory_item.get("charges", 0)
                if isinstance(charges, int) and charges >= 0:
                    hero_data.items[index].charges = charges

    all_item_channel_save_data = save_data.get("items", {})
    for item_channel, item_channel_state in game_status.item_channel_state.items():
        item_channel_save_data = all_item_channel_save_data.get(str(item_channel), {})
        item_channel_state.items_acked = item_channel_save_data.get("count", 0)


def save_hero_state(game_status: comm.GameStatus) -> None:
    save_file_dir = os.path.expanduser("~/Documents/Archipelago")
    save_file_path = f"{save_file_dir}/wc3save.toml"
    save_data: dict[str, Any] = {}
    if os.path.isdir(save_file_path):
        logger.debug(f"Save file path {save_file_path} exists as a directory; removing it")
        shutil.rmtree(save_file_path)
    # Load existing save file data
    fp: IO
    if os.path.isfile(save_file_path):
        try:
            with open(save_file_path, "rb") as fp:
                save_data = tomllib.load(fp)
        except tomllib.TOMLDecodeError:
            logger.debug(f"Save data at {save_file_path} could not be read; resetting it")

    this_save_data: dict[str, Any] = save_data.get(str(game_status.world_id), {})

    # Clear keys that have a save time and are more than two months out of date
    now = time.time()
    pop_keys: list[str] = []
    SECONDS_PER_60_DAYS = 60 * 60 * 24 * 60
    for key, value in save_data.items():
        if isinstance(value, dict):
            save_time = value.get("save_time", now)
            if isinstance(save_time, float) and now - save_time > SECONDS_PER_60_DAYS:
                pop_keys.append(key)
    for pop_key in pop_keys:
        save_data.pop(pop_key)

    # Fill save data
    save_data[str(game_status.world_id)] = this_save_data
    this_save_data["save_time"] = now
    # Heroes
    hero_save_data = this_save_data.setdefault("heroes", {})
    for hero, hero_status in game_status.hero_data.items():
        hero_data = {
            "xp": hero_status.xp,
            "strength": hero_status.strength,
            "agility": hero_status.agility,
            "intelligence": hero_status.intelligence,
            "max_health": hero_status.max_health,
            "abilities": hero_status.abilities,
            "items": [
                {"item_id": inventory_item.item_id or "", "charges": inventory_item.charges}
                for inventory_item in hero_status.items
            ]
        }
        hero_save_data[str(hero)] = hero_data
    # Item channels
    item_save_data = this_save_data.setdefault("items", {})
    for item_channel, item_channel_data in game_status.item_channel_state.items():
        if item_channel_data.items_acked:
            item_save_data[str(item_channel)] = {"count": item_channel_data.items_acked}

    # Write the toml
    def write_toml_table(
        keys: list[str],
        table_value: dict[str, Any],
        result_lines: list[str],
        table_levels: int = 2
    ) -> None:
        if keys:
            result_lines.append(f"[{'.'.join(keys)}]")
        for key, value in table_value.items():
            if isinstance(value, dict) and table_levels > 0:
                continue
            write_toml_key(key, value, result_lines)
        if table_levels > 0:
            for key, value in table_value.items():
                if not isinstance(value, dict):
                    continue
                write_toml_table(keys + [key], value, result_lines, table_levels - 1)

    def write_toml_key(key: str, value: Any, result_lines: list[str]) -> None:
        result_lines.append(f"{key} = {write_toml_inline(value)}")

    def write_toml_inline(value: Any) -> str:
        if isinstance(value, bool):
            return str(value).lower()
        if isinstance(value, (int, float)):
            return str(value)
        if isinstance(value, str):
            return f'"{value.replace("\\", "\\\\")}"'
        if isinstance(value, list):
            return f"[\n    {',\n    '.join(write_toml_inline(v) for v in value)},\n]"
        if isinstance(value, dict):
            parts = [f"{key} = {write_toml_inline(v)}" for key, v in value.items()]
            return f"{{ {', '.join(parts)} }}"
        raise ValueError(f"Unknown argument type: {type(value).__name__}")

    result_lines: list[str] = []
    write_toml_table([], save_data, result_lines, table_levels=3)

    os.makedirs(os.path.dirname(save_file_path), exist_ok=True)
    with open(save_file_path, "w") as fp:
        fp.write("\n".join(result_lines))


class Wc3JSONtoTextParser(JSONtoTextParser):
    def __init__(self, ctx: Wc3Context) -> None:
        self.handlers = {
            "ItemSend": self._handle_color,
            "ItemCheat": self._handle_color,
            "Hint": self._handle_color,
        }
        super().__init__(ctx)

    def _handle_color(self, node: JSONMessagePart) -> str:
        codes = node["color"].split(";")
        codes = [code for code in codes if code in self.color_codes]
        if not codes:
            return self._handle_text(node)
        code = codes[0]
        result = f"|cff{self.color_codes[code]}" + self._handle_text(node) + "|r"
        return result


def parse_uri(uri: str) -> str:
    if "://" in uri:
        uri = uri.split("://", 1)[1]
    return uri.split('?', 1)[0]


async def main(cli_args: Sequence[str] | None):
    multiprocessing.freeze_support()
    parser = get_base_parser()
    parser.add_argument('--name', default=None, help="Slot Name to connect as.")
    args, uri = parser.parse_known_args(cli_args)

    if uri and uri[0].startswith('archipelago://'):
        args.url = uri[0]
        handle_url_arg(args, parser)

    ctx = Wc3Context(args.connect, args.password)
    ctx.auth = args.name
    if ctx.server_task is None:
        ctx.server_task = asyncio.create_task(server_loop(ctx), name="ServerLoop")

    if gui_enabled:
        ctx.run_gui()
    ctx.run_cli()

    asyncio.create_task(comm.status_loop(ctx.comm_ctx))

    await ctx.exit_event.wait()
    save_hero_state(ctx.comm_ctx.game_status)
    ctx.comm_ctx.running = False
    await ctx.shutdown()


def launch(*args: str) -> None:
    colorama.init()
    asyncio.run(main(args))
    colorama.deinit()
