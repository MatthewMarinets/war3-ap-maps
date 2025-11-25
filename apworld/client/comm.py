"""Client for communicating with the game."""
from typing import Protocol
import enum
import asyncio
import os
from dataclasses import dataclass, field
import time

from ..data.game_ids import Tech, TECH_REQUIREMENTS, GameID, HERO_ABILITIES, int_to_id
from .. import logger
from ..data import heroes, missions, tables


PRELOADER_DIR = os.path.expanduser('~/Documents/Warcraft III/CustomMapData')
STATUS_FILE = f'{PRELOADER_DIR}/status.txt'
PING_FILE = f'{PRELOADER_DIR}/ping.txt'
UNLOCKS_FILE = f'{PRELOADER_DIR}/unlocks.txt'
LOCATIONS_FILE = f'{PRELOADER_DIR}/locations.txt'
MESSAGES_FILE = f'{PRELOADER_DIR}/messages.txt'
HEROES_FILE = f'{PRELOADER_DIR}/heroes.txt'
ITEMS_FILE = f'{PRELOADER_DIR}/items.txt'
ITEM_CHANNELS_FILE = f'{PRELOADER_DIR}/item_channels.txt'
MERCENARIES_FILE = f'{PRELOADER_DIR}/mercenaries.txt'
SETTINGS_FILE = f'{PRELOADER_DIR}/settings.txt'

NUM_FILE_LINES = 10
MAX_LOCATIONS = 30  # Should match status.j
MAX_UPDATE_ID = 100000  # Should match status.j

HERO_INVENTORY_SIZE = 6

COMM_VERSION = (1, 0)


class ColorCode(enum.StrEnum):
    RESET = '|r'
    ERROR = '|cffff2222'
    WARNING = '|cffff9966'


def default_locations_collected() -> dict[int, int]:
    return {x: 0 for x in range(MAX_LOCATIONS)}


class ClientInterface(Protocol):
    def on_location_received(self, mission_id: int, location_ids: list[int]) -> None:
        """Called when a new location is received"""
        pass
    def fetch_locations_collected(self, location_status: dict[int, int], new_mission_id: int) -> None:
        """Called when a new missions is loaded"""
        pass


class DefaultClientInterface:
    def on_location_received(self, mission_id: int, location_ids: list[int]) -> None:
        pass

    def fetch_locations_collected(self, location_status: dict[int, int], new_mission_id: int) -> None:
        for k in location_status:
            location_status[k] = 0


@dataclass
class Wc3GameSettings:
    extra_merc_camps: bool = False


class Wc3Inventory:
    def __init__(self) -> None:
        self.tech = {t: 0 for t in Tech}
        self.items: dict[heroes.ItemChannel, list[GameID]] = {
            channel: [] for channel in heroes.ItemChannel if channel != heroes.ItemChannel.NONE
        }
        """Items currently in a hero's inventory"""
        self.mercenaries: set[GameID] = set()

    def add_tech_and_prereqs(self, tech: Tech, amount: int = -1) -> int:
        queue = [tech]
        while queue:
            new_id = queue.pop()
            if self.tech[new_id] == 0:
                queue.extend(TECH_REQUIREMENTS[0].get(new_id, ()))
            elif self.tech[new_id] > 0 and self.tech[new_id] < 3:
                reqs = TECH_REQUIREMENTS[self.tech[new_id]].get(new_id)
                if reqs is not None:
                    queue.extend(reqs)
            self.tech[new_id] += amount
        return self.tech[tech]
    

class PacketType(enum.IntFlag):
    NONE = 0
    UNLOCKS = 1
    LOCATIONS = 2
    MESSAGES = 4
    HEROES = 8
    ITEMS = 0x10
    ITEM_CHANNELS = 0x20
    HERO_LEVEL = 0x40
    MERCENARIES = 0x80
    SETTINGS = 0x100

    mission_start_packets = UNLOCKS | LOCATIONS | MERCENARIES | SETTINGS
NUM_PACKET_TYPES = len(PacketType)


@dataclass
class PacketStatus:
    last_sent = 0
    last_received = -1


def default_packet_status() -> dict[PacketType, PacketStatus]:
    return {packet_type: PacketStatus() for packet_type in PacketType}


class MissionError(enum.Flag):
    NONE = 0
    VERSION_MISMATCH = enum.auto()
    MINOR_VERSION_MISMATCH = enum.auto()


@dataclass
class InventoryItem:
    item_id: GameID | None
    charges: int = 0


@dataclass
class HeroStatus:
    hero: heroes.HeroChoice
    name: str = ''
    xp: int = 0
    max_level: int = 2
    strength: int = 0
    agility: int = 0
    intelligence: int = 0
    max_health: int = 0
    abilities: dict[GameID, int] = field(default_factory=dict)
    items: list[InventoryItem] = field(
        default_factory=lambda: [InventoryItem(None) for _ in range(HERO_INVENTORY_SIZE)]
    )

    def __post_init__(self) -> None:
        self.reset_abils()
        if not self.name:
            self.name = self.hero.hero_name
    
    def reset_abils(self) -> None:
        self.abilities.clear()
        for abil_id in HERO_ABILITIES[self.hero.game_id]:
            self.abilities[abil_id] = 0


@dataclass
class MissionStatus:
    update_number: int = -100
    world_id: int = -1
    mission_id: int = -1
    packet_status: dict[PacketType, PacketStatus] = field(default_factory=default_packet_status)
    locations_collected: dict[int, int] = field(default_factory=default_locations_collected)
    """Mapping location ID -> state. 0=uncollected, 1=collected, -1=pending force-uncollect"""
    errors: MissionError = MissionError.NONE

    def clear_locations(self) -> None:
        for k in self.locations_collected:
            self.locations_collected[k] = 0


def init_hero_data() -> dict[heroes.HeroSlot, HeroStatus]:
    return {slot: HeroStatus(heroes.HERO_SLOT_TO_DEFAULT_CHOICE[slot]) for slot in heroes.HeroSlot}


@dataclass
class ItemChannelState:
    items_received: list[GameID] = field(default_factory=list)
    items_acked: int = 0


def init_item_channels() -> dict[heroes.ItemChannel, ItemChannelState]:
    return {channel: ItemChannelState() for channel in heroes.ItemChannel if channel != heroes.ItemChannel.NONE}


def default_mercenary_allocation() -> dict[missions.Wc3Mission, dict[int, GameID]]:
    return {
        mission: {index: item.type.game_id for index, item in v.items()}
        for mission, v in tables.MISSION_TO_VANILLA_MERCENARIES.items()
    }


@dataclass
class GameStatus:
    world_id: int = field(default_factory=lambda: (time.time_ns() >> 17) & 0x7fff_ffff)
    """Positive 32-bit int value identifying the world to avoid pulling data from another world"""
    do_startup = True
    pending_messages: list[str] = field(default_factory=list)
    num_in_flight_messages: int = 0
    item_channel_state: dict[heroes.ItemChannel, ItemChannelState] = field(default_factory=init_item_channels)
    in_flight_item_channel: heroes.ItemChannel = heroes.ItemChannel.NONE
    pending_update: PacketType = PacketType.HEROES  # read on mission start
    last_hero_update: int = -1
    next_hero_update: int = -1
    hero_data: dict[heroes.HeroSlot, HeroStatus] = field(default_factory=init_hero_data, repr=False)
    inventory: Wc3Inventory = field(default_factory=Wc3Inventory)
    mercenary_allocation: dict[missions.Wc3Mission, dict[int, GameID]] = (
        field(default_factory=default_mercenary_allocation)
    )
    settings: Wc3GameSettings = field(default_factory=Wc3GameSettings)


@dataclass
class AsyncContext:
    running: bool
    game_status: GameStatus = field(default_factory=GameStatus)
    mission_status: MissionStatus = field(default_factory=MissionStatus)
    client_interface: ClientInterface = field(default_factory=DefaultClientInterface)


PRELOAD_FUNCTION_PROTOTYPE = 'function PreloadFiles takes nothing returns nothing\n'
ENDFUNCTION = 'endfunction\n'
def send_int(message: int, channel: str = 'nske', player: str|int = 0) -> str:
    return f"call SetPlayerTechMaxAllowed(Player({player}), '{channel}', {message})\n"


def send_gameid(message: str, channel: str = 'nske', player: str|int = 0) -> str:
    return f"call SetPlayerTechMaxAllowed(Player({player}), '{channel}', '{message}')\n"


def set_tech(game_id: GameID|Tech, player_literal: str, amount: int = 1) -> str:
    return f"call SetPlayerTechMaxAllowed({player_literal}, '{game_id}', {amount})\n"


def send_string(message: str, player: str|int = 0) -> str:
    # Note(mm): Attempting to change a player name to empty-string instead just no-ops;
    # make sure to always send at least one character
    return f'call SetPlayerName(Player({player}), "{message or "_"}")\n'


def update_ping(status: MissionStatus, world_id: int, pending: PacketType = PacketType.NONE) -> None:
    with open(PING_FILE, 'w') as fp:
        fp.write(PRELOAD_FUNCTION_PROTOTYPE)
        fp.write(send_int(status.update_number, channel='nske'))
        fp.write(send_int(world_id, channel='nwgt'))
        fp.write(send_int(status.mission_id, channel='nvlk'))
        fp.write(send_int(pending.value, channel='nvk2'))
        fp.write(ENDFUNCTION)


def update_unlocks(game_status: GameStatus, mission_status: MissionStatus) -> None:
    packet_status = mission_status.packet_status[PacketType.UNLOCKS]
    if (PacketType.UNLOCKS not in game_status.pending_update
        and packet_status.last_sent == packet_status.last_received
    ):
        return
    game_status.pending_update |= PacketType.UNLOCKS
    packet_status.last_sent = (packet_status.last_sent + 1) & 0xffff
    with open(UNLOCKS_FILE, 'w') as fp:
        fp.write(PRELOAD_FUNCTION_PROTOTYPE)
        fp.write("local player p = Player(GetPlayerTechMaxAllowed(Player(0), 'nvil'))\n")
        fp.write(send_int(packet_status.last_sent, channel='nech'))
        for tech_id, unlock_level in game_status.inventory.tech.items():
            fp.write(set_tech(tech_id, 'p', unlock_level))
        fp.write(ENDFUNCTION)


def initialize_messages() -> None:
    if os.path.exists(MESSAGES_FILE):
        os.remove(MESSAGES_FILE)


def update_messages(game_status: GameStatus, packet_status: PacketStatus) -> None:
    if packet_status.last_received == packet_status.last_sent and game_status.num_in_flight_messages > 0:
        for _ in range(game_status.num_in_flight_messages):
            game_status.pending_messages.pop(0)
        game_status.num_in_flight_messages = 0
    if packet_status.last_received != packet_status.last_sent and game_status.num_in_flight_messages > 0:
        # Don't want to clobber the file when we might interrupt the game mid-read
        game_status.pending_update |= PacketType.MESSAGES
        return
    assert game_status.num_in_flight_messages == 0
    num_messages = min(len(game_status.pending_messages), NUM_FILE_LINES)
    if num_messages > 0:
        packet_status.last_sent = (packet_status.last_sent + 1) & 0xff
        with open(MESSAGES_FILE, 'w') as fp:
            fp.write(PRELOAD_FUNCTION_PROTOTYPE)
            fp.write(send_int(packet_status.last_sent, channel='nech'))
            fp.write(send_int(num_messages, channel='nalb'))
            for index, message in enumerate(game_status.pending_messages[:num_messages]):
                fp.write(send_string(message, player=index))
            fp.write(ENDFUNCTION)
        game_status.num_in_flight_messages = num_messages
        game_status.pending_update |= PacketType.MESSAGES
    else:
        game_status.pending_update &= ~PacketType.MESSAGES


def update_locations(game_status: GameStatus, status: MissionStatus) -> None:
    packet_status = status.packet_status[PacketType.LOCATIONS]
    if packet_status.last_received != packet_status.last_sent:
        # Don't want to obliterate any location removal data after we've already cleared it locally
        game_status.pending_update |= PacketType.LOCATIONS
        return
    if PacketType.LOCATIONS not in game_status.pending_update:
        return
    packet_status.last_sent = (packet_status.last_sent + 1) & 0xffff
    collected_parts: list[str] = []
    uncollected_parts: list[str] = []
    for location_id, location_status in status.locations_collected.items():
        if location_status == 1:
            collected_parts.append('%2s' % location_id)
        elif location_status == -1:
            uncollected_parts.append('%2s' % location_id)
            status.locations_collected[location_id] = 0
    collected_string = ''.join(collected_parts)
    uncollected_string = ''.join(uncollected_parts)
    with open(LOCATIONS_FILE, 'w') as fp:
        fp.write(PRELOAD_FUNCTION_PROTOTYPE)
        fp.write(send_int(packet_status.last_sent, 'nech'))
        fp.write(send_string(collected_string, player=0))
        fp.write(send_string(uncollected_string, player=1))
        fp.write(ENDFUNCTION)


def update_heroes(game_status: GameStatus, status: MissionStatus) -> None:
    packet_status = status.packet_status[PacketType.HEROES]
    packet_status.last_sent = (packet_status.last_sent + 1) & 0xffff
    with open(HEROES_FILE, 'w', encoding='utf-8') as fp:
        fp.write(PRELOAD_FUNCTION_PROTOTYPE)
        fp.write("local integer slot = GetPlayerTechMaxAllowed(Player(0), 'nalb')\n")
        fp.write(send_int(packet_status.last_sent, 'nech'))
        for index, (slot, data) in enumerate(game_status.hero_data.items()):
            if index == 0:
                fp.write(f'if slot == {slot.value} then\n')
            else:
                fp.write(f'elseif slot == {slot.value} then\n')
            fp.write(send_string(data.name))
            fp.write(send_gameid(data.hero.game_id, 'npng'))
            fp.write(send_int(data.agility, 'ndog'))
            fp.write(send_int(data.strength, 'nskk'))
            fp.write(send_int(data.intelligence, 'npig'))
            fp.write(send_int(data.max_health, 'nsea'))
            fp.write(send_int(data.xp, 'ncrb'))
            fp.write(send_int(data.max_level, 'nder'))
            for abil_index, (abil_id, abil_level) in enumerate(data.abilities.items()):
                fp.write(send_gameid(abil_id, 'nfro', player=abil_index))
                fp.write(send_int(abil_level, 'nrac', player=abil_index))
            for item_index, item in enumerate(data.items):
                if item.item_id is None:
                    continue
                fp.write(send_gameid(item.item_id, 'nvul', player=item_index))
                fp.write(send_int(item.charges, 'nsno', player=item_index))
            fp.write(send_int(1, 'nske'))
        fp.write('endif\n')
        fp.write(ENDFUNCTION)


def update_item_channels(game_status: GameStatus, mission_status: MissionStatus) -> None:
    packet_status = mission_status.packet_status[PacketType.ITEM_CHANNELS]
    packet_status.last_sent = (packet_status.last_sent + 1) & 0xffff
    with open(ITEM_CHANNELS_FILE, 'w') as fp:
        fp.write(PRELOAD_FUNCTION_PROTOTYPE)
        fp.write("local integer channel = GetPlayerTechMaxAllowed(Player(0), 'nalb')\n")
        fp.write(send_int(packet_status.last_sent, 'nech'))
        for index, (channel, state) in enumerate(game_status.item_channel_state.items()):
            if index == 0:
                fp.write(f'if channel == {channel.value} then\n')
            else:
                fp.write(f'elseif channel == {channel.value} then\n')
            fp.write(send_int(state.items_acked, 'npng'))
        fp.write('endif\n')
        fp.write(ENDFUNCTION)


def update_items(game_status: GameStatus, mission_status: MissionStatus) -> None:
    packet_status = mission_status.packet_status[PacketType.ITEMS]
    if (packet_status.last_received == packet_status.last_sent
        and game_status.in_flight_item_channel != heroes.ItemChannel.NONE
    ):
        game_status.in_flight_item_channel = heroes.ItemChannel.NONE
    if (packet_status.last_received != packet_status.last_sent
        and game_status.in_flight_item_channel != heroes.ItemChannel.NONE
    ):
        # Don't want to clobber the file when we might interrupt the game mid-read
        game_status.pending_update |= PacketType.ITEMS
        return
    assert game_status.in_flight_item_channel == heroes.ItemChannel.NONE
    if mission_status.mission_id < 0:
        game_status.pending_update &= ~PacketType.ITEMS
        return
    mission = missions.ID_TO_MISSION[mission_status.mission_id]
    item_channels = tables.mission_to_item_channel(mission)
    num_items = 0
    for local_item_channel_id, item_channel in enumerate(item_channels):
        if item_channel == heroes.ItemChannel.NONE:
            continue
        state = game_status.item_channel_state[item_channel]
        num_items = len(state.items_received) - state.items_acked
        if num_items > 0:
            break
    if num_items > 12:
        num_items = 12
    if num_items > 0:
        packet_status.last_sent = (packet_status.last_sent + 1) & 0xff
        with open(ITEMS_FILE, 'w') as fp:
            fp.write(PRELOAD_FUNCTION_PROTOTYPE)
            fp.write(send_int(packet_status.last_sent, channel='nech'))
            fp.write(send_int(num_items, channel='nalb'))
            fp.write(send_int(local_item_channel_id, 'ndog'))
            for index, item_id in enumerate(state.items_received[state.items_acked:state.items_acked+num_items]):
                fp.write(send_gameid(item_id, channel='ncrb', player=index))
            fp.write(ENDFUNCTION)
        game_status.in_flight_item_channel = item_channel
        game_status.pending_update |= PacketType.ITEMS
    else:
        game_status.pending_update &= ~PacketType.ITEMS


def update_mercenaries(game_status: GameStatus, mission_status: MissionStatus) -> None:
    packet_status = mission_status.packet_status[PacketType.MERCENARIES]
    if (PacketType.MERCENARIES not in game_status.pending_update
        and packet_status.last_received == packet_status.last_sent
    ):
        return
    game_status.pending_update |= PacketType.MERCENARIES
    packet_status.last_sent = (packet_status.last_sent + 1) & 0xffff
    mission = missions.ID_TO_MISSION[mission_status.mission_id]
    acquired_mercenaries = game_status.inventory.mercenaries
    map_mercenaries = game_status.mercenary_allocation.get(mission, {})
    CHANNEL = {0: 'ncrb', 1: 'ndog', 2: 'ndwm',}
    with open(MERCENARIES_FILE, 'w') as fp:
        fp.write(PRELOAD_FUNCTION_PROTOTYPE)
        fp.write(send_int(packet_status.last_sent, 'nech'))
        for index, mercenary in map_mercenaries.items():
            if mercenary not in acquired_mercenaries:
                continue
            section, player = divmod(index, 10)
            fp.write(send_gameid(mercenary, CHANNEL[section], player))
        fp.write(ENDFUNCTION)


def update_settings(game_status: GameStatus, mission_status: MissionStatus) -> None:
    packet_status = mission_status.packet_status[PacketType.SETTINGS]
    if (PacketType.SETTINGS not in game_status.pending_update
        and packet_status.last_sent == packet_status.last_received
    ):
        return
    game_status.pending_update |= PacketType.SETTINGS
    packet_status.last_sent = (packet_status.last_sent + 1) & 0xffff
    # mission = missions.ID_TO_MISSION[mission_status.mission_id]
    with open(SETTINGS_FILE, 'w') as fp:
        fp.write(PRELOAD_FUNCTION_PROTOTYPE)
        fp.write(send_int(packet_status.last_sent, 'nech'))
        if game_status.settings.extra_merc_camps:
            fp.write(send_int(1, 'nmer'))
        fp.write(ENDFUNCTION)


def line_contents(raw_line: str) -> str:
    parts = raw_line.split('( "', 1)
    if len(parts) != 2 or 'PreloadEnd' in parts[0]:
        raise ValueError(f'Invalid line format in status.txt. Line: "{raw_line}"')
    return parts[1].rsplit('"', 1)[0]
END_TRANSMISSION = 'call PreloadEnd'


def log_message_to_game(game_status: GameStatus, message: str, level: ColorCode) -> None:
    if level == ColorCode.ERROR:
        logger.error(message)
    elif level == ColorCode.WARNING:
        logger.warning(message)
    else:
        logger.info(message)
    game_status.pending_messages.clear()
    game_status.pending_messages.append(f'{level}{level.name.title()}{ColorCode.RESET}: {message}')
    game_status.pending_update |= PacketType.MESSAGES


def format_version(version: tuple[int, ...]) -> str:
    return '.'.join(map(str, version))


def read_status(status: MissionStatus, game_status: GameStatus) -> None:
    if not os.path.exists(STATUS_FILE):
        status.update_number = -1
        status.mission_id = -1
        return
    with open(STATUS_FILE, 'r') as fp:
        lines = fp.readlines()
    lines = lines[2:]
    try:
        status.update_number = (int(line_contents(lines.pop(0))) + 1) % MAX_UPDATE_ID
    except IndexError:
        return
    game_comm_version = tuple(map(int, line_contents(lines.pop(0)).split('.')))
    if not game_comm_version or game_comm_version[0] != COMM_VERSION[0]:
        if not (status.errors & MissionError.VERSION_MISMATCH):
            msg = (
                f"Communications version mismatch! "
                f"Client={format_version(COMM_VERSION)}, "
                f"Mod={format_version(game_comm_version)}. "
            )
            if game_comm_version < COMM_VERSION:
                msg += "Please update your mod files before continuing."
            else:
                msg += "Please update your client before continuing."
            log_message_to_game(game_status, msg, ColorCode.ERROR)
            status.errors |= MissionError.VERSION_MISMATCH
            return
    if game_comm_version != COMM_VERSION:
        if not (status.errors & MissionError.MINOR_VERSION_MISMATCH):
            msg = (
                f"Communication minor version mismatch. "
                f"Client={format_version(COMM_VERSION)}, "
                f"Mod={format_version(game_comm_version)}. "
                "Some features may not work correctly."
            )
            log_message_to_game(game_status, msg, ColorCode.WARNING)
            status.errors |= MissionError.MINOR_VERSION_MISMATCH
    status.world_id = int(line_contents(lines.pop(0)))
    status.mission_id = int(line_contents(lines.pop(0)))
    last_transmissions = [int(x) for x in line_contents(lines.pop(0)).split(',')]
    game_status.next_hero_update = int(line_contents(lines.pop(0)))
    num_items_received = [int(x) for x in line_contents(lines.pop(0)).split(',')]
    for item_channel, num_received in zip(
        tables.mission_to_item_channel(missions.ID_TO_MISSION[status.mission_id]),
        num_items_received
    ):
        if item_channel != heroes.ItemChannel.NONE:
            game_status.item_channel_state[item_channel].items_acked = num_received
    lines.pop(0)  # reserved
    lines.pop(0)  # reserved
    if len(last_transmissions) > NUM_PACKET_TYPES:
        if not (status.errors & MissionError.MINOR_VERSION_MISMATCH):
            logger.error(
                f"Too many packet acknowledgements sent ({len(last_transmissions)} > {NUM_PACKET_TYPES}); "
                "mod may be a newer version"
            )
            status.errors |= MissionError.MINOR_VERSION_MISMATCH
        last_transmissions = last_transmissions[:3]
    elif len(last_transmissions) < NUM_PACKET_TYPES:
        if not (status.errors & MissionError.MINOR_VERSION_MISMATCH):
            logger.error(
                f"Too few packet acknowledgements sent({len(last_transmissions)} < {NUM_PACKET_TYPES}); "
                "mod may be out of date"
            )
            status.errors |= MissionError.MINOR_VERSION_MISMATCH
        last_transmissions.extend([-2] * (NUM_PACKET_TYPES - len(last_transmissions)))
    assert len(last_transmissions) == NUM_PACKET_TYPES
    for packet_status, transmission_id in zip(status.packet_status.values(), last_transmissions):
        packet_status.last_received = transmission_id
    # locations collected
    for line in lines:
        if END_TRANSMISSION in line:
            break
        status.locations_collected[int(line_contents(line))] = 1


def read_hero_status(slot: int, game_status: GameStatus) -> None:
    filename = f'{PRELOADER_DIR}/hero_{slot}.txt'
    if not os.path.isfile(filename):
        logger.debug(f"Unable to read {filename} as it does not exist")
        return
    with open(filename, 'r', encoding='utf-8') as fp:
        lines = fp.readlines()
    lines = lines[2:]
    slot_index = int(line_contents(lines.pop(0)))
    assert slot_index == slot
    hero_name = line_contents(lines.pop(0))
    slot = heroes.HeroSlot(slot_index)
    hero_data = game_status.hero_data[slot]
    hero_data.xp = int(line_contents(lines.pop(0)))
    hero_data.agility = int(line_contents(lines.pop(0)))
    hero_data.strength = int(line_contents(lines.pop(0)))
    hero_data.intelligence = int(line_contents(lines.pop(0)))
    hero_data.max_health = int(float(line_contents(lines.pop(0))))
    assert len(hero_data.abilities) == 4
    for abil_id in hero_data.abilities:
        hero_data.abilities[abil_id] = int(line_contents(lines.pop(0)))
    for item_slot in range(6):
        hero_data.items[item_slot].item_id = int_to_id(int(line_contents(lines.pop(0))))
        hero_data.items[item_slot].charges = int(line_contents(lines.pop(0)))


def read_necessary_hero_status(status: MissionStatus, game_status: GameStatus) -> None:
    if status.mission_id < 0:
        return
    if game_status.last_hero_update == game_status.next_hero_update:
        return
    mission = missions.ID_TO_MISSION.get(status.mission_id)
    if mission is None:
        logger.warning(f'Unable to read mission ID {status.mission_id}')
        return
    mission_hero_slots = tables.MISSION_TO_HERO_SLOT[mission]
    for slot in mission_hero_slots:
        read_hero_status(slot.value, game_status)
    game_status.last_hero_update = game_status.next_hero_update
    game_status.pending_update |= PacketType.HEROES


def update_game_status_for_new_mission(ctx: AsyncContext, mission_id: int) -> None:
    ctx.client_interface.fetch_locations_collected(ctx.mission_status.locations_collected, mission_id)
    ctx.game_status.num_in_flight_messages = 0
    ctx.game_status.in_flight_item_channel = heroes.ItemChannel.NONE
    ctx.game_status.pending_update |= PacketType.mission_start_packets


def sync_mission_status(
    source: MissionStatus,
    target: MissionStatus,
) -> None:
    """Sync data coming from the mod with an existing `MissionStatus`"""
    mission_change = source.mission_id != target.mission_id
    target.update_number = source.update_number
    target.world_id = source.world_id
    target.mission_id = source.mission_id
    for packet_type, packet_status in source.packet_status.items():
        target.packet_status[packet_type].last_received = packet_status.last_received
        if mission_change:
            target.packet_status[packet_type].last_sent = target.packet_status[packet_type].last_received


def sync_locations(
    source: MissionStatus,
    target: MissionStatus,
    client_interface: ClientInterface | None,
) -> None:
    mission_change = source.mission_id != target.mission_id
    if mission_change:
        for k, v in source.locations_collected.items():
            target.locations_collected[k] = v
    else:
        new_locations: list[int] = []
        for k in range(MAX_LOCATIONS):
            # Game can only check new locations, and only if they're not blocked by the client
            if target.locations_collected[k] == 0:
                if source.locations_collected[k] > 0:
                    new_locations.append(k)
                target.locations_collected[k] = source.locations_collected[k]
        if client_interface is not None and new_locations:
            client_interface.on_location_received(source.mission_id, new_locations)


async def short_sleep() -> None:
    await asyncio.sleep(0.25)
    await asyncio.sleep(0.25)


async def long_sleep() -> None:
    # Note(mm): One big sleep messes with the standalone stdout reader
    # 2s
    await asyncio.sleep(0.2)
    await asyncio.sleep(0.2)
    await asyncio.sleep(0.2)
    await asyncio.sleep(0.2)
    await asyncio.sleep(0.2)
    await asyncio.sleep(0.2)
    await asyncio.sleep(0.2)
    await asyncio.sleep(0.2)
    await asyncio.sleep(0.2)
    await asyncio.sleep(0.2)


async def status_loop(ctx: AsyncContext) -> None:
    new_status = MissionStatus()
    initialize_messages()
    while ctx.running:
        # Update on-startup packets immediately
        if ctx.game_status.do_startup:
            update_heroes(ctx.game_status, ctx.mission_status)
            ctx.game_status.do_startup = False
        
        # Await status
        if not os.path.isfile(STATUS_FILE):
            await short_sleep()
            continue
        new_status.clear_locations()
        sync_mission_status(ctx.mission_status, new_status)
        try:
            read_status(new_status, ctx.game_status)
        except Exception as ex:
            logger.exception(ex)
            await long_sleep()
            continue
        if new_status.world_id >= 0 and new_status.world_id != ctx.game_status.world_id:
            await long_sleep()
            continue
        if (new_status.mission_id != ctx.mission_status.mission_id
            or new_status.world_id < 0
        ):
            update_game_status_for_new_mission(ctx, new_status.mission_id)
        old_update_number = ctx.mission_status.update_number
        sync_locations(new_status, ctx.mission_status, ctx.client_interface)
        sync_mission_status(new_status, ctx.mission_status)
        if new_status.world_id < 0:
            update_heroes(ctx.game_status, ctx.mission_status)
            ctx.game_status.pending_update |= PacketType.HEROES
            update_item_channels(ctx.game_status, ctx.mission_status)
            ctx.game_status.pending_update |= PacketType.ITEM_CHANNELS
        else:
            read_necessary_hero_status(ctx.mission_status, ctx.game_status)
            if ctx.game_status.pending_update & (PacketType.HERO_LEVEL | PacketType.HEROES):
                update_heroes(ctx.game_status, ctx.mission_status)
            ctx.game_status.pending_update &= ~PacketType.HEROES  # Don't request heroes init

        # Update on-request client->game packets
        update_unlocks(ctx.game_status, ctx.mission_status)
        update_locations(ctx.game_status, ctx.mission_status)
        update_messages(ctx.game_status, ctx.mission_status.packet_status[PacketType.MESSAGES])
        update_items(ctx.game_status, ctx.mission_status)
        update_mercenaries(ctx.game_status, ctx.mission_status)
        update_settings(ctx.game_status, ctx.mission_status)
        if (ctx.mission_status.update_number != old_update_number
            or ctx.game_status.pending_update
        ):
            # Ack new mission/transmission
            update_ping(ctx.mission_status, ctx.game_status.world_id, ctx.game_status.pending_update)
            ctx.game_status.pending_update = PacketType.NONE

        await short_sleep()

# todo(mm): save/load client data
