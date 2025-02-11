from typing import TYPE_CHECKING, Callable

from .locations import Wc3Location
from .items import Wc3Item

if TYPE_CHECKING:
    from .world import Wc3World
    from BaseClasses import CollectionState


class Wc3Logic:
    def __init__(self, world: 'Wc3World') -> None:
        self.player = world.player
        # Note: Don't hold a reference to world here, as that will make a circular reference
    
    def has_footman(self, state: 'CollectionState') -> bool:
        return state.has(Wc3Item.FOOTMAN.item_name, self.player)


def set_rules(world: 'Wc3World') -> None:
    logic = Wc3Logic(world)
    location_to_rule: dict[int, Callable[['CollectionState'], bool]] = {
        Wc3Location.HU2_ESTABLISH_BASE.id: logic.has_footman,
    }
    assert world.generation_info is not None
    for location in world.generation_info.locations:
        if location.address is None:
            continue
        rule = location_to_rule.get(location.address)
        if rule is None:
            continue
        location.access_rule = rule
