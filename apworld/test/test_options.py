
import unittest
from .. import options
from ..data import heroes


class TestOptions(unittest.TestCase):
    NUM_TRIALS = 100

    def test_hero_non_vanilla(self) -> None:
        options_to_test = (
            options.PaladinArthasHero,
            options.JainaHero,
            options.MuradinBronzebeardHero,
        )
        for _ in range(self.NUM_TRIALS):
            for option_class in options_to_test:
                opt = option_class.from_text("random-non-vanilla")
                self.assertNotEqual(opt.value, option_class.default)

    def test_hero_non_vanilla_class(self) -> None:
        for _ in range(self.NUM_TRIALS):
            opt = options.PaladinArthasHero.from_text("random-non-vanilla-class")
            opt_class = heroes.HERO_CHOICE_ID_TO_DATA[opt.value].hero_class
            self.assertNotEqual(opt_class, heroes.HeroClass.PALADIN)
