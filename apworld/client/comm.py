"""Client for communicating with the game."""

import enum
import time
import threading
import asyncio
import sys
import os
import inspect
from dataclasses import dataclass, field

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


class Wc3Inventory:
    def __init__(self) -> None:
        self.tech = {t: 0 for t in Tech}
        self.items = {}

    def add_tech_and_prereqs(self, tech: Tech) -> bool:
        queue = [tech]
        result = False
        while queue:
            new_id = queue.pop()
            if self.tech[new_id] == 0:
                if new_id in TECH_REQUIREMENTS[1]:
                    self.tech[new_id] += 1
                else:
                    self.tech[new_id] = -1
                queue.extend(TECH_REQUIREMENTS[0].get(new_id, ()))
                result = True
            elif self.tech[new_id] < 3:
                reqs = TECH_REQUIREMENTS[self.tech[new_id]].get(new_id)
                if reqs is not None:
                    # Only upgrade the tech level if it has more levels
                    self.tech[new_id] += 1
                    queue.extend(reqs)
                    result = True
        return result
    
    def __repr__(self) -> str:
        return f'<{sum(self.tech.values())} Techs>'


class PacketType(enum.IntFlag):
    NONE = 0
    UNLOCKS = 1
    LOCATIONS = 2
    MESSAGES = 4
    HEROES = 8
    ITEMS = 0x10
NUM_PACKET_TYPES = len(PacketType)


@dataclass
class PacketStatus:
    last_sent = -1
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
    mission_id: int = -1
    player_index: list[str] = field(default_factory=list)
    packet_status: dict[PacketType, PacketStatus] = field(default_factory=default_packet_status)
    locations_collected: dict[int, int] = field(default_factory=default_locations_collected)
    errors: MissionError = MissionError.NONE


def init_hero_data() -> dict[heroes.HeroSlot, HeroStatus]:
    return {slot: HeroStatus(heroes.HERO_SLOT_TO_DEFAULT_CHOICE[slot]) for slot in heroes.HeroSlot}


@dataclass
class GameStatus:
    pending_messages: list[str] = field(default_factory=list)
    num_in_flight_messages: int = 0
    pending_items: list[str] = field(default_factory=list)
    num_in_flight_items: int = 0
    inventory: Wc3Inventory = field(default_factory=Wc3Inventory)
    pending_update: PacketType = PacketType.HEROES|PacketType.MESSAGES
    last_hero_update: int = -1
    next_hero_update: int = -1
    hero_data: dict[heroes.HeroSlot, HeroStatus] = field(default_factory=init_hero_data, repr=False)


@dataclass
class AsyncContext:
    running: bool
    game_status: GameStatus = field(default_factory=GameStatus)
    mission_status: MissionStatus = field(default_factory=MissionStatus)


PRELOAD_FUNCTION_PROTOTYPE = 'function PreloadFiles takes nothing returns nothing\n'
ENDFUNCTION = 'endfunction\n'
def send_int(message: int|str, channel: str = 'nske', player: str|int = 0) -> str:
    return f"call SetPlayerTechMaxAllowed(Player({player}), '{channel}', {message})\n"


def send_string(message: str, player: str|int = 0) -> str:
    return f'call SetPlayerName(Player({player}), "{message}")\n'


def update_ping(status: MissionStatus, pending: PacketType = PacketType.NONE) -> None:
    with open(PING_FILE, 'w') as fp:
        fp.write(PRELOAD_FUNCTION_PROTOTYPE)
        fp.write(send_int(status.update_number, channel='nske'))
        fp.write(send_int(status.mission_id, channel='nvlk'))
        fp.write(send_int(pending.value, channel='nvk2'))
        fp.write(ENDFUNCTION)


def update_unlocks(game_status: GameStatus, mission_status: MissionStatus) -> None:
    packet_status = mission_status.packet_status[PacketType.UNLOCKS]
    packet_status.last_sent = (packet_status.last_sent + 1) & 0xffff
    with open(UNLOCKS_FILE, 'w') as fp:
        fp.write(PRELOAD_FUNCTION_PROTOTYPE)
        fp.write(send_int(packet_status.last_sent, channel='nech'))
        for tech_id, unlock_level in game_status.inventory.tech.items():
            for player in mission_status.player_index:
                fp.write(send_int(unlock_level, tech_id, player))
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


def update_locations(status: MissionStatus) -> None:
    packet_status = status.packet_status[PacketType.LOCATIONS]
    if packet_status.last_received != packet_status.last_sent:
        # Don't want to obliterate any location removal data after we've already cleared it locally
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
            fp.write(send_int(f"'{data.hero.game_id}'", 'npng'))
            fp.write(send_int(data.agility, 'ndog'))
            fp.write(send_int(data.strength, 'nskk'))
            fp.write(send_int(data.intelligence, 'npig'))
            fp.write(send_int(data.max_health, 'nsea'))
            fp.write(send_int(data.xp, 'ncrb'))
            fp.write(send_int(data.max_level, 'nder'))
            for abil_index, (abil_id, abil_level) in enumerate(data.abilities.items()):
                fp.write(send_int(f"'{abil_id}'", 'nfro', player=abil_index))
                fp.write(send_int(abil_level, 'nrac', player=abil_index))
            for item_index, item in enumerate(data.items):
                if item.item_id is None:
                    continue
                fp.write(send_int(f"'{item.item_id}'", 'nvul', player=item_index))
                fp.write(send_int(item.charges, 'nsno', player=item_index))
            fp.write(send_int(1, 'nske'))
        fp.write('endif\n')
        fp.write(ENDFUNCTION)


def update_items(game_status: GameStatus, mission_status: MissionStatus) -> None:
    packet_status = mission_status.packet_status[PacketType.ITEMS]
    if packet_status.last_received == packet_status.last_sent and game_status.num_in_flight_items > 0:
        for _ in range(game_status.num_in_flight_items):
            game_status.pending_items.pop(0)
        game_status.num_in_flight_items = 0
    if packet_status.last_received != packet_status.last_sent and game_status.num_in_flight_items > 0:
        game_status.pending_update |= PacketType.ITEMS
        return
    assert game_status.num_in_flight_items == 0
    num_items = min(len(game_status.pending_items), 12)
    if num_items > 0:
        packet_status.last_sent = (packet_status.last_sent + 1) & 0xff
        with open(ITEMS_FILE, 'w') as fp:
            fp.write(PRELOAD_FUNCTION_PROTOTYPE)
            fp.write(send_int(packet_status.last_sent, channel='nech'))
            fp.write(send_int(num_items, channel='nalb'))
            for index, message in enumerate(game_status.pending_items[:num_items]):
                fp.write(send_string(message, player=index))
            fp.write(ENDFUNCTION)
        game_status.num_in_flight_items = num_items
        game_status.pending_update |= PacketType.ITEMS
    else:
        game_status.pending_update &= ~PacketType.ITEMS


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
        status.player_index.clear()
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
    status.mission_id = int(line_contents(lines.pop(0)))
    status.player_index = line_contents(lines.pop(0)).split(',')
    last_transmissions = [int(x) for x in line_contents(lines.pop(0)).split(',')]
    game_status.next_hero_update = int(line_contents(lines.pop(0)))
    lines.pop(0)  # reserved
    lines.pop(0)  # reserved
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
    for location_id in status.locations_collected:
        status.locations_collected[location_id] = 0
    for line in lines:
        if END_TRANSMISSION in line:
            break
        status.locations_collected[int(line_contents(line))] = 1


def read_hero_status(slot: int, game_status: GameStatus) -> None:
    filename = f'{PRELOADER_DIR}/hero_{slot}.txt'
    if not os.path.isfile(filename):
        logger.debug(f"Unable to read {filename} as it does not exist")
        return
    with open(filename, 'r') as fp:
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
    mission = missions.VALUE_TO_MISSION.get(status.mission_id)
    if mission is None:
        logger.warning(f'Unable to read mission ID {status.mission_id}')
        return
    mission_hero_slots = tables.MISSION_TO_HERO_SLOT[mission]
    for slot in mission_hero_slots:
        read_hero_status(slot.value, game_status)
    game_status.last_hero_update = game_status.next_hero_update
    game_status.pending_update |= PacketType.HEROES


def update_game_status_for_new_mission(game_status: GameStatus) -> None:
    # todo: fetch pre-checked locations from the global cache
    game_status.num_in_flight_messages = 0
    game_status.num_in_flight_items = 0
    game_status.pending_update |= PacketType.UNLOCKS


def sync_mission_status(source: MissionStatus, target: MissionStatus) -> None:
    """Sync data coming from the mod with an existing `MissionStatus`"""
    mission_change = source.mission_id != target.mission_id
    target.update_number = source.update_number
    target.mission_id = source.mission_id
    target.player_index = source.player_index
    if mission_change:
        for k, v in source.locations_collected.items():
            target.locations_collected[k] = v
    else:
        for k in range(MAX_LOCATIONS):
            # Game can only check new locations, and only if they're not blocked by the client
            if target.locations_collected[k] == 0:
                target.locations_collected[k] = source.locations_collected[k]
    for packet_type, packet_status in source.packet_status.items():
        target.packet_status[packet_type].last_received = packet_status.last_received
        if mission_change:
            target.packet_status[packet_type].last_sent = target.packet_status[packet_type].last_received


async def status_loop(ctx: AsyncContext) -> None:
    new_status = MissionStatus()
    initialize_messages()
    while ctx.running:
        if not os.path.isfile(STATUS_FILE):
            await asyncio.sleep(0.5)
            continue
        sync_mission_status(ctx.mission_status, new_status)
        try:
            read_status(new_status, ctx.game_status)
        except Exception as ex:
            logger.exception(ex)
            await asyncio.sleep(2)
            continue
        if (new_status.mission_id != ctx.mission_status.mission_id
            or new_status.update_number == 1
        ):
            update_game_status_for_new_mission(ctx.game_status)
        old_update_number = ctx.mission_status.update_number
        sync_mission_status(new_status, ctx.mission_status)
        read_necessary_hero_status(ctx.mission_status, ctx.game_status)
        if ctx.game_status.pending_update & PacketType.UNLOCKS:
            update_unlocks(ctx.game_status, ctx.mission_status)
        if ctx.game_status.pending_update & PacketType.LOCATIONS:
            update_locations(ctx.mission_status)
        if ctx.game_status.pending_update & PacketType.HEROES:
            update_heroes(ctx.game_status, ctx.mission_status)
        update_messages(ctx.game_status, ctx.mission_status.packet_status[PacketType.MESSAGES])
        update_items(ctx.game_status, ctx.mission_status)
        if (ctx.mission_status.update_number != old_update_number
            or ctx.game_status.pending_update
        ):
            # Ack new mission/transmission
            update_ping(new_status, ctx.game_status.pending_update)
            ctx.game_status.pending_update = PacketType.NONE

        await asyncio.sleep(0.5)


def start_stdin_reader_thread(queue: asyncio.Queue[str]) -> threading.Thread:
    def put_in_queue() -> None:
        while True:
            try:
                text = sys.stdin.readline().strip()
            except UnicodeDecodeError as ex:
                logger.exception(ex)
            else:
                if text:
                    queue.put_nowait(text)
                else:
                    time.sleep(0.01)  # this only blocks the thread, not the process
    thread = threading.Thread(target=put_in_queue, name="stdin stream handler", daemon=True)
    thread.start()
    return thread


def try_parse_unlock_id(user_input: str) -> Tech | None:
    tech: Tech | None = None
    try:
        tech = Tech(user_input)
    except ValueError:
        pass
    try:
        tech = Tech[user_input.upper().replace(' ', '_')]
    except KeyError:
        pass
    return tech


def try_parse_hero_slot(user_input: str) -> heroes.HeroSlot | None:
    result: heroes.HeroSlot | None = None
    try:
        result = heroes.HeroSlot(user_input)
    except ValueError: pass
    try:
        result = heroes.HeroSlot[user_input.upper().replace(' ', '_').replace("'", '')]
    except KeyError: pass
    return result


def try_parse_int(user_input: str, default: int) -> int:
    try:
        return int(user_input, base=0)
    except ValueError:
        return default


async def _stdin_reader(ctx: AsyncContext) -> None:
    queue: asyncio.Queue[str] = asyncio.Queue()
    start_stdin_reader_thread(queue)
    while ctx.running:
        try:
            text: str = await queue.get()
            queue.task_done()

            logger.debug(f"User: {text}")
            if text == "/exit" or text == "q":
                ctx.running = False
            elif text == "/help":
                logger.info("Commands:")
                logger.info(inspect.cleandoc('''
                    /exit
                    /status
                    /herostatus <hero slot ID>
                    /check <args>
                    /uncheck <args>
                    /msg <message>
                    /unlock <techid>
                    /level <hero slot> [amount]
                '''))
            elif text == "/status":
                logger.info(ctx.game_status)
                logger.info(ctx.mission_status)
            elif text.startswith('/herostatus '):
                slot_identifier = text.split(' ', 1)[1].strip()
                hero_slot = try_parse_hero_slot(slot_identifier)
                if hero_slot is None:
                    logger.warning(f'"{slot_identifier}" is not a recognized hero slot')
                else:
                    logger.info(ctx.game_status.hero_data[hero_slot])
            elif text.startswith('/check '):
                parts = [p for p in text.split(' ') if p]
                for part in parts[1:]:
                    if part.isnumeric():
                        ctx.mission_status.locations_collected[int(part)] = 1
                ctx.game_status.pending_update |= PacketType.LOCATIONS
            elif text.startswith('/uncheck '):
                parts = [p for p in text.split(' ') if p]
                for part in parts[1:]:
                    if part.isnumeric():
                        ctx.mission_status.locations_collected[int(part)] = -1
                ctx.game_status.pending_update |= PacketType.LOCATIONS
            elif text.startswith('/unlock '):
                user_identifier = text.split(' ', 1)[1].strip()
                tech = try_parse_unlock_id(user_identifier)
                if tech is None:
                    logger.warning(f'"{user_identifier}" is not a recognized ID')
                else:
                    if ctx.game_status.inventory.add_tech_and_prereqs(tech):
                        ctx.game_status.pending_update |= PacketType.UNLOCKS
            elif text.startswith('/lock '):
                user_identifier = text.split(' ', 1)[1].strip()
                tech = try_parse_unlock_id(user_identifier)
                if tech is None:
                    logger.warning(f'"{user_identifier}" is not a recognized ID')
                else:
                    if ctx.game_status.inventory.tech[tech]:
                        ctx.game_status.inventory.tech[tech] = 0
                        ctx.game_status.pending_update |= PacketType.UNLOCKS
            elif text.startswith('/level '):
                slot_identifier = text.split(' ', 1)[1].strip()
                if slot_identifier[-1].isnumeric():
                    slot_identifier, delta_str = slot_identifier.rsplit(' ', 1)
                    delta = try_parse_int(delta_str, 1)
                else:
                    delta = 1
                hero_slot = try_parse_hero_slot(slot_identifier)
                if hero_slot is None:
                    logger.warning(f'"{slot_identifier}" is not a recognized hero slot')
                else:
                    ctx.game_status.hero_data[hero_slot].max_level += delta
                    logger.info(
                        f"{hero_slot.name} max level set to {ctx.game_status.hero_data[hero_slot].max_level}"
                    )
            elif text.startswith('/msg '):
                if len(text.strip()) < 6:
                    logger.warning('/msg requires an argument')
                    continue
                ctx.game_status.pending_messages.append(text[5:])
                ctx.game_status.pending_update |= PacketType.MESSAGES
            else:
                logger.warning(f'Unknown command "{text}"')
        except Exception as ex:
            logger.exception(ex)
    logger.info("Shutting down console")


def init_test_data(game_status: GameStatus) -> None:
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].hero = heroes.HeroChoice.FEL_ORC_BLADEMASTER
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].reset_abils()
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].name = r":D"
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].xp = 240
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].max_level = 3
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].abilities[GameID.BLADEMASTER_CRITICAL_STRIKE] = 1
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].items[2] = GameID.BRACER_OF_AGILITY
    game_status.hero_data[heroes.HeroSlot.JAINA].hero = heroes.HeroChoice.FIRELORD
    game_status.hero_data[heroes.HeroSlot.JAINA].name = "Jenna"


async def main() -> None:
    async_context = AsyncContext(True)
    init_test_data(async_context.game_status)
    console_task = asyncio.create_task(_stdin_reader(async_context))
    await status_loop(async_context)
    console_task.cancel()


if __name__ == "__main__":
    import colorama
    colorama.init()
    asyncio.run(main())
    colorama.deinit()
