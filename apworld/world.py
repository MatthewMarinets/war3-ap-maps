"""Defines the top-level world class. Requires core imports."""
from typing import TYPE_CHECKING, Mapping, Any, ClassVar, Callable
from dataclasses import dataclass, field
from collections import Counter

from worlds.AutoWorld import World, WebWorld
from BaseClasses import Item, Tutorial, ItemClassification
from .data import (
    items as mitems,
    locations as mlocations,
    missions as mmissions,
    item_groups,
    heroes,
)
from . import options, rules
from .generation import gen_options, gen_regions, gen_items, gen_slot_data


if TYPE_CHECKING:
    from BaseClasses import MultiWorld, CollectionState, Region, Location


class Wc3WebWorld(WebWorld):
    setup_en = Tutorial(
        "Multiworld Setup Guide",
        "A guide to setting up the Starcraft 2 randomizer connected to an Archipelago Multiworld",
        "English",
        "setup_en.md",
        "setup/en",
        ["Phaneros"]
    )

    tutorials = [setup_en]
    game_info_languages = ["en"]
    # options_presets = wc2_options_presets
    # option_groups = option_groups


@dataclass(slots=True)
class GenerationData:
    regions: list['Region'] = field(default_factory=list)
    locations: list['Location'] = field(default_factory=list)
    items: list[Item] = field(default_factory=list)
    locked_items: Counter[mitems.Wc3Item] = field(default_factory=Counter)
    missions: list[mmissions.Wc3Mission] = field(default_factory=list)
    hero_slots: Counter[heroes.HeroSlot] = field(default_factory=Counter)
    item_channels: set[heroes.ItemChannel] = field(default_factory=set)
    included_races: mmissions.Wc3Race = mmissions.Wc3Race.NONE
    included_campaigns: frozenset[mmissions.Wc3Campaign] = frozenset()
    mercenary_allocation: dict[mmissions.Wc3Mission, dict[int, mitems.Wc3Item]] = field(default_factory=dict)
    used_mercenaries: set[mitems.Wc3Item] = field(default_factory=set)
    location_to_rule: dict[mlocations.Wc3Location | int, Callable[['CollectionState'], bool]] = (
        field(default_factory=dict)
    )


class Wc3World(World):
    """
    Warcraft 3 is a fantasy real-time strategy game developed and published by Blizzard Entertainment.
    """
    # Static
    game = "Warcraft 3"

    item_names = set(item.item_name for item in mitems.Wc3Item)
    location_names = set(location.global_name() for location in mlocations.Wc3Location)
    item_name_to_id = mitems.item_name_to_id
    item_id_to_name = mitems.item_id_to_name
    location_name_to_id = mlocations.location_name_to_id
    location_id_to_name = mlocations.location_id_to_name
    item_name_groups: ClassVar[dict[str, set[str]]] = {
        k: set(v) for k, v in item_groups.item_name_groups.items()
    }
    location_name_groups: ClassVar[dict[str, set[str]]] = {}
    options_dataclass = options.Wc3Options
    options: options.Wc3Options
    web = Wc3WebWorld()

    __slots__ = ('g',)

    def __init__(self, multiworld: 'MultiWorld', player: int) -> None:
        super().__init__(multiworld, player)
        # Separated off to use slots and segregate it from the yucky inheritance
        self.g = GenerationData()

    def generate_early(self) -> None:
        gen_options.process_options(self)

    def create_regions(self) -> None:
        self.g.location_to_rule = rules.get_location_to_rules(self)
        gen_regions.create_regions(self)

    def create_items(self) -> None:
        gen_items.create_items(self)

    def create_item(self, name: str) -> Item:
        item_type = mitems.NAME_TO_ITEM.get(name, mitems.Wc3Item.FILLER_GOLD)
        return Item(
            item_type.item_name,
            gen_items.ITEM_TYPE_TO_CLASSIFICATION[item_type.type.__class__],
            item_type.id,
            self.player
        )

    def set_rules(self) -> None:
        rules.set_rules(self)

    def get_filler_item_name(self) -> str:
        return mitems.Wc3Item.FILLER_GOLD.item_name

    def fill_slot_data(self) -> Mapping[str, Any]:
        return gen_slot_data.fill_slot_data(self)
