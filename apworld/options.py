"""Defines options. Requires core imports."""
from typing import TYPE_CHECKING
from dataclasses import dataclass

import Options as baseoptions


if TYPE_CHECKING:
    from worlds.AutoWorld import World
    from . import Wc3World


class IncludedCampaigns(baseoptions.OptionList):
    valid_keys = ('Human', 'Undead', 'Orc', 'Night Elf')



@dataclass
class Wc3Options(baseoptions.PerGameCommonOptions):
    included_campaigns: IncludedCampaigns
