
import logging

try:
    from worlds.AutoWorld import World
    standalone = False
except ModuleNotFoundError:
    standalone = True

logger = logging.getLogger("Warcraft 3")

if standalone:
    import datetime
    import sys
    import os
    os.makedirs("logs", exist_ok=True)
    logger.addHandler(logging.FileHandler(f"logs/wc3_{datetime.datetime.now().strftime('%Y_%m_%d_%H_%M_%S')}.log"))
    logger.addHandler(logging.StreamHandler(sys.stdout))
    logger.setLevel(logging.INFO)
else:
    from .world import Wc3World
