"""Generation functions. Requires core imports."""
from typing import Mapping, Any, Callable, TYPE_CHECKING
from dataclasses import fields
import time
from collections import Counter

from BaseClasses import Region, CollectionState, Entrance, Item, Location, ItemClassification
from .data import locations, items, missions, heroes, tables

from . import options, rules

if TYPE_CHECKING:
    from .world import Wc3World
    from random import Random


VERSION_PUBLIC = 0
VERSION_MAJOR = 0
VERSION_MINOR = 1


REGION_TO_LOCATIONS: dict[str, list[locations.Wc3Location]] = {}
for location in locations.Wc3Location:
    REGION_TO_LOCATIONS.setdefault(location.mission.mission_name, []).append(location)


def get_included_races_and_campaigns(
    world_options: options.Wc3Options,
) -> tuple[missions.Wc3Race, list[missions.Wc3Campaign]]:
    included_races: missions.Wc3Race = missions.Wc3Race.NONE
    included_campaigns: list[missions.Wc3Campaign] = []
    if missions.Wc3Campaign.HUMAN_1.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.HUMAN
        included_campaigns.append(missions.Wc3Campaign.HUMAN_1)
    if missions.Wc3Campaign.UNDEAD_1.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.UNDEAD
        included_campaigns.append(missions.Wc3Campaign.UNDEAD_1)
    if missions.Wc3Campaign.ORC_1.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.ORC
        included_campaigns.append(missions.Wc3Campaign.ORC_1)
    if missions.Wc3Campaign.NIGHT_ELF_1.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.NIGHT_ELF
        included_campaigns.append(missions.Wc3Campaign.NIGHT_ELF_1)
    if missions.Wc3Campaign.NIGHT_ELF_2.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.NIGHT_ELF | missions.Wc3Race.NAGA
        included_campaigns.append(missions.Wc3Campaign.NIGHT_ELF_2)
    if missions.Wc3Campaign.HUMAN_2.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.HUMAN | missions.Wc3Race.BLOOD_ELF | missions.Wc3Race.NAGA
        included_campaigns.append(missions.Wc3Campaign.HUMAN_2)
    if missions.Wc3Campaign.UNDEAD_2.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.UNDEAD
        included_campaigns.append(missions.Wc3Campaign.UNDEAD_2)
    return included_races, included_campaigns


def get_num_mercenary_camps(mission: missions.Wc3Mission, bonus_camps: int) -> int:
    if not bonus_camps or mission in tables.MISSION_TO_NUM_VANILLA_MERC_CAMPS:
        return tables.MISSION_TO_NUM_VANILLA_MERC_CAMPS.get(mission, 0)
    if mission in tables.MISSION_TO_PRESET_MERCENARIES:
        return 1
    return 0


def connect_region(
    world: 'Wc3World', source: Region, target: Region, rule: Callable[[CollectionState], bool] | None = None
) -> None:
    connection = Entrance(world.player, f"{source.name} -> {target.name}", source)
    if rule:
        connection.access_rule = rule
    source.exits.append(connection)
    connection.connect(target)


class Generation:
    def __init__(self, world: 'Wc3World') -> None:
        self.player = world.player
        self.regions: list[Region] = []
        self.locations: list[Location] = []
        self.items: list[Item] = []
        self.locked_items: Counter[items.Wc3Item] = Counter()
        self.missions: list[missions.Wc3Mission] = []
        self.hero_slots: Counter[heroes.HeroSlot] = Counter()
        self.item_channels: set[heroes.ItemChannel] = set()
        self.included_races: missions.Wc3Race = missions.Wc3Race.NONE
        self.included_campaigns: frozenset[missions.Wc3Campaign] = frozenset()
        self.mercenary_allocation: dict[missions.Wc3Mission, dict[int, items.Wc3Item]] = {}
        self.used_mercenaries: set[items.Wc3Item] = set()
        self.location_to_rule = rules.get_location_to_rules(world)
        # Note: Don't hold a reference to world here, as that will make a circular reference

    def process_options(self, world: 'Wc3World') -> None:
        self._options_randomize_empty_hero_names(world)

    def _options_randomize_empty_hero_names(self, world: 'Wc3World') -> None:
        for field in fields(world.options):
            if not field.name.endswith('_name'):
                continue
            if not getattr(world.options, field.name):
                setattr(world.options, field.name, world.random.choice(heroes.ALL_HERO_NAMES))

    def create_regions(self, world: 'Wc3World') -> None:
        self.regions.append(Region(world.origin_region_name, world.player, world.multiworld))
        if len(world.options.included_campaigns.value) == 0:
            self.included_campaigns = options.IncludedCampaigns.default
        else:
            self.included_campaigns = frozenset(
                campaign
                for campaign in missions.Wc3Campaign
                if campaign.title_faction in world.options.included_campaigns
            )
        last_victory_location: locations.Wc3Location | None = None
        for mission in missions.Wc3Mission:
            if mission.campaign not in self.included_campaigns:
                continue
            self.missions.append(mission)
            new_region = Region(f'{mission.short_name} {mission.mission_name}', world.player, world.multiworld)
            connect_region(
                world,
                self.regions[-1],
                new_region,
                self.location_to_rule.get(last_victory_location)  # type: ignore
            )
            for location in REGION_TO_LOCATIONS[mission.mission_name]:
                if location.type & locations.Wc3LocationType.VICTORY:
                    last_victory_location = location
                new_location = Location(world.player, location.global_name(), location.id, new_region)
                new_region.locations.append(new_location)
                self.locations.append(new_location)
            self.regions.append(new_region)
            self.included_races |= mission.race
            for hero_slot in tables.MISSION_TO_HERO_SLOT[mission]:
                self.hero_slots[hero_slot] += 1
            for item_channel in tables.mission_to_item_channel(mission):
                if item_channel != heroes.ItemChannel.NONE:
                    self.item_channels.add(item_channel)
        world.multiworld.regions += self.regions

        self._set_completion_condition(world)
        self._regions_assign_mercs(world)

    def _set_completion_condition(self, world: 'Wc3World') -> None:
        victory_region: Region = self.regions[-1]
        victory_event_location = Location(world.player, "Victory", None, victory_region)
        victory_region.locations.append(victory_event_location)
        victory_name = f"Win ({victory_region.name})"
        victory_event_item = Item(victory_name, ItemClassification.progression, None, world.player)
        victory_event_location.place_locked_item(victory_event_item)
        def completion(state: CollectionState) -> bool:
            return state.has(victory_name, world.player)
        world.multiworld.completion_condition[world.player] = completion

        # Set access rule
        victory_mission = self.missions[-1]
        victory_wc3_location = locations.MISSION_TO_LOCATIONS[victory_mission][0]
        victory_event_location.access_rule = self.location_to_rule.get(
            victory_wc3_location, victory_event_location.access_rule
        )

    def _assign_random_mercs_to_camp(
        self, random: 'Random', mercs: dict[int, items.Wc3Item], camp: int, target_count: int
    ) -> None:
        MAX_PER_CAMP = tables.MAXIMUM_MERCENARIES_PER_CAMP
        merc_pool = list(items.CATEGORY_TO_ITEMS[items.Mercenary])
        for index in range(MAX_PER_CAMP*camp, MAX_PER_CAMP*(camp+1)):
            if index in mercs:
                merc_pool.remove(mercs[index])
        random.shuffle(merc_pool)
        draw_index = 0
        for index in range(MAX_PER_CAMP*camp, MAX_PER_CAMP*camp + target_count):
            if index not in mercs:
                mercs[index] = merc_pool[draw_index]
                draw_index += 1

    def _regions_assign_mercs(self, world: 'Wc3World') -> None:
        mercs_per_camp: int = world.options.mercenaries_per_camp.value
        if (world.options.mercenary_allocation.value == options.MercenaryAllocation.option_vanilla
            or world.options.mercenary_allocation.value == options.MercenaryAllocation.option_vanilla_plus
        ):
            self.mercenary_allocation.update(tables.MISSION_TO_VANILLA_MERCENARIES)
            self.mercenary_allocation.update(tables.MISSION_TO_PRESET_MERCENARIES)
        if (world.options.mercenary_allocation.value == options.MercenaryAllocation.option_vanilla_plus
            or world.options.mercenary_allocation.value == options.MercenaryAllocation.option_full_random
        ):
            for mission in self.missions:
                num_camps = get_num_mercenary_camps(mission, world.options.bonus_mercenary_camps.value)
                if num_camps < 1:
                    continue
                mission_mercs = self.mercenary_allocation.setdefault(mission, {})
                camp = 0
                while camp < num_camps:
                    self._assign_random_mercs_to_camp(world.random, mission_mercs, camp, mercs_per_camp)
                    camp += 1
        if world.options.mercenary_allocation.value == options.MercenaryAllocation.option_species:
            species_pool = list(tables.CREEP_SPECIES_TO_ITEMS)
            world.random.shuffle(species_pool)
            for mission in self.missions:
                num_camps = get_num_mercenary_camps(mission, world.options.bonus_mercenary_camps.value)
                if num_camps < 1:
                    continue
                mission_mercs = self.mercenary_allocation.setdefault(mission, {})
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
        if missions.Wc3Mission.H8_DISSENSION in self.missions:
            dissension_mercs = self.mercenary_allocation.get(missions.Wc3Mission.H8_DISSENSION, {})
            locked_camps = {0: False, 1: False, 2: False}
            shuffled_keys = list(dissension_mercs)
            world.random.shuffle(shuffled_keys)
            for key in shuffled_keys:
                camp = key // tables.MAXIMUM_MERCENARIES_PER_CAMP
                if not locked_camps[camp]:
                    locked_camps[camp] = True
                    merc_item = dissension_mercs[key]
                    self.locked_items[merc_item] = min(1, self.locked_items[merc_item])

    _item_type_to_classification = {
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

    def new_item(self, item_type: items.Wc3Item) -> Item:
        return Item(
            item_type.item_name,
            self._item_type_to_classification[item_type.type.__class__],
            item_type.id,
            self.player
        )


    def create_items(self, world: 'Wc3World') -> None:
        used_mercenaries: set[items.Wc3Item] = set()
        for mercs in self.mercenary_allocation.values():
            used_mercenaries.update(mercs.values())

        tentative_items: list[Item] = []
        for item_type in items.Wc3Item:
            if isinstance(item_type.type, items.Unit):
                if item_type.type.race & self.included_races:
                    self.items.append(self.new_item(item_type))
            elif isinstance(item_type.type, items.Building):
                if item_type.type.race & self.included_races:
                    self.items.append(self.new_item(item_type))
            elif isinstance(item_type.type, items.Level):
                num_missions = self.hero_slots[item_type.type.slot]
                if num_missions:
                    for index in range(10 - item_type.type.start_level_cap):
                        new_item = self.new_item(item_type)
                        if index < num_missions:
                            self.items.append(new_item)
                        else:
                            tentative_items.append(new_item)
            elif isinstance(item_type.type, items.Upgrade):
                if item_type.type.race in self.included_races:
                    for _ in range(item_type.type.quantity):
                        self.items.append(self.new_item(item_type))
            elif isinstance(item_type.type, items.ShopItem):
                if item_type.type.race in self.included_races:
                    tentative_items.append(self.new_item(item_type))
            elif isinstance(item_type.type, items.PickupItem):
                if item_type.type.channel in self.item_channels:
                    for index in range(item_type.type.quantity):
                        new_item = self.new_item(item_type)
                        if index >= item_type.type.locked:
                            tentative_items.append(new_item)
                        else:
                            self.items.append(new_item)
            elif isinstance(item_type.type, items.QuestItem):
                if item_type.type.vanilla_mission in self.missions:
                    self.items.append(self.new_item(item_type))
            elif isinstance(item_type.type, items.CaptainPromotion):
                if item_type.type.campaign in self.included_campaigns:
                    self.items.append(self.new_item(item_type))
            elif isinstance(item_type.type, items.Resources):
                tentative_items.append(self.new_item(item_type))
            elif isinstance(item_type.type, items.Mercenary):
                if item_type in used_mercenaries:
                    new_item = self.new_item(item_type)
                    if item_type in self.locked_items:
                        self.items.append(new_item)
                    else:
                        tentative_items.append(new_item)
            else:
                raise ValueError(f"Item {item_type} has unknown type {type(item_type.type)}")
        
        if len(self.items) < len(self.locations):
            world.random.shuffle(tentative_items)
            print('\n'.join(map(str, tentative_items[len(self.locations) - len(self.items):])))
            self.items.extend(tentative_items[:len(self.locations) - len(self.items)])

        world.multiworld.itempool += self.items

    def fill_slot_data(self, world: 'Wc3World') -> Mapping[str, Any]:
        return {
            "version_public": VERSION_PUBLIC,
            "version_major": VERSION_MAJOR,
            "version_minor": VERSION_MINOR,
            # New ID every ~0.13s; IDs loop once every 8.9 years
            "world_id": ((time.time_ns() >> 17) + world.player) & 0x7fff_ffff,
            # "included_campaigns": world.options.included_campaigns.value,
            options.OPTION_NAME[options.BonusMercenaryCamps]: world.options.bonus_mercenary_camps.value,
            "mercenary_allocation": {
                mission: {index: item.type.game_id for index, item in allocation.items()}  # type: ignore
                for mission, allocation in self.mercenary_allocation.items()
            },
            "hero_class": {
                str(heroes.HeroSlot.PALADIN_ARTHAS.value): world.options.paladin_arthas_hero.value,
                str(heroes.HeroSlot.JAINA.value): world.options.jaina_hero.value,
                str(heroes.HeroSlot.MURADIN_BRONZEBEARD.value): world.options.muradin_bronzebeard_hero.value,
                # str(heroes.HeroSlot.DEATH_KNIGHT_ARTHAS).value: world.options.death_knight_arthas_hero.value,
                # str(heroes.HeroSlot.KEL_THUZAD).value: world.options.kel_thuzad_hero.value,
                # str(heroes.HeroSlot.THRALL).value: world.options.thrall_hero.value,
                # str(heroes.HeroSlot.CAIRNE_BLOODHOOF).value: world.options.cairne_bloodhoof_hero.value,
                # str(heroes.HeroSlot.GROM_HELLSCREAM).value: world.options.grom_hellscream_hero.value,
                # str(heroes.HeroSlot.TYRANDE).value: world.options.tyrande_hero.value,
                # str(heroes.HeroSlot.FURION).value: world.options.furion_hero.value,
                # str(heroes.HeroSlot.ILLIDAN).value: world.options.illidan_roc_hero.value,
                # str(heroes.HeroSlot.MAIEV).value: world.options.maiev_hero.value,
                # str(heroes.HeroSlot.TYRANDE_TFT).value: world.options.tyrande_tft_hero.value,
                # str(heroes.HeroSlot.MALFURION).value: world.options.malfurion_tft_hero.value,
                # str(heroes.HeroSlot.DEMON_ILLIDAN).value: world.options.illidan_tft_hero.value,
                # str(heroes.HeroSlot.KAEL).value: world.options.kael_hero.value,
                # str(heroes.HeroSlot.LADY_VASHJ).value: world.options.lady_vashj_hero.value,
                # str(heroes.HeroSlot.AKAMA).value: world.options.akama_hero.value,
                # str(heroes.HeroSlot.ARTHAS_TFT).value: world.options.arthas_tft_hero.value,
                # str(heroes.HeroSlot.KEL_THUZAD_TFT).value: world.options.kel_thuzad_tft_hero.value,
                # str(heroes.HeroSlot.SYLVANAS).value: world.options.sylvanas_hero.value,
                # str(heroes.HeroSlot.ANUB_ARAK).value: world.options.anub_arak_hero.value,
                # str(heroes.HeroSlot.VARIMATHRAS).value: world.options.varimathras_hero.value,
                # str(heroes.HeroSlot.LORD_GARITHOS).value: world.options.lord_garithos_hero.value,
            },
            "hero_names": {
                str(heroes.HeroSlot.PALADIN_ARTHAS.value): world.options.paladin_arthas_name.value,
                str(heroes.HeroSlot.JAINA.value): world.options.jaina_name.value,
                str(heroes.HeroSlot.MURADIN_BRONZEBEARD.value): world.options.muradin_bronzebeard_name.value,
                # str(heroes.HeroSlot.DEATH_KNIGHT_ARTHAS).value: world.options.death_knight_arthas_name.value,
                # str(heroes.HeroSlot.KEL_THUZAD).value: world.options.kel_thuzad_name.value,
                # str(heroes.HeroSlot.THRALL).value: world.options.thrall_name.value,
                # str(heroes.HeroSlot.CAIRNE_BLOODHOOF).value: world.options.cairne_bloodhoof_name.value,
                # str(heroes.HeroSlot.GROM_HELLSCREAM).value: world.options.grom_hellscream_name.value,
                # str(heroes.HeroSlot.TYRANDE).value: world.options.tyrande_name.value,
                # str(heroes.HeroSlot.FURION).value: world.options.furion_name.value,
                # str(heroes.HeroSlot.ILLIDAN).value: world.options.illidan_roc_name.value,
                # str(heroes.HeroSlot.MAIEV).value: world.options.maiev_name.value,
                # str(heroes.HeroSlot.TYRANDE_TFT).value: world.options.tyrande_tft_name.value,
                # str(heroes.HeroSlot.MALFURION).value: world.options.malfurion_tft_name.value,
                # str(heroes.HeroSlot.DEMON_ILLIDAN).value: world.options.illidan_tft_name.value,
                # str(heroes.HeroSlot.KAEL).value: world.options.kael_name.value,
                # str(heroes.HeroSlot.LADY_VASHJ).value: world.options.lady_vashj_name.value,
                # str(heroes.HeroSlot.AKAMA).value: world.options.akama_name.value,
                # str(heroes.HeroSlot.ARTHAS_TFT).value: world.options.arthas_tft_name.value,
                # str(heroes.HeroSlot.KEL_THUZAD_TFT).value: world.options.kel_thuzad_tft_name.value,
                # str(heroes.HeroSlot.SYLVANAS).value: world.options.sylvanas_name.value,
                # str(heroes.HeroSlot.ANUB_ARAK).value: world.options.anub_arak_name.value,
                # str(heroes.HeroSlot.VARIMATHRAS).value: world.options.varimathras_name.value,
                # str(heroes.HeroSlot.LORD_GARITHOS).value: world.options.lord_garithos_name.value,
            },
        }
