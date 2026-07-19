"""
location data within missions, not including logic
"""

import enum

from .missions import Wc3Mission


LOCATION_RANGE_PER_MISSION = 1000
VICTORY_CACHE_OFFSET = 990
MAX_VICTORY_CACHE_SIZE = 9


def global_location_id(mission_id: int, local_location_id: int) -> int:
    return mission_id * LOCATION_RANGE_PER_MISSION + local_location_id


class Wc3LocationType(enum.Flag):
    VICTORY = enum.auto()
    VICTORY_CACHE = enum.auto()
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


class Wc3Location(enum.IntEnum):
    def __new__(cls, id: int, *args, **kwargs) -> 'Wc3Location':
        value = id
        obj = int.__new__(cls, value)
        obj._value_ = value
        return obj

    def __init__(
        self, id: int, location_name: str, mission: Wc3Mission, type: Wc3LocationType, vanilla_item: str = ''
    ) -> None:
        self.id = id
        assert id >= global_location_id(mission.id, 0)
        assert id < global_location_id(mission.id + 1, 0)
        self.location_name = location_name
        self.mission = mission
        self.type = type
        self.vanilla_item = vanilla_item

    def global_name(self) -> str:
        return f"{self.mission.short_name} {self.mission.mission_name}: {self.location_name}"

    # Quests
    # (Main) Defend Strahnbrad
    # (Side) Save Timmy
    # (Side) Bandit Lord
    HU1_VICTORY =           101000, "Victory",                Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.VICTORY
    HU1_FIRST_CRATE =       101001, "First Crate",            Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.ITEM, "Potion of Healing"
    HU1_SECOND_CRATE =      101002, "Second Crate",           Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.ITEM, "Scroll of Protection"
    HU1_GNOLL_ITEM =        101003, "Gnoll Item",             Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.ITEM, "Potion of Healing"
    HU1_BENEDICT =          101004, "Benedict's Trap",        Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.ITEM, "Scroll of Healing"
    HU1_BANDIT_ITEM =       101005, "Bandit Item",            Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.ITEM, "Potion of Mana"
    HU1_MENAG =             101006, "Bandit Lord Item",       Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.QUEST, "Gerard's Ledger"
    HU1_NORTH_CRATE =       101007, "North Crate",            Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.ITEM, "Potion of Mana"
    HU1_ENLIST_THORNBY =    101020, "Enlist Thornby",         Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.RESCUE
    HU1_TOWN_RESCUE =       101021, "Rescue Battling Footmen",Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.RESCUE
    HU1_TIMMY =             101022, "Save Timmy",             Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.QUEST_ITEM, "Ring of Protection +1"
    HU1_RETURN_LEDGER =     101023, "Return Gerard's Ledger", Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.QUEST_ITEM, "Tome of Strength"
    HU1_GRAVEYARD =         101024, "Find the Graveyard",     Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD, Wc3LocationType.SECRET

    # Quests:
    # (Main) Blademaster
    # (Main) Establish Base
    # (Side) Searinox
    HU2_VICTORY =               102000, "Victory",                 Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.VICTORY
    HU2_WEST_MURLOC_ITEM =      102001, "Western Murloc Item",     Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Claws of Attack +3"
    HU2_WEST_OGRE_ITEM =        102002, "Western Ogre Item",       Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.SECRET_ITEM, "Gauntlets of Ogre Strength +3"
    HU2_GNOLL_POACHER_ITEM =    102003, "Gnoll Poacher Item",      Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Potion of Mana"
    HU2_MURLOC_HUT_ITEM =       102004, "Murloc Hut Item",         Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Potion of Healing"
    HU2_GNOLL_ITEM =            102005, "Gnoll Item",              Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Potion of Healing"
    HU2_WEST_CRATE =            102006, "West Base Crate",         Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Scroll of Protection"
    HU2_EAST_CRATE =            102007, "East Base Crate",         Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.ITEM, "Potion of Healing"
    HU2_GNOLL_WARDEN_ITEM =     102010, "Gnoll Warden Item",       Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.SECRET_ITEM, "Wand of Negation"
    HU2_SEARINOX =              102011, "Defeat Searinox",         Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.QUEST, "Heart of Searinox"
    HU2_RETURN_SEARINOX_HEART = 102012, "Return Searinox's Heart", Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.QUEST_ITEM, "Orb of Fire"
    HU2_SLAY_BLADEMASTER =      102020, "Slay Blademaster",        Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.QUEST_HERO
    HU2_ESTABLISH_BASE =        102021, "Establish Base",          Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.QUEST
    HU2_FERANOR_STEELTOE =      102022, "Meet Feranor Steeltoe",   Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.RESCUE
    HU2_ORC_BASE =              102025, "Destroy the Orc Base",    Wc3Mission.H2_BLACKROCK_AND_ROLL, Wc3LocationType.BASE

    # Quests:
    # (Main) Investigate Villages
    # (Main) Grain Warehouse
    # (Side) Fountain of Health
    HU3_VICTORY =              103000, "Victory",              Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.VICTORY
    HU3_OGRE_SHEEP =           103001, "Ogre Sheep Item",      Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Bracer of Agility +1"
    HU3_MURLOC_HUT_ITEM =      103002, "Murloc Hut Item",      Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Maul of Strength +1"
    HU3_SKELETON_ISLAND_ITEM = 103003, "Skeleton Island Item", Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Mantle of Intelligence +3"
    HU3_BANDIT_HUT_ITEM =      103004, "Bandit Hut Item",      Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Scroll of Protection"
    HU3_SKELETON_AMBUSH_ITEM = 103005, "Skeletal Ambush Item", Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Potion of Mana"
    HU3_MORTAR_SKELETON_ITEM = 103006, "Mortar Skeleton Item", Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Scroll of Healing"
    HU3_OGRE_MAULER_ITEM =     103007, "Ogre Mauler Item",     Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Potion of Healing"
    HU3_FOOTMAN_RESCUE =       103020, "Footman Rescue",       Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.RESCUE
    HU3_FOUNTAIN_OF_HEALING =  103021, "Fountain of Healing",  Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.QUEST
    HU3_PRIEST_RESCUE =        103022, "Priest Rescue",        Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.RESCUE
    HU3_MORTAR_TEAM_RESCUE =   103023, "Mortar Team Rescue",   Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.RESCUE
    HU3_GARGLEMEL_TAXES =      103024, "Garglemel's Taxes",    Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.SECRET
    HU3_DEFEAT_BANDITS =       103025, "Defeat the Bandits",   Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE, Wc3LocationType.ITEM, "Potion of Greater Healing"

    # Quests:
    # (Main) Investigate Andorhal
    # (Main) Confront Kel'Thuzad
    HU4_VICTORY =                   104000, "Victory",                  Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.VICTORY
    HU4_ROCK_GOLEM_ITEM =           104001, "Rock Golem Item",          Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Ring of Protection +2"
    HU4_TROLL_ITEM =                104002, "Troll Item",               Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Claws of Attack +6"
    HU4_TIMMY_ITEM =                104003, "Timmy Item",               Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Ring of Superiority"
    HU4_GNOLL_HUT_ITEM =            104004, "Gnoll Hut Item",           Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Potion of Healing"
    HU4_MURLOC_NIGHTCRAWLER_ITEM =  104005, "Murloc Nightcrawler Item", Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Potion of Mana"
    HU4_ENFORCER_ITEM =             104006, "Enforcer Item",            Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Potion of Mana"
    HU4_TROLL_HUT_ITEM =            104007, "Troll Hut Item",           Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.ITEM, "Scroll of Protection"
    HU4_CENTER_GOBLIN_MERCHANT =    104008, "Center Goblin Merchant",   Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.SHOP
    HU4_NORTH_GOBLIN_MERCHANT =     104009, "North Goblin Merchant",    Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.SHOP
    HU4_UNDEAD_BASE =               104020, "Destroy the Undead Base",  Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.BASE
    HU4_INVESTIGATE_ANDORHAL =      104021, "Investigate Andorhal",     Wc3Mission.H4_THE_CULT_OF_THE_DAMNED, Wc3LocationType.QUEST

    # Quests:
    # (Main) Defend Heathglen
    # (Side) Grain Caravan
    HU5_VICTORY =              105000, "Victory",              Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.VICTORY
    HU5_OGRE_LORD_ITEM =       105001, "Ogre Lord Item",       Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Gauntlets of Ogre Strength +3"
    HU5_OGRE_LORD_ITEM_2 =     105002, "Ogre Lord Item 2",     Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Potion of Greater Healing"
    HU5_OGRE_MAULER_ITEM =     105003, "Ogre Mauler Item",     Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Periapt of Vitality"
    HU5_CARAVAN_ITEM =         105004, "Grain Caravan",        Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.QUEST_ITEM, "Medallion of Courage"
    HU5_CARAVAN_ITEM_2 =       105005, "Grain Caravan Item 2", Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.QUEST_ITEM, "Scroll of Town Portal"
    HU5_MURLOC_HUNTSMAN_ITEM = 105006, "Murloc Huntsman Item", Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Potion of Mana"
    HU5_SHEEP_ITEM =           105007, "Secret Sheep Item",    Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.SECRET_ITEM, "Potion of Restoration"
    HU5_ZOMBIE_FARM_CRATE =    105008, "Zombie Farm Crate",    Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.SECRET, "Scroll of Healing"
    HU5_FREE_VILLAGER_MARK =   105009, "Free Villager Mark",   Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.ITEM, "Boots of Speed"
    HU5_SLAY_PURPLE_LICH =     105020, "Slay Purple Lich",     Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.HERO
    HU5_SLAY_GREEN_LICH =      105021, "Slay Green Lich",      Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.HERO
    HU5_ROADSIDE_RESCUE =      105022, "Roadside Rescue",      Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.RESCUE
    HU5_DESTROY_PURPLE_BASE =  105023, "Destroy Purple Base (Black Citadel)", Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.HARD_BASE
    HU5_DESTROY_GREEN_BASE =   105024, "Destroy Green Base (Black Citadel)",  Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.HARD_BASE
    HU5_GOBLIN_MERCHANT =      105025, "Goblin Merchant",      Wc3Mission.H5_MARCH_OF_THE_SCOURGE, Wc3LocationType.SHOP

    # Quests:
    # (Main) The Culling
    HU6_VICTORY =             106000, "Victory",                       Wc3Mission.H6_THE_CULLING, Wc3LocationType.VICTORY
    HU6_TENT_ITEM =           106001, "Tent Item",                     Wc3Mission.H6_THE_CULLING, Wc3LocationType.ITEM, "Tome of Strength +2"
    HU6_FILSON_THE_RAT =      106002, "Filson the Rat",                Wc3Mission.H6_THE_CULLING, Wc3LocationType.SECRET_ITEM, "Talisman of Evasion"
    HU6_ENFORCER_ITEM =       106003, "Enforcer Item",                 Wc3Mission.H6_THE_CULLING, Wc3LocationType.ITEM, "Scroll of Town Portal"
    HU6_SLAY_MALGANIS =       106020, "Slay Mal'Ganis",                Wc3Mission.H6_THE_CULLING, Wc3LocationType.HERO
    HU6_GOBLIN_MERCHANT =     106021, "Goblin Merchant",               Wc3Mission.H6_THE_CULLING, Wc3LocationType.SHOP
    HU6_BEG_FOR_FORGIVENESS = 106022, "Beg for Forgiveness",           Wc3Mission.H6_THE_CULLING, Wc3LocationType.SECRET
    HU6_AHEAD_BY_50_ZOMBIES = 106023, "50 Zombies ahead of Mal'Ganis", Wc3Mission.H6_THE_CULLING, Wc3LocationType.CHALLENGE
    HU6_AHEAD_BY_80_ZOMBIES = 106024, "80 Zombies ahead of Mal'Ganis", Wc3Mission.H6_THE_CULLING, Wc3LocationType.CHALLENGE

    # Quests:
    # (Main) Establish Base Camp
    # (Main) Mal'Ganis
    # (Side) Rescue Muradin's Men
    HU7_VICTORY =                107000, "Victory",                   Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.VICTORY
    HU7_DIRE_FROST_WOLF_ITEM =   107001, "Dire Frost Wolf Item",      Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Scroll of the Beast"
    HU7_NERUBIAN_ITEM =          107002, "Nerubian Item",             Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Orb of Frost"  # Note: This is a Nerubian Queen on Hard and a Nerubian Seer otherwise
    HU7_ICE_TROLL_WARLORD_ITEM = 107003, "Ice Troll Warlord Item",    Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Potion of Greater Healing"
    HU7_ICE_TROLL_HUT_ITEM =     107004, "Ice Troll Hut Item",        Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Potion of Mana"
    HU7_ICE_TROLL_ITEM =         107005, "Ice Troll Warlord 2 Item",  Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Manual of Health"
    HU7_WENDIGO_ITEM =           107006, "Wendigo Item",              Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.ITEM, "Gauntlets of Ogre Strength +3"
    HU7_SLAY_LICH =              107020, "Slay Lich",                 Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.HERO
    HU7_ESTABLISH_BASE =         107021, "Establish Base Camp",       Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.QUEST
    HU7_RESCUE_MURADINS_MEN =    107022, "Rescue Muradin's Men",      Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.QUEST_RESCUE
    HU7_DESTROY_PURPLE_BASE =    107023, "Destroy Purple Necropolis", Wc3Mission.H7_THE_SHORES_OF_NORTHREND, Wc3LocationType.BASE

    # Quests:
    # (Main) Burn the Boats
    HU8_VICTORY =                  108000, "Victory",                  Wc3Mission.H8_DISSENSION, Wc3LocationType.VICTORY
    HU8_SKELETON_ITEM =            108001, "Skeleton Item",            Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Goblin Night Scope"
    HU8_NERUBIAN_QUEEN_ITEM =      108002, "Nerubian Queen Item",      Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Claws of Attack +12"
    HU8_FROST_REVENTANT_ITEM =     108003, "Frost Revenant Item",      Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Sobi Mask"
    HU8_PANDAREN_ITEM =            108004, "Pandaren Item",            Wc3Mission.H8_DISSENSION, Wc3LocationType.SECRET_ITEM, "Pendant of Mana"
    HU8_CRYPT_FIEND_ITEM =         108005, "Crypt Fiend Item",         Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Ring of Regeneration"
    HU8_NECROMANCER_ITEM =         108006, "Necromancer Item",         Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Potion of Mana"
    HU8_NERUBIAN_SEER_ITEM =       108007, "Nerubian Seer Item",       Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Potion of Greater Mana"
    HU8_NERUBIAN_WARRIOR_ITEM =    108008, "Nerubian Warrior Item",    Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Potion of Healing"
    HU8_BLUE_DRAKE_ITEM =          108009, "Blue Drake Item",          Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Potion of Greater Healing"
    HU8_MURLOC_NIGHTCRAWLER_ITEM = 108010, "Murloc Nightcrawler Item", Wc3Mission.H8_DISSENSION, Wc3LocationType.ITEM, "Mana Stone"
    HU8_BOAT_1 =                   108020, "Boat 1",                   Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_BOAT_2 =                   108021, "Boat 2",                   Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_BOAT_3 =                   108022, "Boat 3",                   Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_BOAT_4 =                   108023, "Boat 4",                   Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_BOAT_5 =                   108024, "Boat 5",                   Wc3Mission.H8_DISSENSION, Wc3LocationType.QUEST
    HU8_GOBLIN_MERCHANT =          108025, "Goblin Merchant",          Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP
    HU8_MERCENARY_CAMP_1 =         108026, "Mercenary Camp 1",         Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP
    HU8_MERCENARY_CAMP_2 =         108027, "Mercenary Camp 2",         Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP
    HU8_MERCENARY_CAMP_3 =         108028, "Mercenary Camp 3",         Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP
    HU8_GOBLIN_LABORATORY =        108029, "Goblin Laboratory",        Wc3Mission.H8_DISSENSION, Wc3LocationType.SHOP

    # Quests:
    # (Main) Frostmourne
    # (Main) Mal'Ganis
    HU9_VICTORY =                   109000, "Victory",                   Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.VICTORY
    HU9_DIRE_FROST_WOLF_ITEM =      109001, "Dire Frost Wolf Item 1",    Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Ring of Protection +3"
    HU9_DIRE_FROST_WOLF_ITEM_2 =    109002, "Dire Frost Wolf Item 2",    Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Periapt of Vitality"
    HU9_WENDIGO_SHAMAN_ITEM =       109003, "Wendigo Shaman Item 1",     Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Tome of Agility"
    HU9_WENDIGO_SHAMAN_ITEM_2 =     109004, "Wendigo Shaman Item 2",     Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Potion of Greater Mana"
    HU9_ICE_TROLL_WARLORD_ITEM =    109005, "Ice Troll Warlord Item",    Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Health Stone"
    HU9_NERUBIAN_SEER_ITEM =        109006, "Nerubian Seer Item",        Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Potion of Mana"
    HU9_NERUBIAN_SPIDER_LORD_ITEM = 109007, "Nerubian Spider Lord Item", Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Healing Wards"
    HU9_ICE_TROLL_BERSERKER_ITEM =  109008, "Ice Troll Berserker Item",  Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.ITEM, "Potion of Greater Healing"
    HU9_MAL_GANIS =                 109020, "Slay Mal'Ganis",            Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.HERO
    HU9_GOBLIN_MERCHANT =           109021, "Goblin Merchant",           Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.SHOP
    HU9_MERCENARY_CAMP =            109022, "Mercenary Camp",            Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.SHOP
    HU9_FROSTMOURNE =               109023, "Obtain Frostmourne",        Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.QUEST
    HU9_DESTROY_PURPLE_BASE =       109024, "Destroy Purple Base (Black Citadel)", Wc3Mission.H9_FROSTMOURNE, Wc3LocationType.BASE

    # Quests:
    # (Main) Rescue Acolytes
    # (Side) Find the Graveyard
    UD1_VICTORY =                201000, "Victory",                Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.VICTORY
    UD1_HORSE_ITEM =             201001, "Horse Item",             Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Ring of Protection +2"
    UD1_ASSASSIN_ITEM =          201002, "Assassin Item",          Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Spider Ring"
    UD1_GOLEM_ITEM =             201003, "Rock Golem Item",        Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.SECRET_ITEM, "Gauntlets of Ogre Strength +3"
    UD1_CAPTAIN_ITEM =           201004, "Captain Item",           Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Greater Healing"
    UD1_BANDIT_ITEM =            201005, "Bandit Item",            Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Healing"
    UD1_FOOTMAN_ITEM =           201006, "Footman Item",           Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Healing"
    UD1_CAPTAIN_2_ITEM =         201006, "Captain 2 Item",         Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Greater Healing"
    UD1_ENTRANCE_CRATE =         201007, "Entrance Crate",         Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Healing"
    UD1_LUMBER_MILL_CRATE =      201008, "Lumber Mill Crate",      Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Healing"
    UD1_FISTFIGHT_CRATE =        201009, "Fistfight Crate",        Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Potion of Greater Mana"
    UD1_BOAT_CRATE =             201010, "Boat Crate",             Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.ITEM, "Scroll of Healing"
    UD1_GRAVEYARD =              201020, "Reach the Graveyard",    Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES, Wc3LocationType.QUEST_RESCUE

    # Quests:
    # (Main) Recover Remains
    # (Main) Claim the Urn
    # (Main) Establish Base
    UD2_VICTORY =                   202000, "Victory",                  Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.VICTORY
    UD2_GAVINRAD_THE_DIRE_ITEM =    202001, "Gavinrad the Dire Item",   Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.QUEST_HERO, "Scroll of Healing"
    UD2_BALLADOR_THE_BRIGHT_ITEM =  202002, "Ballador the Bright Item", Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.QUEST_HERO, "Potion of Greater Healing"
    UD2_SAGE_TRUTHBEARER_ITEM =     202003, "Sage Truthbearer Item",    Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.QUEST_HERO, "Gloves of Haste"
    UD2_UTHER_ITEM =                202004, "Uther Item",               Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.QUEST_HERO  # Urn of King Terenas
    UD2_GRANITE_GOLEM_ITEM =        202005, "Granite Golem Item",       Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.ITEM, "Pendant of Energy"
    UD2_ROGUE_WIZARD_ITEM =         202006, "Rogue Wizard Item",        Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.ITEM, "Voodoo Doll"
    UD2_ELDER_SASQUATCH_ITEM =      202007, "Elder Sasquatch Item",     Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.SECRET_ITEM, "Claws of Attack +6"
    UD2_SHEEP_ITEM =                202008, "Sheep Item",               Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.ITEM, "Goblin Night Scope"
    UD2_SASQUATCH_CRATE =           202009, "Sasquatch Crate",          Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.ITEM, "Potion of Healing"
    UD2_KNIGHT_CRATE =              202010, "Knight Crate",             Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.ITEM, "Potion of Mana"
    UD2_UTHER_CRATE =               202011, "Uther Crate",              Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.ITEM, "Scroll of Protection"
    UD2_RECOVER_REMAINS =           202020, "Recover Remains",          Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.QUEST
    UD2_ESTABLISH_BASE =            202021, "Establish a Base",         Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.QUEST
    UD2_FEAST_ON_SOULS =            202022, "Feast on Souls",           Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.SECRET
    UD2_PANDAREN_RELAXATION_AREA =  202023, "Pandaren Relaxation Area", Wc3Mission.U2_DIGGING_UP_THE_DEAD, Wc3LocationType.SECRET

    # Quests:
    # (Main) The Elfgate
    UD3_VICTORY =                    203000, "Victory",                    Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.VICTORY
    UD3_NORTH_GNOLL_OVERSEER_ITEM =  203001, "North Gnoll Overseer Item",  Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Potion of Healing"
    UD3_CENTER_GNOLL_OVERSEER_ITEM = 203002, "Center Gnoll Overseer Item", Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Health Stone"
    UD3_WEST_GNOLL_OVERSEER_ITEM =   203003, "West Gnoll Overseer Item",   Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Ring of Protection +2"
    UD3_SOUTH_GNOLL_OVERSEER_ITEM =  203004, "South Gnoll Overseer Item",  Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Potion of Greater Mana"
    UD3_WEST_GNOLL_HUT_ITEM =        203005, "West Gnoll Hut Item",        Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Scroll of the Beast"
    UD3_CENTER_GNOLL_HUT_ITEM =      203006, "Center Gnoll Hut Item",      Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Book of the Dead"
    UD3_ROCK_GOLEM_ITEM =            203007, "Rock Golem Item",            Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.ITEM, "Potion of Greater Healing"
    UD3_SLAY_SYLVANAS =              203020, "Slay Sylvanas",              Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.HERO
    UD3_DESTROY_PINK_BASE =          203021, "Destroy Pink Town Hall",     Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.BASE
    UD3_DESTROY_ORANGE_BASE =        203022, "Destroy Orange Lumber Mill", Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.BASE
    UD3_DESTROY_TEAL_BASE =          203023, "Destroy Teal Town Hall",     Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.BASE
    UD3_DESTROY_YELLOW_BASE =        203024, "Destroy Yellow Town Hall",   Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.BASE
    UD3_DESTROY_BLUE_BASE =          203025, "Destroy Blue Castle",        Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.QUEST_BASE
    UD3_GOBLIN_MERCHANT =            203026, "Goblin Merchant",            Wc3Mission.U3_INTO_THE_REALM_ETERNAL, Wc3LocationType.SHOP

    # Quests:
    # (Main) Three Moons
    # (Main) Gates of Silvermoon
    UD4_VICTORY =             204000, "Victory",             Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.VICTORY
    UD4_FOREST_CRATE =        204001, "Forest Crate",        Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.ITEM, "Scroll of Mana"
    UD4_CENTER_ISLAND_CRATE = 204002, "Center Island Crate", Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.ITEM, "Potion of Greater Healing"
    UD4_SLAY_SYLVANAS =       204020, "Slay Sylvanas",       Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.HERO
    UD4_NORTHWEST_ALTAR =     204021, "Northwest Altar",     Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.QUEST  # Key of 3 moons fragment
    UD4_NORTH_ALTAR =         204022, "North Altar",         Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.QUEST  # Key of 3 moons fragment
    UD4_SOUTHEAST_ALTAR =     204023, "North Altar",         Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.QUEST  # Key of 3 moons fragment
    UD4_CHARTER_ZEPPELINS =   204024, "Charter Zeppelins",   Wc3Mission.U4_KEY_OF_THE_THREE_MOONS, Wc3LocationType.RESCUE

    # Quests:
    # (Main) The Sunwell
    # (Side) Sylvanas Windrunner
    # (Side) Silvermoon Runners
    UD5_VICTORY =                   205000, "Victory",                        Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.VICTORY
    UD5_ROCK_GOLEM_ITEM =           205001, "Rock Golem Item",                Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.ITEM, "Ring of Regeneration"
    UD5_EAST_GNOLL_OVERSEER_ITEM =  205002, "East Gnoll Overseer Item",       Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.ITEM, "Scroll of the Beast"
    UD5_WEST_GNOLL_OVERSEER_ITEM =  205003, "West Gnoll Overseer Item",       Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.ITEM, "Potion of Greater Mana"
    UD5_DESTROY_SYLVANAS_BASE =     205004, "Destroy Sylvanas's Base",        Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.QUEST_BASE, "Slippers of Agility +3"
    UD5_BLOCK_RUNNERS =             205005, "Stop all Runners",               Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.QUEST_ITEM, "Hood of Cunning"
    UD5_SLAY_SYLVANAS =             205020, "Slay Sylvanas",                  Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.HERO
    UD5_SLAY_ARCHMAGE =             205021, "Slay Archmage",                  Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.HERO
    UD5_GOBLIN_MERCHANT =           205022, "Goblin Merchant",                Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.SHOP
    UD5_MERCENARY_CAMP =            205023, "Mercenary Camp",                 Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.SHOP
    UD5_EAST_SILVERMOON_CASTLE =    205024, "Destroy East Silvermoon Castle", Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.BASE
    UD5_WEST_SILVERMOON_CASTLE =    205025, "Destroy West Silvermoon Castle", Wc3Mission.U5_THE_FALL_OF_SILVERMOON, Wc3LocationType.BASE

    # Quests:
    # (Main) Demon Gate
    # (Side) Orc Heroes
    UD6_VICTORY =                    206000, "Victory",                            Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.VICTORY
    UD6_SLAY_HAOMARUSH =             206001, "Slay Haomarush (Teal)",              Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_HERO, "Manual of Health"
    UD6_SLAY_KHANZO =                206002, "Slay Khanzo (Blue)",                 Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_HERO, "Tome of Agility"
    UD6_SLAY_GENJUROS =              206003, "Slay Genjuros (Brown)",              Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_HERO, "Tome of Strength"
    UD6_SLAY_THROK_FEROTH =          206004, "Slay Throk'Feroth (Orange)",         Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_HERO, "Tome of Intelligence"
    UD6_SLAY_MAZRIGOS =              206005, "Slay Mazrigos (Light Blue)",         Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_HERO, "Tome of Intelligence"
    UD6_SLAY_JUBEITHOS =             206006, "Slay Jubei'Thos (Red)",              Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_HERO, "Tome of Knowledge"
    UD6_EAST_RED_DRAGON_ITEM =       206007, "East Red Dragon Item",               Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.ITEM, "Periapt of Vitality"
    UD6_WEST_RED_DRAGON_ITEM =       206008, "West Red Dragon Item",               Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.ITEM, "Claws of Attack +9"
    UD6_TROLL_CAGE_ITEM =            206009, "Troll Cage Item",                    Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.ITEM, "Scroll of Mana"
    UD6_ICE_TROLL_HIGH_PRIEST_ITEM = 206010, "Ice Troll High Priest Item",         Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.ITEM, "Potion of Greater Healing"
    UD6_ICE_TROLL_BERSERKER_ITEM =   206011, "Ice Troll Berserker Item",           Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.ITEM, "Ring of Protection +3"
    UD6_ICE_TROLL_WARLORD_ITEM =     206012, "Ice Troll Warlord Item",             Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.ITEM, "Sobi Mask"
    UD6_MURLOC_NIGHTCRAWLER_ITEM =   206013, "Murloc Nightcrawler Item",           Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.SECRET_ITEM, "Mana Stone"
    UD6_DESTROY_BLUE_BASE =          206020, "Destroy Blue Base (Great Hall)",     Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.BASE
    UD6_DESTROY_BROWN_BASE =         206021, "Destroy Brown Base (Stronghold)",    Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.BASE
    UD6_DESTROY_ORANGE_BASE =        206022, "Destroy Orange Base (Stronghold)",   Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.BASE
    UD6_DESTROY_LIGHT_BLUE_BASE =    206023, "Destroy Light Blue Base (Fortress)", Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.BASE
    UD6_DESTROY_RED_BASE =           206024, "Destroy Red Base (Fortress)",        Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.QUEST_BASE
    UD6_GOBLIN_MERCHANT =            206025, "Goblin Merchant",                    Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO, Wc3LocationType.SHOP

    # Quests:
    # (Main) Three Archmagi
    UD7_VICTORY =                   207000, "Victory",                      Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.VICTORY
    UD7_SLAY_SHEEP_ARCHMAGE =       207001, "Slay Sheep Archmage",          Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.HERO_ITEM, "Health Stone"
    UD7_SHEEP_ARCHMAGE_TENT_ITEM =  207002, "Sheep Archmage Tent Item",     Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.ITEM, "Anti-Magic Potion"
    UD7_MAGIC_VAULT_ITEM_1 =        207003, "Magic Vault Item 1",           Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.ITEM, "Khadgar's Pipe of Insight"
    UD7_MAGIC_VAULT_ITEM_2 =        207004, "Magic Vault Item 2",           Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.ITEM, "Tome of Intelligence"
    UD7_MAGIC_VAULT_ITEM_3 =        207005, "Magic Vault Item 3",           Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.ITEM, "Pendant of Mana"
    UD7_SLAY_WORKSHOP_ARCHMAGE =    207006, "Slay Workshop Archmage",       Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.HERO_ITEM, "Mantle of Intelligence +3"
    UD7_SLAY_YELLOW_ARCHMAGE =      207007, "Slay Yellow Archmage",         Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.HERO
    UD7_TOWER_SQUARE_ITEM =         207008, "Tower Square Item",            Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.ITEM, "Boots of Quel'Thalas +6"
    UD7_DEAD_TOWN_CRATE_ITEM =      207009, "Dead Town Crate Item",         Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.ITEM, "Scroll of Mana"
    UD7_SLAY_FIRST_ARCHMAGE =       207020, "Slay First Archmage",          Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.QUEST_HERO
    UD7_SLAY_SECOND_ARCHMAGE =      207021, "Slay Second Archmage",         Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.QUEST_HERO
    UD7_GOBLIN_MERCHANT =           207022, "Goblin Merchant",              Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.SHOP
    UD7_SOUTH_CAGE_RESCUE =         207023, "South Cage Rescue",            Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.RESCUE
    UD7_WEST_CAGE_RESCUE =          207024, "West Cage Rescue",             Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.RESCUE
    UD7_NORTHEAST_CAGE_RESCUE =     207025, "Northeast Cage Rescue",        Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.RESCUE
    UD7_DESTROY_PURPLE_BASE =       207026, "Destroy Purple Base (Keep)",   Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.BASE
    UD7_DESTROY_YELLOW_BASE =       207027, "Destroy Yellow Base (Castle)", Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.BASE
    UD7_DESTROY_ORANGE_BASE =       207028, "Destroy Orange Base (Castle)", Wc3Mission.U7_THE_SIEGE_OF_DALARAN, Wc3LocationType.HARD_BASE

    # Quests:
    # (Main) Archimonde
    # (Side) Goblin Land Mines
    UD8_VICTORY =                  208000, "Victory",                      Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.VICTORY
    UD8_MAGIC_VAULT_ITEM_1 =       208001, "Magic Vault Item 1",           Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HARD_ITEM, "Scepter of Mastery"
    UD8_MAGIC_VAULT_ITEM_2 =       208002, "Magic Vault Item 2",           Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HARD_ITEM, "Medallion of Courage"
    UD8_GNOLL_HUT_ITEM =           208003, "Gnoll Hut Item",               Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.ITEM, "Scroll of Healing"
    UD8_SLAY_SHEEP_ARCHMAGE =      208004, "Slay Sheep Archmage",          Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HERO_ITEM, "Ring of Protection +5"
    UD8_SHEEP_ARCHMAGE_TENT_ITEM = 208005, "Sheep Archmage Tent Item",     Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.ITEM, "Tome of Strength +2"
    UD8_SLAY_WEST_BASE_ARCHMAGE =  208020, "Slay West Kirin Tor Archmage", Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HERO
    UD8_SLAY_GATE_ARCHMAGE =       208021, "Slay Gate Archmage",           Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HERO
    UD8_SLAY_VAULT_ARCHMAGE =      208022, "Slay Vault Archmage",          Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HARD_HERO
    UD8_DESTROY_RED_BASE =         208023, "Destroy Red Castle",           Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HARD_BASE
    UD8_DESTROY_TEAL_BASE =        208024, "Destroy Teal Castle",          Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HARD_BASE
    UD8_DESTROY_BLUE_BASE =        208025, "Destroy Blue Castle",          Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.HARD_BASE
    UD8_GOBLIN_LAND_MINES =        208026, "Goblin Land Mines",            Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.QUEST_ITEM, "Goblin Land Mines"
    UD8_GOBLIN_LABORATORY =        208027, "Goblin Laboratory",            Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.SHOP
    UD8_GOBLIN_MERCHANT =          208028, "Goblin Merchant",              Wc3Mission.U8_UNDER_THE_BURNING_SKY, Wc3LocationType.SHOP

    # Quests:
    # (main) Rally the Horde
    # (main) Protect Cairne
    OR1_VICTORY =                    301000, "Victory", Wc3Mission.O1_LANDFALL, Wc3LocationType.VICTORY
    OR1_QUILLBOAR_HUNTER_ITEM =      301001, "Quillboar Hunter Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Healing Wards"
    OR1_MURLOC_FLESHEATER_ITEM =     301002, "West Murloc Flesheater Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Healing Wards"
    OR1_MURLOC_NIGHTCRAWLER_ITEM =   301003, "Murloc Nightcrawler Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Periapt of Vitality"
    OR1_RAZORMANE_BRUTE_ITEM =       301004, "Razormane Brute Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Potion of Mana"
    OR1_THUNDER_LIZARD_ITEM =        301005, "Thunder Lizard Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Potion of Mana"
    OR1_HARPY_WINDWITCH_ITEM =       301006, "Harpy Windwitch Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Scroll of the Beast"
    OR1_CENTAUR_TENT_ITEM =          301007, "Centaur Tent Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Wand of Lightning Shield"
    OR1_MURLOC_FLESHEATER_ITEM_2 =   301008, "East Murloc Flesheater Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Manual of Health"
    OR1_MURLOC_TIDERUNNER_ITEM =     301009, "Murloc Tiderunner Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Potion of Mana"
    OR1_SOUTHEAST_PENINSULA_ITEM =   301010, "Southeast Peninsula Item", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Health Stone"
    OR1_LANDFALL_CRATE =             301011, "Landfall Crate", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Potion of Mana"
    OR1_BRONZE_DRAGON_CRATE =        301012, "Bronze Dragon Crate", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Ring of Protection +1"
    OR1_FIRST_VILLAGE_CRATE =        301013, "First Village Crate", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Scroll of Protection"
    OR1_WARSONG_RESCUE_CRATE =       301014, "Warsong Rescue Crate", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Lion's Ring"
    OR1_HORSEMAN_ATTACK_CRATE =      301015, "Horseman Attack Crate", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Potion of Healing"
    OR1_MURLOC_CRATE =               301016, "Murloc Crate", Wc3Mission.O1_LANDFALL, Wc3LocationType.ITEM, "Potion of Healing"
    OR1_CAPTIVE_TROLLS_RESCUE =      301020, "Captured Troll Rescue", Wc3Mission.O1_LANDFALL, Wc3LocationType.RESCUE
    OR1_WARSONG_RESCUE =             301021, "Warsong Rescue", Wc3Mission.O1_LANDFALL, Wc3LocationType.RESCUE
    OR1_HORSEMAN_ATTACK_RESCUE =     301022, "Horseman Attack Rescue", Wc3Mission.O1_LANDFALL, Wc3LocationType.RESCUE

    OR2_VICTORY =                       302000, "Victory", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.VICTORY
    OR2_WEST_MURLOC_HUT_ITEM =          302001, "West Murloc Hut Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Potion of Mana"
    OR2_EAST_MURLOC_HUT_ITEM =          302002, "East Murloc Hut Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Ancient Figuring"
    OR2_WEST_HARPY_NEST_ITEM =          302003, "West Harpy Nest Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Mantle of Intelligence +3"
    OR2_HARPY_QUEEN_ITEM =              302004, "Harpy Queen Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Totem of Might"
    OR2_EAST_HARPY_NEST_ITEM =          302005, "East Harpy Nest Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Potion of Greater Mana"
    OR2_SOUTH_CENTUAR_SORCERER_ITEM =   302006, "South Centaur Sorcerer Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Scroll of Healing"
    OR2_THUNDER_LIZARD_ITEM =           302007, "Thunder Lizard Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Claws of Attack +3"
    OR2_CENTER_CENTUAR_SORCERER_ITEM =  302008, "Center Centaur Sorcerer Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Potion of Greater Mana"
    OR2_CENTER_CENTAUR_TENT_ITEM =      302009, "Center Centaur Tent Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Scroll of Healing"
    OR2_NORTHEAST_CENTAUR_TENT_ITEM =   302010, "Northeast Centaur Tent Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Tome of Agility"
    OR2_CENTAUR_KHAN_ITEM =             302011, "Centaur Khan Item", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.ITEM, "Pendant of Energy"
    OR2_FIRST_OASIS =                   302020, "First Oasis", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.QUEST
    OR2_SECOND_OASIS =                  302021, "Second Oasis", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.QUEST_RESCUE
    OR2_RAIDER_RESCUE =                 302022, "Raider Rescue", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.RESCUE
    OR2_CENTER_SHOP =                   302023, "Goblin Merchant", Wc3Mission.O2_THE_LONG_MARCH, Wc3LocationType.SHOP

    OR3_VICTORY =                       303000, "Victory", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.VICTORY
    OR3_WEST_CENTAUR_SORCERER_ITEM_1 =  303001, "Centaur Sorcerer Item 1", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.ITEM, "Tome of Intelligence"
    OR3_WEST_CENTAUR_SORCERER_ITEM_2 =  303002, "Centaur Sorcerer Item 2", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.ITEM, "Potion of Greater Mana"
    OR3_BERSERK_WILDKIN_ITEM =          303003, "Berserk Wildkin Item", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.ITEM, "Claws of Attack +9"  # Northeast
    OR3_HARPY_QUEEN_ITEM =              303004, "Harpy Queen Item", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.ITEM, "Circlet of Nobility"
    OR3_NORTH_CENTAUR_SORCERER_ITEM =   303005, "North Centaur Sorcerer Item", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.ITEM, "Scroll of Healing"
    OR3_CENTAUR_IMPALER_ITEM =          303006, "Centaur Impaler Item", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.ITEM, "Potion of Healing"
    OR3_CENTAUR_KHAN_ITEM =             303007, "Centaur Khan Item", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.ITEM, "Gauntlets of Ogre Strength +3"
    OR3_ESTABLISH_A_BASE =              303020, "Establish a Base", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.QUEST
    OR3_BROWN_HUMAN_BASE =              303021, "Brown Human Base", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.QUEST_BASE, "Stromgarde Brigade"
    OR3_BLUE_HUMAN_BASE =               303022, "Blue Human Base", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.QUEST_BASE, "Human Expedition"
    OR3_DARK_GREEN_HUMAN_BASE =         303023, "Dark Green Human Base", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.QUEST_BASE, "Kul Tiras Elite Corps"
    OR3_LIGHT_BLUE_HUMAN_BASE =         303024, "Light Blue Human Base", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.QUEST_BASE, "Lordaeron Corps"
    OR3_GRAY_HUMAN_BASE =               303025, "Gray Human Base", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.QUEST_BASE, "Gilneas Brigade"
    OR3_GROMS_BASE =                    303026, "Grom's Base", Wc3Mission.O3_CRY_OF_THE_WARSONG, Wc3LocationType.HARD_BASE, "Warsong Clan"

    OR4_VICTORY = 304000, "Victory", Wc3Mission.O4_THE_SPIRITS_OF_ASHENVALE, Wc3LocationType.VICTORY
    OR5_VICTORY = 305000, "Victory", Wc3Mission.O5_THE_HUNTER_OF_SHADOWS, Wc3LocationType.VICTORY
    OR6_VICTORY = 306000, "Victory", Wc3Mission.O6_WHERE_WYVERNS_DARE, Wc3LocationType.VICTORY
    OR7_VICTORY = 307000, "Victory", Wc3Mission.O7_THE_ORACLE, Wc3LocationType.VICTORY
    OR8_VICTORY = 308000, "Victory", Wc3Mission.O8_BY_DEMONS_BE_DRIVEN, Wc3LocationType.VICTORY

    NE1_VICTORY = 401000, "Victory", Wc3Mission.N1_ENEMIES_AT_THE_GATE, Wc3LocationType.VICTORY
    NE2_VICTORY = 402000, "Victory", Wc3Mission.N2_DAUGHTERS_OF_THE_MOON, Wc3LocationType.VICTORY
    NE3_VICTORY = 403000, "Victory", Wc3Mission.N3_THE_AWAKENING_OF_STORMRAGE, Wc3LocationType.VICTORY
    NE4_VICTORY = 404000, "Victory", Wc3Mission.N4_THE_DRUIDS_ARISE, Wc3LocationType.VICTORY
    NE5_VICTORY = 405000, "Victory", Wc3Mission.N5_BROTHERS_IN_BLOOD, Wc3LocationType.VICTORY
    NE6_VICTORY = 406000, "Victory", Wc3Mission.N6_A_DESTINY_OF_FLAME_AND_SORROW, Wc3LocationType.VICTORY
    NE7_VICTORY = 407000, "Victory", Wc3Mission.N7_TWILIGHT_OF_THE_GODS, Wc3LocationType.VICTORY


location_from_id = {_location.id: _location for _location in Wc3Location}
location_name_to_id = {_location.global_name(): _location.id for _location in Wc3Location}
location_id_to_name = {_location.id: _location.global_name() for _location in Wc3Location}
MISSION_TO_VICTORY_LOCATION = {
    _location.mission: _location
    for _location in Wc3Location
    if _location.type == Wc3LocationType.VICTORY
}


def init_victory_cache(
    location_name_to_id: dict[str, int],
    location_id_to_name: dict[int, str],
) -> None:
    for location in MISSION_TO_VICTORY_LOCATION.values():
        for index in range(MAX_VICTORY_CACHE_SIZE):
            location_id = location.id + VICTORY_CACHE_OFFSET + index
            location_name = f'{location.global_name()} Cache ({index+1})'
            location_name_to_id[location_name] = location_id
            location_id_to_name[location_id] = location_name


init_victory_cache(location_name_to_id, location_id_to_name)

MISSION_TO_LOCATIONS: dict[Wc3Mission, list[Wc3Location]] = {_mission: [] for _mission in Wc3Mission}
for _location in Wc3Location:
    MISSION_TO_LOCATIONS[_location.mission].append(_location)
