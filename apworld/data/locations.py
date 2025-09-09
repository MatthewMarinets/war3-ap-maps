"""
location data within missions, not including logic
"""

import enum

from .missions import Wc3Mission


class Wc3LocationType(enum.Flag):
    VICTORY = enum.auto()
    QUEST = enum.auto()
    HERO = enum.auto()
    BASE = enum.auto()
    RESCUE = enum.auto()
    SECRET = enum.auto()
    SHOP = enum.auto()
    ITEM = enum.auto()
    CHALLENGE = enum.auto()

    VH = VICTORY|HERO
    """Victory + Hero"""
    HERO_ITEM = HERO|ITEM
    QUEST_ITEM = QUEST|ITEM
    QUEST_BASE = QUEST|BASE
    QUEST_HERO = QUEST|HERO
    SECRET_ITEM = SECRET|ITEM
    HARD_BASE = BASE|CHALLENGE
    QUEST_RESCUE = QUEST|RESCUE
    HARD_ITEM = CHALLENGE|ITEM
    HARD_HERO = CHALLENGE|HERO


class Wc3Location(enum.Enum):
    def __new__(cls, id: int, *args, **kwargs):
        value = id
        obj = object.__new__(cls)
        obj._value_ = value
        return obj

    def __init__(
        self, id: int, location_name: str, mission: Wc3Mission, type: Wc3LocationType, vanilla_item: str = ''
    ) -> None:
        self.id = id
        self.location_name = location_name
        self.mission = mission
        self.type = type
        self.vanilla_item = vanilla_item
    
    def global_name(self) -> str:
        return f"{self.mission.mission_name}: {self.location_name}"

    # Quests
    # (Main) Defend Strahnbrad
    # (Side) Save Timmy
    # (Side) Bandit Lord
    HU1_VICTORY =           1100, "Victory",                Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.VICTORY
    HU1_FIRST_CRATE =       1101, "First Crate",            Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.ITEM, "Potion of Healing"
    HU1_SECOND_CRATE =      1102, "Second Crate",           Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.ITEM, "Scroll of Protection"
    HU1_GNOLL_ITEM =        1103, "Gnoll Crate",            Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.ITEM, "Potion of Healing"
    HU1_BENEDICT =          1104, "Benedict's Trap",        Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.ITEM, "Scroll of Healing"
    HU1_BANDIT_ITEM =       1105, "Bandit Item",            Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.ITEM, "Potion of Mana"
    HU1_MENAG =             1106, "Bandit Lord Item",       Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.QUEST  # Gerard's Ledger
    HU1_NORTH_CRATE =       1107, "North Crate",            Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.ITEM, "Potion of Mana"
    HU1_ENLIST_THORNBY =    1120, "Enlist Thornby",         Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.RESCUE
    HU1_TOWN_RESCUE =       1121, "Rescue Battling Footmen",Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.RESCUE
    HU1_TIMMY =             1122, "Save Timmy",             Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.QUEST_ITEM, "Ring of Protection +1"
    HU1_RETURN_LEDGER =     1124, "Return Gerard's Ledger", Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.QUEST_ITEM, "Tome of Strength"
    HU1_GRAVEYARD =         1125, "Find the Graveyard",     Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.SECRET

    # Quests:
    # (Main) Blademaster
    # (Main) Establish Base
    # (Side) Searinox
    HU2_VICTORY =               1200, "Victory",                 Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.VICTORY
    HU2_WEST_MURLOC_ITEM =      1201, "Western Murloc Item",     Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Claws of Attack +3"
    HU2_WEST_OGRE_ITEM =        1202, "Western Ogre Item",       Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.SECRET_ITEM, "Gauntlets of Ogre Strength +3"
    HU2_GNOLL_POACHER_ITEM =    1203, "Gnoll Poacher Item",      Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Potion of Mana"
    HU2_MURLOC_HUT_ITEM =       1204, "Murloc Hut Item",         Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Potion of Healing"
    HU2_GNOLL_ITEM =            1205, "Gnoll Item",              Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Potion of Healing"
    HU2_WEST_CRATE =            1206, "West Base Crate",         Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Scroll of Protection"
    HU2_EAST_CRATE =            1207, "East Base Crate",         Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Potion of Healing"
    HU2_GNOLL_WARDEN_ITEM =     1210, "Gnoll Warden Item",       Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.SECRET_ITEM, "Wand of Negation"
    HU2_SEARINOX =              1211, "Defeat Searinox",         Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.QUEST, "Heart of Searinox"
    HU2_RETURN_SEARINOX_HEART = 1212, "Return Searinox's Heart", Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.QUEST_ITEM, "Orb of Fire"
    HU2_SLAY_BLADEMASTER =      1220, "Slay Blademaster",        Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.QUEST_HERO
    HU2_ESTABLISH_BASE =        1221, "Establish Base",          Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.QUEST
    HU2_FERANOR_STEELTOE =      1222, "Meet Feranor Steeltoe",   Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.RESCUE
    HU2_ORC_BASE =              1225, "Destroy the Orc Base",    Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.BASE

    # Quests:
    # (Main) Investigate Villages
    # (Main) Grain Warehouse
    # (Side) Fountain of Health
    HU3_VICTORY =              1300, "Victory",              Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.VICTORY
    HU3_OGRE_SHEEP =           1301, "Ogre Sheep Item",      Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Bracer of Agility +1"
    HU3_MURLOC_HUT_ITEM =      1302, "Murloc Hut Item",      Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Maul of Strength +1"
    HU3_SKELETON_ISLAND_ITEM = 1303, "Skeleton Island Item", Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Mantle of Intelligence +3"
    HU3_BANDIT_HUT_ITEM =      1304, "Bandit Hut Item",      Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Scroll of Protection"
    HU3_SKELETON_AMBUSH_ITEM = 1305, "Skeletal Ambush Item", Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Potion of Mana"
    HU3_MORTAR_SKELETON_ITEM = 1306, "Mortar Skeleton Item", Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Scroll of Healing"
    HU3_FOOTMAN_RESCUE =       1320, "Footman Rescue",       Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.RESCUE
    HU3_FOUNTAIN_OF_HEALING =  1321, "Fountain of Healing",  Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.QUEST
    HU3_PRIEST_RESCUE =        1322, "Priest Rescue",        Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.RESCUE
    HU3_MORTAR_TEAM_RESCUE =   1323, "Mortar Team Rescue",   Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.RESCUE
    HU3_GARGLEMEL_TAXES =      1324, "Garglemel's Taxes",    Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.SECRET

    # Quests:
    # (Main) Investigate Andorhal
    # (Main) Confront Kel'Thuzad
    HU4_VICTORY =                   1400, "Victory",                  Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.VICTORY
    HU4_ROCK_GOLEM_ITEM =           1401, "Rock Golem Item",          Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Ring of Protection +2"
    HU4_TROLL_ITEM =                1402, "Troll Item",               Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Claws of Attack +6"
    HU4_TIMMY_ITEM =                1403, "Timmy Item",               Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Ring of Superiority"
    HU4_GNOLL_HUT_ITEM =            1404, "Gnoll Hut Item",           Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Potion of Healing"
    HU4_MURLOC_NIGHTCRAWLER_ITEM =  1405, "Murloc Nightcrawler Item", Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Potion of Mana"
    HU4_ENFORCER_ITEM =             1406, "Enforcer Item",            Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Potion of Mana"
    HU4_TROLL_HUT_ITEM =            1407, "Troll Hut Item",           Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Scroll of Protection"
    HU4_UNDEAD_BASE =               1420, "Destroy the Undead Base",  Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.BASE
    HU4_INVESTIGATE_ANDORHAL =      1421, "Investigate Andorhal",     Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.QUEST
    HU4_CENTER_GOBLIN_MERCHANT =    1422, "Center Goblin Merchant",   Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.SHOP
    HU4_NORTH_GOBLIN_MERCHANT =     1423, "North Goblin Merchant",    Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.SHOP

    # Quests:
    # (Main) Defend Heathglen
    # (Side) Grain Caravan
    HU5_VICTORY =              1500, "Victory",              Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.VICTORY
    HU5_OGRE_LORD_ITEM =       1501, "Ogre Lord Item",       Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Gauntlets of Ogre Strength +3"
    HU5_OGRE_LORD_ITEM_2 =     1502, "Ogre Lord Item 2",     Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Potion of Greater Healing"
    HU5_OGRE_MAULER_ITEM =     1503, "Ogre Mauler Item",     Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Periapt of Vitality"
    HU5_CARAVAN_ITEM =         1504, "Grain Caravan",        Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.QUEST_ITEM, "Medallion of Courage"
    HU5_CARAVAN_ITEM_2 =       1505, "Grain Caravan Item 2", Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.QUEST_ITEM, "Scroll of Town Portal"
    HU5_MURLOC_HUNTSMAN_ITEM = 1506, "Murloc Huntsman Item", Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Potion of Mana"
    HU5_SHEEP_ITEM =           1507, "Secret Sheep Item",    Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.SECRET_ITEM, "Potion of Restoration"
    HU5_ZOMBIE_FARM_CRATE =    1508, "Zombie Farm Crate",    Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.SECRET, "Scroll of Healing"
    HU5_FREE_VILLAGER_MARK =   1509, "Free Villager Mark",   Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Boots of Speed"
    HU5_SLAY_PURPLE_LICH =     1520, "Slay Purple Lich",     Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.HERO
    HU5_SLAY_GREEN_LICH =      1521, "Slay Green Lich",      Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.HERO
    HU5_ROADSIDE_RESCUE =      1522, "Roadside Rescue",      Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.RESCUE
    HU5_DESTROY_PURPLE_BASE =  1523, "Destroy Purple Base (Black Citadel)", Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.HARD_BASE
    HU5_DESTROY_GREEN_BASE =   1524, "Destroy Green Base (Black Citadel)",  Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.HARD_BASE
    HU5_GOBLIN_MERCHANT =      1525, "Goblin Merchant",      Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.SHOP

    # Quests:
    # (Main) The Culling
    HU6_VICTORY =           1600, "Victory",         Wc3Mission.H6_THE_CULLING, Wc3LocationType.VICTORY
    HU6_TENT_ITEM =         1601, "Tent Item",       Wc3Mission.H6_THE_CULLING, Wc3LocationType.ITEM, "Tome of Strength +2"
    HU6_FILSON_THE_RAT =    1602, "Filson the Rat",  Wc3Mission.H6_THE_CULLING, Wc3LocationType.SECRET_ITEM, "Talisman of Evasion"
    HU6_ENFORCER_ITEM =     1603, "Enforcer Item",   Wc3Mission.H6_THE_CULLING, Wc3LocationType.ITEM, "Scroll of Town Portal"
    HU6_SLAY_MALGANIS =     1620, "Slay Mal'Ganis",  Wc3Mission.H6_THE_CULLING, Wc3LocationType.HERO
    HU6_GOBLIN_MERCHANT =   1621, "Goblin Merchant", Wc3Mission.H6_THE_CULLING, Wc3LocationType.SHOP

    # Quests:
    # (Main) Establish Base Camp
    # (Main) Mal'Ganis
    # (Side) Rescue Muradin's Men
    HU7_VICTORY =                1700, "Victory",                   Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.VICTORY
    HU7_NERUBIAN_ITEM =          1701, "Nerubian Item",             Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Orb of Frost"
    HU7_ICE_TROLL_ITEM =         1702, "Ice Troll Item",            Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Manual of Health"
    HU7_WENDIGO_ITEM =           1703, "Wendigo Item",              Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Gauntlets of Ogre Strength +3"
    HU7_ICE_TROLL_WARLORD_ITEM = 1704, "Ice Troll Warlord Item",    Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Potion of Greater Healing"
    HU7_DIRE_FROST_WOLF_ITEM =   1705, "Dire Frost Wolf Item",      Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Scroll of the Beast"
    HU7_ICE_TROLL_HUT_ITEM =     1706, "Ice Troll Hut Item",        Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Potion of Mana"
    HU7_SLAY_LICH =              1720, "Slay Lich",                 Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.HERO
    HU7_ESTABLISH_BASE =         1721, "Establish Base Camp",       Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.QUEST
    HU7_RESCUE_MURADINS_MEN =    1722, "Rescue Muradin's Men",      Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.QUEST_RESCUE
    HU7_DESTROY_PURPLE_BASE =    1723, "Destroy Purple Necropolis", Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.BASE

    # Quests:
    # (Main) Burn the Boats
    HU8_VICTORY =                  1800, "Victory",                  Wc3Mission.H8_DISSENSION, Wc3LocationType.VICTORY
    HU8_SKELETON_ITEM =            1801, "Skeleton Item",            Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Goblin Night Scope"
    HU8_NERUBIAN_ITEM =            1802, "Nerubian Item",            Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Claws of Attack +12"
    HU8_REVENTANT_ITEM =           1803, "Revenant Item",            Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Sobi Mask"
    HU8_PANDAREN_ITEM =            1804, "Pandaren Item",            Wc3Mission.H8_DISSENSION, Wc3LocationType.SECRET_ITEM, "Pendant of Mana"
    HU8_FIEND_ITEM =               1805, "Crypt Fiend Item",         Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Ring of Regeneration"
    HU8_NECROMANCER_ITEM =         1806, "Necromancer Item",         Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Potion of Mana"
    HU8_NERUBIAN_SEER_ITEM =       1807, "Nerubian Seer Item",       Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Potion of Greater Mana"
    HU8_NERUBIAN_WARRIOR_ITEM =    1808, "Nerubian Warrior Item",    Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Potion of Healing"
    HU8_BLUE_DRAKE_ITEM =          1809, "Blue Drake Item",          Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Potion of Greater Healing"
    HU8_MURLOC_NIGHTCRAWLER_ITEM = 1810, "Murloc Nightcrawler Item", Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Mana Stone"
    HU8_BOAT_1 =                   1820, "Boat 1",                   Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_BOAT_2 =                   1821, "Boat 2",                   Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_BOAT_3 =                   1822, "Boat 3",                   Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_BOAT_4 =                   1823, "Boat 4",                   Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_GOBLIN_MERCHANT =          1824, "Goblin Merchant",          Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP
    HU8_MERCENARY_CAMP_1 =         1825, "Mercenary Camp 1",         Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP
    HU8_MERCENARY_CAMP_2 =         1826, "Mercenary Camp 2",         Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP
    HU8_MERCENARY_CAMP_3 =         1827, "Mercenary Camp 3",         Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP

    # Quests:
    # (Main) Frostmourne
    # (Main) Mal'Ganis
    HU9_VICTORY =                   1900, "Victory",                   Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.VICTORY
    HU9_WOLF_ITEM =                 1901, "Wolf Item 1",               Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Periapt of Vitality"
    HU9_WOLF_ITEM_2 =               1902, "Wolf Item 2",               Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Ring of Protection +3"
    HU9_WENDIGO_SHAMAN_ITEM =       1903, "Wendigo Shaman Item",       Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Tome of Agility"
    HU9_WENDIGO_SHAMAN_ITEM_2 =     1904, "Wendigo Shaman Item 2",     Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Potion of Greater Mana"
    HU9_ICE_TROLL_WARLORD_ITEM =    1905, "Ice Troll Warlord Item",    Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Health Stone"
    HU9_NERUBIAN_SEER_ITEM =        1906, "Nerubian Seer Item",        Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Potion of Mana"
    HU9_NERUBIAN_SPIDER_LORD_ITEM = 1907, "Nerubian Spider Lord Item", Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Healing Wards"
    HU9_ICE_TROLL_BERSERKER_ITEM =  1908, "Ice Troll Berserker Item",  Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Potion of Greater Healing"
    HU9_MAL_GANIS =                 1920, "Slay Mal'Ganis",            Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.HERO
    HU9_GOBLIN_MERCHANT =           1921, "Goblin Merchant",           Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.SHOP
    HU9_MERCENARY_CAMP =            1922, "Mercenary Camp",            Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.SHOP
    HU9_FROSTMOURNE =               1923, "Obtain Frostmourne",        Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.QUEST

    # Quests:
    # (Main) Rescue Acolytes
    # (Side) Find the Graveyard
    UD1_VICTORY =                2100, "Victory",                Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.VICTORY
    UD1_HORSE_ITEM =             2101, "Horse Item",             Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Ring of Protection +2"
    UD1_ASSASSIN_ITEM =          2102, "Assassin Item",          Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Spider Ring"
    UD1_GOLEM_ITEM =             2103, "Rock Golem Item",        Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.SECRET_ITEM, "Gauntlets of Ogre Strength +3"
    UD1_CAPTAIN_ITEM =           2104, "Captain Item",           Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Greater Healing"
    UD1_BANDIT_ITEM =            2105, "Bandit Item",            Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Healing"
    UD1_FOOTMAN_ITEM =           2106, "Footman Item",           Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Healing"
    UD1_CAPTAIN_2_ITEM =         2106, "Captain 2 Item",         Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Greater Healing"
    UD1_ENTRANCE_CRATE =         2107, "Entrance Crate",         Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Healing"
    UD1_LUMBER_MILL_CRATE =      2108, "Lumber Mill Crate",      Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Healing"
    UD1_FISTFIGHT_CRATE =        2109, "Fistfight Crate",        Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Greater Mana"
    UD1_BOAT_CRATE =             2110, "Boat Crate",             Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Scroll of Healing"
    UD1_GRAVEYARD =              2120, "Reach the Graveyard",    Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.QUEST_RESCUE

    # Quests:
    # (Main) Recover Remains
    # (Main) Claim the Urn
    # (Main) Establish Base
    UD2_VICTORY =                   2200, "Victory",                  Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.VICTORY
    UD2_GAVINRAD_THE_DIRE_ITEM =    2201, "Gavinrad the Dire Item",   Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.QUEST_HERO, "Scroll of Healing"
    UD2_BALLADOR_THE_BRIGHT_ITEM =  2202, "Ballador the Bright Item", Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.QUEST_HERO, "Potion of Greater Healing"
    UD2_SAGE_TRUTHBEARER_ITEM =     2203, "Sage Truthbearer Item",    Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.QUEST_HERO, "Gloves of Haste"
    UD2_UTHER_ITEM =                2204, "Uther Item",               Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.QUEST_HERO  # Urn of King Terenas
    UD2_GRANITE_GOLEM_ITEM =        2205, "Granite Golem Item",       Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.ITEM, "Pendant of Energy"
    UD2_ROGUE_WIZARD_ITEM =         2206, "Rogue Wizard Item",        Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.ITEM, "Voodoo Doll"
    UD2_ELDER_SASQUATCH_ITEM =      2207, "Elder Sasquatch Item",     Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.SECRET_ITEM, "Claws of Attack +6"
    UD2_SHEEP_ITEM =                2208, "Sheep Item",               Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.ITEM, "Goblin Night Scope"
    UD2_SASQUATCH_CRATE =           2209, "Sasquatch Crate",          Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.ITEM, "Potion of Healing"
    UD2_KNIGHT_CRATE =              2210, "Knight Crate",             Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.ITEM, "Potion of Mana"
    UD2_UTHER_CRATE =               2211, "Uther Crate",              Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.ITEM, "Scroll of Protection"
    UD2_RECOVER_REMAINS =           2220, "Recover Remains",          Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.QUEST
    UD2_ESTABLISH_BASE =            2221, "Establish a Base",         Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.QUEST
    UD2_FEAST_ON_SOULS =            2222, "Feast on Souls",           Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.SECRET
    UD2_PANDAREN_RELAXATION_AREA =  2223, "Pandaren Relaxation Area", Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.SECRET

    # Quests:
    # (Main) The Elfgate
    UD3_VICTORY =                    2300, "Victory",                    Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.VICTORY
    UD3_NORTH_GNOLL_OVERSEER_ITEM =  2301, "North Gnoll Overseer Item",  Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Potion of Healing"
    UD3_CENTER_GNOLL_OVERSEER_ITEM = 2302, "Center Gnoll Overseer Item", Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Health Stone"
    UD3_WEST_GNOLL_OVERSEER_ITEM =   2303, "West Gnoll Overseer Item",   Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Ring of Protection +2"
    UD3_SOUTH_GNOLL_OVERSEER_ITEM =  2304, "South Gnoll Overseer Item",  Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Potion of Greater Mana"
    UD3_WEST_GNOLL_HUT_ITEM =        2305, "West Gnoll Hut Item",        Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Scroll of the Beast"
    UD3_CENTER_GNOLL_HUT_ITEM =      2306, "Center Gnoll Hut Item",      Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Book of the Dead"
    UD3_ROCK_GOLEM_ITEM =            2307, "Rock Golem Item",            Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Potion of Greater Healing"
    UD3_SLAY_SYLVANAS =              2320, "Slay Sylvanas",              Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.HERO
    UD3_DESTROY_PINK_BASE =          2321, "Destroy Pink Town Hall",     Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.BASE
    UD3_DESTROY_ORANGE_BASE =        2322, "Destroy Orange Lumber Mill", Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.BASE
    UD3_DESTROY_TEAL_BASE =          2323, "Destroy Teal Town Hall",     Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.BASE
    UD3_DESTROY_YELLOW_BASE =        2324, "Destroy Yellow Town Hall",   Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.BASE
    UD3_DESTROY_BLUE_BASE =          2325, "Destroy Blue Castle",        Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.QUEST_BASE
    UD3_GOBLIN_MERCHANT =            2326, "Goblin Merchant",            Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.SHOP

    # Quests:
    # (Main) Three Moons
    # (Main) Gates of Silvermoon
    UD4_VICTORY =             2400, "Victory",             Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.VICTORY
    UD4_FOREST_CRATE =        2401, "Forest Crate",        Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.ITEM, "Scroll of Mana"
    UD4_CENTER_ISLAND_CRATE = 2402, "Center Island Crate", Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.ITEM, "Potion of Greater Healing"
    UD4_SLAY_SYLVANAS =       2420, "Slay Sylvanas",       Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.HERO
    UD4_NORTHWEST_ALTAR =     2421, "Northwest Altar",     Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.QUEST  # Key of 3 moons fragment
    UD4_NORTH_ALTAR =         2422, "North Altar",         Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.QUEST  # Key of 3 moons fragment
    UD4_SOUTHEAST_ALTAR =     2423, "North Altar",         Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.QUEST  # Key of 3 moons fragment
    UD4_CHARTER_ZEPPELINS =   2424, "Charter Zeppelins",   Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.RESCUE

    # Quests:
    # (Main) The Sunwell
    # (Side) Sylvanas Windrunner
    # (Side) Silvermoon Runners
    UD5_VICTORY =                   2500, "Victory",                        Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.VICTORY
    UD5_ROCK_GOLEM_ITEM =           2501, "Rock Golem Item",                Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.ITEM, "Ring of Regeneration"
    UD5_EAST_GNOLL_OVERSEER_ITEM =  2502, "East Gnoll Overseer Item",       Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.ITEM, "Scroll of the Beast"
    UD5_WEST_GNOLL_OVERSEER_ITEM =  2503, "West Gnoll Overseer Item",       Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.ITEM, "Potion of Greater Mana"
    UD5_DESTROY_SYLVANAS_BASE =     2504, "Destroy Sylvanas's Base",        Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.QUEST_BASE, "Slippers of Agility +3"
    UD5_BLOCK_RUNNERS =             2505, "Stop all Runners",               Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.QUEST_ITEM, "Hood of Cunning"
    UD5_SLAY_SYLVANAS =             2520, "Slay Sylvanas",                  Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.HERO
    UD5_SLAY_ARCHMAGE =             2521, "Slay Archmage",                  Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.HERO
    UD5_GOBLIN_MERCHANT =           2522, "Goblin Merchant",                Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.SHOP
    UD5_MERCENARY_CAMP =            2523, "Mercenary Camp",                 Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.SHOP
    UD5_EAST_SILVERMOON_CASTLE =    2524, "Destroy East Silvermoon Castle", Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.BASE
    UD5_WEST_SILVERMOON_CASTLE =    2525, "Destroy West Silvermoon Castle", Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.BASE

    # Quests:
    # (Main) Demon Gate
    # (Side) Orc Heroes
    UD6_VICTORY =                    2600, "Victory",                            Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.VICTORY
    UD6_SLAY_HAOMARUSH =             2601, "Slay Haomarush (Teal)",              Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_HERO, "Manual of Health"
    UD6_SLAY_KHANZO =                2602, "Slay Khanzo (Blue)",                 Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_HERO, "Tome of Agility"
    UD6_SLAY_GENJUROS =              2603, "Slay Genjuros (Brown)",              Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_HERO, "Tome of Strength"
    UD6_SLAY_THROK_FEROTH =          2604, "Slay Throk'Feroth (Orange)",         Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_HERO, "Tome of Intelligence"
    UD6_SLAY_MAZRIGOS =              2605, "Slay Mazrigos (Light Blue)",         Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_HERO, "Tome of Intelligence"
    UD6_SLAY_JUBEITHOS =             2606, "Slay Jubei'Thos (Red)",              Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_HERO, "Tome of Knowledge"
    UD6_EAST_RED_DRAGON_ITEM =       2607, "East Red Dragon Item",               Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.ITEM, "Periapt of Vitality"
    UD6_WEST_RED_DRAGON_ITEM =       2608, "West Red Dragon Item",               Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.ITEM, "Claws of Attack +9"
    UD6_TROLL_CAGE_ITEM =            2609, "Troll Cage Item",                    Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.ITEM, "Scroll of Mana"
    UD6_ICE_TROLL_HIGH_PRIEST_ITEM = 2610, "Ice Troll High Priest Item",         Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.ITEM, "Potion of Greater Healing"
    UD6_ICE_TROLL_BERSERKER_ITEM =   2611, "Ice Troll Berserker Item",           Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.ITEM, "Ring of Protection +3"
    UD6_ICE_TROLL_WARLORD_ITEM =     2612, "Ice Troll Warlord Item",             Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.ITEM, "Sobi Mask"
    UD6_MURLOC_NIGHTCRAWLER_ITEM =   2613, "Murloc Nightcrawler Item",           Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.SECRET_ITEM, "Mana Stone"
    UD6_DESTROY_BLUE_BASE =          2620, "Destroy Blue Base (Great Hall)",     Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.BASE
    UD6_DESTROY_BROWN_BASE =         2621, "Destroy Brown Base (Stronghold)",    Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.BASE
    UD6_DESTROY_ORANGE_BASE =        2622, "Destroy Orange Base (Stronghold)",   Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.BASE
    UD6_DESTROY_LIGHT_BLUE_BASE =    2623, "Destroy Light Blue Base (Fortress)", Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.BASE
    UD6_DESTROY_RED_BASE =           2624, "Destroy Red Base (Fortress)",        Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_BASE
    UD6_GOBLIN_MERCHANT =            2625, "Goblin Merchant",                    Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.SHOP

    # Quests:
    # (Main) Three Archmagi
    UD7_VICTORY =                   2700, "Victory",                      Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.VICTORY
    UD7_SLAY_SHEEP_ARCHMAGE =       2701, "Slay Sheep Archmage",          Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.HERO_ITEM, "Health Stone"
    UD7_SHEEP_ARCHMAGE_TENT_ITEM =  2702, "Sheep Archmage Tent Item",     Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.ITEM, "Anti-Magic Potion"
    UD7_MAGIC_VAULT_ITEM_1 =        2703, "Magic Vault Item 1",           Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.ITEM, "Khadgar's Pipe of Insight"
    UD7_MAGIC_VAULT_ITEM_2 =        2704, "Magic Vault Item 2",           Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.ITEM, "Tome of Intelligence"
    UD7_MAGIC_VAULT_ITEM_3 =        2705, "Magic Vault Item 3",           Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.ITEM, "Pendant of Mana"
    UD7_SLAY_WORKSHOP_ARCHMAGE =    2706, "Slay Workshop Archmage",       Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.HERO_ITEM, "Mantle of Intelligence +3"
    UD7_SLAY_YELLOW_ARCHMAGE =      2707, "Slay Yellow Archmage",         Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.HERO
    UD7_TOWER_SQUARE_ITEM =         2708, "Tower Square Item",            Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.ITEM, "Boots of Quel'Thalas +6"
    UD7_DEAD_TOWN_CRATE_ITEM =      2709, "Dead Town Crate Item",         Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.ITEM, "Scroll of Mana"
    UD7_SLAY_FIRST_ARCHMAGE =       2720, "Slay First Archmage",          Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.QUEST_HERO
    UD7_SLAY_SECOND_ARCHMAGE =      2721, "Slay Second Archmage",         Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.QUEST_HERO
    UD7_GOBLIN_MERCHANT =           2722, "Goblin Merchant",              Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.SHOP
    UD7_SOUTH_CAGE_RESCUE =         2723, "South Cage Rescue",            Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.RESCUE
    UD7_WEST_CAGE_RESCUE =          2724, "West Cage Rescue",             Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.RESCUE
    UD7_NORTHEAST_CAGE_RESCUE =     2725, "Northeast Cage Rescue",        Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.RESCUE
    UD7_DESTROY_PURPLE_BASE =       2726, "Destroy Purple Base (Keep)",   Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.BASE
    UD7_DESTROY_YELLOW_BASE =       2727, "Destroy Yellow Base (Castle)", Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.BASE
    UD7_DESTROY_ORANGE_BASE =       2728, "Destroy Orange Base (Castle)", Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.HARD_BASE

    # Quests:
    # (Main) Archimonde
    # (Side) Goblin Land Mines
    UD8_VICTORY =                  2800, "Victory",                      Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.VICTORY
    UD8_MAGIC_VAULT_ITEM_1 =       2801, "Magic Vault Item 1",           Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HARD_ITEM, "Scepter of Mastery"
    UD8_MAGIC_VAULT_ITEM_2 =       2802, "Magic Vault Item 2",           Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HARD_ITEM, "Medallion of Courage"
    UD8_GNOLL_HUT_ITEM =           2803, "Gnoll Hut Item",               Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.ITEM, "Scroll of Healing"
    UD8_SLAY_SHEEP_ARCHMAGE =      2804, "Slay Sheep Archmage",          Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HERO_ITEM, "Ring of Protection +5"
    UD8_SHEEP_ARCHMAGE_TENT_ITEM = 2805, "Sheep Archmage Tent Item",     Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.ITEM, "Tome of Strength +2"
    UD8_SLAY_WEST_BASE_ARCHMAGE =  2820, "Slay West Kirin Tor Archmage", Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HERO
    UD8_SLAY_GATE_ARCHMAGE =       2821, "Slay Gate Archmage",           Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HERO
    UD8_SLAY_VAULT_ARCHMAGE =      2822, "Slay Vault Archmage",          Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HARD_HERO
    UD8_DESTROY_RED_BASE =         2823, "Destroy Red Castle",           Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HARD_BASE
    UD8_DESTROY_TEAL_BASE =        2824, "Destroy Teal Castle",          Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HARD_BASE
    UD8_DESTROY_BLUE_BASE =        2825, "Destroy Blue Castle",          Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HARD_BASE
    UD8_GOBLIN_LAND_MINES =        2826, "Goblin Land Mines",            Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.QUEST_ITEM, "Goblin Land Mines"
    UD8_GOBLIN_LABORATORY =        2827, "Goblin Laboratory",            Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.SHOP
    UD8_GOBLIN_MERCHANT =          2828, "Goblin Merchant",              Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.SHOP

    # Quests:
    # (main) Rally the Horde
    # (main) Protect Cairne
    OR1_VICTORY =                    3100, "Victory", Wc3Mission.O1_LANDFALL, Wc3LocationType.VICTORY
    OR1_QUILLBOAR_HUNTER_ITEM =      3101, "Quillboar Hunter Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Healing Wards"
    OR1_MURLOC_FLESHEATER_ITEM =     3102, "West Murloc Flesheater Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Healing Wards"
    OR1_MURLOC_NIGHTCRAWLER_ITEM =   3103, "Murloc Nightcrawler Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Periapt of Vitality"
    OR1_RAZORMANE_BRUTE_ITEM =       3104, "Razormane Brute Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Potion of Mana"
    OR1_THUNDER_LIZARD_ITEM =        3105, "Thunder Lizard Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Potion of Mana"
    OR1_HARPY_WINDWITCH_ITEM =       3106, "Harpy Windwitch Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Scroll of the Beast"
    OR1_CENTAUR_TENT_ITEM =          3107, "Centaur Tent Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Wand of Lightning Shield"
    OR1_MURLOC_FLESHEATER_ITEM_2 =   3108, "East Murloc Flesheater Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Manual of Health"
    OR1_MURLOC_TIDERUNNER_ITEM =     3109, "Murloc Tiderunner Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Potion of Mana"
    OR1_SOUTHEAST_PENINSULA_ITEM =   3110, "Southeast Peninsula Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Health Stone"
    OR1_LANDFALL_CRATE =             3111, "Landfall Crate", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Potion of Mana"
    OR1_BRONZE_DRAGON_CRATE =        3112, "Bronze Dragon Crate", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Ring of Protection +1"
    OR1_FIRST_VILLAGE_CRATE =        3113, "First Village Crate", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Scroll of Protection"
    OR1_WARSONG_RESCUE_CRATE =       3114, "Warsong Rescue Crate", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Lion's Ring"
    OR1_HORSEMAN_ATTACK_CRATE =      3115, "Horseman Attack Crate", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Potion of Healing"
    OR1_MURLOC_CRATE =               3116, "Murloc Crate", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Potion of Healing"
    OR1_CAPTIVE_TROLLS_RESCUE =      3120, "Captured Troll Rescue", Wc3Mission.O1_LANDFALL, Wc3LocationType.RESCUE
    OR1_WARSONG_RESCUE =             3121, "Warsong Rescue", Wc3Mission.O1_LANDFALL, Wc3LocationType.RESCUE
    OR1_HORSEMAN_ATTACK_RESCUE =     3122, "Horseman Attack Rescue", Wc3Mission.O1_LANDFALL, Wc3LocationType.RESCUE

    OR2_VICTORY =                       3200, "Victory", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.VICTORY
    OR2_WEST_MURLOC_HUT_ITEM =          3201, "West Murloc Hut Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Potion of Mana"
    OR2_EAST_MURLOC_HUT_ITEM =          3202, "East Murloc Hut Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Ancient Figuring"
    OR2_WEST_HARPY_NEST_ITEM =          3203, "West Harpy Nest Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Mantle of Intelligence +3"
    OR2_HARPY_QUEEN_ITEM =              3204, "Harpy Queen Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Totem of Might"
    OR2_EAST_HARPY_NEST_ITEM =          3205, "East Harpy Nest Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Potion of Greater Mana"
    OR2_SOUTH_CENTUAR_SORCERER_ITEM =   3206, "South Centaur Sorcerer Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Scroll of Healing"
    OR2_THUNDER_LIZARD_ITEM =           3207, "Thunder Lizard Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Claws of Attack +3"
    OR2_CENTER_CENTUAR_SORCERER_ITEM =  3208, "Center Centaur Sorcerer Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Potion of Greater Mana"
    OR2_CENTER_CENTAUR_TENT_ITEM =      3209, "Center Centaur Tent Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Scroll of Healing"
    OR2_NORTHEAST_CENTAUR_TENT_ITEM =   3210, "Northeast Centaur Tent Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Tome of Agility"
    OR2_CENTAUR_KHAN_ITEM =             3211, "Centaur Khan Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Pendant of Energy"
    OR2_FIRST_OASIS =                   3220, "First Oasis", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.QUEST
    OR2_SECOND_OASIS =                  3221, "Second Oasis", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.QUEST_RESCUE
    OR2_RAIDER_RESCUE =                 3222, "Raider Rescue", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.RESCUE
    OR2_CENTER_SHOP =                   3223, "Goblin Merchant", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.SHOP

    OR3_VICTORY = 3300, "Victory", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.VICTORY
    OR4_VICTORY = 3400, "Victory", Wc3Mission.O4_THE_SPIRITS_OF_ASHENVALE, Wc3LocationType.VICTORY
    OR5_VICTORY = 3500, "Victory", Wc3Mission.O5_THE_HUNTER_OF_SHADOWS, Wc3LocationType.VICTORY
    OR6_VICTORY = 3600, "Victory", Wc3Mission.O6_WHERE_WYVERNS_DARE, Wc3LocationType.VICTORY
    OR7_VICTORY = 3700, "Victory", Wc3Mission.O7_THE_ORACLE, Wc3LocationType.VICTORY
    OR8_VICTORY = 3800, "Victory", Wc3Mission.O8_BY_DEMONS_BE_DRIVEN, Wc3LocationType.VICTORY

    NE1_VICTORY = 4100, "Victory", Wc3Mission.N1_ENEMIES_AT_THE_GATE, Wc3LocationType.VICTORY
    NE2_VICTORY = 4200, "Victory", Wc3Mission.N2_DAUGHTERS_OF_THE_MOON, Wc3LocationType.VICTORY
    NE3_VICTORY = 4300, "Victory", Wc3Mission.N3_THE_AWAKENING_OF_STORMRAGE, Wc3LocationType.VICTORY
    NE4_VICTORY = 4400, "Victory", Wc3Mission.N4_THE_DRUIDS_ARISE, Wc3LocationType.VICTORY
    NE5_VICTORY = 4500, "Victory", Wc3Mission.N5_BROTHERS_IN_BLOOD, Wc3LocationType.VICTORY
    NE6_VICTORY = 4600, "Victory", Wc3Mission.N6_A_DESTINY_OF_FLAME_AND_SORROW, Wc3LocationType.VICTORY
    NE7_VICTORY = 4700, "Victory", Wc3Mission.N7_TWILIGHT_OF_THE_GODS, Wc3LocationType.VICTORY


location_name_to_id = {_location.global_name(): _location.id for _location in Wc3Location}
location_id_to_name = {_location.id: _location.global_name() for _location in Wc3Location}
MISSION_TO_LOCATIONS: dict[Wc3Mission, list[Wc3Location]] = {_mission: [] for _mission in Wc3Mission}
for _location in Wc3Location:
    MISSION_TO_LOCATIONS[_location.mission].append(_location)
