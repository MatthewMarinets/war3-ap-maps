"""
Tables storing relationships between items and missions
"""

import enum
from .missions import Wc3Mission


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
    TAVERN = 4


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


class HeroChoices(enum.Enum):
    def __new__(cls, id: int, *args, **kwargs):
        obj = object.__new__(cls)
        obj._value_ = id
        return obj

    def __init__(self, id: int, hero_name: str, hero_class: HeroClass, source: HeroSource) -> None:
        self.hero_name = hero_name
        self.hero_class = hero_class
        self.source = source
        self.vanilla_slot: HeroSlot|None = None
        if source == HeroSource.VANILLA:
            for hero_slot in HeroSlot:
                if hero_slot.name == self.name:
                    self.vanilla_slot = hero_slot
                    break
            assert self.vanilla_slot is not None

    PALADIN_ARTHAS =      1,  "Arthas", HeroClass.PALADIN, HeroSource.VANILLA
    JAINA =               2,  "Jaina", HeroClass.ARCHMAGE, HeroSource.VANILLA
    MURADIN_BRONZEBEARD = 3,  "Muradin Bronzebeard", HeroClass.MOUNTAIN_KING, HeroSource.VANILLA
    THRALL =              4,  "Thrall", HeroClass.FAR_SEER, HeroSource.VANILLA
    CAIRNE_BLOODHOOF =    5,  "Cairne Bloodhoof", HeroClass.TAUREN_CHIEFTAIN, HeroSource.VANILLA
    GROM_HELLSCREAM =     6,  "Grom Hellscream", HeroClass.BLADEMASTER, HeroSource.VANILLA
    DEATH_KNIGHT_ARTHAS = 7,  "Death Knight Arthas", HeroClass.DEATH_KNIGHT, HeroSource.VANILLA
    KEL_THUZAD =          8,  "Kel'Thuzad", HeroClass.LICH, HeroSource.VANILLA
    SYLVANAS =            9,  "Sylvanas", HeroClass.DARK_RANGER, HeroSource.VANILLA
    VARIMATHRAS =         10, "Varimathras", HeroClass.DREADLORD, HeroSource.VANILLA
    ANUB_ARAK =           11, "Anub'arak", HeroClass.CRYPT_LORD, HeroSource.VANILLA
    TYRANDE =             12, "Tyrande", HeroClass.PRIESTESS_OF_THE_MOON, HeroSource.VANILLA
    FURION =              13, "Furion", HeroClass.KEEPER_OF_THE_GROVE, HeroSource.VANILLA
    ILLIDAN =             14, "Illidan", HeroClass.DEMON_HUNTER, HeroSource.VANILLA
    MAIEV =               15, "Maiev", HeroClass.WARDEN, HeroSource.VANILLA
    TYRANDE_TFT =         16, "Tyrande", HeroClass.PRIESTESS_OF_THE_MOON, HeroSource.VANILLA
    MALFURION =           17, "Malfurion", HeroClass.KEEPER_OF_THE_GROVE, HeroSource.VANILLA
    KAEL_THAS =           18, "Kael'Thas", HeroClass.BLOOD_MAGE, HeroSource.VANILLA
    LADY_VASHJ =          19, "Lady Vashj", HeroClass.NAGA_SEA_WITCH, HeroSource.VANILLA
    DEMON_ILLIDAN =       20, "Demon Illidan", HeroClass.DEMON_HUNTER, HeroSource.VANILLA
    AKAMA =               21, "Akama", HeroClass.ELDER_SAGE, HeroSource.VANILLA
    LORD_GARITHOS =       22, "Lord Garithos", HeroClass.DARK_KNIGHT, HeroSource.VANILLA  # Shockwave, Holy Light, Devotion Aura, Avatar

    MAL_GANIS =           23, "Mal'Ganis", HeroClass.DREADLORD, HeroSource.ENEMY  # Aura -> Soul Preservation, Inferno -> Dark Conversion
    DETHEROC =            24, "Detheroc", HeroClass.DREADLORD, HeroSource.ENEMY  # Aura -> Shadow Strike, Inferno -> Death and Decay
    MANNOROTH =           25, "Mannoroth", HeroClass.PIT_LORD, HeroSource.ENEMY  # Shockwave, Thunder Clap, Earthquake, Reincarnation
    MAGTHERIDON =         26, "Magtheridon", HeroClass.PIT_LORD, HeroSource.ENEMY
    UTHER =               27, "Uther", HeroClass.PALADIN, HeroSource.ENEMY
    RANGER_SYLVANAS =     28, "Sylvanas Windrunner", HeroClass.RANGER, HeroSource.ENEMY  # Cold Arrows, Scout, Trueshot Aura, Starfall
    ANTONIDAS =           29, "Antonidas", HeroClass.ARCHMAGE, HeroSource.ENEMY
    # DAGREN_THE_ORCSLAYER = "Dagren the Orcslayer", HeroClass.PALADIN, HeroSource.ENEMY
    # HALAHK_THE_LIFEBRINGER = "Halahk the Lifebringer", HeroClass.PALADIN, HeroSource.ENEMY
    # LORD_NICOLAS_BUZAN = "Lord Nicolas Buzan", HeroClass.PALADIN, HeroSource.ENEMY
    # MAGROTH_THE_DEFENDER = "Magroth the Defender", HeroClass.PALADIN, HeroSource.ENEMY
    # SIR_GREGORY_EDMUNDSON = "Sir Gregory Edmundson", HeroClass.PALADIN, HeroSource.ENEMY
    # AZGALOR = "Azgalor", HeroClass.PIT_LORD, HeroSource.ENEMY  # Copy-paste of Mannoroth

    REXXAR =            30, "Tavern", HeroClass.BEASTMASTER, HeroSource.BONUS
    ROKHAN =            31, "Rokhan", HeroClass.SHADOW_HUNTER, HeroSource.BONUS
    CHEN_STORMSTOUT =   32, "Chen Stormstout", HeroClass.PANDAREN_BREWMASTER, HeroSource.BONUS
    # DREK_THAR = "Drek'Thar", HeroClass.FAR_SEER, HeroSource.BONUS
    # SAMURO = "Samuro", HeroClass.BLADEMASTER, HeroSource.BONUS

    ALCHEMIST =           33, "Alchemist", HeroClass.ALCHEMIST, HeroSource.TAVERN
    NAGA_SEA_WITCH =      34, "Naga Sea Witch", HeroClass.NAGA_SEA_WITCH, HeroSource.TAVERN
    TINKER =              35, "Tinker", HeroClass.TINKER, HeroSource.TAVERN
    BEASTMASTER =         36, "Beastmaster", HeroClass.BEASTMASTER, HeroSource.TAVERN
    DARK_RANGER =         37, "Dark Ranger", HeroClass.DARK_RANGER, HeroSource.TAVERN
    FIRELORD =            38, "Firelord", HeroClass.FIRELORD, HeroSource.TAVERN
    PANDAREN_BREWMASTER = 39, "Pandaren Brewmaster", HeroClass.PANDAREN_BREWMASTER, HeroSource.TAVERN
    PIT_LORD =            40, "Pit Lord", HeroClass.PIT_LORD, HeroSource.TAVERN


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
