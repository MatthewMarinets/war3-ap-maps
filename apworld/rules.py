from typing import TYPE_CHECKING, Callable, Iterable

from .data.locations import Wc3Location
from .data.items import Wc3Item

if TYPE_CHECKING:
    from .world import Wc3World
    from BaseClasses import CollectionState


class Wc3Logic:
    def __init__(self, world: 'Wc3World') -> None:
        self.player = world.player
        # Note: Don't hold a reference to world here, as that will make a circular reference
    
    def has(self, state: 'CollectionState', item: Wc3Item, count: int = 1) -> bool:
        return state.has(item.item_name, self.player, count=count)
    
    def has_all(self, state: 'CollectionState', items: Iterable[Wc3Item]) -> bool:
        return state.has_all(tuple(x.item_name for x in items), self.player)

    def has_any(self, state: 'CollectionState', items: Iterable[Wc3Item]) -> bool:
        return state.has_any(tuple(x.item_name for x in items), self.player)
    
    def has_from_each_group(
        self, state: 'CollectionState', items: Iterable[Iterable[Wc3Item]], count: int = 1
    ) -> bool:
        return all(state.has_from_list((x.item_name for x in group), self.player, count) for group in items)
    
    def has_all_from_any_group(
        self, state: 'CollectionState', items: Iterable[Iterable[Wc3Item]],
    ) -> bool:
        return any(state.has_all((x.item_name for x in group), self.player) for group in items)
    
    def human_has_footman(self, state: 'CollectionState') -> bool:
        return self.has(state, Wc3Item.FOOTMAN)
    
    def human_has_healing(self, state: 'CollectionState') -> bool:
        return self.has_any(state, (Wc3Item.PRIEST, Wc3Item.HUMAN_SCROLL_OF_REGENERATION))
    
    def orc_has_healing(self, state: 'CollectionState') -> bool:
        return (
            self.has_any(state, (Wc3Item.ORC_HEALING_SALVE))
            or (self.has(state, Wc3Item.WITCH_DOCTOR)
                and self.has(state, Wc3Item.WITCH_DOCTOR_TRAINING, 2)
            )
        )
    
    def nelf_has_healing(self, state: 'CollectionState') -> bool:
        return self.has_all_from_any_group(state, (
            (Wc3Item.NELF_WELLSPRING,),
            (Wc3Item.DRUID_OF_THE_CLAW, Wc3Item.DRUID_OF_THE_CLAW_TRAINING,),
        ))
    
    def undead_has_healing(self, state: 'CollectionState') -> bool:
        return (
            self.has_any(state, (Wc3Item.OBSIDIAN_STATUE, Wc3Item.SHOP_ITEM_SCROLL_OF_HEALING))
        )
    
    def human_has_dispel(self, state: 'CollectionState') -> bool:
        return (
            self.has_any(state, (Wc3Item.SPELL_BREAKER, Wc3Item.ARCANE_TOWER))
            or self.has_all(state, (Wc3Item.PRIEST, Wc3Item.PRIEST_TRAINING))
        )
    
    def orc_has_dispel(self, state: 'CollectionState') -> bool:
        return self.has_all_from_any_group(state, (
            (Wc3Item.SHAMAN,),
            (Wc3Item.SPIRIT_WALKER, Wc3Item.SPIRIT_WALKER_TRAINING,),
        ))
    
    def nelf_has_dispel(self, state: 'CollectionState') -> bool:
        return self.has_all_from_any_group(state, (
            (Wc3Item.WISP,),
            (Wc3Item.DRYAD, Wc3Item.DRYAD_ABOLISH_MAGIC,),
        ))


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
