"""Defines the top-level world class. Requires core imports."""
from typing import TYPE_CHECKING, Mapping, Any
from worlds.AutoWorld import World
from . import options, generation, rules
from . import items, locations


if TYPE_CHECKING:
    from BaseClasses import MultiWorld


class Wc3World(World):
    """
    Warcraft 3 is a fantasy real-time strategy game developed and published by Blizzard Entertainment.
    """
    # Static
    game = "Warcraft 3"

    item_names = set(item.item_name for item in items.Wc3Item)
    location_names = set(location.global_name() for location in locations.Wc3Location)
    item_name_to_id = items.item_name_to_id
    item_id_to_name = items.item_id_to_name
    location_name_to_id = locations.location_name_to_id
    location_id_to_name = locations.location_id_to_name
    item_name_groups = {}
    location_name_groups = {}
    options_dataclass = options.Wc3Options

    def __init__(self, multiworld: 'MultiWorld', player: int) -> None:
        super().__init__(multiworld, player)
        self.generation_info: generation.Generation | None = None

    def create_regions(self) -> None:
        self.generation_info = generation.Generation()
        self.generation_info.create_regions(self)
    
    def create_items(self) -> None:
        assert self.generation_info is not None
        self.generation_info.create_items(self)
    
    def set_rules(self) -> None:
        rules.set_rules(self)
    
    def fill_slot_data(self) -> Mapping[str, Any]:
        assert self.generation_info is not None
        result = self.generation_info.fill_slot_data(self)
        self.generation_info = None
        return result
