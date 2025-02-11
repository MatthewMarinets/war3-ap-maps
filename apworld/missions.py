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


class Wc3Campaign(enum.Enum):
    def __new__(cls, *args, **kwargs):
        value = len(cls.__members__) + 1
        obj = object.__new__(cls)
        obj._value_ = value
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
    def __new__(cls, *args, **kwargs):
        value = len(cls.__members__) + 1
        obj = object.__new__(cls)
        obj._value_ = value
        return obj

    def __init__(self, name: str, short_name: str, campaign: Wc3Campaign, chapter: int, race: Wc3Race) -> None:
        self.mission_name = name
        self.short_name = short_name
        self.campaign = campaign
        self.chapter = chapter
        self.race = race
    
    GENERAL = "General", "wc3", Wc3Campaign.GENERAL, 0, Wc3Race.NONE

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

