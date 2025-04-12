"""Defines options. Requires core imports."""
from typing import TYPE_CHECKING
from dataclasses import dataclass

import Options as baseoptions

from .data.heroes import HeroSlot, HeroChoice

if TYPE_CHECKING:
    from worlds.AutoWorld import World
    from . import Wc3World


class IncludedCampaigns(baseoptions.OptionSet):
    valid_keys = ('Human', 'Undead', 'Orc', 'Night Elf')


class OptionHeroChoice(baseoptions.Choice):
    option_paladin_arthas = HeroChoice.PALADIN_ARTHAS.value
    option_jaina = HeroChoice.JAINA.value
    option_muradin_bronzebeard = HeroChoice.MURADIN_BRONZEBEARD.value
    option_thrall = HeroChoice.THRALL.value
    option_cairne_bloodhoof = HeroChoice.CAIRNE_BLOODHOOF.value
    option_grom_hellscream = HeroChoice.GROM_HELLSCREAM.value
    option_death_knight_arthas = HeroChoice.DEATH_KNIGHT_ARTHAS.value
    option_kel_thuzad = HeroChoice.KEL_THUZAD.value
    option_sylvanas = HeroChoice.SYLVANAS.value
    option_varimathras = HeroChoice.VARIMATHRAS.value
    option_anub_arak = HeroChoice.ANUB_ARAK.value
    option_tyrande = HeroChoice.TYRANDE.value
    option_furion = HeroChoice.FURION.value
    option_illidan = HeroChoice.ILLIDAN.value
    option_maiev = HeroChoice.MAIEV.value
    option_malfurion = HeroChoice.MALFURION.value
    option_kael = HeroChoice.KAEL.value
    option_lady_vashj = HeroChoice.LADY_VASHJ.value
    option_demon_illidan = HeroChoice.DEMON_ILLIDAN.value
    option_akama = HeroChoice.AKAMA.value
    option_lord_garithos = HeroChoice.LORD_GARITHOS.value

    option_mal_ganis = HeroChoice.MAL_GANIS.value
    option_detheroc = HeroChoice.DETHEROC.value
    option_magtheridon = HeroChoice.MAGTHERIDON.value
    option_uther = HeroChoice.UTHER.value
    option_ranger_sylvanas = HeroChoice.RANGER_SYLVANAS.value
    option_antonidas = HeroChoice.ANTONIDAS.value
    option_fel_orc_blademaster = HeroChoice.FEL_ORC_BLADEMASTER.value
    option_ghost_antonidas = HeroChoice.GHOST_ANTONIDAS.value
    option_ancient_guardian = HeroChoice.ANCIENT_GUARDIAN.value
    option_rexxar = HeroChoice.REXXAR.value
    option_rokhan = HeroChoice.ROKHAN.value
    option_chen_stormstout = HeroChoice.CHEN_STORMSTOUT.value

    option_paladin = HeroChoice.PALADIN.value
    option_archmage = HeroChoice.ARCHMAGE.value
    option_mountain_king = HeroChoice.MOUNTAIN_KING.value
    option_blood_mage = HeroChoice.BLOOD_MAGE.value
    option_blademaster = HeroChoice.BLADEMASTER.value
    option_far_seer = HeroChoice.FAR_SEER.value
    option_tauren_chieftain = HeroChoice.TAUREN_CHIEFTAIN.value
    option_shadow_hunter = HeroChoice.SHADOW_HUNTER.value
    option_death_knight = HeroChoice.DEATH_KNIGHT.value
    option_lich = HeroChoice.LICH.value
    option_dreadlord = HeroChoice.DREADLORD.value
    option_crypt_lord = HeroChoice.CRYPT_LORD.value
    option_priestess_of_the_moon = HeroChoice.PRIESTESS_OF_THE_MOON.value
    option_keeper_of_the_grove = HeroChoice.KEEPER_OF_THE_GROVE.value
    option_demon_hunter = HeroChoice.DEMON_HUNTER.value
    option_warden = HeroChoice.WARDEN.value
    option_alchemist = HeroChoice.ALCHEMIST.value
    option_naga_sea_witch = HeroChoice.NAGA_SEA_WITCH.value
    option_tinker = HeroChoice.TINKER.value
    option_beastmaster = HeroChoice.BEASTMASTER.value
    option_dark_ranger = HeroChoice.DARK_RANGER.value
    option_firelord = HeroChoice.FIRELORD.value
    option_pandaren_brewmaster = HeroChoice.PANDAREN_BREWMASTER.value
    option_pit_lord = HeroChoice.PIT_LORD.value


class PaladinArthasHero(OptionHeroChoice):
    """What hero will appear everywhere Paladin Arthas appears"""
    default = HeroChoice.PALADIN_ARTHAS.value

class JainaHero(OptionHeroChoice):
    """What hero will appear everywhere Jaina appears"""
    default = HeroChoice.JAINA.value

class MuradinBronzebeardHero(OptionHeroChoice):
    """What hero will appear everywhere Muradin Bronzebeard appears"""
    default = HeroChoice.MURADIN_BRONZEBEARD.value

class DeathKnightArthasHero(OptionHeroChoice):
    """What hero will appear everywhere Death Knight Arthas (RoC) appears"""
    default = HeroChoice.DEATH_KNIGHT_ARTHAS.value

class KelThuzadHero(OptionHeroChoice):
    """What hero will appear everywhere Kel'Thuzad (RoC) appears"""
    default = HeroChoice.KEL_THUZAD.value


@dataclass
class Wc3Options(baseoptions.PerGameCommonOptions):
    included_campaigns: IncludedCampaigns
    paladin_arthas_hero: PaladinArthasHero
    jaina_hero: JainaHero
    muradin_bronzebeard_hero: MuradinBronzebeardHero
    death_knight_arthas_hero: DeathKnightArthasHero
    kel_thuzad_hero: KelThuzadHero
