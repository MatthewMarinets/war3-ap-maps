"""Generation functions. Requires core imports."""
from typing import Mapping, Any, Callable, TYPE_CHECKING
from dataclasses import fields
import time

from BaseClasses import Region, CollectionState, Entrance, Item, Location, ItemClassification
from .data import locations, items, missions, heroes, tables
from .data.game_ids import GameID

from . import options

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
    def __init__(self) -> None:
        self.regions: list[Region] = []
        self.locations: list[Location] = []
        self.items: list[Item] = []
        self.hero_slots: set[heroes.HeroSlot] = set()
        self.item_channels: set[heroes.ItemChannel] = set()
        self.included_races: missions.Wc3Race = missions.Wc3Race.NONE
        self.included_campaigns: set[missions.Wc3Campaign] = set()
        self.mercenary_allocation: dict[missions.Wc3Mission, dict[int, items.Wc3Item]] = {}
        self.used_mercenaries: set[items.Wc3Item] = set()

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

        self._regions_assign_mercs(world)
    
    def _assign_random_mercs_to_camp(
        self, random: 'Random', mercs: dict[int, items.Wc3Item], camp: int, target_count: int
    ) -> None:
        merc_pool = list(items.CATEGORY_TO_ITEMS[items.Mercenary])
        for index in range(10*camp, 10*(camp+1)):
            if index in mercs:
                merc_pool.remove(mercs[index])
        random.shuffle(merc_pool)
        draw_index = 0
        for index in range(10*camp, 10*camp + target_count):
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
            for mission in missions.Wc3Mission:
                num_camps = get_num_mercenary_camps(mission, world.options.bonus_mercenary_camps.value)
                if num_camps < 1:
                    continue
                mission_mercs = self.mercenary_allocation.setdefault(mission, {})
                camp = 0
                while camp < num_camps:
                    self._assign_random_mercs_to_camp(world.random, mission_mercs, camp, mercs_per_camp)
                    camp += 1
        if world.options.mercenary_allocation.value == options.MercenaryAllocation.option_species:
            species_pool = world.random.shuffle(list(tables.CREEP_SPECIES_TO_ITEMS))
            for mission in missions.Wc3Mission:
                num_camps = get_num_mercenary_camps(mission, world.options.bonus_mercenary_camps.value)
                if num_camps < 1:
                    continue
                mission_mercs = self.mercenary_allocation.setdefault(mission, {})
                species = 0
                species_offset = 0
                for camp in range(num_camps):
                    for index in range(mercs_per_camp):
                        mission_mercs[10*camp + index] = (
                            tables.CREEP_SPECIES_TO_ITEMS[species_pool[species]][species_offset]
                        )
                        species_offset += 1
                        if species_offset >= len(tables.CREEP_SPECIES_TO_ITEMS[species_pool[species]]):
                            species += 1
                            species_offset = 0

    def create_items(self, world: 'Wc3World') -> None:
        used_mercenaries: set[items.Wc3Item] = set()
        for mercs in self.mercenary_allocation.values():
            used_mercenaries.update(mercs.values())
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
            elif isinstance(item_type.type, items.CaptainPromotion):
                if item_type.type.campaign in self.included_campaigns:
                    self.items.append(Item(item_type.item_name, ItemClassification.progression, item_type.id, world.player))
            elif isinstance(item_type.type, items.Resources):
                self.items.append(Item(item_type.item_name, ItemClassification.filler, item_type.id, world.player))
            elif isinstance(item_type.type, items.Mercenary):
                if item_type in used_mercenaries:
                    self.items.append(Item(item_type.item_name, ItemClassification.useful, item_type.id, world.player))
            else:
                raise ValueError(f"Item {item_type} has unknown type {type(item_type.type)}")

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
                mission: {index: item.type.game_id for index, item in allocation.items()}
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
