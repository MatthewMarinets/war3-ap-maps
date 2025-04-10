"""
Tables storing relationships between items and missions
"""

import enum
from .game_ids import GameID


class HeroSlot(enum.IntEnum):
    PALADIN_ARTHAS = 1
    JAINA = 2
    MURADIN_BRONZEBEARD = 3

    THRALL = 4
    CAIRNE_BLOODHOOF = 5
    GROM_HELLSCREAM = 6

    DEATH_KNIGHT_ARTHAS = 7
    KEL_THUZAD = 8
    ARTHAS_TFT = 9
    SYLVANAS = 10
    VARIMATHRAS = 11
    ANUB_ARAK = 12

    TYRANDE = 13
    FURION = 14
    ILLIDAN = 15
    TYRANDE_TFT = 16
    MALFURION = 17
    MAIEV = 18

    KAEL = 19
    DEMON_ILLIDAN = 20
    LADY_VASHJ = 21
    AKAMA = 22

    LORD_GARITHOS = 23


class HeroSource(enum.IntEnum):
    VANILLA = 1
    ENEMY = 2
    BONUS = 3
    MELEE = 4
    TAVERN = 5


class HeroClass(enum.IntEnum):
    PALADIN = 1
    ARCHMAGE = enum.auto()
    MOUNTAIN_KING = enum.auto()
    BLOOD_MAGE = enum.auto()
    FAR_SEER = enum.auto()
    BLADEMASTER = enum.auto()
    TAUREN_CHIEFTAIN = enum.auto()
    SHADOW_HUNTER = enum.auto()
    DEATH_KNIGHT = enum.auto()
    LICH = enum.auto()
    DREADLORD = enum.auto()
    CRYPT_LORD = enum.auto()
    PRIESTESS_OF_THE_MOON = enum.auto()
    KEEPER_OF_THE_GROVE = enum.auto()
    DEMON_HUNTER = enum.auto()
    WARDEN = enum.auto()
    ALCHEMIST = enum.auto()
    NAGA_SEA_WITCH = enum.auto()
    TINKER = enum.auto()
    BEASTMASTER = enum.auto()
    DARK_RANGER = enum.auto()
    FIRELORD = enum.auto()
    PANDAREN_BREWMASTER = enum.auto()
    PIT_LORD = enum.auto()
    DARK_KNIGHT = enum.auto()
    ELDER_SAGE = enum.auto()
    RANGER = enum.auto()

    DEMIGOD = enum.auto()

    def display_name(self) -> str:
        if self == HeroClass.KEEPER_OF_THE_GROVE:
            return "Keeper of the Grove"
        elif self == HeroClass.PRIESTESS_OF_THE_MOON:
            return "Priestess of the Moon"
        return self.name.replace('_', ' ').title()


class HeroChoice(enum.Enum):
    def __new__(cls, id: int, *args, **kwargs):
        obj = object.__new__(cls)
        obj._value_ = id
        return obj

    def __init__(self, id: int, hero_name: str, hero_class: HeroClass, source: HeroSource, game_id: GameID) -> None:
        self.hero_name = hero_name
        self.hero_class = hero_class
        self.source = source
        self.game_id = game_id
        self.vanilla_slot: HeroSlot|None = None
        if source == HeroSource.VANILLA:
            for hero_slot in HeroSlot:
                if hero_slot.name == self.name:
                    self.vanilla_slot = hero_slot
                    break
            assert self.vanilla_slot is not None

    PALADIN_ARTHAS =      1,  "Arthas", HeroClass.PALADIN, HeroSource.VANILLA, GameID.ARTHAS
    JAINA =               2,  "Jaina", HeroClass.ARCHMAGE, HeroSource.VANILLA, GameID.JAINA
    MURADIN_BRONZEBEARD = 3,  "Muradin Bronzebeard", HeroClass.MOUNTAIN_KING, HeroSource.VANILLA, GameID.MURADIN_BRONZEBEARD
    THRALL =              4,  "Thrall", HeroClass.FAR_SEER, HeroSource.VANILLA, GameID.THRALL
    CAIRNE_BLOODHOOF =    5,  "Cairne Bloodhoof", HeroClass.TAUREN_CHIEFTAIN, HeroSource.VANILLA, GameID.CAIRNE_BLOODHOOF
    GROM_HELLSCREAM =     6,  "Grom Hellscream", HeroClass.BLADEMASTER, HeroSource.VANILLA, GameID.GROM_HELLSCREAM
    DEATH_KNIGHT_ARTHAS = 7,  "Death Knight Arthas", HeroClass.DEATH_KNIGHT, HeroSource.VANILLA, GameID.ARTHAS_EVIL
    KEL_THUZAD =          8,  "Kel'Thuzad", HeroClass.LICH, HeroSource.VANILLA, GameID.KEL_THUZAD
    ARTHAS_TFT =          9,  "Death Knight Arthas", HeroClass.DARK_RANGER, HeroSource.VANILLA, GameID.ARTHAS_EVIL
    SYLVANAS =            10, "Sylvanas", HeroClass.DARK_RANGER, HeroSource.VANILLA, GameID.SYLVANAS
    VARIMATHRAS =         11, "Varimathras", HeroClass.DREADLORD, HeroSource.VANILLA, GameID.VARIMATHRAS
    ANUB_ARAK =           12, "Anub'arak", HeroClass.CRYPT_LORD, HeroSource.VANILLA, GameID.ANUB_ARAK
    TYRANDE =             13, "Tyrande", HeroClass.PRIESTESS_OF_THE_MOON, HeroSource.VANILLA, GameID.TYRANDE
    FURION =              14, "Furion", HeroClass.KEEPER_OF_THE_GROVE, HeroSource.VANILLA, GameID.FURION
    ILLIDAN =             15, "Illidan", HeroClass.DEMON_HUNTER, HeroSource.VANILLA, GameID.ILLIDAN
    MAIEV =               16, "Maiev", HeroClass.WARDEN, HeroSource.VANILLA, GameID.MAIEV
    TYRANDE_TFT =         17, "Tyrande", HeroClass.PRIESTESS_OF_THE_MOON, HeroSource.VANILLA, GameID.TYRANDE
    MALFURION =           18, "Malfurion", HeroClass.KEEPER_OF_THE_GROVE, HeroSource.VANILLA, GameID.MALFURION
    KAEL =                19, "Kael", HeroClass.BLOOD_MAGE, HeroSource.VANILLA, GameID.KAEL_THAS
    LADY_VASHJ =          20, "Lady Vashj", HeroClass.NAGA_SEA_WITCH, HeroSource.VANILLA, GameID.LADY_VASHJ
    DEMON_ILLIDAN =       21, "Demon Illidan", HeroClass.DEMON_HUNTER, HeroSource.VANILLA, GameID.ILLIDAN_EVIL
    AKAMA =               22, "Akama", HeroClass.ELDER_SAGE, HeroSource.VANILLA, GameID.AKAMA
    LORD_GARITHOS =       23, "Lord Garithos", HeroClass.DARK_KNIGHT, HeroSource.VANILLA, GameID.LORD_GARITHOS  # Shockwave, Holy Light, Devotion Aura, Avatar

    MAL_GANIS =           30, "Mal'Ganis", HeroClass.DREADLORD, HeroSource.ENEMY, GameID.DREADLORD  # Use stock dreadlord, otherwise (Aura -> Soul Preservation, Inferno -> Dark Conversion)
    DETHEROC =            31, "Detheroc", HeroClass.DREADLORD, HeroSource.ENEMY, GameID.DETHEROC  # Aura -> Shadow Strike, Inferno -> Death and Decay
    # DALVENGYR =           _, "Dalvengyr", HeroClass.DREADLORD, HeroSource.ENEMY, GameID.DALVENGYR
    # MANNOROTH =           _, "Mannoroth", HeroClass.PIT_LORD, HeroSource.ENEMY, GameID.MANNOROTH  # Shockwave, Thunder Clap, Reincarnation, Earthquake
    MAGTHERIDON =         32, "Magtheridon", HeroClass.PIT_LORD, HeroSource.ENEMY, GameID.MAGTHERIDON
    UTHER =               33, "Uther", HeroClass.PALADIN, HeroSource.ENEMY, GameID.UTHER
    RANGER_SYLVANAS =     34, "Sylvanas Windrunner", HeroClass.RANGER, HeroSource.ENEMY, GameID.SYLVANAS_ELF  # Cold Arrows, Scout, Trueshot Aura, Starfall
    ANTONIDAS =           35, "Antonidas", HeroClass.ARCHMAGE, HeroSource.ENEMY, GameID.ANTONIDAS
    FEL_ORC_BLADEMASTER = 36, "Rend", HeroClass.BLADEMASTER, HeroSource.ENEMY, GameID.CHAOS_BLADEMASTER
    GHOST_ANTONIDAS =     37, "Ghost Antonidas", HeroClass.ARCHMAGE, HeroSource.ENEMY, GameID.GHOST_ANTONIDAS
    ANCIENT_GUARDIAN =    38, "Ghost", HeroClass.KEEPER_OF_THE_GROVE, HeroSource.ENEMY, GameID.GHOST_KEEPER_OF_THE_GROVE
    # DAGREN_THE_ORCSLAYER = _, "Dagren the Orcslayer", HeroClass.PALADIN, HeroSource.ENEMY, GameID.DAGREN_THE_ORCSLAYER
    # HALAHK_THE_LIFEBRINGER = _, "Halahk the Lifebringer", HeroClass.PALADIN, HeroSource.ENEMY, GameID.HALAHK_THE_LIFEBRINGER
    # LORD_NICOLAS_BUZAN =   _, "Lord Nicolas Buzan", HeroClass.PALADIN, HeroSource.ENEMY, GameID.LORD_NICOLAS_BUZAN
    # MAGROTH_THE_DEFENDER = _, "Magroth the Defender", HeroClass.PALADIN, HeroSource.ENEMY, GameID.MAGROTH_THE_DEFENDER
    # SIR_GREGORY_EDMUNDSON = _, "Sir Gregory Edmundson", HeroClass.PALADIN, HeroSource.ENEMY, GameID.SIR_GREGORY_EDMUNDSON
    # AZGALOR =               _, "Azgalor", HeroClass.PIT_LORD, HeroSource.ENEMY, GameID.AZGALOR  # Copy-paste of Mannoroth

    REXXAR =                40, "Tavern", HeroClass.BEASTMASTER, HeroSource.BONUS, GameID.BEASTMASTER
    ROKHAN =                41, "Rokhan", HeroClass.SHADOW_HUNTER, HeroSource.BONUS, GameID.SHADOW_HUNTER
    CHEN_STORMSTOUT =       42, "Chen Stormstout", HeroClass.PANDAREN_BREWMASTER, HeroSource.BONUS, GameID.PANDAREN_BREWMASTER
    # DREK_THAR =              _, "Drek'Thar", HeroClass.FAR_SEER, HeroSource.BONUS, GameID.DREK_THAR
    # SAMURO =                 _, "Samuro", HeroClass.BLADEMASTER, HeroSource.BONUS, GameID.SAMURO

    PALADIN =               50, "Gavinrad the Dire", HeroClass.PALADIN, HeroSource.MELEE, GameID.PALADIN
    ARCHMAGE =              51, "Kelen the Seeker", HeroClass.ARCHMAGE, HeroSource.MELEE, GameID.ARCHMAGE
    MOUNTAIN_KING =         52, "Kelv Sternhammer", HeroClass.MOUNTAIN_KING, HeroSource.MELEE, GameID.MOUNTAIN_KING
    BLOOD_MAGE =            53, "Eldin Sunstrider", HeroClass.BLOOD_MAGE, HeroSource.MELEE, GameID.BLOOD_MAGE
    BLADEMASTER =           54, "Nikoro", HeroClass.BLADEMASTER, HeroSource.MELEE, GameID.BLADEMASTER
    FAR_SEER =              55, "Morg Wolfsong", HeroClass.FAR_SEER, HeroSource.MELEE, GameID.FAR_SEER
    TAUREN_CHIEFTAIN =      56, "Kel Stonebull", HeroClass.TAUREN_CHIEFTAIN, HeroSource.MELEE, GameID.TAUREN_CHIEFTAIN
    SHADOW_HUNTER =         57, "Shaka'zahn", HeroClass.SHADOW_HUNTER, HeroSource.MELEE, GameID.SHADOW_HUNTER
    DEATH_KNIGHT =          58, "Duke Wintermaul", HeroClass.DEATH_KNIGHT, HeroSource.MELEE, GameID.DEATH_KNIGHT
    LICH =                  59, "Ras Splinterspine", HeroClass.LICH, HeroSource.MELEE, GameID.LICH
    DREADLORD =             60, "Mullioch", HeroClass.DREADLORD, HeroSource.MELEE, GameID.DREADLORD
    CRYPT_LORD =            61, "Typhis-Ahn", HeroClass.CRYPT_LORD, HeroSource.MELEE, GameID.CRYPT_LORD
    PRIESTESS_OF_THE_MOON = 62, "Adora Nightshade", HeroClass.PRIESTESS_OF_THE_MOON, HeroSource.MELEE, GameID.PRIESTESS_OF_THE_MOON
    KEEPER_OF_THE_GROVE =   63, "Keeper of the Grove", HeroClass.KEEPER_OF_THE_GROVE, HeroSource.MELEE, GameID.KEEPER_OF_THE_GROVE
    DEMON_HUNTER =          64, "Darksorrow", HeroClass.DEMON_HUNTER, HeroSource.MELEE, GameID.DEMON_HUNTER
    WARDEN =                65, "The Iron Raven", HeroClass.WARDEN, HeroSource.MELEE, GameID.WARDEN

    ALCHEMIST =             66, "Razzil Naypolm", HeroClass.ALCHEMIST, HeroSource.TAVERN, GameID.ALCHEMIST
    NAGA_SEA_WITCH =        67, "Ursula Snakemane", HeroClass.NAGA_SEA_WITCH, HeroSource.TAVERN, GameID.NAGA_SEA_WITCH
    TINKER =                68, "Gazz Stripbolt", HeroClass.TINKER, HeroSource.TAVERN, GameID.TINKER
    BEASTMASTER =           69, "Gorsh Talonfang", HeroClass.BEASTMASTER, HeroSource.TAVERN, GameID.BEASTMASTER
    DARK_RANGER =           70, "Anya Eversong", HeroClass.DARK_RANGER, HeroSource.TAVERN, GameID.DARK_RANGER
    FIRELORD =              71, "Blazefury", HeroClass.FIRELORD, HeroSource.TAVERN, GameID.FIRELORD
    PANDAREN_BREWMASTER =   72, "Mushi Ale-Hearth", HeroClass.PANDAREN_BREWMASTER, HeroSource.TAVERN, GameID.PANDAREN_BREWMASTER
    PIT_LORD =              73, "Destromath", HeroClass.PIT_LORD, HeroSource.TAVERN, GameID.PIT_LORD


class SuperheroSlot(enum.IntEnum):
    FROSTMOURNE_ARTHAS = 1
    POSSESSED_GROM = enum.auto()
    MORPHED_ILLIDAN = enum.auto()


class SuperheroChoices(enum.Enum):
    def __new__(cls, id: int, *args, **kwargs):
        obj = object.__new__(cls)
        obj._value_ = id
        return obj

    def __init__(self, id: int, hero_name: str, hero_class: HeroClass, source: HeroSource) -> None:
        self.hero_name = hero_name
        self.hero_class = hero_class
        self.source = source
        self.vanilla_slot: SuperheroSlot|None = None
        if source == HeroSource.VANILLA:
            for superhero_slot in SuperheroSlot:
                if superhero_slot.name == self.name:
                    self.vanilla_slot = superhero_slot
                    break
            assert self.vanilla_slot is not None

    FROSTMOURNE_ARTHAS = 1, "Arthas", HeroClass.PALADIN, HeroSource.VANILLA
    POSSESSED_GROM = 2, "Grom Hellscream", HeroClass.BLADEMASTER, HeroSource.VANILLA
    MORPHED_ILLIDAN = 3, "Illidan", HeroClass.DEMON_HUNTER, HeroSource.VANILLA
    CENARIUS = 4, "Cenarius", HeroClass.DEMIGOD, HeroSource.ENEMY  # Divine Armour
    TICHONDRIUS = 5, "Tichondrius", HeroClass.DREADLORD, HeroSource.ENEMY  # Divine Armour, Has Rain of Fire
    # BALNAZZAR = 6, "Balnazzar", HeroClass.DREADLORD, HeroSource.ENEMY  # Divine Armour, Has Rain of Fire
    # ARCHIMONDE = 7, "Archimonde", HeroClass.WARLOCK, HeroSource.ENEMY  # Divine Armour, Has Rain of Fire, Dark Portal


HERO_SLOT_TO_DEFAULT_CHOICE = {
    _choice.vanilla_slot: _choice
    for _choice in HeroChoice
    if _choice.vanilla_slot
}

LEVEL_THRESHOLDS = [
    0,      # 1
    200,    # 2
    500,    # 3
    900,    # 4
    1400,   # 5
    2000,   # 6
    2700,   # 7
    3500,   # 8
    4400,   # 9
    5400,   # 10
]
