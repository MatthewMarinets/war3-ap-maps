
import logging

try:
    from worlds.AutoWorld import World
    standalone = False
except ModuleNotFoundError:
    standalone = True

logger = logging.getLogger("Warcraft 3")

if not standalone:
    from .world import Wc3World
