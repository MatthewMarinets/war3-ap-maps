"""Runtime client for communicating with the AP server. Requires core imports."""
from typing import Sequence
import asyncio
import multiprocessing
import colorama

from CommonClient import CommonContext, server_loop, ClientCommandProcessor, gui_enabled, get_base_parser, handle_url_arg
from NetUtils import NetworkItem
from Utils import async_start

from ..world import Wc3World
from ..data.locations import Wc3Location, global_location_id
from ..data import items, heroes
from .. import logger
from . import comm


class Wc3CommandProcessor(ClientCommandProcessor):
    ctx: 'Wc3Context'
    
    def _cmd_scan_location(self) -> bool:
        async_start(self.ctx.send_msgs([
            {"cmd": "LocationScouts", "locations": [Wc3Location.HU1_BANDIT_ITEM.id, Wc3Location.HU1_ENLIST_THORNBY.id]}
        ]))
        return True
    
    def _cmd_debug(self, key: str) -> bool:
        parts = key.split('.')
        current: dict|list|object = self.ctx.comm_ctx
        for part in parts:
            if part.isnumeric():
                part = int(part)
            if isinstance(current, dict):
                current = current[part]
            elif isinstance(current, list):
                current = current[int(part)]
            else:
                current = getattr(current, part)
        logger.info(current)
        return True


# await self.ctx.send_msgs([{"cmd": 'LocationChecks', "locations": victory_locations}])
# await self.ctx.send_msgs([{"cmd": 'StatusUpdate', "status": ClientStatus.CLIENT_GOAL}])

class Wc3Context(CommonContext):
    game = Wc3World.game
    command_processor = Wc3CommandProcessor
    comm_ctx: comm.AsyncContext
    items_handling = 0b111

    def __init__(self, *args, **kwargs) -> None:
        super().__init__(*args, **kwargs)
        self.generation_version = (-1, -1)
        self.comm_ctx = comm.AsyncContext(True, client_interface=self)

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

    def _handle_connected(self, args: dict) -> None:
        self.generation_version = (args["slot_data"]["version_major"], args["slot_data"]["version_minor"])
        hero_class: dict[int, int] = args["slot_data"]["hero_class"]
        hero_names: dict[int, str] = args["slot_data"]["hero_names"]
        for hero_id, hero_class_id in hero_class.items():
            self.comm_ctx.game_status.hero_data[int(hero_id)].hero = heroes.HERO_CHOICE_ID_TO_DATA[hero_class_id]
        for hero_id, hero_name in hero_names.items():
            self.comm_ctx.game_status.hero_data[int(hero_id)].name = hero_name
        self.comm_ctx.game_status.world_id = args["slot_data"]["world_id"]
        self.comm_ctx.game_status.do_startup = True
        logger.info(f"Connected. World version {self.generation_version}")

    def _handle_received_items(self, args: dict) -> None:
        received_items: list[NetworkItem] = args["items"]
        for received_item in received_items:
            item_data = items.ID_TO_ITEM[received_item.item]
            if (isinstance(item_data.type, items.Building)
                or isinstance(item_data.type, items.Unit)
                or isinstance(item_data.type, items.Upgrade)
                or isinstance(item_data.type, items.ShopItem)
            ):
                self.comm_ctx.game_status.inventory.add_tech_and_prereqs(item_data.type.game_id)
                self.comm_ctx.game_status.pending_update |= comm.PacketType.UNLOCKS
            elif isinstance(item_data.type, items.Level):
                self.comm_ctx.game_status.hero_data[item_data.type.slot].max_level += 1
                self.comm_ctx.game_status.pending_update |= comm.PacketType.HERO_LEVEL
            elif isinstance(item_data.type, items.PickupItem):
                self.comm_ctx.game_status.item_channel_state[item_data.type.channel].items_received.append(item_data.type.game_id)
            elif isinstance(item_data.type, items.QuestItem):
                self.comm_ctx.game_status.inventory.tech[item_data.type.gameid] += 1
                self.comm_ctx.game_status.pending_update |= comm.PacketType.UNLOCKS
            else:
                logger.error(f"Received unknown item type: {item_data.type}")
    
    def on_location_received(self, mission_id: int, location_ids: list[int]) -> None:
        logger.info(f"Found location {mission_id}:{','.join(map(str, location_ids))}")
        async_start(self.send_msgs([{
            "cmd": "LocationChecks",
            "locations": [global_location_id(mission_id, location_id) for location_id in location_ids],
        }]))
    
    def fetch_locations_collected(self, location_status: dict[int, int], new_mission_id: int) -> None:
        for k in location_status:
            location_status[k] = global_location_id(new_mission_id, k) in self.locations_checked

    def run_gui(self) -> None:
        from .gui import start_gui
        start_gui(self)


def parse_uri(uri: str) -> str:
    if "://" in uri:
        uri = uri.split("://", 1)[1]
    return uri.split('?', 1)[0]


async def main(args: Sequence[str] | None):
    multiprocessing.freeze_support()
    parser = get_base_parser()
    parser.add_argument('--name', default=None, help="Slot Name to connect as.")
    args, uri = parser.parse_known_args(args)

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
    ctx.comm_ctx.running = False
    await ctx.shutdown()


def launch(*args: str) -> None:
    colorama.init()
    asyncio.run(main(args))
    colorama.deinit()
