from typing import Any, cast
import unittest
import random
from argparse import Namespace
from BaseClasses import MultiWorld, CollectionState, PlandoOptions
from Generate import get_seed_name
from worlds import AutoWorld
from test.general import gen_steps, call_all

from ..world import Wc3World
from .. import options


class Wc3TestBase(unittest.TestCase):
    seed: int | None = None
    player = 1
    game = Wc3World.game

    def set_options(self, player_options: dict[str, Any]) -> options.Wc3Options:
        self.multiworld = MultiWorld(1)
        self.multiworld.game[self.player] = self.game
        self.multiworld.player_name = {self.player: "Tester"}
        self.multiworld.set_seed(self.seed)
        random.seed(self.multiworld.seed)
        self.multiworld.seed_name = get_seed_name(random)  # only called to get same RNG progression as Generate.py
        args = Namespace()
        for name, option in AutoWorld.AutoWorldRegister.world_types[self.game].options_dataclass.type_hints.items():
            new_option = option.from_any(player_options.get(name, option.default))
            new_option.verify(
                Wc3World,
                "Tester",
                PlandoOptions.items|PlandoOptions.connections|PlandoOptions.texts|PlandoOptions.bosses
            )
            setattr(args, name, {1: new_option})
        self.multiworld.set_options(args)
        self.world: Wc3World = cast(Wc3World, self.multiworld.worlds[self.player])
        return self.world.options
