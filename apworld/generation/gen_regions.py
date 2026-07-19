"""
Generation relating to regions and locations
"""
from typing import TYPE_CHECKING, Callable

from BaseClasses import Region, Entrance, CollectionState, Location, Item, ItemClassification
from ..data import tables, missions, heroes, locations, items
from .. import options

if TYPE_CHECKING:
    from ..world import Wc3World


REGION_TO_LOCATIONS: dict[str, list[locations.Wc3Location]] = {}
for location in locations.Wc3Location:
    REGION_TO_LOCATIONS.setdefault(location.mission.mission_name, []).append(location)


def _connect_region(
    world: 'Wc3World', source: Region, target: Region, rule: Callable[[CollectionState], bool] | None = None
) -> None:
    connection = Entrance(world.player, f"{source.name} -> {target.name}", source)
    if rule:
        connection.access_rule = rule
    source.exits.append(connection)
    connection.connect(target)


def create_regions(world: 'Wc3World') -> None:
        world.g.regions.append(Region(world.origin_region_name, world.player, world.multiworld))
        if len(world.options.included_campaigns.value) == 0:
            world.g.included_campaigns = options.IncludedCampaigns.default
        else:
            world.g.included_campaigns = frozenset(
                campaign
                for campaign in missions.Wc3Campaign
                if campaign.title_faction in world.options.included_campaigns
            )
        for mission in missions.Wc3Mission:
            if mission.campaign not in world.g.included_campaigns:
                continue
            world.g.missions.append(mission)
            new_region = Region(f'{mission.short_name} {mission.mission_name}', world.player, world.multiworld)
            _connect_region(
                world,
                world.g.regions[-1],
                new_region,
                world.g.location_to_rule.get(locations.MISSION_TO_VICTORY_LOCATION[mission])
            )
            for location in REGION_TO_LOCATIONS[mission.mission_name]:
                if location.type & locations.Wc3LocationType.VICTORY:
                    for victory_cache_index in range(world.options.victory_cache.value):
                        victory_cache_id = location.id + locations.VICTORY_CACHE_OFFSET + victory_cache_index
                        new_location = Location(
                            world.player,
                            locations.location_id_to_name[victory_cache_id],
                            victory_cache_id,
                            new_region,
                        )
                        new_region.locations.append(new_location)
                        world.g.locations.append(new_location)
                new_location = Location(world.player, location.global_name(), location.id, new_region)
                new_region.locations.append(new_location)
                world.g.locations.append(new_location)
            world.g.regions.append(new_region)
            world.g.included_races |= mission.race
            for hero_slot in tables.MISSION_TO_HERO_SLOT[mission]:
                world.g.hero_slots[hero_slot] += 1
            for item_channel in tables.mission_to_item_channel(mission):
                if item_channel != heroes.ItemChannel.NONE:
                    world.g.item_channels.add(item_channel)
        world.multiworld.regions += world.g.regions

        _set_completion_condition(world)
        _regions_assign_mercs(world)


def _set_completion_condition(world: 'Wc3World') -> None:
    victory_region: Region = world.g.regions[-1]
    victory_event_location = Location(world.player, "Victory", None, victory_region)
    victory_region.locations.append(victory_event_location)
    victory_name = f"Win ({victory_region.name})"
    victory_event_item = Item(victory_name, ItemClassification.progression, None, world.player)
    victory_event_location.place_locked_item(victory_event_item)
    def completion(state: CollectionState) -> bool:
        return state.has(victory_name, world.player)
    world.multiworld.completion_condition[world.player] = completion

    # Set access rule
    victory_mission = world.g.missions[-1]
    victory_wc3_location = locations.MISSION_TO_LOCATIONS[victory_mission][0]
    victory_event_location.access_rule = world.g.location_to_rule.get(
        victory_wc3_location, victory_event_location.access_rule
    )


def _regions_assign_mercs(world: 'Wc3World') -> None:
    mercs_per_camp: int = world.options.mercenaries_per_camp.value
    if (world.options.mercenary_allocation.value == options.MercenaryAllocation.option_vanilla
        or world.options.mercenary_allocation.value == options.MercenaryAllocation.option_vanilla_plus
    ):
        world.g.mercenary_allocation.update(tables.MISSION_TO_VANILLA_MERCENARIES)
        world.g.mercenary_allocation.update(tables.MISSION_TO_PRESET_MERCENARIES)
    if (world.options.mercenary_allocation.value == options.MercenaryAllocation.option_vanilla_plus
        or world.options.mercenary_allocation.value == options.MercenaryAllocation.option_full_random
    ):
        for mission in world.g.missions:
            num_camps = _get_num_mercenary_camps(mission, world.options.bonus_mercenary_camps.value)
            if num_camps < 1:
                continue
            mission_mercs = world.g.mercenary_allocation.setdefault(mission, {})
            camp = 0
            while camp < num_camps:
                _assign_random_mercs_to_camp(world, mission_mercs, camp, mercs_per_camp)
                camp += 1
    if world.options.mercenary_allocation.value == options.MercenaryAllocation.option_species:
        species_pool = list(tables.CREEP_SPECIES_TO_ITEMS)
        world.random.shuffle(species_pool)
        for mission in world.g.missions:
            num_camps = _get_num_mercenary_camps(mission, world.options.bonus_mercenary_camps.value)
            if num_camps < 1:
                continue
            mission_mercs = world.g.mercenary_allocation.setdefault(mission, {})
            species = 0
            species_offset = 0
            for camp in range(num_camps):
                for index in range(mercs_per_camp):
                    mission_mercs[tables.MAXIMUM_MERCENARIES_PER_CAMP*camp + index] = (
                        tables.CREEP_SPECIES_TO_ITEMS[species_pool[species]][species_offset]
                    )
                    species_offset += 1
                    if species_offset >= len(tables.CREEP_SPECIES_TO_ITEMS[species_pool[species]]):
                        species += 1
                        species_offset = 0

    # Lock at least one merc in every H8 camp
    if missions.Wc3Mission.H8_DISSENSION in world.g.missions:
        dissension_mercs = world.g.mercenary_allocation.get(missions.Wc3Mission.H8_DISSENSION, {})
        locked_camps = {0: False, 1: False, 2: False}
        shuffled_keys = list(dissension_mercs)
        world.random.shuffle(shuffled_keys)
        for key in shuffled_keys:
            camp = key // tables.MAXIMUM_MERCENARIES_PER_CAMP
            if not locked_camps[camp]:
                locked_camps[camp] = True
                merc_item = dissension_mercs[key]
                world.g.locked_items[merc_item] = min(1, world.g.locked_items[merc_item])


def _assign_random_mercs_to_camp(
    world: 'Wc3World', mercs: dict[int, items.Wc3Item], camp: int, target_count: int
) -> None:
    MAX_PER_CAMP = tables.MAXIMUM_MERCENARIES_PER_CAMP
    merc_pool = list(items.CATEGORY_TO_ITEMS[items.Mercenary])
    for index in range(MAX_PER_CAMP*camp, MAX_PER_CAMP*(camp+1)):
        if index in mercs:
            merc_pool.remove(mercs[index])
    world.random.shuffle(merc_pool)
    draw_index = 0
    for index in range(MAX_PER_CAMP*camp, MAX_PER_CAMP*camp + target_count):
        if index not in mercs:
            mercs[index] = merc_pool[draw_index]
            draw_index += 1


def _get_num_mercenary_camps(mission: missions.Wc3Mission, bonus_camps: int) -> int:
    if not bonus_camps or mission in tables.MISSION_TO_NUM_VANILLA_MERC_CAMPS:
        return tables.MISSION_TO_NUM_VANILLA_MERC_CAMPS.get(mission, 0)
    if mission in tables.MISSION_TO_PRESET_MERCENARIES:
        return 1
    return 0
