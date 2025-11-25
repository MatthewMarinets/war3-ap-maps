"""
Standalone client
"""
from typing import Callable, Any
import asyncio
import time
import threading
import sys
import shlex
from dataclasses import dataclass

from .. import logger
from .comm import PacketType, AsyncContext, GameStatus, status_loop, InventoryItem
from ..data import heroes, game_ids, locations, missions, tables
from ..data.game_ids import Tech, GameID

# ===================================== #
#                Parsers                #
# ===================================== #
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


def try_parse_game_id(user_input: str) -> str | None:
    if user_input in game_ids.GameID:
        return user_input
    try:
        return game_ids.GameID[user_input.upper().replace(' ', '_').replace("'", '').replace('+', '')]
    except KeyError: pass
    return None


def try_parse_item_channel_id(user_input: str) -> heroes.ItemChannel | None:
    result: heroes.ItemChannel | None = None
    try:
        result = heroes.ItemChannel[user_input.upper().replace(' ', '_')]
    except KeyError: pass
    if result == heroes.ItemChannel.NONE:
        return None
    return result


def try_parse_int(user_input: str) -> int | None:
    try:
        return int(user_input, base=0)
    except ValueError:
        return None


def try_parse_mission_id(user_input: str) -> missions.Wc3Mission | None:
    user_input = user_input.upper().replace('X', 'x')
    return missions.SHORT_NAME_TO_MISSION.get(user_input)


# ===================================== #
#                Handlers               #
# ===================================== #
def handle_exit(ctx: AsyncContext, *args) -> None:
    ctx.running = False


def print_help(ctx: AsyncContext, *args) -> None:
    logger.info('Commands:')
    for command, handler in COMMANDS.items():
        parts = [command]
        for arg in handler[1]:
            if arg.default is not None:
                parts.append(f'[{arg.argname}]')
            else:
                parts.append(f'<{arg.argname}>')
        logger.info(" ".join(parts))


def print_status(ctx: AsyncContext, *args) -> None:
    if not args:
        logger.info(ctx.game_status)
        logger.info(ctx.mission_status)
        return
    parts = args[0].split('.')
    current: dict|list|object = ctx
    part: str | int
    for index, part in enumerate(parts):
        try:
            if part.isnumeric():
                part = int(part)
            if part == '*':
                if isinstance(current, dict):
                    for key in current:
                        logger.info(key)
                elif isinstance(current, list):
                    logger.info(f"length: {len(current)}")
                else:
                    for key in dir(current):
                        if not key.startswith('_'):
                            logger.info(key)
                return
            if isinstance(current, dict):
                current = current[part]
            elif isinstance(current, list):
                current = current[part]
            else:
                current = getattr(current, part)
        except (KeyError, AttributeError) as ex:
            logger.info(f"{'.'.join(parts[:index])} has no member {part}")
            break
    logger.info(current)


def print_location_status(ctx: AsyncContext, *args) -> None:
    mission_id = ctx.mission_status.mission_id
    logger.info(f"Current mission: {mission_id}")
    for location_id, location_value in ctx.mission_status.locations_collected.items():
        if not location_value:
            continue
        global_id = locations.global_location_id(mission_id, location_id)
        location = locations.location_from_id.get(global_id)
        if location is None:
            continue
        logger.info(f"{location_id} ({location.location_name}): {location_value}")


def print_hero_status(ctx: AsyncContext, hero_slot: heroes.HeroSlot) -> None:
    logger.info(ctx.game_status.hero_data[hero_slot])


def handle_set_name(ctx: AsyncContext, hero_slot: heroes.HeroSlot, name: str, *args) -> None:
    ctx.game_status.hero_data[hero_slot].name = name
    ctx.game_status.pending_update |= PacketType.HEROES


def handle_send_item(ctx: AsyncContext, channel_id: heroes.ItemChannel, item_id: GameID) -> None:
    ctx.game_status.item_channel_state[channel_id].items_received.append(item_id)
    ctx.game_status.pending_update |= PacketType.ITEMS


def handle_send_merc(ctx: AsyncContext, unit_id: GameID) -> None:
    ctx.game_status.inventory.mercenaries.add(unit_id)
    ctx.game_status.pending_update |= PacketType.MERCENARIES
    logger.info(f"Sent {unit_id}")


def handle_send_check(ctx: AsyncContext, *args: str) -> None:
    for arg in args:
        if arg.isnumeric():
            ctx.mission_status.locations_collected[int(arg)] = 1
    print_location_status(ctx)
    ctx.game_status.pending_update |= PacketType.LOCATIONS


def handle_unsend_check(ctx: AsyncContext, *args: str) -> None:
    for arg in args:
        if arg.isnumeric():
            ctx.mission_status.locations_collected[int(arg)] = -1
    print_location_status(ctx)
    ctx.game_status.pending_update |= PacketType.LOCATIONS


def handle_unlock(ctx: AsyncContext, tech: GameID, amount: int, *args) -> None:
    if not amount:
        if tech == Tech.CAPTAIN or tech in game_ids.TECH_REQUIREMENTS_LEVEL_2:
            amount = 1
        else:
            amount = -1
    ctx.game_status.inventory.add_tech_and_prereqs(tech, amount)
    ctx.game_status.pending_update |= PacketType.UNLOCKS
    logger.info(f"{tech} is level {ctx.game_status.inventory.tech[tech]}")


def handle_lock(ctx: AsyncContext, tech: GameID, *args) -> None:
    if ctx.game_status.inventory.tech[tech]:
        ctx.game_status.inventory.tech[tech] = 0
        ctx.game_status.pending_update |= PacketType.UNLOCKS


def handle_level(ctx: AsyncContext, hero_slot: heroes.HeroSlot, amount: int, *args) -> None:
    ctx.game_status.hero_data[hero_slot].max_level += amount
    ctx.game_status.pending_update |= PacketType.HERO_LEVEL
    logger.info(
        f"{hero_slot.name} max level set to {ctx.game_status.hero_data[hero_slot].max_level}"
    )


def handle_add_mission_merc(ctx: AsyncContext, mission: missions.Wc3Mission, unit_id: GameID) -> None:
    mission_mercs = ctx.game_status.mercenary_allocation.setdefault(mission, {})
    for index in range(tables.MAXIMUM_MERCENARIES_PER_MISSION):
        if index not in mission_mercs:
            mission_mercs[index] = unit_id
            logger.info(f"Added {unit_id} to slot {index} of {mission.short_name}: {mission.mission_name}")
            ctx.game_status.pending_update |= PacketType.MERCENARIES
            return
    logger.info(f"Unable to add mercenary to {mission}: Item table is full")


def handle_msg(ctx: AsyncContext, *args: str) -> None:
    message = ' '.join(args)
    ctx.game_status.pending_messages.append(message)
    ctx.game_status.pending_update |= PacketType.MESSAGES


@dataclass
class CommandArg:
    argname: str
    type_converter: Callable[[str], Any] = str
    default: Any | None = None


COMMANDS: dict[str, tuple[Callable[[AsyncContext], None], list[CommandArg]]] = {
    '/exit': (handle_exit, []),
    '/help': (print_help, []),
    '/location_status': (print_location_status, []),
    '/status': (print_status, []),
    '/herostatus': (print_hero_status,
        [CommandArg('hero slot ID', try_parse_hero_slot)]
    ),
    '/setname': (handle_set_name, [
        CommandArg('hero slot ID', try_parse_hero_slot),
        CommandArg('name'),
    ]),
    '/senditem': (handle_send_item, [
        CommandArg('item channel ID', try_parse_item_channel_id),
        CommandArg('item ID', try_parse_game_id),
    ]),
    '/sendmerc': (handle_send_merc, [
        CommandArg('merc ID', try_parse_game_id),
    ]),
    '/check': (handle_send_check, [
        CommandArg('locations'),
    ]),
    '/uncheck': (handle_unsend_check, [
        CommandArg('locations'),
    ]),
    '/msg': (handle_msg, [
        CommandArg('message'),
    ]),
    '/unlock': (handle_unlock, [
        CommandArg('techid', try_parse_game_id),
        CommandArg('amount', try_parse_int, 0),
    ]),
    '/level': (handle_level, [
        CommandArg('hero slot ID', try_parse_hero_slot),
        CommandArg('amount', try_parse_int, 1),
    ]),
    '/addmerc': (handle_add_mission_merc, [
        CommandArg('mission ID', try_parse_mission_id),
        CommandArg('merc ID', try_parse_game_id),
    ]),
}


def start_stdin_reader_thread(queue: asyncio.Queue[str], ctx: AsyncContext) -> threading.Thread:
    def put_in_queue() -> None:
        local_running = True
        while ctx.running and local_running:
            try:
                text = input().strip()  # Necessary to work with readline module
                # text = sys.stdin.readline().strip()
            except UnicodeDecodeError as ex:
                logger.exception(ex)
            else:
                if text:
                    queue.put_nowait(text)
                    if text == '/exit':
                        local_running = False
                else:
                    time.sleep(0.01)  # this only blocks the thread, not the process
    thread = threading.Thread(target=put_in_queue, name="stdin stream handler", daemon=True)
    thread.start()
    return thread


async def _stdin_reader(ctx: AsyncContext) -> None:
    queue: asyncio.Queue[str] = asyncio.Queue()
    reader_thread = start_stdin_reader_thread(queue, ctx)
    while ctx.running:
        try:
            text: str = await queue.get()
            queue.task_done()

            logger.debug(f'User: {text}')
            try:
                tokens = shlex.split(text)
            except ValueError as ex:
                logger.error(f"Error: {ex}")
                continue
            if not tokens:
                continue
            handlers = COMMANDS.get(tokens[0])
            if handlers is None:
                logger.warning(f"Unknown command '{tokens[0]}'")
                print_help(ctx)
                continue
            handler_function, arg_handlers = handlers
            arguments: list = []
            okay = True
            for index, token in enumerate(tokens[1:]):
                if index < len(arg_handlers):
                    parsed_arg = arg_handlers[index].type_converter(token)
                    if parsed_arg is None:
                        logger.warning(f"'{token}' is not a valid {arg_handlers[index].argname}")
                        okay = False
                        break
                    arguments.append(parsed_arg)
                else:
                    arguments.append(token)
            if not okay:
                continue
            index = len(tokens) - 1
            for index, arg_handler in enumerate(arg_handlers[index:], start=index):
                if arg_handler.default is None:
                    logger.warning(f"Missing required argument {arg_handler.argname}")
                    okay = False
                    break
                arguments.append(arg_handler.default)
            if not okay:
                continue
            handler_function(ctx, *arguments)

        except Exception as ex:
            logger.exception(ex)
    reader_thread.join()
    logger.info("Shutting down console")


def init_test_data(game_status: GameStatus) -> None:
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].hero = heroes.HeroChoice.FEL_ORC_BLADEMASTER
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].reset_abils()
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].name = "«§upa¢ool»"
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].xp = 240
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].max_level = 3
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].abilities[GameID.BLADEMASTER_CRITICAL_STRIKE] = 1
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].items[2] = InventoryItem(GameID.BRACER_OF_AGILITY)
    game_status.hero_data[heroes.HeroSlot.JAINA].hero = heroes.HeroChoice.FIRELORD
    game_status.hero_data[heroes.HeroSlot.JAINA].name = "Jenna"
    game_status.hero_data[heroes.HeroSlot.MURADIN_BRONZEBEARD].hero = heroes.HeroChoice.BEASTMASTER
    game_status.hero_data[heroes.HeroSlot.MURADIN_BRONZEBEARD].name = "Murray"
    game_status.settings.extra_merc_camps = True


def init_game_status(game_status: GameStatus) -> None:
    game_status.pending_update |= PacketType.UNLOCKS


async def main() -> None:
    async_context = AsyncContext(True)
    init_test_data(async_context.game_status)
    init_game_status(async_context.game_status)
    console_task = asyncio.create_task(_stdin_reader(async_context))
    await status_loop(async_context)
    console_task.cancel()


if __name__ == "__main__":
    import readline
    import colorama
    colorama.init()
    asyncio.run(main())
    colorama.deinit()
