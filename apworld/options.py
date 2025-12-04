"""Defines options. Requires core imports."""
from typing import TYPE_CHECKING
from dataclasses import dataclass

import Options as baseoptions

from .data.heroes import HeroChoice
from .data import missions

if TYPE_CHECKING:
    from worlds.AutoWorld import World
    from . import Wc3World


class IncludedCampaigns(baseoptions.OptionSet):
    """Controls which campaigns will be included in the output world."""
    # valid_keys = tuple(
    #     campaign.title_faction
    #     for campaign in missions.Wc3Campaign
    #     if campaign not in (missions.Wc3Campaign.GENERAL, missions.Wc3Campaign.PROLOGUE)
    # )
    valid_keys = (missions.Wc3Campaign.HUMAN_1.title_faction,)
    default = frozenset(valid_keys)


class BonusMercenaryCamps(baseoptions.Toggle):
    """Adds mercenary camps to build missions that did not have them in vanilla."""
    default = 0


class MercenaryAllocation(baseoptions.Choice):
    """
    Specifies what mercenaries can be hired in what missions.
    vanilla:      Mercenary camps have their vanilla rosters.
                  Non-vanilla camps will have 3-4 fixed tileset-appropriate mercs.
    vanilla_plus: Random additional mercs are added to the mercenary camp pools
                  in addition to vanilla/tileset rosters.
    species:      Mercenary camps will supply mercenaries from 2~3 randomly-selected species.
    full_random:  Mercenary camps will supply a random collection of mercenaries.
    """
    option_vanilla = 0
    option_vanilla_plus = 1
    option_species = 2
    option_full_random = 3
    default = option_vanilla


class MercenariesPerCamp(baseoptions.Range):
    """
    Specifies the maximum number of mercenaries a single camp can offer.
    Will not eliminate fixed/vanilla mercs specified by `vanilla` or `vanilla_plus` allocations.
    """
    range_start = 3
    range_end = 10
    default = 4


class OptionHeroChoice(baseoptions.Choice):
    suppress_choices_help = True

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
            raise baseoptions.OptionError(
                f"Option {self} cannot be longer than {self.max_length} characters, got {len(self.value)}"
            )


class PaladinArthasHero(OptionHeroChoice):
    """What hero will appear everywhere Paladin Arthas appears"""
    default = HeroChoice.PALADIN_ARTHAS.id
    suppress_choices_help = False

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

class TyrandeRocHero(OptionHeroChoice):
    """What hero will appear everywhere Tyrande (RoC) appears"""
    default = HeroChoice.TYRANDE.id

class TyrandeRocName(OptionHeroName):
    """The name for the hero unit in the Tyrande (RoC) slot"""
    default = HeroChoice.TYRANDE.hero_name

class FurionRocHero(OptionHeroChoice):
    """What hero will appear everywhere Furion (RoC) appears"""
    default = HeroChoice.FURION.id

class FurionRocName(OptionHeroName):
    """The name for the hero unit in the Furion (RoC) slot"""
    default = HeroChoice.FURION.hero_name

class IllidanRocHero(OptionHeroChoice):
    """What hero will appear everywhere Illidan (RoC) appears"""
    default = HeroChoice.ILLIDAN.id

class IllidanRocName(OptionHeroName):
    """The name for the hero unit in the Illidan (RoC) slot"""
    default = HeroChoice.ILLIDAN.hero_name

class MaievHero(OptionHeroChoice):
    """What hero will appear everywhere Maiev appears"""
    default = HeroChoice.MAIEV.id

class MaievName(OptionHeroName):
    """The name for the hero unit in the Maiev slot"""
    default = HeroChoice.MAIEV.hero_name

class TyrandeTftHero(OptionHeroChoice):
    """What hero will appear everywhere Tyrande (TFT) appears"""
    default = HeroChoice.TYRANDE.id

class TyrandeTftName(OptionHeroName):
    """The name for the hero unit in the Tyrande (TFT) slot"""
    default = HeroChoice.TYRANDE.hero_name

class MalfurionTftHero(OptionHeroChoice):
    """What hero will appear everywhere Malfurion (TFT) appears"""
    default = HeroChoice.MALFURION.id

class MalfurionTftName(OptionHeroName):
    """The name for the hero unit in the Malfurion (TFT) slot"""
    default = HeroChoice.MALFURION.hero_name

class IllidanTftHero(OptionHeroChoice):
    """What hero will appear everywhere Illidan (TFT) appears"""
    default = HeroChoice.DEMON_ILLIDAN.id

class IllidanTftName(OptionHeroName):
    """The name for the hero unit in the Illidan (TFT) slot"""
    default = HeroChoice.DEMON_ILLIDAN.hero_name

class KaelHero(OptionHeroChoice):
    """What hero will appear everywhere Kael appears"""
    default = HeroChoice.KAEL.id

class KaelName(OptionHeroName):
    """The name for the hero unit in the Kael slot"""
    default = HeroChoice.KAEL.hero_name

class LadyVashjHero(OptionHeroChoice):
    """What hero will appear everywhere Lady Vashj appears"""
    default = HeroChoice.LADY_VASHJ.id

class LadyVashjName(OptionHeroName):
    """The name for the hero unit in the Lady Vashj slot"""
    default = HeroChoice.LADY_VASHJ.hero_name

class AkamaHero(OptionHeroChoice):
    """What hero will appear everywhere Akama appears"""
    default = HeroChoice.AKAMA.id

class AkamaName(OptionHeroName):
    """The name for the hero unit in the Akama slot"""
    default = HeroChoice.AKAMA.hero_name

class ArthasTftHero(OptionHeroChoice):
    """What hero will appear everywhere Arthas (TFT) appears"""
    default = HeroChoice.DEATH_KNIGHT_ARTHAS.id

class ArthasTftName(OptionHeroName):
    """The name for the hero unit in the Arthas (TFT) slot"""
    default = HeroChoice.DEATH_KNIGHT_ARTHAS.hero_name

class KelThuzadTftHero(OptionHeroChoice):
    """What hero will appear everywhere Kel'Thuzad (TFT) appears"""
    default = HeroChoice.KEL_THUZAD.id

class KelThuzadTftName(OptionHeroName):
    """The name for the hero unit in the Kel'Thuzad (TFT) slot"""
    default = HeroChoice.KEL_THUZAD.hero_name

class SylvanasHero(OptionHeroChoice):
    """What hero will appear everywhere Sylvanas (TFT) appears"""
    default = HeroChoice.SYLVANAS.id

class SylvanasName(OptionHeroName):
    """The name for the hero unit in the Sylvanas (TFT) slot"""
    default = HeroChoice.SYLVANAS.hero_name

class VarimathrasHero(OptionHeroChoice):
    """What hero will appear everywhere Varimathras appears"""
    default = HeroChoice.VARIMATHRAS.id

class VarimathrasName(OptionHeroName):
    """The name for the hero unit in the Varimathras slot"""
    default = HeroChoice.VARIMATHRAS.hero_name

class AnubArakHero(OptionHeroChoice):
    """What hero will appear everywhere Anub'arak appears"""
    # Note(mm): The in-game name has lowercase second a, "Anub'arak"
    default = HeroChoice.VARIMATHRAS.id

class AnubArakName(OptionHeroName):
    """The name for the hero unit in the Anub'arak slot"""
    default = HeroChoice.ANUB_ARAK.hero_name

class LordGarithosHero(OptionHeroChoice):
    """What hero will appear everywhere Lord Garithos appears"""
    default = HeroChoice.VARIMATHRAS.id

class LordGarithosName(OptionHeroName):
    """The name for the hero unit in the Lord Garithos slot"""
    default = HeroChoice.LORD_GARITHOS.hero_name
    # default = "Garibon"
    # default = "Gilithos"


@dataclass
class Wc3Options(baseoptions.PerGameCommonOptions):
    included_campaigns: IncludedCampaigns
    bonus_mercenary_camps: BonusMercenaryCamps
    mercenary_allocation: MercenaryAllocation
    mercenaries_per_camp: MercenariesPerCamp
    paladin_arthas_hero: PaladinArthasHero
    paladin_arthas_name: PaladinArthasName
    jaina_hero: JainaHero
    jaina_name: JainaName
    muradin_bronzebeard_hero: MuradinBronzebeardHero
    muradin_bronzebeard_name: MuradinBronzebeardName
    # death_knight_arthas_hero: DeathKnightArthasHero
    # death_knight_arthas_name: DeathKnightArthasName
    # kel_thuzad_hero: KelThuzadHero
    # kel_thuzad_name: KelThuzadName
    # thrall_hero: ThrallHero
    # thrall_name: ThrallName
    # cairne_bloodhoof_hero: CairneBloodhoofHero
    # cairne_bloodhoof_name: CairneBloodhoofName
    # grom_hellscream_hero: GromHellscreamHero
    # grom_hellscream_name: GromHellscreamName
    # tyrande_hero: TyrandeRocHero
    # tyrande_name: TyrandeRocName
    # furion_hero: FurionRocHero
    # furion_name: FurionRocName
    # illidan_roc_hero: IllidanRocHero
    # illidan_roc_name: IllidanRocName
    # maiev_hero: MaievHero
    # maiev_name: MaievName
    # tyrande_tft_hero: TyrandeTftHero
    # tyrande_tft_name: TyrandeTftName
    # malfurion_tft_hero: MalfurionTftHero
    # malfurion_tft_name: MalfurionTftName
    # illidan_tft_hero: IllidanTftHero
    # illidan_tft_name: IllidanTftName
    # kael_hero: KaelHero
    # kael_name: KaelName
    # lady_vashj_hero: LadyVashjHero
    # lady_vashj_name: LadyVashjName
    # akama_hero: AkamaHero
    # akama_name: AkamaName
    # arthas_tft_hero: ArthasTftHero
    # arthas_tft_name: ArthasTftName
    # kel_thuzad_tft_hero: KelThuzadTftHero
    # kel_thuzad_tft_name: KelThuzadTftName
    # sylvanas_hero: SylvanasHero
    # sylvanas_name: SylvanasName
    # anub_arak_hero: AnubArakHero
    # anub_arak_name: AnubArakName
    # varimathras_hero: VarimathrasHero
    # varimathras_name: VarimathrasName
    # lord_garithos_hero: LordGarithosHero
    # lord_garithos_name: LordGarithosName


# Store the names of all options
OPTION_NAME = {option_type: name for name, option_type in Wc3Options.type_hints.items()}
