
import logging

try:
    from worlds.AutoWorld import World, WebWorld
    standalone = False
except ModuleNotFoundError:
    standalone = True

logger = logging.getLogger("Warcraft 3")

if standalone:
    import datetime
    import sys
    import os
    os.makedirs("logs", exist_ok=True)
    logger.addHandler(
        logging.FileHandler(f"logs/wc3_{datetime.datetime.now().strftime('%Y_%m_%d_%H_%M_%S')}.log")
    )
    logger.addHandler(logging.StreamHandler(sys.stdout))
    logger.setLevel(logging.INFO)
else:
    from .world import Wc3World
    class Wc3WebWorld(WebWorld):
        tutorials = []
    
    
    from worlds.LauncherComponents import components, Component, launch as launch_component

    def launch_client(*args: str):
        from .client.ap import launch
        launch_component(launch, name="Warcraft 3 Client", args=args)

    components.append(Component("Warcraft 3 Client", func=launch_client, game_name="Warcraft 3", supports_uri=True))
