"""
Standalone client
"""
import asyncio
import inspect
import time
import threading
import sys
import shlex

from .. import logger
from .comm import PacketType, AsyncContext, GameStatus, status_loop, InventoryItem
from ..data import heroes, game_ids
from ..data.game_ids import Tech, GameID


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


def try_parse_game_id(user_input: str) -> str:
    if user_input in game_ids.GameID:
        return user_input
    try:
        return game_ids.GameID[user_input.upper().replace(' ', '_').replace("'", '').replace('+', '')]
    except KeyError: pass
    return ''


def try_parse_item_channel_id(user_input: str) -> heroes.ItemChannel | None:
    result: heroes.ItemChannel | None = None
    try:
        result = heroes.ItemChannel[user_input.upper().replace(' ', '_')]
    except KeyError: pass
    if result == heroes.ItemChannel.NONE:
        return None
    return result


def try_parse_int(user_input: str, default: int) -> int:
    try:
        return int(user_input, base=0)
    except ValueError:
        return default



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


async def _stdin_reader(ctx: AsyncContext) -> None:
    queue: asyncio.Queue[str] = asyncio.Queue()
    start_stdin_reader_thread(queue)
    while ctx.running:
        try:
            text: str = await queue.get()
            queue.task_done()

            logger.debug(f'User: {text}')
            tokens = shlex.split(text)
            if not tokens:
                continue
            elif tokens[0] == '/exit' or tokens[0] == 'q':
                ctx.running = False
            elif tokens[0] == '/help':
                logger.info("Commands:")
                logger.info(inspect.cleandoc('''
                    /exit
                    /status
                    /location_status
                    /setname "<hero slot ID>" "name"
                    /herostatus <hero slot ID>
                    /senditem <item channel ID> <item ID>
                    /check <args>
                    /uncheck <args>
                    /msg <message>
                    /unlock <techid>
                    /level <hero slot> [amount]
                '''))
            elif tokens[0] == '/status':
                logger.info(ctx.game_status)
                logger.info(ctx.mission_status)
            elif tokens[0] == '/location_status':
                logger.info({
                    location_id: location_value
                    for location_id, location_value in ctx.mission_status.locations_collected.items()
                    if location_value
                })
            elif tokens[0] == '/setname':
                if len(tokens) < 3:
                    logger.warning(f"/setname takes 2 arguments, got {len(tokens) - 1}")
                    continue
                user_identifier = try_parse_hero_slot(tokens[1])
                if user_identifier is None:
                    logger.warning(f"{tokens[1]} is not a valid hero slot name")
                    continue
                ctx.game_status.hero_data[user_identifier].name = tokens[3]
            elif tokens[0] == '/herostatus':
                slot_identifier = " ".join(tokens[1:])
                hero_slot = try_parse_hero_slot(slot_identifier)
                if hero_slot is None:
                    logger.warning(f'"{slot_identifier}" is not a recognized hero slot')
                else:
                    logger.info(ctx.game_status.hero_data[hero_slot])
            elif tokens[0] == '/senditem':
                if len(tokens) < 3:
                    logger.warning(f'/senditem requires 2 arguments, got {len(tokens) - 1}')
                    continue
                channel_id = try_parse_item_channel_id(tokens[1])
                if channel_id is None:
                    logger.warning(f'"{user_identifier}" is not a recognized item channel ID')
                    continue
                user_identifier = ' '.join(tokens[2:])
                item_id = try_parse_game_id(user_identifier)
                if not item_id:
                    logger.warning(f'"{user_identifier}" is not a valid game ID')
                    continue
                ctx.game_status.item_channel_state[channel_id].items_received.append(item_id)
            elif tokens[0] == '/check':
                parts = [p for p in text.split(' ') if p]
                for part in parts[1:]:
                    if part.isnumeric():
                        ctx.mission_status.locations_collected[int(part)] = 1
                ctx.game_status.pending_update |= PacketType.LOCATIONS
            elif tokens[0] == '/uncheck':
                parts = [p for p in text.split(' ') if p]
                for part in parts[1:]:
                    if part.isnumeric():
                        ctx.mission_status.locations_collected[int(part)] = -1
                ctx.game_status.pending_update |= PacketType.LOCATIONS
            elif tokens[0] == '/unlock':
                user_identifier = " ".join(tokens[1:])
                tech = try_parse_unlock_id(user_identifier)
                if tech is None:
                    logger.warning(f'"{user_identifier}" is not a recognized ID')
                else:
                    if ctx.game_status.inventory.add_tech_and_prereqs(tech):
                        ctx.game_status.pending_update |= PacketType.UNLOCKS
            elif tokens[0] == '/lock':
                user_identifier = " ".join(tokens[1:])
                tech = try_parse_unlock_id(user_identifier)
                if tech is None:
                    logger.warning(f'"{user_identifier}" is not a recognized ID')
                else:
                    if ctx.game_status.inventory.tech[tech]:
                        ctx.game_status.inventory.tech[tech] = 0
                        ctx.game_status.pending_update |= PacketType.UNLOCKS
            elif tokens[0] == '/level':
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
                    ctx.game_status.pending_update |= PacketType.HERO_LEVEL
                    logger.info(
                        f"{hero_slot.name} max level set to {ctx.game_status.hero_data[hero_slot].max_level}"
                    )
            elif tokens[0] == '/msg':
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
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].name = "«§upa¢ool»"
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].xp = 240
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].max_level = 3
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].abilities[GameID.BLADEMASTER_CRITICAL_STRIKE] = 1
    game_status.hero_data[heroes.HeroSlot.PALADIN_ARTHAS].items[2] = InventoryItem(GameID.BRACER_OF_AGILITY)
    game_status.hero_data[heroes.HeroSlot.JAINA].hero = heroes.HeroChoice.FIRELORD
    game_status.hero_data[heroes.HeroSlot.JAINA].name = "Jenna"


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
    import colorama
    colorama.init()
    asyncio.run(main())
    colorama.deinit()
