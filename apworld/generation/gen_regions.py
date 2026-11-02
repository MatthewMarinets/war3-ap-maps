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


def grid_square_start_and_side_length(num_missions: int) -> tuple[int, int]:
    side_length = math.ceil(math.sqrt(num_missions))
    start_index = 5 - math.ceil(side_length / 2)
    return start_index, side_length


def grid_get_factors(operand: int) -> tuple[int, int]:
    """Factorize `operand` into two multiplicands that have minimized difference (ie prefer 3x4 over 1x12)"""
    assert operand > 0
    for divisor in range(math.floor(math.sqrt(operand)), 1, -1):
        quotient = operand // divisor
        if quotient * divisor == operand:
            return divisor, quotient
    return 1, operand


def grid_rectangle_start_side_lengths_and_removals(num_missions: int) -> tuple[int, int, int, int, int]:
    if num_missions > 9:
        max_removals = 4
    else:
        max_removals = 2
    dimension_candidates = [
        (*grid_get_factors(num_missions + removals), removals)
        for removals in range(max_removals, -1, -1)
    ]
    # filter options that don't fit in the grid
    dimension_candidates = [
        candidate for candidate in dimension_candidates
        if candidate[0] <= 10 and candidate[1] <= 10
    ]
    assert dimension_candidates
    height, width, removals = min(dimension_candidates, key=lambda x: x[0] + x[1])
    start_x = 5 - ((width + 1) // 2)
    start_y = 5 - ((height + 1) // 2)
    return start_x, start_y, width, height, removals


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
    GRID_MAX_COORD = 9
    GRID_MID_COORD = 5
    excluded_missions = {
        mission for mission in missions.Wc3Mission
        if mission.short_name in world.options.excluded_missions.value
    }
    mission_order_spec: Iterable[mission_orders.MissionSlot]
    if (world.options.mission_order.value == options.MissionOrder.option_vanilla
        or (world.options.mission_order.value == options.MissionOrder.option_parallel_vanilla
            and len(world.options.included_campaigns.value) == 1
        )
    ):
        mission_list = [
            mission for mission in missions.Wc3Mission
            if mission.campaign.title_faction in world.options.included_campaigns.value
            and mission not in excluded_missions
        ]
        mission_slot_ids = mission_orders.SPIRAL_ORDER
        if len(mission_list) > len(mission_slot_ids):
            # Make a little centered grid
            start_index, side_length = grid_square_start_and_side_length(len(mission_list))
            mission_slot_ids = tuple(
                (start_index + x, start_index + y)
                for y in range(side_length)
                for x in range(side_length)
            )
        mission_order_spec = []
        for mission, mission_slot_id in zip(mission_list, mission_slot_ids):
            mission_slot = mission_orders.MissionSlot(*mission_slot_id, (mission,))
            if mission_order_spec:
                mission_slot.requires = mission_orders.Requirement([(mission_order_spec[-1].x, mission_order_spec[-1].y)])
            mission_order_spec.append(mission_slot)
        mission_order_spec[-1].flags |= mission_orders.FLAG_GOAL
    elif world.options.mission_order.value == options.MissionOrder.option_parallel_vanilla:
        num_campaigns = len(world.options.included_campaigns.value)
        min_y = GRID_MID_COORD - (num_campaigns // 2)
        mission_order_spec = []
        y = min_y
        for campaign in missions.Wc3Campaign:
            if campaign.title_faction not in world.options.included_campaigns.value:
                continue
            campaign_spec: list[mission_orders.MissionSlot] = []
            mission_list = [
                mission for mission in missions.Wc3Mission
                if mission.campaign == campaign
                and mission not in excluded_missions
            ]
            x = GRID_MID_COORD - ((len(mission_list) + 1) // 2)
            if x < 0:
                x = 0
            for mission in mission_list:
                mission_slot = mission_orders.MissionSlot(x, y, (mission,))
                if campaign_spec:
                    mission_slot.requires = mission_orders.Requirement([(campaign_spec[-1].x, campaign_spec[-1].y)])
                x += 1
                if x > GRID_MAX_COORD:
                    x = 0
                    y += 1
            campaign_spec[-1].flags |= mission_orders.FLAG_GOAL
            mission_order_spec.extend(campaign_spec)
            y += 1
    elif world.options.mission_order.value == options.MissionOrder.option_parallel_shuffled:
        num_campaigns = len(world.options.included_campaigns.value)
        min_y = GRID_MID_COORD - (num_campaigns // 2)
        mission_list = [
            mission for mission in missions.Wc3Mission
            if mission.campaign.title_faction in world.options.included_campaigns.value
            and mission not in excluded_missions
        ]
        world.random.shuffle(mission_list)
        width, num_extras = divmod(len(mission_list), num_campaigns)
        min_x = GRID_MID_COORD - ((width + 1) // 2)
        mission_list_index = 0
        mission_order_spec = []
        for campaign_index in range(num_campaigns):
            y = min_y + campaign_index
            campaign_spec = []
            for mission_index in range(width + (campaign_index < num_extras)):
                x = min_x + mission_index
                mission_slot = mission_orders.MissionSlot(x, y, (mission_list[mission_list_index],))
                mission_list_index += 1
                if campaign_spec:
                    mission_slot.requires = mission_orders.Requirement([(campaign_spec[-1].x, campaign_spec[-1].y)])
                campaign_spec.append(mission_slot)
            campaign_spec[-1].flags |= mission_orders.FLAG_GOAL
            mission_order_spec.extend(campaign_spec)
    elif world.options.mission_order.value == options.MissionOrder.option_grid:
        mission_list = [
            mission for mission in missions.Wc3Mission
            if mission.campaign.title_faction in world.options.included_campaigns.value
            and mission not in excluded_missions
        ]
        start_x, start_y, width, height, removals = grid_rectangle_start_side_lengths_and_removals(len(mission_list))
        top_removals = removals // 2
        bottom_removals = (removals + 1) // 2
        world.random.shuffle(mission_list)
        mission_order_spec = []
        used_coords: set[tuple[int, int]] = set()
        x = 0
        y = 0
        for mission in mission_list:
            mission_slot = mission_orders.MissionSlot(x + start_x, y + start_y, (mission,))
            mission_order_spec.append(mission_slot)
            used_coords.add((x + start_x, y + start_y))
            x += 1
            if (x >= width
                or (y == 0 and x >= (width - top_removals))
            ):
                x = 0
                y += 1
                if y == height - 1:
                    x += bottom_removals
        # requirements
        adjacents = ((-1, 0), (0, -1), (0, 1), (1, 0),)
        for mission_slot in mission_order_spec[1:]:
            sub_requirements: list[tuple[int, int]] = []
            for adjacent in adjacents:
                adjacent_coord = (mission_slot.x + adjacent[0], mission_slot.y + adjacent[1])
                if adjacent_coord in used_coords:
                    sub_requirements.append(adjacent_coord)
            mission_slot.requires = mission_orders.Requirement(slots=sub_requirements, amount=1)
        mission_order_spec[-1].flags |= mission_orders.FLAG_GOAL

    for slot in mission_order_spec:
        assert slot.x >= 0 and slot.x <= GRID_MAX_COORD, slot
        assert slot.y >= 0 and slot.y <= GRID_MAX_COORD, slot
        if len(slot.mission_pool) == 1:
            mission = slot.mission_pool[0]
        else:
            # todo(mm): Mission pool resolution
            raise NotImplementedError
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
            if (location.global_name() in world.options.exclude_locations.value
                and not (location.type & locations.Wc3LocationType.VICTORY)
            ):
                continue
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
        world.g.included_campaigns.add(mission.campaign)
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
        pool = items.CATEGORY_TO_ITEMS[items.Mercenary]
        world.random.shuffle(pool)
        mission_to_num_camps: dict[missions.Wc3Mission, int] = {}
        for mission in world.g.missions:
            num_camps = _get_num_mercenary_camps(mission, world.options.bonus_mercenary_camps.value)
            if num_camps < 1:
                continue
            mission_to_num_camps[mission] = num_camps
        # Narrow the pool based on the total number of camps
        if world.options.mercenary_allocation.value == options.MercenaryAllocation.option_vanilla_plus:
            NARROW_FACTOR = 7
            CLAMP_THRESHOLD = 3
        else:
            NARROW_FACTOR = 3
            CLAMP_THRESHOLD = 0
        pool_size = sum(mission_to_num_camps.values())*mercs_per_camp // NARROW_FACTOR
        max_camp_count = max(mission_to_num_camps.values())
        if pool_size + CLAMP_THRESHOLD < mercs_per_camp * max_camp_count:
            pool_size = mercs_per_camp * max_camp_count
        pool = pool[:pool_size]
        for mission, num_camps in mission_to_num_camps.items():
            mission_mercs = world.g.mercenary_allocation.setdefault(mission, {})
            for camp in range(num_camps):
                _assign_random_mercs_to_camp(world, pool, mission_mercs, camp, mercs_per_camp)
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
    world: 'Wc3World',
    pool: list[items.Wc3Item],
    mercs: dict[int, items.Wc3Item],
    camp: int,
    target_count: int
) -> None:
    MAX_PER_CAMP = tables.MAXIMUM_MERCENARIES_PER_CAMP
    merc_pool = list(pool)
    for index in range(MAX_PER_CAMP*camp, MAX_PER_CAMP*(camp+1)):
        if index in mercs and mercs[index] in merc_pool:
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
