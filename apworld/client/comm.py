"""Client for communicating with the game."""

from datetime import datetime
import time
import threading
import asyncio
import sys
import os
from dataclasses import dataclass, field

from .. import logger
from ..locations import Wc3Location


def get_preloader_location() -> str:
    return os.path.expanduser('~/Documents/Warcraft III/CustomMapData')


def check_file() -> None:
    pass


@dataclass
class MissionStatus:
    mission: str = 'unconnected'
    update_number: int = -100
    locations_collected: dict[int, bool] = field(default_factory=dict)
    # locations_collected: dict[Wc3Location, bool] = {}


def copy_mission_status(source: MissionStatus, target: MissionStatus) -> None:
    target.mission = source.mission
    target.update_number = source.update_number
    target.locations_collected.clear()
    for k, v in source.locations_collected.items():
        target.locations_collected[k] = v


@dataclass
class AsyncContext:
    running: bool
    status: MissionStatus = field(default_factory=MissionStatus)


def write_prior_status(filename: str, status: MissionStatus) -> None:
    precollected_string = ''.join('%2s' % location for location, collected in status.locations_collected.items() if collected)
    with open(filename, 'w') as fp:
        fp.write('function PreloadFiles takes nothing returns nothing\n')
        fp.write(f"""\tcall SetPlayerName(Player(0), "{status.mission}")\n""")
        fp.write(f"""\tcall SetPlayerName(Player(1), "{status.update_number}")\n""")
        fp.write(f"""\tcall SetPlayerName(Player(2), "{precollected_string}")\n""")
        fp.write('endfunction\n')


def line_contents(raw_line: str) -> str:
    parts = raw_line.split('( "', 1)
    if len(parts) != 2:
        raise ValueError(f'Invalid line format in status.txt. Line: "{raw_line}"')
    return parts[1].rsplit('"', 1)[0]


def update_unlocks(status: MissionStatus) -> None:
    logger.debug("Updating unlocks")


async def status_loop(ctx: AsyncContext) -> None:
    preloader_dir = get_preloader_location()
    tx_file = f'{preloader_dir}/prior_status.txt'
    rx_file = f'{preloader_dir}/status.txt'
    END_TRANSMISSION = 'call PreloadEnd'
    last_status_sent = MissionStatus()
    while ctx.running:
        if not os.path.isfile(rx_file):
            await asyncio.sleep(0.5)
            continue
        with open(rx_file, 'r') as fp:
            lines = fp.readlines()
        lines = lines[2:]
        if lines and END_TRANSMISSION not in lines[0]:
            mission = line_contents(lines.pop(0))
        if lines and END_TRANSMISSION not in lines[0]:
            ctx.status.update_number = (int(line_contents(lines.pop(0))) + 1) % 100
        locations_collected: list[int] = []
        for line in lines:
            if END_TRANSMISSION in line:
                break
            locations_collected.append(int(line_contents(line)))
        # todo(mm): Convert IDs from mission scope to global scope
        for location_id in locations_collected:
            if not ctx.status.locations_collected.get(location_id):
                asyncio.get_running_loop().call_soon_threadsafe(update_unlocks, ctx.status)
            ctx.status.locations_collected[location_id] = True
        ctx.status.mission = mission
        if ctx.status != last_status_sent:
            write_prior_status(tx_file, ctx.status)
            copy_mission_status(ctx.status, last_status_sent)
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


async def _stdin_reader(ctx: AsyncContext) -> None:
    queue = asyncio.Queue()
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
                logger.info('/exit\n/status\n/send <args>\n/unsend <args>')
            elif text == "/status":
                logger.info(ctx.status)
            elif text.startswith('/send '):
                parts = [p for p in text.split(' ') if p]
                for part in parts[1:]:
                    if part.isnumeric():
                        ctx.status.locations_collected[int(part)] = True
            elif text.startswith('/unsend'):
                parts = [p for p in text.split(' ') if p]
                for part in parts[1:]:
                    if part.isnumeric():
                        ctx.status.locations_collected[int(part)] = False
            else:
                logger.warning(f'Unknown command "{text}"')
        except Exception as ex:
            logger.exception(ex)
    logger.info("Shutting down console")


async def main() -> None:
    async_context = AsyncContext(True)
    console_task = asyncio.create_task(_stdin_reader(async_context))
    await status_loop(async_context)
    console_task.cancel()


if __name__ == "__main__":
    import colorama
    colorama.init()
    asyncio.run(main())
    colorama.deinit()
