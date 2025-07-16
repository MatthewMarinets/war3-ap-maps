"""Holds look-up tables connecting data types from different data files"""

from .missions import Wc3Mission, Wc3Campaign
from .heroes import HeroSlot, SuperheroSlot, ItemChannel
from . import items

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

    Wc3Mission.HX1_MISCONCEPTIONS: [HeroSlot.KAEL],
    Wc3Mission.HX2_A_DARK_COVENANT: [HeroSlot.KAEL, HeroSlot.LADY_VASHJ],
    Wc3Mission.HX3_THE_DUNGEONS_OF_DALARAN: [HeroSlot.KAEL, HeroSlot.LADY_VASHJ],
    # Wc3Mission.HXS_THE_CROSSING: [HeroSlot.KAEL, HeroSlot.LADY_VASHJ],
    Wc3Mission.HX4_THE_SEARCH_FOR_ILLIDAN: [HeroSlot.KAEL, HeroSlot.LADY_VASHJ],
    Wc3Mission.HX5_GATES_OF_THE_ABYSS: [HeroSlot.KAEL, HeroSlot.LADY_VASHJ, HeroSlot.ILLIDAN],
    Wc3Mission.HX6_LORD_OF_OUTLAND: [HeroSlot.KAEL, HeroSlot.LADY_VASHJ, HeroSlot.ILLIDAN, HeroSlot.AKAMA],

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


# Note(mm): This table might not be necessary for anything; keeping it around just in case
# MISSION_TO_NPC_HERO_SLOT: dict[Wc3Mission, list[HeroSlot]] = {
#     Wc3Mission.H5_MARCH_OF_THE_SCOURGE: [HeroSlot.JAINA],
#     Wc3Mission.H6_MARCH_OF_THE_SCOURGE: [HeroSlot.JAINA],
#     Wc3Mission.U5_THE_FALL_OF_SILVERMOON: [HeroSlot.KEL_THUZAD],
#     Wc3Mission.U8_UNDER_THE_BURNING_SKY: [HeroSlot.KEL_THUZAD],
#     Wc3Mission.O1_LANDFALL: [HeroSlot.CAIRNE_BLOODHOOF],
#     Wc3Mission.O2_THE_LONG_MARCH: [HeroSlot.CAIRNE_BLOODHOOF],
#     Wc3Mission.O3_CRY_OF_THE_WARSONG: [HeroSlot.GROM_HELLSCREAM],
#     Wc3Mission.O7_THE_ORACLE: [HeroSlot.JAINA],
#     Wc3Mission.O8_BY_DEMONS_BE_DRIVEN: [HeroSlot.JAINA],
#     Wc3Mission.N3_THE_AWAKENING_OF_STORMRAGE: [HeroSlot.FURION],
#     Wc3Mission.N5_BROTHERS_IN_BLOOD: [HeroSlot.ILLIDAN],
#     Wc3Mission.N7_TWILIGHT_OF_THE_GODS: [HeroSlot.JAINA, HeroSlot.THRALL],
#     Wc3Mission.NX1_RISE_OF_THE_NAGA: [HeroSlot.DEMON_ILLIDAN],
#     Wc3Mission.NX2_THE_BROKEN_ISLES: [HeroSlot.DEMON_ILLIDAN],
#     Wc3Mission.NX3_THE_TOMB_OF_SARGERAS: [HeroSlot.LADY_VASHJ, HeroSlot.DEMON_ILLIDAN],
#     Wc3Mission.NX5_BALANCING_THE_SCALES: [HeroSlot.DEMON_ILLIDAN],
#     Wc3Mission.NX6_SHARDS_OF_THE_ALLIANCE: [HeroSlot.KAEL],
#     Wc3Mission.NX7_THE_RUINS_OF_DALARAN: [HeroSlot.KAEL, HeroSlot.DEMON_ILLIDAN],
#     Wc3Mission.NX8_THE_BROTHERS_STORMRAGE: [HeroSlot.TYRANDE_TFT, HeroSlot.MAIEV],
#     Wc3Mission.HX1_MISCONCEPTIONS: [HeroSlot.LORD_GARITHOS, HeroSlot.LADY_VASHJ],
#     Wc3Mission.HX2_A_DARK_COVENANT: [HeroSlot.LORD_GARITHOS],
#     Wc3Mission.HX4_THE_SEARCH_FOR_ILLIDAN: [HeroSlot.MAIEV, HeroSlot.DEMON_ILLIDAN],
#     Wc3Mission.UX2_THE_FLIGHT_FROM_LORDAERON: [HeroSlot.VARIMATHRAS, HeroSlot.SYLVANAS],
#     Wc3Mission.UX3_THE_DARK_LADY: [HeroSlot.VARIMATHRAS],
#     Wc3Mission.UX4_THE_RETURN_TO_NORTHREND: [HeroSlot.KAEL],
#     Wc3Mission.UX5_DREADLORDS_FALL: [HeroSlot.LORD_GARITHOS],
#     Wc3Mission.UX7C_ASCENT_TO_THE_UPPER_KINGDOM: [HeroSlot.ANUB_ARAK],
#     Wc3Mission.UX8_A_SYMPHONY_OF_FROST_AND_FLAME: [HeroSlot.DEMON_ILLIDAN, HeroSlot.KAEL, HeroSlot.LADY_VASHJ],
# }


MISSION_TO_SUPERHERO_SLOT: dict[Wc3Mission, SuperheroSlot] = {
    Wc3Mission.H9_FROSTMOURNE: SuperheroSlot.FROSTMOURNE_ARTHAS,
    Wc3Mission.O5_THE_HUNTER_OF_SHADOWS: SuperheroSlot.POSSESSED_GROM,
    Wc3Mission.N6_A_DESTINY_OF_FLAME_AND_SORROW: SuperheroSlot.MORPHED_ILLIDAN,
}
SUPERHERO_SLOT_TO_MISSION: dict[SuperheroSlot, Wc3Mission] = {
    _superhero: _mission for _mission, _superhero in MISSION_TO_SUPERHERO_SLOT.items()
}

HERO_SLOT_TO_ITEM: dict[HeroSlot, items.Wc3Item] = {
    _item.type.slot: _item for _item in items.Wc3Item if isinstance(_item.type, items.Level)
}
CAMPAIGN_TO_ITEM_SLOT: dict[Wc3Campaign, tuple[ItemChannel, ItemChannel]] = {
    Wc3Campaign.HUMAN_1: (ItemChannel.HUMAN, ItemChannel.NONE),
    Wc3Campaign.UNDEAD_1: (ItemChannel.UNDEAD, ItemChannel.NONE),
    Wc3Campaign.ORC_1: (ItemChannel.ORC, ItemChannel.NONE),
    Wc3Campaign.NIGHT_ELF_1: (ItemChannel.NIGHT_ELF, ItemChannel.NONE),
    Wc3Campaign.NIGHT_ELF_2: (ItemChannel.TFT_NIGHT_ELF, ItemChannel.NONE),
    Wc3Campaign.HUMAN_2: (ItemChannel.BLOOD_ELF, ItemChannel.NONE),
    Wc3Campaign.UNDEAD_2: (ItemChannel.SCOURGE, ItemChannel.NONE),
}
MISSION_TO_ITEM_SLOT: dict[Wc3Mission, tuple[ItemChannel, ItemChannel]] = {
    Wc3Mission.O4_THE_SPIRITS_OF_ASHENVALE: (ItemChannel.WARSONG, ItemChannel.NONE),
    Wc3Mission.O5_THE_HUNTER_OF_SHADOWS: (ItemChannel.WARSONG, ItemChannel.NONE),
    Wc3Mission.N6_A_DESTINY_OF_FLAME_AND_SORROW: (ItemChannel.ROC_ILLIDAN, ItemChannel.NONE),
    Wc3Mission.NX8_THE_BROTHERS_STORMRAGE: (ItemChannel.TFT_NIGHT_ELF, ItemChannel.TFT_ILLIDAN),
    Wc3Mission.HX5_GATES_OF_THE_ABYSS: (ItemChannel.BLOOD_ELF, ItemChannel.TFT_ILLIDAN),
    Wc3Mission.HX6_LORD_OF_OUTLAND: (ItemChannel.BLOOD_ELF, ItemChannel.TFT_ILLIDAN),
    Wc3Mission.UX1_KING_ARTHAS: (ItemChannel.SCOURGE, ItemChannel.FORSAKEN),
    Wc3Mission.UX3_THE_DARK_LADY: (ItemChannel.FORSAKEN, ItemChannel.NONE),
    Wc3Mission.UX5_DREADLORDS_FALL: (ItemChannel.FORSAKEN, ItemChannel.NONE),
    Wc3Mission.UX6_A_NEW_POWER_IN_LORDAERON: (ItemChannel.FORSAKEN, ItemChannel.NONE),
}


def mission_to_item_channel(mission: Wc3Mission) -> tuple[ItemChannel, ItemChannel]:
    return MISSION_TO_ITEM_SLOT.get(
        mission,
        CAMPAIGN_TO_ITEM_SLOT.get(
            mission.campaign,
            (ItemChannel.NONE, ItemChannel.NONE)
        )
    )


ITEM_CHANNEL_TO_DEFAULT_HERO: dict[ItemChannel, HeroSlot] = {
    ItemChannel.HUMAN: HeroSlot.PALADIN_ARTHAS,
    ItemChannel.UNDEAD: HeroSlot.DEATH_KNIGHT_ARTHAS,
    ItemChannel.ORC: HeroSlot.THRALL,
    ItemChannel.WARSONG: HeroSlot.GROM_HELLSCREAM,
    ItemChannel.NIGHT_ELF: HeroSlot.TYRANDE,
    ItemChannel.ROC_ILLIDAN: HeroSlot.ILLIDAN,
    ItemChannel.TFT_NIGHT_ELF: HeroSlot.MAIEV,
    ItemChannel.TFT_ILLIDAN: HeroSlot.DEMON_ILLIDAN,
    ItemChannel.BLOOD_ELF: HeroSlot.KAEL,
    ItemChannel.SCOURGE: HeroSlot.ARTHAS_TFT,
    ItemChannel.FORSAKEN: HeroSlot.SYLVANAS,
}