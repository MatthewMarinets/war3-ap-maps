"""
Generation relating to items
"""
from typing import TYPE_CHECKING, Mapping, Any

from BaseClasses import Item, ItemClassification
from ..data import items

if TYPE_CHECKING:
    from ..world import Wc3World


ITEM_TYPE_TO_CLASSIFICATION = {
    items.Unit: ItemClassification.progression,
    items.Building: ItemClassification.progression,
    items.Level: ItemClassification.progression,
    items.Upgrade: ItemClassification.useful,
    items.ShopItem: ItemClassification.useful,
    items.PickupItem: ItemClassification.useful,
    items.QuestItem: ItemClassification.progression,
    items.CaptainPromotion: ItemClassification.progression,
    items.Resources: ItemClassification.filler,
    items.Mercenary: ItemClassification.useful,
}


def _new_item(world: 'Wc3World', item_type: items.Wc3Item) -> Item:
    return Item(
        item_type.item_name,
        ITEM_TYPE_TO_CLASSIFICATION[item_type.type.__class__],
        item_type.id,
        world.player
    )

def create_items(world: 'Wc3World') -> None:
    used_mercenaries: set[items.Wc3Item] = set()
    for mercs in world.g.mercenary_allocation.values():
        used_mercenaries.update(mercs.values())

    tentative_items: list[Item] = []
    for item_type in items.Wc3Item:
        if isinstance(item_type.type, items.Unit):
            if item_type.type.race & world.g.included_races:
                world.g.items.append(_new_item(world, item_type))
        elif isinstance(item_type.type, items.Building):
            if item_type.type.race & world.g.included_races:
                world.g.items.append(_new_item(world, item_type))
        elif isinstance(item_type.type, items.Level):
            num_missions = world.g.hero_slots[item_type.type.slot]
            if num_missions:
                for index in range(10 - item_type.type.start_level_cap):
                    new_item = _new_item(world, item_type)
                    if index < num_missions:
                        world.g.items.append(new_item)
                    else:
                        tentative_items.append(new_item)
        elif isinstance(item_type.type, items.Upgrade):
            if item_type.type.race in world.g.included_races:
                for _ in range(item_type.type.quantity):
                    world.g.items.append(_new_item(world, item_type))
        elif isinstance(item_type.type, items.ShopItem):
            if item_type.type.race in world.g.included_races:
                tentative_items.append(_new_item(world, item_type))
        elif isinstance(item_type.type, items.PickupItem):
            if item_type.type.channel in world.g.item_channels:
                for index in range(item_type.type.quantity):
                    new_item = _new_item(world, item_type)
                    if index >= item_type.type.locked:
                        tentative_items.append(new_item)
                    else:
                        world.g.items.append(new_item)
        elif isinstance(item_type.type, items.QuestItem):
            if item_type.type.vanilla_mission in world.g.missions:
                world.g.items.append(_new_item(world, item_type))
        elif isinstance(item_type.type, items.CaptainPromotion):
            if item_type.type.campaign in world.g.included_campaigns:
                world.g.items.append(_new_item(world, item_type))
        elif isinstance(item_type.type, items.Resources):
            tentative_items.append(_new_item(world, item_type))
        elif isinstance(item_type.type, items.Mercenary):
            if item_type in used_mercenaries:
                new_item = _new_item(world, item_type)
                if item_type in world.g.locked_items:
                    world.g.items.append(new_item)
                else:
                    tentative_items.append(new_item)
        else:
            raise ValueError(f"Item {item_type} has unknown type {type(item_type.type)}")

    if len(world.g.items) < len(world.g.locations):
        world.random.shuffle(tentative_items)
        print('\n'.join(map(str, tentative_items[len(world.g.locations) - len(world.g.items):])))
        world.g.items.extend(tentative_items[:len(world.g.locations) - len(world.g.items)])

    world.multiworld.itempool += world.g.items

