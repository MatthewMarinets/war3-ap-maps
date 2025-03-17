"""
Tables storing relationships between items and missions
"""

import enum
from .items import Wc3Item
from .missions import Wc3Mission


class VanillaHero(enum.Enum):
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
    Wc3Mission.P1_CHASING_VISIONS: [VanillaHero.THRALL],
    Wc3Mission.P2_DEPARTURES: [VanillaHero.THRALL],
    Wc3Mission.P3_RIDERS_ON_THE_STORM: [VanillaHero.THRALL],
    Wc3Mission.P4_THE_FIRES_DOWN_BELOW: [VanillaHero.THRALL],
    Wc3Mission.P5_COUNTDOWN_TO_EXTINCTION: [VanillaHero.THRALL],

    Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD: [VanillaHero.ARTHAS],
    Wc3Mission.H2_BLACKROCK_AND_ROLL: [VanillaHero.ARTHAS],
    Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE: [VanillaHero.ARTHAS, VanillaHero.JAINA],
    Wc3Mission.H4_THE_CULT_OF_THE_DAMNED: [VanillaHero.ARTHAS, VanillaHero.JAINA],
    Wc3Mission.H5_MARCH_OF_THE_SCOURGE: [VanillaHero.ARTHAS],
    Wc3Mission.H6_THE_CULLING: [VanillaHero.ARTHAS],
    Wc3Mission.H7_THE_SHORES_OF_NORTHREND: [VanillaHero.ARTHAS, VanillaHero.MURADIN_BRONZEBEARD],
    Wc3Mission.H8_DISSENSION: [VanillaHero.ARTHAS, VanillaHero.MURADIN_BRONZEBEARD],
    Wc3Mission.H9_FROSTMOURNE: [VanillaHero.ARTHAS, VanillaHero.MURADIN_BRONZEBEARD],

    Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES: [VanillaHero.ARTHAS_EVIL],
    Wc3Mission.U2_DIGGING_UP_THE_DEAD: [VanillaHero.ARTHAS_EVIL],
    Wc3Mission.U3_INTO_THE_REALM_ETERNAL: [VanillaHero.ARTHAS_EVIL],
    Wc3Mission.U4_KEY_OF_THE_THREE_MOONS: [VanillaHero.ARTHAS_EVIL],
    Wc3Mission.U5_THE_FALL_OF_SILVERMOON: [VanillaHero.ARTHAS_EVIL],
    Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO: [VanillaHero.ARTHAS_EVIL, VanillaHero.KEL_THUZAD],
    Wc3Mission.U7_THE_SIEGE_OF_DALARAN: [VanillaHero.ARTHAS_EVIL, VanillaHero.KEL_THUZAD],
    Wc3Mission.U8_UNDER_THE_BURNING_SKY: [VanillaHero.ARTHAS_EVIL],

    Wc3Mission.O1_LANDFALL: [VanillaHero.THRALL],
    Wc3Mission.O2_THE_LONG_MARCH: [VanillaHero.THRALL],
    Wc3Mission.O3_CRY_OF_THE_WARSONG: [VanillaHero.THRALL],
    Wc3Mission.O4_THE_SPIRITS_OF_ASHENVALE: [VanillaHero.GROM_HELLSCREAM],
    Wc3Mission.O5_THE_HUNTER_OF_SHADOWS: [VanillaHero.GROM_HELLSCREAM],
    Wc3Mission.O6_WHERE_WYVERNS_DARE: [VanillaHero.THRALL, VanillaHero.CAIRNE_BLOODHOOF],
    Wc3Mission.O7_THE_ORACLE: [VanillaHero.THRALL, VanillaHero.CAIRNE_BLOODHOOF],
    Wc3Mission.O8_BY_DEMONS_BE_DRIVEN: [VanillaHero.THRALL, VanillaHero.CAIRNE_BLOODHOOF],

    Wc3Mission.N1_ENEMIES_AT_THE_GATE: [VanillaHero.TYRANDE],
    Wc3Mission.N2_DAUGHTERS_OF_THE_MOON: [VanillaHero.TYRANDE],
    Wc3Mission.N3_THE_AWAKENING_OF_STORMRAGE: [VanillaHero.TYRANDE],
    Wc3Mission.N4_THE_DRUIDS_ARISE: [VanillaHero.TYRANDE, VanillaHero.FURION],
    Wc3Mission.N5_BROTHERS_IN_BLOOD: [VanillaHero.TYRANDE, VanillaHero.FURION],
    Wc3Mission.N6_A_DESTINY_OF_FLAME_AND_SORROW: [VanillaHero.ILLIDAN],
    Wc3Mission.N7_TWILIGHT_OF_THE_GODS: [VanillaHero.TYRANDE, VanillaHero.FURION],

    Wc3Mission.NX1_RISE_OF_THE_NAGA: [VanillaHero.MAIEV],
    Wc3Mission.NX2_THE_BROKEN_ISLES: [VanillaHero.MAIEV],
    Wc3Mission.NX3_THE_TOMB_OF_SARGERAS: [VanillaHero.MAIEV],
    Wc3Mission.NX4_WRATH_OF_THE_BETRAYER: [VanillaHero.MAIEV],
    Wc3Mission.NX5_BALANCING_THE_SCALES: [VanillaHero.MAIEV, VanillaHero.TYRANDE, VanillaHero.FURION],
    Wc3Mission.NX6_SHARDS_OF_THE_ALLIANCE: [VanillaHero.MAIEV, VanillaHero.TYRANDE],
    Wc3Mission.NX7_THE_RUINS_OF_DALARAN: [VanillaHero.MAIEV, VanillaHero.FURION],
    Wc3Mission.NX8_THE_BROTHERS_STORMRAGE: [VanillaHero.FURION, VanillaHero.ILLIDAN],

    Wc3Mission.HX1_MISCONCEPTIONS: [VanillaHero.KAEL_THAS],
    Wc3Mission.HX2_A_DARK_COVENANT: [VanillaHero.KAEL_THAS, VanillaHero.LADY_VASHJ],
    Wc3Mission.HX3_THE_DUNGEONS_OF_DALARAN: [VanillaHero.KAEL_THAS, VanillaHero.LADY_VASHJ],
    Wc3Mission.HX4_THE_SEARCH_FOR_ILLIDAN: [VanillaHero.KAEL_THAS, VanillaHero.LADY_VASHJ],
    Wc3Mission.HX5_GATES_OF_THE_ABYSS: [VanillaHero.KAEL_THAS, VanillaHero.LADY_VASHJ, VanillaHero.ILLIDAN],
    Wc3Mission.HX6_LORD_OF_OUTLAND: [VanillaHero.KAEL_THAS, VanillaHero.LADY_VASHJ, VanillaHero.ILLIDAN, VanillaHero.AKAMA],

    Wc3Mission.UX1_KING_ARTHAS: [VanillaHero.ARTHAS_EVIL, VanillaHero.KEL_THUZAD, VanillaHero.SYLVANAS],
    Wc3Mission.UX2_THE_FLIGHT_FROM_LORDAERON: [VanillaHero.ARTHAS_EVIL],
    Wc3Mission.UX3_THE_DARK_LADY: [VanillaHero.SYLVANAS],
    Wc3Mission.UX4_THE_RETURN_TO_NORTHREND: [VanillaHero.ARTHAS_EVIL, VanillaHero.ANUB_ARAK],
    Wc3Mission.UX5_DREADLORDS_FALL: [VanillaHero.SYLVANAS, VanillaHero.VARIMATHRAS],
    Wc3Mission.UX6_A_NEW_POWER_IN_LORDAERON: [VanillaHero.SYLVANAS, VanillaHero.VARIMATHRAS],
    Wc3Mission.UX7A_INTO_THE_SHADOW_WEB_CAVERNS: [VanillaHero.ARTHAS_EVIL, VanillaHero.ANUB_ARAK],
    Wc3Mission.UX7B_THE_FORGOTTEN_ONES: [VanillaHero.ARTHAS_EVIL, VanillaHero.ANUB_ARAK],
    Wc3Mission.UX7C_ASCENT_TO_THE_UPPER_KINGDOM: [VanillaHero.ARTHAS_EVIL],
    Wc3Mission.UX8_A_SYMPHONY_OF_FROST_AND_FLAME: [VanillaHero.ARTHAS_EVIL, VanillaHero.ANUB_ARAK],
}


HERO_TO_MISSION: dict[VanillaHero, list[Wc3Mission]] = {hero: [] for hero in VanillaHero}
for mission, heroes in MISSION_TO_HERO.items():
    for hero in heroes:
        HERO_TO_MISSION[hero].append(mission)
