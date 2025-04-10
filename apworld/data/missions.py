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

    def __init__(self, id: int, title_faction: str, name: str) -> None:
        self.id = id
        self.title_faction = title_faction
        self.campaign_name = name

    GENERAL = -1, "General", "General Locations"
    PROLOGUE = 0, "Prologue", "Exodus of the Horde"
    HUMAN_1 = 1, "Human", "The Scourge of Lordaeron"
    UNDEAD_1 = 2, "Undead", "Path of the Damned"
    ORC_1 = 3, "Orc", "The Invasion of Kalimdor"
    NIGHT_ELF_1 = 4, "Night Elf", "Eternity's End"
    NIGHT_ELF_2 = 5, "Sentinels", "Terror of the Tides"
    HUMAN_2 = 5, "Alliance", "Curse of the Blood Elves"
    UNDEAD_2 = 6, "Scourge", "Legacy of the Damned"


class Wc3Mission(enum.Enum):
    def __new__(cls, name: str, short_name: str, campaign: Wc3Campaign, chapter: int, race: Wc3Race):
        obj = object.__new__(cls)
        obj._value_ = campaign.value * 100 + chapter
        return obj

    def __init__(
        self, name: str, short_name: str, campaign: Wc3Campaign, chapter: int, race: Wc3Race
    ) -> None:
        self.mission_name = name
        self.short_name = short_name
        self.campaign = campaign
        self.chapter = chapter
        self.race = race
    
    GENERAL = "General", "wc3", Wc3Campaign.GENERAL, 0, Wc3Race.NONE
    """Used for locations that are not tied to any particular mission"""

    P1_CHASING_VISIONS =            "Chasing Visions", "T1", Wc3Campaign.PROLOGUE, 1, Wc3Race.ORC
    P2_DEPARTURES =                 "Departures", "T2", Wc3Campaign.PROLOGUE, 2, Wc3Race.ORC
    P3_RIDERS_ON_THE_STORM =        "Riders on the Storm", "T3", Wc3Campaign.PROLOGUE, 3, Wc3Race.ORC
    P4_THE_FIRES_DOWN_BELOW =       "The Fires Down Below", "T4", Wc3Campaign.PROLOGUE, 4, Wc3Race.ORC
    P5_COUNTDOWN_TO_EXTINCTION =    "Countdown to Extinction", "T5", Wc3Campaign.PROLOGUE, 5, Wc3Race.ORC

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


VALUE_TO_MISSION = {_mission.value: _mission for _mission in Wc3Mission}
