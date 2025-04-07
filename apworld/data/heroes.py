"""
Tables storing relationships between items and missions
"""

import enum
from .missions import Wc3Mission
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

    KAEL_THAS = 19
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
        return self.name.replace('_', ' ').title().replace('Of', 'of').replace('The', 'the')


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
    SYLVANAS =            10,  "Sylvanas", HeroClass.DARK_RANGER, HeroSource.VANILLA, GameID.SYLVANAS
    VARIMATHRAS =         11, "Varimathras", HeroClass.DREADLORD, HeroSource.VANILLA, GameID.VARIMATHRAS
    ANUB_ARAK =           12, "Anub'arak", HeroClass.CRYPT_LORD, HeroSource.VANILLA, GameID.ANUB_ARAK
    TYRANDE =             13, "Tyrande", HeroClass.PRIESTESS_OF_THE_MOON, HeroSource.VANILLA, GameID.TYRANDE
    FURION =              14, "Furion", HeroClass.KEEPER_OF_THE_GROVE, HeroSource.VANILLA, GameID.FURION
    ILLIDAN =             15, "Illidan", HeroClass.DEMON_HUNTER, HeroSource.VANILLA, GameID.ILLIDAN
    MAIEV =               16, "Maiev", HeroClass.WARDEN, HeroSource.VANILLA, GameID.MAIEV
    TYRANDE_TFT =         17, "Tyrande", HeroClass.PRIESTESS_OF_THE_MOON, HeroSource.VANILLA, GameID.TYRANDE
    MALFURION =           18, "Malfurion", HeroClass.KEEPER_OF_THE_GROVE, HeroSource.VANILLA, GameID.MALFURION
    KAEL_THAS =           19, "Kael'Thas", HeroClass.BLOOD_MAGE, HeroSource.VANILLA, GameID.KAEL_THAS
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
    BLACKROCK_BLADEMASTER = 36, "Blackrock Blademaster", HeroClass.BLADEMASTER, HeroSource.ENEMY, GameID.CHAOS_BLADEMASTER
    # DAGREN_THE_ORCSLAYER = _, "Dagren the Orcslayer", HeroClass.PALADIN, HeroSource.ENEMY, GameID.DAGREN_THE_ORCSLAYER
    # HALAHK_THE_LIFEBRINGER = _, "Halahk the Lifebringer", HeroClass.PALADIN, HeroSource.ENEMY, GameID.HALAHK_THE_LIFEBRINGER
    # LORD_NICOLAS_BUZAN = _, "Lord Nicolas Buzan", HeroClass.PALADIN, HeroSource.ENEMY, GameID.LORD_NICOLAS_BUZAN
    # MAGROTH_THE_DEFENDER = _, "Magroth the Defender", HeroClass.PALADIN, HeroSource.ENEMY, GameID.MAGROTH_THE_DEFENDER
    # SIR_GREGORY_EDMUNDSON = _, "Sir Gregory Edmundson", HeroClass.PALADIN, HeroSource.ENEMY, GameID.SIR_GREGORY_EDMUNDSON
    # AZGALOR = _, "Azgalor", HeroClass.PIT_LORD, HeroSource.ENEMY, GameID.AZGALOR  # Copy-paste of Mannoroth

    REXXAR =            40, "Tavern", HeroClass.BEASTMASTER, HeroSource.BONUS, GameID.BEASTMASTER
    ROKHAN =            41, "Rokhan", HeroClass.SHADOW_HUNTER, HeroSource.BONUS, GameID.SHADOW_HUNTER
    CHEN_STORMSTOUT =   42, "Chen Stormstout", HeroClass.PANDAREN_BREWMASTER, HeroSource.BONUS, GameID.PANDAREN_BREWMASTER
    # DREK_THAR = "Drek'Thar", HeroClass.FAR_SEER, HeroSource.BONUS, GameID.DREK_THAR
    # SAMURO = "Samuro", HeroClass.BLADEMASTER, HeroSource.BONUS, GameID.SAMURO

    PALADIN =               50, "Paladin", HeroClass.PALADIN, HeroSource.MELEE, GameID.PALADIN
    ARCHMAGE =              51, "Archmage", HeroClass.PALADIN, HeroSource.MELEE, GameID.ARCHMAGE
    MOUNTAIN_KING =         52, "Mountain King", HeroClass.MOUNTAIN_KING, HeroSource.MELEE, GameID.MOUNTAIN_KING
    BLOOD_MAGE =            53, "Blood Mage", HeroClass.BLOOD_MAGE, HeroSource.MELEE, GameID.BLOOD_MAGE
    BLADEMASTER =           54, "Blademaster", HeroClass.PALADIN, HeroSource.MELEE, GameID.BLADEMASTER
    FAR_SEER =              55, "Far Seer", HeroClass.PALADIN, HeroSource.MELEE, GameID.FAR_SEER
    TAUREN_CHIEFTAIN =      56, "Tauren Chieftain", HeroClass.MOUNTAIN_KING, HeroSource.MELEE, GameID.TAUREN_CHIEFTAIN
    SHADOW_HUNTER =         57, "Shadow Hunter", HeroClass.BLOOD_MAGE, HeroSource.MELEE, GameID.SHADOW_HUNTER
    DEATH_KNIGHT =          58, "Death Knight", HeroClass.PALADIN, HeroSource.MELEE, GameID.DEATH_KNIGHT
    LICH =                  59, "Lich", HeroClass.PALADIN, HeroSource.MELEE, GameID.LICH
    DREADLORD =             60, "Dreadlord", HeroClass.MOUNTAIN_KING, HeroSource.MELEE, GameID.DREADLORD
    CRYPT_LORD =            61, "Crypt Lord", HeroClass.BLOOD_MAGE, HeroSource.MELEE, GameID.CRYPT_LORD
    PRIESTESS_OF_THE_MOON = 62, "Priestess of the Moon", HeroClass.PALADIN, HeroSource.MELEE, GameID.PRIESTESS_OF_THE_MOON
    KEEPER_OF_THE_GROVE =   63, "Keeper of the Grove", HeroClass.PALADIN, HeroSource.MELEE, GameID.KEEPER_OF_THE_GROVE
    DEMON_HUNTER =          64, "Demon Hunter", HeroClass.MOUNTAIN_KING, HeroSource.MELEE, GameID.DEMON_HUNTER
    WARDEN =                65, "Warden", HeroClass.BLOOD_MAGE, HeroSource.MELEE, GameID.WARDEN

    ALCHEMIST =           66, "Alchemist", HeroClass.ALCHEMIST, HeroSource.TAVERN, GameID.ALCHEMIST
    NAGA_SEA_WITCH =      67, "Naga Sea Witch", HeroClass.NAGA_SEA_WITCH, HeroSource.TAVERN, GameID.NAGA_SEA_WITCH
    TINKER =              68, "Tinker", HeroClass.TINKER, HeroSource.TAVERN, GameID.TINKER
    BEASTMASTER =         69, "Beastmaster", HeroClass.BEASTMASTER, HeroSource.TAVERN, GameID.BEASTMASTER
    DARK_RANGER =         70, "Dark Ranger", HeroClass.DARK_RANGER, HeroSource.TAVERN, GameID.DARK_RANGER
    FIRELORD =            71, "Firelord", HeroClass.FIRELORD, HeroSource.TAVERN, GameID.FIRELORD
    PANDAREN_BREWMASTER = 72, "Pandaren Brewmaster", HeroClass.PANDAREN_BREWMASTER, HeroSource.TAVERN, GameID.PANDAREN_BREWMASTER
    PIT_LORD =            73, "Pit Lord", HeroClass.PIT_LORD, HeroSource.TAVERN, GameID.PIT_LORD


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
    BALNAZZAR = 6, "Balnazzar", HeroClass.DREADLORD, HeroSource.ENEMY  # Divine Armour, Has Rain of Fire
    # ARCHIMONDE = 7, "Archimonde", HeroClass.WARLOCK, HeroSource.ENEMY  # Divine Armour, Has Rain of Fire, Dark Portal


MISSION_TO_HERO_SLOT = {
    Wc3Mission.P1_CHASING_VISIONS: [HeroSlot.THRALL],
    Wc3Mission.P2_DEPARTURES: [HeroSlot.THRALL],
    Wc3Mission.P3_RIDERS_ON_THE_STORM: [HeroSlot.THRALL],
    Wc3Mission.P4_THE_FIRES_DOWN_BELOW: [HeroSlot.THRALL],
    Wc3Mission.P5_COUNTDOWN_TO_EXTINCTION: [HeroSlot.THRALL],

    Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD: [HeroSlot.PALADIN_ARTHAS],
    Wc3Mission.H2_BLACKROCK_AND_ROLL: [HeroSlot.PALADIN_ARTHAS],
    Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE: [HeroSlot.PALADIN_ARTHAS, HeroSlot.JAINA],
    Wc3Mission.H4_THE_CULT_OF_THE_DAMNED: [HeroSlot.PALADIN_ARTHAS, HeroSlot.JAINA],
    Wc3Mission.H5_MARCH_OF_THE_SCOURGE: [HeroSlot.PALADIN_ARTHAS],
    Wc3Mission.H6_THE_CULLING: [HeroSlot.PALADIN_ARTHAS],
    Wc3Mission.H7_THE_SHORES_OF_NORTHREND: [HeroSlot.PALADIN_ARTHAS, HeroSlot.MURADIN_BRONZEBEARD],
    Wc3Mission.H8_DISSENSION: [HeroSlot.PALADIN_ARTHAS, HeroSlot.MURADIN_BRONZEBEARD],
    Wc3Mission.H9_FROSTMOURNE: [HeroSlot.PALADIN_ARTHAS, HeroSlot.MURADIN_BRONZEBEARD],

    Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES: [HeroSlot.DEATH_KNIGHT_ARTHAS],
    Wc3Mission.U2_DIGGING_UP_THE_DEAD: [HeroSlot.DEATH_KNIGHT_ARTHAS],
    Wc3Mission.U3_INTO_THE_REALM_ETERNAL: [HeroSlot.DEATH_KNIGHT_ARTHAS],
    Wc3Mission.U4_KEY_OF_THE_THREE_MOONS: [HeroSlot.DEATH_KNIGHT_ARTHAS],
    Wc3Mission.U5_THE_FALL_OF_SILVERMOON: [HeroSlot.DEATH_KNIGHT_ARTHAS],
    Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO: [HeroSlot.DEATH_KNIGHT_ARTHAS, HeroSlot.KEL_THUZAD],
    Wc3Mission.U7_THE_SIEGE_OF_DALARAN: [HeroSlot.DEATH_KNIGHT_ARTHAS, HeroSlot.KEL_THUZAD],
    Wc3Mission.U8_UNDER_THE_BURNING_SKY: [HeroSlot.DEATH_KNIGHT_ARTHAS],

    Wc3Mission.O1_LANDFALL: [HeroSlot.THRALL],
    Wc3Mission.O2_THE_LONG_MARCH: [HeroSlot.THRALL],
    Wc3Mission.O3_CRY_OF_THE_WARSONG: [HeroSlot.THRALL],
    Wc3Mission.O4_THE_SPIRITS_OF_ASHENVALE: [HeroSlot.GROM_HELLSCREAM],
    Wc3Mission.O5_THE_HUNTER_OF_SHADOWS: [HeroSlot.GROM_HELLSCREAM],
    Wc3Mission.O6_WHERE_WYVERNS_DARE: [HeroSlot.THRALL, HeroSlot.CAIRNE_BLOODHOOF],
    Wc3Mission.O7_THE_ORACLE: [HeroSlot.THRALL, HeroSlot.CAIRNE_BLOODHOOF],
    Wc3Mission.O8_BY_DEMONS_BE_DRIVEN: [HeroSlot.THRALL, HeroSlot.CAIRNE_BLOODHOOF],

    Wc3Mission.N1_ENEMIES_AT_THE_GATE: [HeroSlot.TYRANDE],
    Wc3Mission.N2_DAUGHTERS_OF_THE_MOON: [HeroSlot.TYRANDE],
    Wc3Mission.N3_THE_AWAKENING_OF_STORMRAGE: [HeroSlot.TYRANDE],
    Wc3Mission.N4_THE_DRUIDS_ARISE: [HeroSlot.TYRANDE, HeroSlot.FURION],
    Wc3Mission.N5_BROTHERS_IN_BLOOD: [HeroSlot.TYRANDE, HeroSlot.FURION],
    Wc3Mission.N6_A_DESTINY_OF_FLAME_AND_SORROW: [HeroSlot.ILLIDAN],
    Wc3Mission.N7_TWILIGHT_OF_THE_GODS: [HeroSlot.TYRANDE, HeroSlot.FURION],

    Wc3Mission.NX1_RISE_OF_THE_NAGA: [HeroSlot.MAIEV],
    Wc3Mission.NX2_THE_BROKEN_ISLES: [HeroSlot.MAIEV],
    Wc3Mission.NX3_THE_TOMB_OF_SARGERAS: [HeroSlot.MAIEV],
    Wc3Mission.NX4_WRATH_OF_THE_BETRAYER: [HeroSlot.MAIEV],
    Wc3Mission.NX5_BALANCING_THE_SCALES: [HeroSlot.MAIEV, HeroSlot.TYRANDE, HeroSlot.FURION],
    Wc3Mission.NX6_SHARDS_OF_THE_ALLIANCE: [HeroSlot.MAIEV, HeroSlot.TYRANDE],
    Wc3Mission.NX7_THE_RUINS_OF_DALARAN: [HeroSlot.MAIEV, HeroSlot.FURION],
    Wc3Mission.NX8_THE_BROTHERS_STORMRAGE: [HeroSlot.FURION, HeroSlot.ILLIDAN],

    Wc3Mission.HX1_MISCONCEPTIONS: [HeroSlot.KAEL_THAS],
    Wc3Mission.HX2_A_DARK_COVENANT: [HeroSlot.KAEL_THAS, HeroSlot.LADY_VASHJ],
    Wc3Mission.HX3_THE_DUNGEONS_OF_DALARAN: [HeroSlot.KAEL_THAS, HeroSlot.LADY_VASHJ],
    Wc3Mission.HX4_THE_SEARCH_FOR_ILLIDAN: [HeroSlot.KAEL_THAS, HeroSlot.LADY_VASHJ],
    Wc3Mission.HX5_GATES_OF_THE_ABYSS: [HeroSlot.KAEL_THAS, HeroSlot.LADY_VASHJ, HeroSlot.ILLIDAN],
    Wc3Mission.HX6_LORD_OF_OUTLAND: [HeroSlot.KAEL_THAS, HeroSlot.LADY_VASHJ, HeroSlot.ILLIDAN, HeroSlot.AKAMA],

    Wc3Mission.UX1_KING_ARTHAS: [HeroSlot.ARTHAS_TFT, HeroSlot.KEL_THUZAD, HeroSlot.SYLVANAS],
    Wc3Mission.UX2_THE_FLIGHT_FROM_LORDAERON: [HeroSlot.ARTHAS_TFT],
    Wc3Mission.UX3_THE_DARK_LADY: [HeroSlot.SYLVANAS],
    Wc3Mission.UX4_THE_RETURN_TO_NORTHREND: [HeroSlot.ARTHAS_TFT, HeroSlot.ANUB_ARAK],
    Wc3Mission.UX5_DREADLORDS_FALL: [HeroSlot.SYLVANAS, HeroSlot.VARIMATHRAS],
    Wc3Mission.UX6_A_NEW_POWER_IN_LORDAERON: [HeroSlot.SYLVANAS, HeroSlot.VARIMATHRAS, HeroSlot.LORD_GARITHOS],
    Wc3Mission.UX7A_INTO_THE_SHADOW_WEB_CAVERNS: [HeroSlot.ARTHAS_TFT, HeroSlot.ANUB_ARAK],
    Wc3Mission.UX7B_THE_FORGOTTEN_ONES: [HeroSlot.ARTHAS_TFT, HeroSlot.ANUB_ARAK],
    Wc3Mission.UX7C_ASCENT_TO_THE_UPPER_KINGDOM: [HeroSlot.ARTHAS_TFT],
    Wc3Mission.UX8_A_SYMPHONY_OF_FROST_AND_FLAME: [HeroSlot.ARTHAS_TFT, HeroSlot.ANUB_ARAK],
}

HERO_SLOT_TO_MISSIONS: dict[HeroSlot, list[Wc3Mission]] = {_hero: [] for _hero in HeroSlot}
for _mission, _heroes in MISSION_TO_HERO_SLOT.items():
    for _hero in _heroes:
        HERO_SLOT_TO_MISSIONS[_hero].append(_mission)


MISSION_TO_SUPERHERO_SLOT: dict[Wc3Mission, SuperheroSlot] = {
    Wc3Mission.H9_FROSTMOURNE: SuperheroSlot.FROSTMOURNE_ARTHAS,
    Wc3Mission.O5_THE_HUNTER_OF_SHADOWS: SuperheroSlot.POSSESSED_GROM,
    Wc3Mission.N6_A_DESTINY_OF_FLAME_AND_SORROW: SuperheroSlot.MORPHED_ILLIDAN,
}
SUPERHERO_SLOT_TO_MISSION: dict[SuperheroSlot, Wc3Mission] = {
    _superhero: _mission for _mission, _superhero in MISSION_TO_SUPERHERO_SLOT.items()
}
