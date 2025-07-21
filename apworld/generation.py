"""Generation functions. Requires core imports."""
from typing import Mapping, Any, Callable, TYPE_CHECKING

from BaseClasses import Region, CollectionState, Entrance, Item, Location, ItemClassification
from .data import locations, items, missions, heroes, tables

if TYPE_CHECKING:
    from .world import Wc3World
    from .options import Wc3Options


VERSION_PUBLIC = 0
VERSION_MAJOR = 0
VERSION_MINOR = 1


REGION_TO_LOCATIONS: dict[str, list[locations.Wc3Location]] = {}
for location in locations.Wc3Location:
    REGION_TO_LOCATIONS.setdefault(location.mission.mission_name, []).append(location)


def get_included_races_and_campaigns(options: 'Wc3Options') -> tuple[missions.Wc3Race, list[missions.Wc3Campaign]]:
    included_races: missions.Wc3Race = missions.Wc3Race.NONE
    included_campaigns: missions.Wc3Campaign = []
    if missions.Wc3Campaign.HUMAN_1.title_faction in options.included_campaigns:
        included_races |= missions.Wc3Race.HUMAN
        included_campaigns.append(missions.Wc3Campaign.HUMAN_1)
    if missions.Wc3Campaign.UNDEAD_1.title_faction in options.included_campaigns:
        included_races |= missions.Wc3Race.UNDEAD
        included_campaigns.append(missions.Wc3Campaign.UNDEAD_1)
    if missions.Wc3Campaign.ORC_1.title_faction in options.included_campaigns:
        included_races |= missions.Wc3Race.ORC
        included_campaigns.append(missions.Wc3Campaign.ORC_1)
    if missions.Wc3Campaign.NIGHT_ELF_1.title_faction in options.included_campaigns:
        included_races |= missions.Wc3Race.NIGHT_ELF
        included_campaigns.append(missions.Wc3Campaign.NIGHT_ELF_1)
    if missions.Wc3Campaign.NIGHT_ELF_2.title_faction in options.included_campaigns:
        included_races |= missions.Wc3Race.NIGHT_ELF | missions.Wc3Race.NAGA
        included_campaigns.append(missions.Wc3Campaign.NIGHT_ELF_2)
    if missions.Wc3Campaign.HUMAN_2.title_faction in options.included_campaigns:
        included_races |= missions.Wc3Race.HUMAN | missions.Wc3Race.BLOOD_ELF | missions.Wc3Race.NAGA
        included_campaigns.append(missions.Wc3Campaign.HUMAN_2)
    if missions.Wc3Campaign.UNDEAD_2.title_faction in options.included_campaigns:
        included_races |= missions.Wc3Race.UNDEAD
        included_campaigns.append(missions.Wc3Campaign.UNDEAD_2)
    return included_races, included_campaigns



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
        self.hero_slots: set[heroes.HeroSlot] = set()
        self.item_channels: set[heroes.ItemChannel] = set()
        self.included_races: missions.Wc3Race = missions.Wc3Race.NONE
        self.included_campaigns: list[missions.Wc3Campaign] = []

    def create_regions(self, world: 'Wc3World') -> None:
        self.regions.append(Region(world.origin_region_name, world.player, world.multiworld))
        if len(world.options.included_campaigns.value) == 0:
            self.included_campaigns = set(missions.Wc3Campaign)
        else:
            self.included_campaigns = set(
                campaign
                for campaign in missions.Wc3Campaign
                if campaign.title_faction in world.options.included_campaigns
            )
        for mission in missions.Wc3Mission:
            if mission.campaign not in self.included_campaigns:
                continue
            new_region = Region(mission.mission_name, world.player, world.multiworld)
            connect_region(world, self.regions[-1], new_region)
            for location in REGION_TO_LOCATIONS.get(mission.mission_name, ()):
                new_location = Location(world.player, location.global_name(), location.id, new_region)
                new_region.locations.append(new_location)
                self.locations.append(new_location)
            self.regions.append(new_region)
            self.included_races |= mission.race
            for hero_slot in tables.MISSION_TO_HERO_SLOT[mission]:
                self.hero_slots.add(hero_slot)
            for item_channel in tables.mission_to_item_channel(mission):
                if item_channel != heroes.ItemChannel.NONE:
                    self.item_channels.add(item_channel)
        world.multiworld.regions += self.regions

    def create_items(self, world: 'Wc3World') -> None:
        for item_type in items.Wc3Item:
            if isinstance(item_type.type, items.Unit):
                if item_type.type.race & self.included_races:
                    self.items.append(Item(item_type.item_name, ItemClassification.progression, item_type.id, world.player))
            elif isinstance(item_type.type, items.Building):
                if item_type.type.race & self.included_races:
                    self.items.append(Item(item_type.item_name, ItemClassification.progression, item_type.id, world.player))
            elif isinstance(item_type.type, items.Level):
                if item_type.type.slot in self.hero_slots:
                    for _ in range(10 - item_type.type.start_level_cap):
                        self.items.append(Item(item_type.item_name, ItemClassification.progression, item_type.id, world.player))
            elif isinstance(item_type.type, items.Upgrade):
                if item_type.type.race in self.included_races:
                    for _ in range(item_type.type.quantity):
                        self.items.append(Item(item_type.item_name, ItemClassification.useful, item_type.id, world.player))
            elif isinstance(item_type.type, items.ShopItem):
                if item_type.type.race in self.included_races:
                    self.items.append(Item(item_type.item_name, ItemClassification.useful, item_type.id, world.player))
            elif isinstance(item_type.type, items.PickupItem):
                if item_type.type.channel in self.item_channels:
                    for _ in range(item_type.type.quantity):
                        self.items.append(Item(item_type.item_name, ItemClassification.useful, item_type.id, world.player))
            elif isinstance(item_type.type, items.QuestItem):
                if item_type.type.vanilla_mission.mission_name in [region.name for region in self.regions]:
                    self.items.append(Item(item_type.item_name, ItemClassification.progression, item_type.id, world.player))
            else:
                raise ValueError(f"Item {item_type} has unknown type {type(item_type.type)}")

        world.multiworld.itempool += self.items

    def fill_slot_data(self, world: 'Wc3World') -> Mapping[str, Any]:
        return {
            "version_public": VERSION_PUBLIC,
            "version_major": VERSION_MAJOR,
            "version_minor": VERSION_MINOR,
        }
