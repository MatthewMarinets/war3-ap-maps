"""Archipelago-style client GUI. Requires core imports."""
from typing import TYPE_CHECKING
import asyncio
import logging

from kvui import GameManager, LogtoUI
from kivy.uix.layout import Layout

if TYPE_CHECKING:
    from .ap import Wc3Context


class Wc3Manager(GameManager):
    base_title = "Archipelago Warcraft 3 Client"
    ctx: 'Wc3Context'
    # comm: Wc3Communication

    def on_start(self) -> None:
        logging.getLogger("Warcraft 3").addHandler(LogtoUI(self.log_panels["All"].on_log))
    
    def build(self) -> Layout:
        container = super().build()
        return container


def start_gui(context: 'Wc3Context') -> None:
    context.ui = Wc3Manager(context)
    context.ui_task = asyncio.create_task(context.ui.async_run(), name="UI")
