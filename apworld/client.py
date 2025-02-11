"""Runtime client. Requires core imports."""
import asyncio

from CommonClient import CommonContext, CommandProcessor

from .world import Wc3World
from . import logger

class Wc3Context(CommonContext):
    game = Wc3World.game

    def __init__(self, *args, **kwargs) -> None:
        super().__init__(*args, **kwargs)
        self.generation_version = -1
    
    def on_package(self, cmd: str, args: dict) -> None:
        if cmd == "Connected":
            self.handle_connected(args)

    def handle_connected(self, args: dict) -> None:
        self.generation_version = (args["slot_data"]["version_major"], args["slot_data"]["version_minor"])
    