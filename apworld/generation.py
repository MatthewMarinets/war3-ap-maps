"""Generation functions. Requires core imports."""
from typing import Mapping, Any, Callable, TYPE_CHECKING

from BaseClasses import Region, CollectionState, Entrance, Item, Location
from . import missions, locations, items

if TYPE_CHECKING:
    from .world import Wc3World


REGION_TO_LOCATIONS: dict[str, list[locations.Wc3Location]] = {}
for location in locations.Wc3Location:
    REGION_TO_LOCATIONS.setdefault(location.mission.mission_name, []).append(location)


def connect_region(
    world: 'Wc3World', source: Region, target: Region, rule: Callable[[CollectionState], bool] | None = None
) -> None:
    connection = Entrance(world.player, f"{source.name} -> {target.name}", source)
    if rule:
        connection.access_rule = rule
    source.exits.append(connection)
    connection.connect(target)


class Generation:
    def __init__(self) -> None:
        self.regions: list[Region] = []
        self.locations: list[Location] = []
        self.items: list[Item] = []

    def create_regions(self, world: 'Wc3World') -> None:
        self.regions.append(Region(world.origin_region_name, world.player, world.multiworld))
        # TODO: more campaigns
        active_campaigns = {missions.Wc3Campaign.HUMAN_1}
        for mission in missions.Wc3Mission:
            if mission.campaign not in active_campaigns:
                continue
            new_region = Region(mission.mission_name, world.player, world.multiworld)
            connect_region(world, self.regions[-1], new_region)
            for location in REGION_TO_LOCATIONS.get(mission.mission_name, ()):
                new_location = Location(world.player, location.global_name(), location.id, new_region)
                new_region.locations.append(new_location)
                self.locations.append(new_location)
            self.regions.append(new_region)
        world.multiworld.regions += self.regions

    def create_items(self, world: 'Wc3World') -> None:
        pass

    def fill_slot_data(self, world: 'Wc3World') -> Mapping[str, Any]:
        return {
            "version_major": 0,
            "version_minor": 1,
        }
