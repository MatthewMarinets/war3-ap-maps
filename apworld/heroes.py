"""
Tables storing relationships between items and missions
"""

import enum
from .items import Wc3Item
from .missions import Wc3Mission


class HeroSlot(enum.Enum):
    ARTHAS = enum.auto()
    JAINA = enum.auto()
    MURADIN_BRONZEBEARD = enum.auto()

    THRALL = enum.auto()
    CAIRNE_BLOODHOOF = enum.auto()
    GROM_HELLSCREAM = enum.auto()

    ARTHAS_EVIL = enum.auto()
    KEL_THUZAD = enum.auto()
    SYLVANAS = enum.auto()
    VARIMATHRAS = enum.auto()
    ANUB_ARAK = enum.auto()

    TYRANDE = enum.auto()
    FURION = enum.auto()
    ILLIDAN = enum.auto()
    MAIEV = enum.auto()

    KAEL_THAS = enum.auto()
    LADY_VASHJ = enum.auto()
    AKAMA = enum.auto()


MISSION_TO_HERO = {
    Wc3Mission.P1_CHASING_VISIONS: [HeroSlot.THRALL],
    Wc3Mission.P2_DEPARTURES: [HeroSlot.THRALL],
    Wc3Mission.P3_RIDERS_ON_THE_STORM: [HeroSlot.THRALL],
    Wc3Mission.P4_THE_FIRES_DOWN_BELOW: [HeroSlot.THRALL],
    Wc3Mission.P5_COUNTDOWN_TO_EXTINCTION: [HeroSlot.THRALL],

    Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD: [HeroSlot.ARTHAS],
    Wc3Mission.H2_BLACKROCK_AND_ROLL: [HeroSlot.ARTHAS],
    Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE: [HeroSlot.ARTHAS, HeroSlot.JAINA],
    Wc3Mission.H4_THE_CULT_OF_THE_DAMNED: [HeroSlot.ARTHAS, HeroSlot.JAINA],
    Wc3Mission.H5_MARCH_OF_THE_SCOURGE: [HeroSlot.ARTHAS],
    Wc3Mission.H6_THE_CULLING: [HeroSlot.ARTHAS],
    Wc3Mission.H7_THE_SHORES_OF_NORTHREND: [HeroSlot.ARTHAS, HeroSlot.MURADIN_BRONZEBEARD],
    Wc3Mission.H8_DISSENSION: [HeroSlot.ARTHAS, HeroSlot.MURADIN_BRONZEBEARD],
    Wc3Mission.H9_FROSTMOURNE: [HeroSlot.ARTHAS, HeroSlot.MURADIN_BRONZEBEARD],

    Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES: [HeroSlot.ARTHAS_EVIL],
    Wc3Mission.U2_DIGGING_UP_THE_DEAD: [HeroSlot.ARTHAS_EVIL],
    Wc3Mission.U3_INTO_THE_REALM_ETERNAL: [HeroSlot.ARTHAS_EVIL],
    Wc3Mission.U4_KEY_OF_THE_THREE_MOONS: [HeroSlot.ARTHAS_EVIL],
    Wc3Mission.U5_THE_FALL_OF_SILVERMOON: [HeroSlot.ARTHAS_EVIL],
    Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO: [HeroSlot.ARTHAS_EVIL, HeroSlot.KEL_THUZAD],
    Wc3Mission.U7_THE_SIEGE_OF_DALARAN: [HeroSlot.ARTHAS_EVIL, HeroSlot.KEL_THUZAD],
    Wc3Mission.U8_UNDER_THE_BURNING_SKY: [HeroSlot.ARTHAS_EVIL],

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

    Wc3Mission.UX1_KING_ARTHAS: [HeroSlot.ARTHAS_EVIL, HeroSlot.KEL_THUZAD, HeroSlot.SYLVANAS],
    Wc3Mission.UX2_THE_FLIGHT_FROM_LORDAERON: [HeroSlot.ARTHAS_EVIL],
    Wc3Mission.UX3_THE_DARK_LADY: [HeroSlot.SYLVANAS],
    Wc3Mission.UX4_THE_RETURN_TO_NORTHREND: [HeroSlot.ARTHAS_EVIL, HeroSlot.ANUB_ARAK],
    Wc3Mission.UX5_DREADLORDS_FALL: [HeroSlot.SYLVANAS, HeroSlot.VARIMATHRAS],
    Wc3Mission.UX6_A_NEW_POWER_IN_LORDAERON: [HeroSlot.SYLVANAS, HeroSlot.VARIMATHRAS],
    Wc3Mission.UX7A_INTO_THE_SHADOW_WEB_CAVERNS: [HeroSlot.ARTHAS_EVIL, HeroSlot.ANUB_ARAK],
    Wc3Mission.UX7B_THE_FORGOTTEN_ONES: [HeroSlot.ARTHAS_EVIL, HeroSlot.ANUB_ARAK],
    Wc3Mission.UX7C_ASCENT_TO_THE_UPPER_KINGDOM: [HeroSlot.ARTHAS_EVIL],
    Wc3Mission.UX8_A_SYMPHONY_OF_FROST_AND_FLAME: [HeroSlot.ARTHAS_EVIL, HeroSlot.ANUB_ARAK],
}


HERO_TO_MISSION: dict[HeroSlot, list[Wc3Mission]] = {hero: [] for hero in HeroSlot}
for mission, heroes in MISSION_TO_HERO.items():
    for hero in heroes:
        HERO_TO_MISSION[hero].append(mission)
