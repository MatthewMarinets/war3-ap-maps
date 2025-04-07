"""
location data within missions, not including logic
"""

import enum

from .missions import Wc3Mission


class Wc3LocationType(enum.Enum):
    VICTORY = enum.auto()
    ITEM = enum.auto()
    RESCUE = enum.auto()
    QUEST = enum.auto()
    SECRET = enum.auto()
    MILESTONE = enum.auto()
    SHOP = enum.auto()


class Wc3Location(enum.Enum):
    def __new__(cls, *args, **kwargs):
        value = len(cls.__members__) + 1
        obj = object.__new__(cls)
        obj._value_ = value
        return obj

    def __init__(self, id: int, location_name: str, mission: Wc3Mission, type: Wc3LocationType, vanilla_item: str = '') -> None:
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
    HU1_VICTORY =        1100, "Victory",                   Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.VICTORY
    HU1_THORNBY_RESCUE = 1101, "Enlist Thornby",            Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.RESCUE
    HU1_TOWN_RESCUE =    1102, "Rescue Battling Footmen",   Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.RESCUE
    HU1_TIMMY =          1103, "Save Timmy",                Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.QUEST, "Ring of Protection +1"
    HU1_MENAG =          1104, "Bandit Lord",               Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.QUEST, "Tome of Strength"
    HU1_GRAVEYARD =      1105, "Find the Graveyard",        Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.SECRET
    # Crate 1: Potion of Healing
    # Crate 2: Scroll of Protection
    # Gnoll Crate: Potion of Healing
    # Benedict: Scroll of Healing
    # Bandit: Potion of Mana
    # Strahnbrad North Crate: Potion of Mana

    # Quests:
    # (Main) Blademaster
    # (Main) Establish Base
    # (Side) Searinox
    HU2_VICTORY =          1200, "Victory",                 Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.VICTORY
    HU2_FERANOR_STEELTOE = 1201, "Meet Feranor Steeltoe",   Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.RESCUE
    HU2_SEARINOX =         1202, "Defeat Searinox",         Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.QUEST
    HU2_ESTABLISH_BASE =   1203, "Establish Base",          Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.QUEST
    HU2_WEST_MURLOC_ITEM = 1204, "Western Murloc Item",     Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Claws of Attack +3"
    HU2_WEST_OGRE_ITEM =   1205, "Western Ogre Item",       Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Gauntlets of Ogre Strength +3"
    HU2_ORC_BASE =         1206, "Destroy the Orc Base",    Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.MILESTONE
    # Murloc Hut: Potion of Healing
    # Gnoll: Potion of Healing
    # Gnoll Warden: Wand of Negation
    # West Crate: Scroll of Protection
    # South Crate: Potion of Healing

    # Quests:
    # (Main) Investigate Villages
    # (Main) Grain Warehouse
    # (Side) Fountain of Health
    HU3_VICTORY =              1300, "Victory",              Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.VICTORY
    HU3_OGRE_SHEEP =           1301, "Ogre Sheep Item",      Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Bracer of Agility +1"
    HU3_MURLOC_HUT_ITEM =      1302, "Murloc Hut Item",      Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Maul of Strength +1"
    HU3_SKELETON_ISLAND_ITEM = 1303, "Skeleton Island Item", Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Mantle of Intelligence +3"
    HU3_LOCK_YOUR_SHIELDS =    1304, "Lock Your Shields",    Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.MILESTONE
    HU3_FOOTMAN_RESCUE =       1305, "Footman Rescue",       Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.RESCUE
    HU3_FOUNTAIN_OF_HEALING =  1306, "Fountain of Healing",  Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.QUEST
    HU3_PRIEST_RESCUE =        1307, "Priest Rescue",        Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.RESCUE
    HU3_MORTAR_TEAM_RESCUE =   1308, "Mortar Team Rescue",   Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.RESCUE
    HU3_GARGLEMEL_TAXES =      1309, "Garglemel's Taxes",    Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.SECRET
    # Bandit Hut: Scroll of Protection
    # Skeleton Ambush: Potion of Mana
    # Mortar Skeletons: Scroll of Healing

    # Quests:
    # (Main) Investigate Andorhal
    # (Main) Confront Kel'Thuzad
    HU4_VICTORY =               1400, "Victory",                Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.VICTORY
    HU4_ROCK_GOLEM_ITEM =       1401, "Rock Golem Item",        Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Ring of Protection +2"
    HU4_TROLL_ITEM =            1402, "Troll Item",             Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Claws of Attack +6"
    HU4_UNDEAD_BASE =           1403, "Destroy the Undead Base",Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.MILESTONE
    HU4_INVESTIGATE_ANDORHAL =  1404, "Investigate Andorhal",   Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.QUEST
    HU4_TIMMY_ITEM =            1405, "Timmy Item",             Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Ring of Superiority"
    HU_CENTER_SHOP =            1406, "Center Shop",            Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.SHOP
    HU_NORTH_SHOP =             1407, "North Shop",             Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.SHOP
    # Gnoll Hut: Potion of Healing
    # Murloc Nightcrawler: Potion of Mana
    # Enforcer: Potion of Mana
    # Troll Hut: Scroll of Protection

    # Quests:
    # (Main) Defend Heathglen
    # (Side) Grain Caravan
    HU5_VICTORY =           1500, "Victory",            Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.VICTORY
    HU5_OGRE_LORD_ITEM =    1501, "Ogre Lord Item",     Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Gauntlets of Ogre Strength +3"
    HU5_OGRE_MAULER_ITEM =  1501, "Ogre Mauler Item",   Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Periapt of Vitality"
    HU5_CARAVAN_ITEM =      1502, "Caravan Item",       Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Medallion of Courage"
    HU5_FREE_VILLAGER =     1503, "Free the Villager",  Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Boots of Speed"
    HU5_GRAIN_CARAVAN =     1504, "Grain Caravan",      Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.QUEST
    HU5_GOBLIN_MERCHANT =   1505, "Goblin Merchant",    Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.SHOP
    # Ogre Lord item 2: Potion of Greater Healing
    # Murloc Huntsman: Potion of Mana
    # Secret Sheep: Potion of Restoration
    # Crate: Scroll of Healing
    # Caravan Item 2: Scroll of TP

    # Quests:
    # (Main) The Culling
    HU6_VICTORY =           1600, "Victory",        Wc3Mission.H6_THE_CULLING, Wc3LocationType.VICTORY
    HU6_TENT_ITEM =         1601, "Tent Item",      Wc3Mission.H6_THE_CULLING, Wc3LocationType.ITEM, "Tome of Strength +2"
    HU6_FILSON_THE_RAT =    1602, "Filson the Rat", Wc3Mission.H6_THE_CULLING, Wc3LocationType.SECRET, "Talisman of Evasion"
    HU6_KILL_MALGANIS =     1603, "Kill Mal'Ganis", Wc3Mission.H6_THE_CULLING, Wc3LocationType.MILESTONE
    HU6_SHOP =              1804, "Shop",           Wc3Mission.H6_THE_CULLING, Wc3LocationType.SHOP
    # Enforcer: Scroll of TP

    # Quests:
    # (Main) Establish Base Camp
    # (Main) Mal'Ganis
    # (Side) Rescue Muradin's Men
    HU7_VICTORY =               1700, "Victory",                Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.VICTORY
    HU7_NERUBIAN_ITEM =         1701, "Nerubian Item",          Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Orb of Frost"
    HU7_ICE_TROLL_ITEM =        1702, "Ice Troll Item",         Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Manual of Health"
    HU7_WENDIGO_ITEM =          1703, "Wendigo Item",           Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Gauntlets of Ogre Strength +3"
    HU7_ESTABLISH_BASE =        1704, "Establish Base Camp",    Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.QUEST
    HU7_RESCUE_MURADINS_MEN =   1705, "Rescue Muradin's Men",   Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.QUEST
    # Ice Troll Warlord: Potion of Greater Healing
    # Dire Frost Wolf: Scroll of the Beast
    # Ice Troll Hut: Potion of Mana

    # Quests:
    # (Main) Burn the Boats
    HU8_VICTORY =           1800, "Victory",            Wc3Mission.H8_DISSENSION, Wc3LocationType.VICTORY
    HU8_SKELETON_ITEM =     1801, "Skeleton Item",      Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Goblin Night Scope"
    HU8_NERUBIAN_ITEM =     1802, "Nerubian Item",      Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Claws of Attack +12"
    HU8_REVENTANT_ITEM =    1803, "Revenant Item",      Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Sobi Mask"
    HU8_PANDAREN_ITEM =     1804, "Pandaren Item",      Wc3Mission.H8_DISSENSION, Wc3LocationType.SECRET, "Pendant of Mana"
    HU8_FIEND_ITEM =        1805, "Crypt Fiend Item",   Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Ring of Regeneration"
    HU8_BOAT_1 =            1806, "Boat 1",             Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_BOAT_2 =            1807, "Boat 2",             Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_BOAT_3 =            1808, "Boat 3",             Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_BOAT_4 =            1809, "Boat 4",             Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_SHOP =              1810, "Shop",               Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP
    HU8_MERCENARY_CAMP_1 =  1811, "Mercenary Camp 1",   Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP
    HU8_MERCENARY_CAMP_2 =  1812, "Mercenary Camp 2",   Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP
    HU8_MERCENARY_CAMP_3 =  1813, "Mercenary Camp 3",   Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP
    # Necromancer: Potion of Mana
    # Nerubian Seer: Potion of Greater Mana
    # Nerubian Warrior: Potion of Healing
    # Blue Drake: Potion of Greater Healing
    # Murloc Nightcrawler: Mana Stone

    # Quests:
    # (Main) Frostmourne
    # (Main) Mal'Ganis
    HU9_VICTORY =           1900, "Victory",            Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.VICTORY
    HU9_WOLF_ITEM =         1901, "Wolf Item 1",        Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Periapt of Vitality"
    HU9_WOLF_ITEM_2 =       1902, "Wolf Item 2",        Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Ring of Protection +3"
    HU9_WENDIGO_ITEM =      1903, "Wendigo Item",       Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Tome of Agility"
    HU9_SHOP =              1904, "Shop",               Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.SHOP
    HU9_MERCENARY_CAMP =    1905, "Mercenary Camp",     Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.SHOP
    HU9_FROSTMOURNE =       1906, "Obtain Frostmourne", Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.QUEST
    # Ice Troll Warlord: Health Stone
    # Wendigo Shaman item 2: Potion of Greater Mana
    # Nerubian Seer: Potion of Mana
    # Nerubian Spider Lord: Healing Wards
    # Ice Troll Berserker: Potion of Greater Healing

    # Quests:
    # (Main) Rescue Acolytes
    # (Side) Find the Graveyard
    UD1_VICTORY =       2100, "Victory",        Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.VICTORY
    UD1_HORSE_ITEM =    2101, "Horse Item",     Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Ring of Protection +2"
    UD1_ASSASSIN_ITEM = 2102, "Assassin Item",  Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Spider Ring"
    UD1_GOLEM_ITEM =    2103, "Rock Golem Item", Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Gauntlets of Ogre Strength +3"
    # Captain: Potion of Greater Healing
    # Bandit: Potion of Healing
    # Footman: Potion of Healing
    # Captain 2: Potion of Greater Healing
    # Crate 1: Potion of Healing
    # Crate 2: Potion of Healing
    # Crate 3: Scroll of Healing
    # Crate 4: Potion of Greater Mana

    # Quests:
    # (Main) 
    # (Side) 
    UD2_VICTORY = 2200, "Victory", Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.VICTORY

    UD3_VICTORY = 2300, "Victory", Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.VICTORY
    UD4_VICTORY = 2400, "Victory", Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.VICTORY
    UD5_VICTORY = 2500, "Victory", Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.VICTORY
    UD6_VICTORY = 2600, "Victory", Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.VICTORY
    UD7_VICTORY = 2700, "Victory", Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.VICTORY
    UD8_VICTORY = 2800, "Victory", Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.VICTORY

    OR1_VICTORY = 3100, "Victory", Wc3Mission.O1_LANDFALL, Wc3LocationType.VICTORY
    OR2_VICTORY = 3200, "Victory", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.VICTORY
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
