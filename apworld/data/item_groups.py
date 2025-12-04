"""
Holds item group data in the `item_name_groups` module variable
"""
from typing import Iterable
from .items import Wc3Item

item_name_groups: dict[str, Iterable[str]] = {}

# RoC names that were changed in TFT
item_name_groups["Gyrocopter"] = (Wc3Item.FLYING_MACHINE.item_name,)
item_name_groups["Steam Tank"] = (Wc3Item.SIEGE_ENGINE.item_name,)
item_name_groups["Catapult"] = (Wc3Item.DEMOLISHER.item_name,)
item_name_groups["Wyvern"] = (Wc3Item.WIND_RIDER.item_name,)
item_name_groups["Ballista"] = (Wc3Item.GLAIVE_THROWER.item_name,)
