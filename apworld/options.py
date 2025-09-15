"""Defines options. Requires core imports."""
from typing import TYPE_CHECKING
from dataclasses import dataclass

import Options as baseoptions

from .data.heroes import HeroSlot, HeroChoice
from .data import missions

if TYPE_CHECKING:
    from worlds.AutoWorld import World
    from . import Wc3World


class IncludedCampaigns(baseoptions.OptionSet):
    valid_keys = tuple(
        campaign.title_faction
        for campaign in missions.Wc3Campaign
        if campaign != missions.Wc3Campaign.GENERAL
    )


class OptionHeroChoice(baseoptions.Choice):
    option_paladin_arthas = HeroChoice.PALADIN_ARTHAS.id
    option_jaina = HeroChoice.JAINA.id
    option_muradin_bronzebeard = HeroChoice.MURADIN_BRONZEBEARD.id
    option_thrall = HeroChoice.THRALL.id
    option_cairne_bloodhoof = HeroChoice.CAIRNE_BLOODHOOF.id
    option_grom_hellscream = HeroChoice.GROM_HELLSCREAM.id
    option_death_knight_arthas = HeroChoice.DEATH_KNIGHT_ARTHAS.id
    option_kel_thuzad = HeroChoice.KEL_THUZAD.id
    option_sylvanas = HeroChoice.SYLVANAS.id
    option_varimathras = HeroChoice.VARIMATHRAS.id
    option_anub_arak = HeroChoice.ANUB_ARAK.id
    option_tyrande = HeroChoice.TYRANDE.id
    option_furion = HeroChoice.FURION.id
    option_illidan = HeroChoice.ILLIDAN.id
    option_maiev = HeroChoice.MAIEV.id
    option_malfurion = HeroChoice.MALFURION.id
    option_kael = HeroChoice.KAEL.id
    option_lady_vashj = HeroChoice.LADY_VASHJ.id
    option_demon_illidan = HeroChoice.DEMON_ILLIDAN.id
    option_akama = HeroChoice.AKAMA.id
    option_lord_garithos = HeroChoice.LORD_GARITHOS.id

    option_mal_ganis = HeroChoice.MAL_GANIS.id
    option_detheroc = HeroChoice.DETHEROC.id
    option_magtheridon = HeroChoice.MAGTHERIDON.id
    option_uther = HeroChoice.UTHER.id
    option_ranger_sylvanas = HeroChoice.RANGER_SYLVANAS.id
    option_antonidas = HeroChoice.ANTONIDAS.id
    option_fel_orc_blademaster = HeroChoice.FEL_ORC_BLADEMASTER.id
    option_ghost_antonidas = HeroChoice.GHOST_ANTONIDAS.id
    option_ancient_guardian = HeroChoice.ANCIENT_GUARDIAN.id
    option_rexxar = HeroChoice.REXXAR.id
    option_rokhan = HeroChoice.ROKHAN.id
    option_chen_stormstout = HeroChoice.CHEN_STORMSTOUT.id

    option_paladin = HeroChoice.PALADIN.id
    option_archmage = HeroChoice.ARCHMAGE.id
    option_mountain_king = HeroChoice.MOUNTAIN_KING.id
    option_blood_mage = HeroChoice.BLOOD_MAGE.id
    option_blademaster = HeroChoice.BLADEMASTER.id
    option_far_seer = HeroChoice.FAR_SEER.id
    option_tauren_chieftain = HeroChoice.TAUREN_CHIEFTAIN.id
    option_shadow_hunter = HeroChoice.SHADOW_HUNTER.id
    option_death_knight = HeroChoice.DEATH_KNIGHT.id
    option_lich = HeroChoice.LICH.id
    option_dreadlord = HeroChoice.DREADLORD.id
    option_crypt_lord = HeroChoice.CRYPT_LORD.id
    option_priestess_of_the_moon = HeroChoice.PRIESTESS_OF_THE_MOON.id
    option_keeper_of_the_grove = HeroChoice.KEEPER_OF_THE_GROVE.id
    option_demon_hunter = HeroChoice.DEMON_HUNTER.id
    option_warden = HeroChoice.WARDEN.id
    option_alchemist = HeroChoice.ALCHEMIST.id
    option_naga_sea_witch = HeroChoice.NAGA_SEA_WITCH.id
    option_tinker = HeroChoice.TINKER.id
    option_beastmaster = HeroChoice.BEASTMASTER.id
    option_dark_ranger = HeroChoice.DARK_RANGER.id
    option_firelord = HeroChoice.FIRELORD.id
    option_pandaren_brewmaster = HeroChoice.PANDAREN_BREWMASTER.id
    option_pit_lord = HeroChoice.PIT_LORD.id


class OptionHeroName(baseoptions.FreeText):
    max_length = 30
    valid_nonascii_letters = (
        "¡¢£¤¥¦§¨©ª«¬®°±²³´µ¶·¸¹º»¼½¾¿"
        "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ"
        "ıŁłŒœŠšŸŽžƒˆˇˉ˘˙˚˛˜˝ΔΩμπ‐–—‘’‚“”„†‡•…‰‹›⁄™Ω∂∆∏∑−∞∫≈≠≤≥◊"
    )
    """Letters pulled from inspecting the font file within the game files. Tested in-game."""

    def verify(self, *args, **kwargs) -> None:
        if not isinstance(self.value, str):
            raise Exception(f"Option {self} must be a string")
        for index, char in enumerate(self.value):
            if ord(char) < ord(' ') or ord(char) > ord('~'):
                if char not in self.valid_nonascii_letters:
                    raise Exception(
                        f"Character '{char}' in option {self} (offset {index}) is not a valid letter"
                    )
        if len(self.value) > self.max_length:
            raise Exception(
                f"Option {self} cannot be longer than {self.max_length} characters, got {len(self.value)}"
            )


class PaladinArthasHero(OptionHeroChoice):
    """What hero will appear everywhere Paladin Arthas appears"""
    default = HeroChoice.PALADIN_ARTHAS.id

class PaladinArthasName(OptionHeroName):
    """The name for the hero unit in the Paladin Arthas slot"""
    default = HeroChoice.PALADIN_ARTHAS.hero_name

class JainaHero(OptionHeroChoice):
    """What hero will appear everywhere Jaina appears"""
    default = HeroChoice.JAINA.id

class JainaName(OptionHeroName):
    """The name for the hero unit in the Jaina slot"""
    default = HeroChoice.JAINA.hero_name

class MuradinBronzebeardHero(OptionHeroChoice):
    """What hero will appear everywhere Muradin Bronzebeard appears"""
    default = HeroChoice.MURADIN_BRONZEBEARD.id

class MuradinBronzebeardName(OptionHeroName):
    """The name for the hero unit in the Muradin Bronzebeard slot"""
    default = HeroChoice.MURADIN_BRONZEBEARD.hero_name

class DeathKnightArthasHero(OptionHeroChoice):
    """What hero will appear everywhere Death Knight Arthas (RoC) appears"""
    default = HeroChoice.DEATH_KNIGHT_ARTHAS.id

class DeathKnightArthasName(OptionHeroName):
    """The name for the hero unit in the Death Knight Arthas (RoC) slot"""
    default = HeroChoice.DEATH_KNIGHT_ARTHAS.hero_name

class KelThuzadHero(OptionHeroChoice):
    """What hero will appear everywhere Kel'Thuzad (RoC) appears"""
    default = HeroChoice.KEL_THUZAD.id

class KelThuzadName(OptionHeroName):
    """The name for the hero unit in the Kel'Thuzad (RoC) slot"""
    default = HeroChoice.KEL_THUZAD.hero_name

class ThrallHero(OptionHeroChoice):
    """What hero will appear everywhere Thrall appears"""
    default = HeroChoice.THRALL.id

class ThrallName(OptionHeroName):
    """The name for the hero unit in the Thrall slot"""
    default = HeroChoice.THRALL.hero_name

class CairneBloodhoofHero(OptionHeroChoice):
    """What hero will appear everywhere Cairne Bloodhoof appears"""
    default = HeroChoice.CAIRNE_BLOODHOOF.id

class CairneBloodhoofName(OptionHeroName):
    """The name for the hero unit in the Cairne Bloodhoof slot"""
    default = HeroChoice.CAIRNE_BLOODHOOF.hero_name

class GromHellscreamHero(OptionHeroChoice):
    """What hero will appear everywhere Grom Hellscream appears"""
    default = HeroChoice.GROM_HELLSCREAM.id

class GromHellscreamName(OptionHeroName):
    """The name for the hero unit in the Grom Hellscream slot"""
    default = HeroChoice.GROM_HELLSCREAM.hero_name

class TyrandeHero(OptionHeroChoice):
    """What hero will appear everywhere Tyrande (RoC) appears"""
    default = HeroChoice.TYRANDE.id

class TyrandeName(OptionHeroName):
    """The name for the hero unit in the Tyrande (RoC) slot"""
    default = HeroChoice.TYRANDE.hero_name

class FurionHero(OptionHeroChoice):
    """What hero will appear everywhere Furion (RoC) appears"""
    default = HeroChoice.FURION.id

class FurionName(OptionHeroName):
    """The name for the hero unit in the Furion (RoC) slot"""
    default = HeroChoice.FURION.hero_name

class IllidanHero(OptionHeroChoice):
    """What hero will appear everywhere Illidan (RoC) appears"""
    default = HeroChoice.ILLIDAN.id

class IllidanName(OptionHeroName):
    """The name for the hero unit in the Illidan (RoC) slot"""
    default = HeroChoice.ILLIDAN.hero_name

class MaievHero(OptionHeroChoice):
    """What hero will appear everywhere Maiev appears"""
    default = HeroChoice.MAIEV.id

class MaievName(OptionHeroName):
    """The name for the hero unit in the Maiev slot"""
    default = HeroChoice.MAIEV.hero_name


@dataclass
class Wc3Options(baseoptions.PerGameCommonOptions):
    included_campaigns: IncludedCampaigns
    paladin_arthas_hero: PaladinArthasHero
    paladin_arthas_name: PaladinArthasName
    jaina_hero: JainaHero
    jaina_name: JainaName
    muradin_bronzebeard_hero: MuradinBronzebeardHero
    muradin_bronzebeard_name: MuradinBronzebeardName
    death_knight_arthas_hero: DeathKnightArthasHero
    death_knight_arthas_name: DeathKnightArthasName
    kel_thuzad_hero: KelThuzadHero
    kel_thuzad_name: KelThuzadName
    thrall_hero: ThrallHero
    thrall_name: ThrallName
    cairne_bloodhoof_hero: CairneBloodhoofHero
    cairne_bloodhoof_name: CairneBloodhoofName
    grom_hellscream_hero: GromHellscreamHero
    grom_hellscream_name: GromHellscreamName
    tyrande_hero: TyrandeHero
    tyrande_name: TyrandeName
    furion_hero: FurionHero
    furion_name: FurionName
    illidan_hero: IllidanHero
    illidan_name: IllidanName
    maiev_hero: MaievHero
    maiev_name: MaievName
