"""
Generation related to filling the slot data
"""

from typing import TYPE_CHECKING, TypedDict
import time

from ..data import heroes

if TYPE_CHECKING:
    from ..world import Wc3World


VERSION_PUBLIC = 0
VERSION_MAJOR = 0
VERSION_MINOR = 1


class Wc3SlotData(TypedDict):
    version_public: int
    version_major: int
    version_minor: int
    world_id: int
    bonus_mercenary_camps: int
    mercenary_allocation: dict[int, dict[int, str]]
    hero_class: dict[str, int]
    hero_names: dict[str, str]


def fill_slot_data(world: 'Wc3World') -> Wc3SlotData:
    return {
        "version_public": VERSION_PUBLIC,
        "version_major": VERSION_MAJOR,
        "version_minor": VERSION_MINOR,
        # New ID every ~0.13s; IDs loop once every 8.9 years
        "world_id": ((time.time_ns() >> 17) + world.player) & 0x7fff_ffff,
        # "included_campaigns": world.options.included_campaigns.value,
        "bonus_mercenary_camps": world.options.bonus_mercenary_camps.value,
        "mercenary_allocation": {
            mission: {index: item.type.game_id for index, item in allocation.items()}  # type: ignore [union-attr]
            for mission, allocation in world.g.mercenary_allocation.items()
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