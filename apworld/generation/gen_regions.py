"""
Generation relating to regions and locations
"""
from typing import TYPE_CHECKING, Callable, Iterable
from dataclasses import dataclass, field
import math

from BaseClasses import Region, Entrance, CollectionState, Location, Item, ItemClassification
from Options import OptionError
from ..data import tables, missions, heroes, locations, items, mission_orders
from .. import options

if TYPE_CHECKING:
    from ..world import Wc3World


@dataclass
class FinalizedMissionSlot:
    mission: missions.Wc3Mission
    flags: int
    requires: mission_orders.Requirement | None
    region: Region


def region_name(mission: missions.Wc3Mission) -> str:
    return f"{mission.short_name} {mission.mission_name}"


def completion_event_name(mission: missions.Wc3Mission) -> str:
    return f"Complete {mission.short_name} {mission.mission_name}"


def _connect_region(
    world: 'Wc3World', source: Region, target: Region, rule: Callable[[CollectionState], bool] | None = None
) -> None:
    connection = Entrance(world.player, f"{source.name} -> {target.name}", source)
    if rule:
        connection.access_rule = rule
    source.exits.append(connection)
    connection.connect(target)


def grid_start_and_side_length(num_missions: int) -> tuple[int, int]:
    side_length = math.ceil(math.sqrt(num_missions))
    start_index = 5 - math.ceil(side_length / 2)
    return start_index, side_length


def _resolve_requirements(requirement: mission_orders.Requirement | None) -> mission_orders.Requirement | None:
    if requirement is None:
        return None
    if requirement.amount < 0:
        requirement.amount = (
            len(requirement.slots)
            + len(requirement.items)
            + len(requirement.groups)
            + requirement.amount
            + 1
        )
    for subrequirement in requirement.groups:
        _resolve_requirements(subrequirement)
    return requirement


def _get_mission_dependencies(
    mission_order: dict[tuple[int, int], FinalizedMissionSlot],
    requirement: mission_orders.Requirement | None,
) -> list[tuple[int, int]]:
    result: list[tuple[int, int]] = []
    if requirement is None:
        return result
    for slot in requirement.slots:
        result.append(slot)
    for subrequirement in requirement.groups:
        result.extend(_get_mission_dependencies(mission_order, subrequirement))
    return result


def _requirement_to_callable(
    player: int,
    mission_order: dict[tuple[int, int], FinalizedMissionSlot],
    requirement: mission_orders.Requirement | None,
) -> Callable[['CollectionState'], bool] | None:
    if requirement is None:
        return None
    if requirement.amount == 0:
        return None
    if not requirement.slots and not requirement.items and not requirement.groups:
        return None
    target_amount = requirement.amount
    item_list = [item.item_name for item in requirement.items]
    required_missions = [mission_order[x, y].mission for (x, y) in requirement.slots]
    completion_events = [completion_event_name(mission) for mission in required_missions]
    raw_subrequirements = [
        _requirement_to_callable(player, mission_order, subrequirement)
        for subrequirement in requirement.groups
    ]
    free_count = 0
    subrequirements: list[Callable[['CollectionState'], bool]] = []
    for subreq in raw_subrequirements:
        if subreq is None:
            free_count += 1
        else:
            subrequirements.append(subreq)
    if free_count >= target_amount:
        return None


    if not requirement.slots and not requirement.groups:
        def item_rule(state: 'CollectionState') -> bool:
            return state.count_from_list(item_list, player) >= target_amount
        return item_rule
    if not requirement.items and not requirement.groups:
        def missions_rule(state: 'CollectionState') -> bool:
            return state.count_from_list_unique(completion_events, player) >= target_amount
        return missions_rule
    if not requirement.slots and not requirement.items:
        def groups_rule(state: 'CollectionState') -> bool:
            count = free_count
            for subrequirement in subrequirements:
                if subrequirement(state):
                    count += 1
                    if count >= requirement.amount:
                        return True
            return False
        return groups_rule
    def composite_subrule(state: 'CollectionState') -> bool:
        count = free_count
        if count >= target_amount:
            return True
        count = state.count_from_list(item_list, player)
        if count >= target_amount:
            return True
        return count + state.count_from_list_unique(completion_events, player) >= target_amount
    return composite_subrule


def configure_mission_order(world: 'Wc3World') -> None:
    assert not world.g.mission_order
    # Always linear for now
    mission_order_spec: Iterable[mission_orders.MissionSlot]
    if world.options.included_campaigns.value == {missions.Wc3Campaign.HUMAN_1.title_faction}:
        mission_order_spec = mission_orders.H1_SOLO_CAMPAIGN
    elif world.options.included_campaigns.value == {missions.Wc3Campaign.UNDEAD_1.title_faction}:
        mission_order_spec = mission_orders.U1_SOLO_CAMPAIGN
    elif world.options.included_campaigns.value == {missions.Wc3Campaign.ORC_1.title_faction}:
        mission_order_spec = mission_orders.O1_SOLO_CAMPAIGN
    else:
        # Make a little centered grid
        included_missions = [
            mission
            for mission in missions.Wc3Mission
            if mission.campaign.title_faction in world.options.included_campaigns.value
        ]
        start_index, side_length = grid_start_and_side_length(len(included_missions))
        world.random.shuffle(included_missions)
        mission_order_spec = [mission_orders.MissionSlot(
            start_index,
            start_index,
            mission_pool=(included_missions[0],),
        )]
        last_index = (start_index, start_index)
        for index, included_mission in enumerate(included_missions):
            grid_pos_y, grid_pos_x = divmod(index, side_length)
            mission_order_spec.append(mission_orders.MissionSlot(
                start_index + grid_pos_x,
                start_index + grid_pos_y,
                (included_mission,),
                requires=mission_orders.Requirement(slots=[last_index], amount=1)
            ))
            last_index = (start_index + grid_pos_x, start_index + grid_pos_y)
        mission_order_spec[-1].flags |= mission_orders.FLAG_GOAL
    for slot in mission_order_spec:
        # todo(mm): Mission pool resolution
        mission = slot.mission_pool[0]
        world.g.mission_order[slot.x, slot.y] = FinalizedMissionSlot(
            mission=mission,
            flags=slot.flags,
            requires=_resolve_requirements(slot.requires),
            region=Region(region_name(mission), world.player, world.multiworld),
        )


def create_regions(world: 'Wc3World') -> None:
    configure_mission_order(world)
    mission_order = world.g.mission_order

    menu_region = Region(world.origin_region_name, world.player, world.multiworld)
    world.g.regions.append(menu_region)

    for (x, y), slot in mission_order.items():
        mission = slot.mission
        new_region = slot.region
        world.g.missions.append(mission)
        world.g.regions.append(slot.region)

        # Access rules
        depend_slots = _get_mission_dependencies(mission_order, slot.requires)
        for depend_slot in depend_slots:
            if depend_slot not in mission_order:
                raise OptionError(
                    f"Mission at slot {x}, {y} depends on slot "
                    f"{depend_slot}, but that slot doesn't have a mission."
                )
            depend_mission_slot = mission_order[depend_slot]
            _connect_region(
                world,
                depend_mission_slot.region,
                new_region,
                _requirement_to_callable(world.player, mission_order, slot.requires),
            )
        if not depend_slots:
            _connect_region(
                world,
                menu_region,
                new_region,
                _requirement_to_callable(world.player, mission_order, slot.requires)
            )

        # Locations
        for location in locations.MISSION_TO_LOCATIONS[mission]:
            new_location = Location(world.player, location.global_name(), location.id, new_region)
            new_region.locations.append(new_location)
            world.g.locations.append(new_location)
            if location.type & locations.Wc3LocationType.VICTORY:
                # Completion event
                event_name = completion_event_name(mission)
                completion_event = Location(world.player, completion_event_name(mission), None, new_region)
                new_region.locations.append(completion_event)
                completion_event_item = Item(event_name, ItemClassification.progression, None, world.player)
                completion_event.place_locked_item(completion_event_item)
                world.g.events[mission] = completion_event
                # Victory Cache
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

        # Stats accounting
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
    victory_events = [
        completion_event_name(slot.mission)
        for slot in world.g.mission_order.values()
        if slot.flags & mission_orders.FLAG_GOAL
    ]
    def completion(state: CollectionState) -> bool:
        return state.has_all(victory_events, world.player)
    world.multiworld.completion_condition[world.player] = completion


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
