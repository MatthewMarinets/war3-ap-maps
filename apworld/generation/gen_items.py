"""
Generation relating to items
"""
from typing import TYPE_CHECKING
from collections import Counter

from BaseClasses import Item, ItemClassification
from ..data import items, heroes, tables

if TYPE_CHECKING:
    from ..world import Wc3World


ITEM_TYPE_TO_CLASSIFICATION = {
    items.Unit: ItemClassification.progression,
    items.Building: ItemClassification.progression,
    items.Level: ItemClassification.progression,
    items.Upgrade: ItemClassification.progression,
    items.ShopItem: ItemClassification.useful,
    items.PickupItem: ItemClassification.useful,
    items.QuestItem: ItemClassification.progression,
    items.CaptainPromotion: ItemClassification.progression,
    items.Resources: ItemClassification.filler,
    items.Mercenary: ItemClassification.useful,
}


def _new_item(world: 'Wc3World', item_type: items.Wc3Item) -> Item:
    if isinstance(item_type.type, items.PickupItem) and item_type.type.charged:
        classification = ItemClassification.filler
    else:
        classification = ITEM_TYPE_TO_CLASSIFICATION[item_type.type.__class__]
    return Item(
        item_type.item_name,
        classification,
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

    # Fill with filler
    if len(world.g.items) < len(world.g.locations):
        item_channels: Counter[heroes.ItemChannel] = Counter()
        for mission in world.g.missions:
            for item_channel in tables.mission_to_item_channel(mission):
                if item_channel is not heroes.ItemChannel.NONE:
                    item_channels[item_channel] += 1
        filler_items = [items.Wc3Item.FILLER_GOLD]
        filler_weights = [1]
        for item in items.CATEGORY_TO_ITEMS[items.PickupItem]:
            assert isinstance(item.type, items.PickupItem)
            if item.type.charged and item.type.channel in item_channels:
                filler_items.append(item)
                filler_weights.append(item_channels[item.type.channel])
        world.g.items.extend(
            _new_item(world, item)
            for item in world.random.choices(
                filler_items,
                weights=filler_weights,
                k=len(world.g.locations) - len(world.g.items)
            )
        )

    world.multiworld.itempool += world.g.items

