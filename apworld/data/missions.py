"""
Mission data
"""

import enum

class Wc3Race(enum.Flag):
    NONE = 0
    HUMAN = enum.auto()
    UNDEAD = enum.auto()
    ORC = enum.auto()
    NIGHT_ELF = enum.auto()
    NAGA = enum.auto()
    BLOOD_ELF = enum.auto()

    HUMAN_SHOP = HUMAN|BLOOD_ELF
    ALL_SHOPS = HUMAN|UNDEAD|ORC|NIGHT_ELF|BLOOD_ELF


class Wc3Campaign(enum.Enum):
    def __new__(cls, id: int, *args, **kwargs):
        obj = object.__new__(cls)
        obj._value_ = id
        return obj

    def __init__(self, id: int, mnemonic: str, title_faction: str, name: str) -> None:
        self.id = id
        self.mnemonic = mnemonic
        self.title_faction = title_faction
        self.campaign_name = name

    GENERAL =    10, "G", "General", "General Locations"
    PROLOGUE =    0, "P", "Prologue", "Exodus of the Horde"
    HUMAN_1 =     1, "H", "Human", "The Scourge of Lordaeron"
    UNDEAD_1 =    2, "U", "Undead", "Path of the Damned"
    ORC_1 =       3, "O", "Orc", "The Invasion of Kalimdor"
    NIGHT_ELF_1 = 4, "N", "Night Elf", "Eternity's End"
    NIGHT_ELF_2 = 5, "N2", "Sentinels", "Terror of the Tides"
    HUMAN_2 =     6, "H2", "Alliance", "Curse of the Blood Elves"
    UNDEAD_2 =    7, "U2", "Scourge", "Legacy of the Damned"


class Wc3Mission(enum.IntEnum):
    def __new__(cls, name: str, short_name: str, campaign: Wc3Campaign, chapter: int, race: Wc3Race):
        value = campaign.value * 100 + chapter
        obj = int.__new__(cls, value)
        obj._value_ = value
        return obj

    def __init__(
        self, name: str, short_name: str, campaign: Wc3Campaign, chapter: int, race: Wc3Race
    ) -> None:
        self.id = self.value
        self.mission_name = name
        self.short_name = short_name
        self.campaign = campaign
        self.chapter = chapter
        self.race = race
    
    GENERAL = "General", "wc3", Wc3Campaign.GENERAL, 0, Wc3Race.NONE
    """Used for locations that are not tied to any particular mission"""

    # P1_CHASING_VISIONS =            "Chasing Visions", "T1", Wc3Campaign.PROLOGUE, 1, Wc3Race.ORC
    # P2_DEPARTURES =                 "Departures", "T2", Wc3Campaign.PROLOGUE, 2, Wc3Race.ORC
    # P3_RIDERS_ON_THE_STORM =        "Riders on the Storm", "T3", Wc3Campaign.PROLOGUE, 3, Wc3Race.ORC
    # P4_THE_FIRES_DOWN_BELOW =       "The Fires Down Below", "T4", Wc3Campaign.PROLOGUE, 4, Wc3Race.ORC
    # P5_COUNTDOWN_TO_EXTINCTION =    "Countdown to Extinction", "T5", Wc3Campaign.PROLOGUE, 5, Wc3Race.ORC

    H1_DEFENSE_OF_STRAHNBRAD =      "Defense of Strahnbrad", "H1", Wc3Campaign.HUMAN_1, 1, Wc3Race.HUMAN
    H2_BLACKROCK_AND_ROLL =         "Blackrock and Roll", "H2", Wc3Campaign.HUMAN_1, 2, Wc3Race.HUMAN
    H3_RAVAGES_OF_THE_PLAGUE =      "Ravages of the Plague", "H3", Wc3Campaign.HUMAN_1, 3, Wc3Race.HUMAN
    H4_THE_CULT_OF_THE_DAMNED =     "The Cult of the Damned", "H4", Wc3Campaign.HUMAN_1, 4, Wc3Race.HUMAN
    H5_MARCH_OF_THE_SCOURGE =       "March of the Scourge", "H5", Wc3Campaign.HUMAN_1, 5, Wc3Race.HUMAN
    H6_THE_CULLING =                "The Culling", "H6", Wc3Campaign.HUMAN_1, 6, Wc3Race.HUMAN
    H7_THE_SHORES_OF_NORTHREND =    "The Shores of Northrend", "H7", Wc3Campaign.HUMAN_1, 7, Wc3Race.HUMAN
    H8_DISSENSION =                 "Dissension", "H8", Wc3Campaign.HUMAN_1, 8, Wc3Race.HUMAN
    H9_FROSTMOURNE =                "Frostmourne", "H9", Wc3Campaign.HUMAN_1, 9, Wc3Race.HUMAN

    U1_TRUDGING_THROUGH_THE_ASHES = "Trudging Through the Ashes", "U1", Wc3Campaign.UNDEAD_1, 1, Wc3Race.UNDEAD
    U2_DIGGING_UP_THE_DEAD =        "Digging up the Dead", "U2", Wc3Campaign.UNDEAD_1, 2, Wc3Race.UNDEAD
    U3_INTO_THE_REALM_ETERNAL =     "Into the Realm Eternal", "U3", Wc3Campaign.UNDEAD_1, 3, Wc3Race.UNDEAD
    U4_KEY_OF_THE_THREE_MOONS =     "Key of the Three Moons", "U4", Wc3Campaign.UNDEAD_1, 4, Wc3Race.UNDEAD
    U5_THE_FALL_OF_SILVERMOON =     "The Fall of Silvermoon", "U5", Wc3Campaign.UNDEAD_1, 5, Wc3Race.UNDEAD
    U6_BLACKROCK_AND_ROLL_TOO =     "Blackrock & Roll, Too!", "U6", Wc3Campaign.UNDEAD_1, 6, Wc3Race.UNDEAD
    U7_THE_SIEGE_OF_DALARAN =       "The Siege of Dalaran", "U7", Wc3Campaign.UNDEAD_1, 7, Wc3Race.UNDEAD
    U8_UNDER_THE_BURNING_SKY =      "Under the Burning Sky", "U8", Wc3Campaign.UNDEAD_1, 8, Wc3Race.UNDEAD

    O1_LANDFALL =                   "Landfall", "O1", Wc3Campaign.ORC_1, 1, Wc3Race.ORC
    O2_THE_LONG_MARCH =             "The Long March", "O2", Wc3Campaign.ORC_1, 2, Wc3Race.ORC
    O3_CRY_OF_THE_WARSONG =         "Cry of the Warsong", "O3", Wc3Campaign.ORC_1, 3, Wc3Race.ORC
    O4_THE_SPIRITS_OF_ASHENVALE =   "The Spirits of Ashenvale", "O4", Wc3Campaign.ORC_1, 4, Wc3Race.ORC
    O5_THE_HUNTER_OF_SHADOWS =      "The Hunter of Shadows", "O5", Wc3Campaign.ORC_1, 5, Wc3Race.ORC
    O6_WHERE_WYVERNS_DARE =         "Where Wyverns Dare", "O6", Wc3Campaign.ORC_1, 6, Wc3Race.ORC
    O7_THE_ORACLE =                 "The Oracle", "O7", Wc3Campaign.ORC_1, 7, Wc3Race.ORC
    O8_BY_DEMONS_BE_DRIVEN =        "By Demons Be Driven", "O8", Wc3Campaign.ORC_1, 8, Wc3Race.ORC

    N1_ENEMIES_AT_THE_GATE =            "Enemies at the Gate", "N1", Wc3Campaign.NIGHT_ELF_1, 1, Wc3Race.NIGHT_ELF
    N2_DAUGHTERS_OF_THE_MOON =          "Daughters of the Moon", "N2", Wc3Campaign.NIGHT_ELF_1, 2, Wc3Race.NIGHT_ELF
    N3_THE_AWAKENING_OF_STORMRAGE =     "The Awakening of Stormrage", "N3", Wc3Campaign.NIGHT_ELF_1, 3, Wc3Race.NIGHT_ELF
    N4_THE_DRUIDS_ARISE =               "The Druids Arise", "N4", Wc3Campaign.NIGHT_ELF_1, 4, Wc3Race.NIGHT_ELF
    N5_BROTHERS_IN_BLOOD =              "Brothers in Blood", "N5", Wc3Campaign.NIGHT_ELF_1, 5, Wc3Race.NIGHT_ELF
    N6_A_DESTINY_OF_FLAME_AND_SORROW =  "A Destiny of Flame and Sorrow", "N6", Wc3Campaign.NIGHT_ELF_1, 6, Wc3Race.NIGHT_ELF
    N7_TWILIGHT_OF_THE_GODS =           "Twilight of the Gods", "N7", Wc3Campaign.NIGHT_ELF_1, 7, Wc3Race.NIGHT_ELF

    NX1_RISE_OF_THE_NAGA =          "Rise of the Naga", "Nx1", Wc3Campaign.NIGHT_ELF_2, 1, Wc3Race.NIGHT_ELF
    NX2_THE_BROKEN_ISLES =          "The Broken Isles", "Nx2", Wc3Campaign.NIGHT_ELF_2, 2, Wc3Race.NIGHT_ELF
    NX3_THE_TOMB_OF_SARGERAS =      "The Tomb of Sargeras", "Nx3", Wc3Campaign.NIGHT_ELF_2, 3, Wc3Race.NIGHT_ELF
    NX4_WRATH_OF_THE_BETRAYER =     "Wrath of the Betrayer", "Nx4", Wc3Campaign.NIGHT_ELF_2, 4, Wc3Race.NIGHT_ELF
    NX5_BALANCING_THE_SCALES =      "Balancing the Scales", "Nx5", Wc3Campaign.NIGHT_ELF_2, 5, Wc3Race.NIGHT_ELF
    NX6_SHARDS_OF_THE_ALLIANCE =    "Shards of the Alliance", "Nx6", Wc3Campaign.NIGHT_ELF_2, 6, Wc3Race.NIGHT_ELF
    NX7_THE_RUINS_OF_DALARAN =      "The Ruins of Dalaran", "Nx7", Wc3Campaign.NIGHT_ELF_2, 7, Wc3Race.NIGHT_ELF
    NX8_THE_BROTHERS_STORMRAGE =    "The Brothers Stormrage", "Nx8", Wc3Campaign.NIGHT_ELF_2, 8, Wc3Race.NIGHT_ELF|Wc3Race.NAGA

    HX1_MISCONCEPTIONS =            "Misconceptions", "Hx1", Wc3Campaign.HUMAN_2, 1, Wc3Race.HUMAN
    HX2_A_DARK_COVENANT =           "A Dark Covenant", "Hx2", Wc3Campaign.HUMAN_2, 2, Wc3Race.BLOOD_ELF|Wc3Race.NAGA
    HX3_THE_DUNGEONS_OF_DALARAN =   "The Dungeons of Dalaran", "Hx3", Wc3Campaign.HUMAN_2, 3, Wc3Race.BLOOD_ELF
    # HXS_THE_CROSSING =              "The Crossing", "Hx?", Wc3Campaign.HUMAN_2, -1, Wc3Race.BLOOD_ELF
    HX4_THE_SEARCH_FOR_ILLIDAN =    "The Search for Illidan", "Hx4", Wc3Campaign.HUMAN_2, 4, Wc3Race.BLOOD_ELF|Wc3Race.NAGA
    HX5_GATES_OF_THE_ABYSS =        "Gates of the Abyss", "Hx5", Wc3Campaign.HUMAN_2, 5, Wc3Race.BLOOD_ELF|Wc3Race.NAGA
    HX6_LORD_OF_OUTLAND =           "Lord of Outland", "Hx6", Wc3Campaign.HUMAN_2, 6, Wc3Race.BLOOD_ELF|Wc3Race.NAGA

    UX1_KING_ARTHAS =                   "King Arthas", "Ux1", Wc3Campaign.UNDEAD_2, 1, Wc3Race.UNDEAD
    UX2_THE_FLIGHT_FROM_LORDAERON =     "The Flight from Loardaeron", "Ux2", Wc3Campaign.UNDEAD_2, 2, Wc3Race.UNDEAD
    UX3_THE_DARK_LADY =                 "The Dark Lady", "Ux3", Wc3Campaign.UNDEAD_2, 3, Wc3Race.UNDEAD
    UX4_THE_RETURN_TO_NORTHREND =       "The Return to Northrend", "Ux4", Wc3Campaign.UNDEAD_2, 4, Wc3Race.UNDEAD
    UX5_DREADLORDS_FALL =               "Dreadlord's Fall", "Ux5", Wc3Campaign.UNDEAD_2, 5, Wc3Race.UNDEAD
    UX6_A_NEW_POWER_IN_LORDAERON =      "A New Power in Lordaeron", "Ux6", Wc3Campaign.UNDEAD_2, 6, Wc3Race.UNDEAD
    UX7A_INTO_THE_SHADOW_WEB_CAVERNS =  "Into the Shadow Web Caverns", "Ux7a", Wc3Campaign.UNDEAD_2, 7, Wc3Race.UNDEAD
    UX7B_THE_FORGOTTEN_ONES =           "The Forgotten Ones", "Ux7b", Wc3Campaign.UNDEAD_2, 8, Wc3Race.UNDEAD
    UX7C_ASCENT_TO_THE_UPPER_KINGDOM =  "Ascent to the Upper Kingdom", "Ux7c", Wc3Campaign.UNDEAD_2, 9, Wc3Race.UNDEAD
    UX8_A_SYMPHONY_OF_FROST_AND_FLAME = "A Symphony of Frost and Flame", "Ux8", Wc3Campaign.UNDEAD_2, 10, Wc3Race.UNDEAD


class MissionFlag(enum.IntFlag):
    NONE = 0
    BUILD = enum.auto()
    NO_BUILD = enum.auto()
    SEMI_BUILD = enum.auto()
    MULTI_FACTION = enum.auto()


ID_TO_MISSION: dict[int, Wc3Mission] = {_mission.value: _mission for _mission in Wc3Mission}
SHORT_NAME_TO_MISSION: dict[str, Wc3Mission] = {_mission.short_name: _mission for _mission in Wc3Mission}

MISSION_TO_FLAG: dict[Wc3Mission, MissionFlag] = {
    # Wc3Mission.P1_CHASING_VISIONS: MissionFlag.NO_BUILD,
    # Wc3Mission.P2_DEPARTURES: MissionFlag.BUILD,
    # Wc3Mission.P3_RIDERS_ON_THE_STORM: MissionFlag.BUILD,
    # Wc3Mission.P4_THE_FIRES_DOWN_BELOW: MissionFlag.NO_BUILD,
    # Wc3Mission.P5_COUNTDOWN_TO_EXTINCTION: MissionFlag.BUILD,

    Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD: MissionFlag.NO_BUILD,
    Wc3Mission.H2_BLACKROCK_AND_ROLL: MissionFlag.BUILD,
    Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE: MissionFlag.NO_BUILD,
    Wc3Mission.H4_THE_CULT_OF_THE_DAMNED: MissionFlag.BUILD,
    Wc3Mission.H5_MARCH_OF_THE_SCOURGE: MissionFlag.BUILD,
    Wc3Mission.H6_THE_CULLING: MissionFlag.BUILD,
    Wc3Mission.H7_THE_SHORES_OF_NORTHREND: MissionFlag.BUILD,
    Wc3Mission.H8_DISSENSION: MissionFlag.NO_BUILD,
    Wc3Mission.H9_FROSTMOURNE: MissionFlag.BUILD,
    Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES: MissionFlag.NO_BUILD,
    Wc3Mission.U2_DIGGING_UP_THE_DEAD: MissionFlag.BUILD,
    Wc3Mission.U3_INTO_THE_REALM_ETERNAL: MissionFlag.BUILD,
    Wc3Mission.U4_KEY_OF_THE_THREE_MOONS: MissionFlag.BUILD,
    Wc3Mission.U5_THE_FALL_OF_SILVERMOON: MissionFlag.BUILD,
    Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO: MissionFlag.BUILD,
    Wc3Mission.U7_THE_SIEGE_OF_DALARAN: MissionFlag.BUILD,
    Wc3Mission.U8_UNDER_THE_BURNING_SKY: MissionFlag.BUILD,
    Wc3Mission.O1_LANDFALL: MissionFlag.NO_BUILD,
    Wc3Mission.O2_THE_LONG_MARCH: MissionFlag.NO_BUILD,
    Wc3Mission.O3_CRY_OF_THE_WARSONG: MissionFlag.BUILD,
    Wc3Mission.O4_THE_SPIRITS_OF_ASHENVALE: MissionFlag.BUILD,
    Wc3Mission.O5_THE_HUNTER_OF_SHADOWS: MissionFlag.BUILD,
    Wc3Mission.O6_WHERE_WYVERNS_DARE: MissionFlag.BUILD,
    Wc3Mission.O7_THE_ORACLE: MissionFlag.NO_BUILD,
    Wc3Mission.O8_BY_DEMONS_BE_DRIVEN: MissionFlag.BUILD,
    Wc3Mission.N1_ENEMIES_AT_THE_GATE: MissionFlag.BUILD,
    Wc3Mission.N2_DAUGHTERS_OF_THE_MOON: MissionFlag.NO_BUILD,
    Wc3Mission.N3_THE_AWAKENING_OF_STORMRAGE: MissionFlag.BUILD,
    Wc3Mission.N4_THE_DRUIDS_ARISE: MissionFlag.BUILD,
    Wc3Mission.N5_BROTHERS_IN_BLOOD: MissionFlag.NO_BUILD,
    Wc3Mission.N6_A_DESTINY_OF_FLAME_AND_SORROW: MissionFlag.BUILD,
    Wc3Mission.N7_TWILIGHT_OF_THE_GODS: MissionFlag.BUILD,

    Wc3Mission.NX1_RISE_OF_THE_NAGA: MissionFlag.NO_BUILD,
    Wc3Mission.NX2_THE_BROKEN_ISLES: MissionFlag.BUILD,
    Wc3Mission.NX3_THE_TOMB_OF_SARGERAS: MissionFlag.NO_BUILD,
    Wc3Mission.NX4_WRATH_OF_THE_BETRAYER: MissionFlag.BUILD,
    Wc3Mission.NX5_BALANCING_THE_SCALES: MissionFlag.BUILD,
    Wc3Mission.NX6_SHARDS_OF_THE_ALLIANCE: MissionFlag.NO_BUILD,
    Wc3Mission.NX7_THE_RUINS_OF_DALARAN: MissionFlag.BUILD,
    Wc3Mission.NX8_THE_BROTHERS_STORMRAGE: MissionFlag.BUILD | MissionFlag.MULTI_FACTION,
    Wc3Mission.HX1_MISCONCEPTIONS: MissionFlag.BUILD,
    Wc3Mission.HX2_A_DARK_COVENANT: MissionFlag.BUILD,
    Wc3Mission.HX3_THE_DUNGEONS_OF_DALARAN: MissionFlag.NO_BUILD,
    Wc3Mission.HX4_THE_SEARCH_FOR_ILLIDAN: MissionFlag.NO_BUILD,
    Wc3Mission.HX5_GATES_OF_THE_ABYSS: MissionFlag.BUILD,
    Wc3Mission.HX6_LORD_OF_OUTLAND: MissionFlag.SEMI_BUILD,
    Wc3Mission.UX1_KING_ARTHAS: MissionFlag.SEMI_BUILD,
    Wc3Mission.UX2_THE_FLIGHT_FROM_LORDAERON: MissionFlag.NO_BUILD,
    Wc3Mission.UX3_THE_DARK_LADY: MissionFlag.BUILD,
    Wc3Mission.UX4_THE_RETURN_TO_NORTHREND: MissionFlag.BUILD,
    Wc3Mission.UX5_DREADLORDS_FALL: MissionFlag.BUILD,
    Wc3Mission.UX6_A_NEW_POWER_IN_LORDAERON: MissionFlag.BUILD | MissionFlag.MULTI_FACTION,
    Wc3Mission.UX7A_INTO_THE_SHADOW_WEB_CAVERNS: MissionFlag.NO_BUILD,
    Wc3Mission.UX7B_THE_FORGOTTEN_ONES: MissionFlag.NO_BUILD,
    Wc3Mission.UX7C_ASCENT_TO_THE_UPPER_KINGDOM: MissionFlag.NO_BUILD,
    Wc3Mission.UX8_A_SYMPHONY_OF_FROST_AND_FLAME: MissionFlag.BUILD,
}
