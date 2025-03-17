
import enum
from .missions import Wc3Race


class Wc3Item(enum.Enum):
    def __new__(cls, *args, **kwargs):
        value = len(cls.__members__) + 1
        obj = object.__new__(cls)
        obj._value_ = value
        return obj

    def __init__(self, id: int, name: str, race: Wc3Race, quantity: int = 1) -> None:
        self.id = id
        self.item_name = name
        self.race = race
        self.quantity = quantity
    
    # Human - Units
    PEASANT =           1,  "Peasant", Wc3Race.HUMAN
    FOOTMAN =           2,  "Footman", Wc3Race.HUMAN
    RIFLEMAN =          3,  "Rifleman", Wc3Race.HUMAN
    KNIGHT =            4,  "Knight", Wc3Race.HUMAN
    PRIEST =            5,  "Priest", Wc3Race.HUMAN
    SORCERESS =         6,  "Sorceress", Wc3Race.HUMAN
    SPELL_BREAKER =     7,  "Spell Breaker", Wc3Race.HUMAN
    MORTAR_TEAM =       8,  "Mortar Team", Wc3Race.HUMAN
    FLYING_MACHINE =    9,  "Flying Machine", Wc3Race.HUMAN
    SIEGE_ENGINE =      10, "Siege Engine", Wc3Race.HUMAN
    GRYPHON_RIDER =     11, "Gryphon Rider", Wc3Race.HUMAN
    DRAGONHAWK_RIDER =  12, "Dragonhawk Rider", Wc3Race.HUMAN

    # Human - Buildings
    GUARD_TOWER =  13, "Guard Tower", Wc3Race.HUMAN
    CANNON_TOWER = 14, "Cannon Tower", Wc3Race.HUMAN
    ARCANE_TOWER = 15, "Arcane Tower", Wc3Race.HUMAN

    # Human - Heroes
    ARTHAS_LEVEL = 1000, "Arthas Level", Wc3Race.HUMAN, 8
    """HU1 starting level: 1; cap: 2"""
    JAINA_LEVEL = 1001, "Jaina Level", Wc3Race.HUMAN, 6
    """HU3 starting level: 3; cap: 4"""
    MURADIN_LEVEL = 1002, "Muradin Level", Wc3Race.HUMAN, 3
    """HU7 starting level: 5; cap: 7"""

    # Human - Upgrades
    FOOTMAN_DEFEND =                   17, "Defend (Footman)", Wc3Race.HUMAN
    RIFLEMAN_LONG_RIFLES =             18, "Long Rifles (Rifleman)", Wc3Race.HUMAN
    KNIGHT_ANIMAL_WAR_TRAINING =       19, "Animal War Training (Human)", Wc3Race.HUMAN
    MORTAR_TEAM_FLARE =                20, "Flare (Mortar Team)", Wc3Race.HUMAN
    MORTAR_TEAM_FRAGMENTATION_SHARDS = 21, "Fragmentation Shards (Mortar Team)", Wc3Race.HUMAN
    FLYING_MACHINE_BOMBS =             22, "Flying Machine Bombs (Flying Machine)", Wc3Race.HUMAN
    FLYING_MACHINE_FLAK_CANNON =       23, "Flak Cannons (Flying Machine)", Wc3Race.HUMAN
    SIEGE_ENGINE_BARRAGE =             24, "Barrage (Siege Engine)", Wc3Race.HUMAN
    SPELL_BREAKER_CONTROL_MAGIC =      25, "Control Magic (Spell Breaker)", Wc3Race.HUMAN
    GRYPHON_STORM_HAMMERS =            26, "Storm Hammers (Gryphon)", Wc3Race.HUMAN
    DRAGONHAWK_RIDER_CLOUD =           27, "Cloud (Dragonhawk Rider)", Wc3Race.HUMAN

    PRIEST_TRAINING = 28, "Priest Training (Priest)", Wc3Race.HUMAN, 2
    SORCERESS_TRAINING = 29, "Sorceress Training (Sorceress)", Wc3Race.HUMAN, 2

    UPGRADE_HUMAN_FORGED_SWORDS = 30, "Progressive Forged Swords (Human Upgrade)", Wc3Race.HUMAN, 3
    """Iron, Steel Mithril"""
    UPGRADE_HUMAN_GUNPOWDER = 31, "Progressive Gunpowder (Human Upgrade)", Wc3Race.HUMAN, 3
    """Black, Refined, Imbued"""
    UPGRADE_HUMAN_PLATING = 32, "Progressive Plating (Human Upgrade)", Wc3Race.HUMAN, 3
    """Iron, Steel Mithril"""
    UPGRADE_HUMAN_LEATHER_ARMOR = 33, "Progressive Leather Armor (Human Upgrade)", Wc3Race.HUMAN, 3
    """Studded, Reinforced, Dragonhide"""
    UPGRADE_HUMAN_MASONRY = 34, "Progressive Masonry (Human Upgrade)", Wc3Race.HUMAN, 3
    """Improved, Advanced, Imbued"""

    HUMAN_LUMBER_HARVESTING = 35, "Lumber Harvesting (Human)", Wc3Race.HUMAN, 2
    """Advanced, Improved"""
    HUMAN_MAGIC_SENTRY = 36, "Magic Sentry (Human)", Wc3Race.HUMAN
    HUMAN_BACKPACK = 37, "Backpack (Human)", Wc3Race.HUMAN

    # Human - Shop Items
    HUMAN_IVORY_TOWER =            38, "Ivory Tower (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_LESSER_CLARITY_POTION =  39, "Lesser Clarity Potion (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_MECHANICAL_CRITTER =     40, "Mechanical Critter (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_ORB_OF_FIRE =            41, "Orb of Fire (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_TOWN_PORTAL =            42, "Town Portal (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_POTION_OF_HEALING =      43, "Potion of Healing (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_POTION_OF_MANA =         44, "Potion of Mana (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_SCROLL_OF_REGENERATION = 45, "Scroll of Regeneration (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_STAFF_OF_SANCTUARY =     46, "Staff of Sanctuary (Arcane Vault)", Wc3Race.HUMAN

    # Orc - Units
    PEON =             100, "Peon", Wc3Race.ORC
    GRUNT =            101, "Grunt", Wc3Race.ORC
    TROLL_HEADHUNTER = 102, "Troll Headhunter", Wc3Race.ORC
    DEMOLISHER =       103, "Demolisher", Wc3Race.ORC
    RAIDER =           104, "Raider", Wc3Race.ORC
    KODO_BEAT =        105, "Kodo Beast", Wc3Race.ORC
    WIND_RIDER =       106, "Wind Rider", Wc3Race.ORC
    TROLL_BATRIDER =   107, "Troll Batrider", Wc3Race.ORC
    SHAMAN =           108, "Shaman", Wc3Race.ORC
    WITCH_DOCTOR =     109, "Witch Doctor", Wc3Race.ORC
    SPIRIT_WALKER =    110, "Spirit Walker", Wc3Race.ORC
    TAUREN =           111, "Tauren", Wc3Race.ORC

    # Orc - Buildings
    WATCH_TOWER =   112, "Watch Tower", Wc3Race.ORC

    # Orc - Heroes
    THRALL_LEVEL = 1003, "Thrall Level", Wc3Race.ORC
    CAIRNE_LEVEL = 1004, "Cairne Level", Wc3Race.ORC
    GROM_LEVEL =   1005, "Grom Level", Wc3Race.ORC

    # Orc - Upgrades
    GRUNT_BERSERKER_STRENGTH =      114, "Berserker Strength (Grunt)", Wc3Race.ORC
    HEADHUNTER_TROLL_REGENERATION = 115, "Troll Regeneration (Trolls)", Wc3Race.ORC
    HEADHUNTER_BERSERKER =          116, "Berserker Upgrade (Troll Headhunter)", Wc3Race.ORC
    DEMOLISHER_BURNING_OIL =        117, "Burning Oil (Demolisher)", Wc3Race.ORC
    RAIDER_ENSNARE =                118, "Ensnare (Raider)", Wc3Race.ORC
    KODO_BEAST_WAR_DRUMS =          119, "War Drums Damage (Kodo Beast)", Wc3Race.ORC
    WIND_RIDER_ENVENOMED_SPEARS =   120, "Envenomed Spears (Wind Rider)", Wc3Race.ORC
    BATRIDER_LIQUID_FIRE =          121, "Liquid Fire (Troll Batrider)", Wc3Race.ORC
    TAUREN_PULVERIZE =              122, "Pulverize (Tauren)", Wc3Race.ORC

    SHAMAN_TRAINING =               123, "Shaman Training (Shaman)", Wc3Race.ORC, 2
    WITCH_DOCTOR_TRAINING =         124, "Witch Doctor Training (Witch Doctor)", Wc3Race.ORC, 2
    SPIRIT_WALKER_TRAINING =        125, "Spirit Walker Training (Spirit Walker)", Wc3Race.ORC, 2

    UPGRADE_ORC_MELEE_WEAPONS = 126, "Progressive Melee Weapons (Orc Upgrade)", Wc3Race.ORC, 3
    """Steel, Thorium, Arcanite"""
    UPGRADE_ORC_RANGED_WEAPONS = 127, "Progressive Ranged Weapons (Orc Upgrade)", Wc3Race.ORC, 3
    """Steel, Thorium, Arcanite"""
    UPGRADE_ORC_ARMOR = 128, "Progressive Armor (Orc Upgrade)", Wc3Race.ORC, 3
    """Steel, Thorium, Arcanite"""

    ORC_PILLAGE = 129, "Pillage (Orc)", Wc3Race.ORC
    ORC_REINFORCED_DEFENSES = 130, "Reinforced Defenses (Orc)", Wc3Race.ORC
    ORC_SPIKED_BARRICADES = 131, "Spiked Barricades (Orc)", Wc3Race.ORC, 3
    """*, Improved, Advanced"""
    ORC_BACKPACK = 132, "Backpack (Orc)", Wc3Race.ORC

    # Orc - Shop Items
    ORC_HEALING_SALVE =         133, "Healing Salve (Voodoo Lounge)", Wc3Race.ORC
    ORC_LESSER_CLARITY_POTION = 134, "Lesser Clarity Potion (Voodoo Lounge)", Wc3Race.ORC
    ORC_ORB_OF_LIGHTNING =      135, "Orb of Lightning (Voodoo Lounge)", Wc3Race.ORC
    ORC_POTION_OF_HEALING =     136, "Potion of Healing (Voodoo Lounge)", Wc3Race.ORC
    ORC_POTION_OF_MANA =        137, "Potion of Mana (Voodoo Lounge)", Wc3Race.ORC
    ORC_SCROLL_OF_SPEED =       138, "Scroll of Speed (Voodoo Lounge)", Wc3Race.ORC
    ORC_SCROLL_OF_TOWN_PORTAL = 139, "Scroll of Town Portal (Voodoo Lounge)", Wc3Race.ORC
    ORC_TINY_GREAT_HALL =       140, "Tiny Great Hall (Voodoo Lounge)", Wc3Race.ORC

    # Undead - Units
    ACOLYTE =         200, "Acolyte", Wc3Race.UNDEAD
    GHOUL =           201, "Ghoul", Wc3Race.UNDEAD
    CRYPT_FIEND =     202, "Crypt Fiend", Wc3Race.UNDEAD
    GARGOYLE =        203, "Gargoyle", Wc3Race.UNDEAD
    MEAT_WAGON =      204, "Meat Wagon", Wc3Race.UNDEAD
    ABOMINATION =     205, "Abomination", Wc3Race.UNDEAD
    OBSIDIAN_STATUE = 206, "Obsidian Statue", Wc3Race.UNDEAD
    NECROMANCER =     207, "Necromancer", Wc3Race.UNDEAD
    BANSHEE =         208, "Banshee", Wc3Race.UNDEAD
    SHADE =           209, "Acolyte", Wc3Race.UNDEAD
    FROST_WYRM =      210, "Frost Wyrm", Wc3Race.UNDEAD

    # Undead - Buildings
    SPIRIT_TOWER =   211, "Spirit Tower", Wc3Race.UNDEAD
    NERUBIAN_TOWER = 212, "Nerubian Tower", Wc3Race.UNDEAD

    # Undead - Heroes
    UNDEAD_ARTHAS_LEVEL = 1006, "Undead Arthas Level", Wc3Race.UNDEAD, 8
    """UD1; starting level: 1; cap: 2"""
    KEL_THUZAD_LEVEL = 1007, "Kel'Thuzad Level", Wc3Race.UNDEAD, 3
    """UD6; starting level: 5; cap: 7"""
    SYLVANAS_LEVEL = 1008, "Sylvanas Level", Wc3Race.UNDEAD, 6
    """UDx1; starting level: 2; cap: 4"""
    VARIMATHRAS_LEVEL = 1009, "Varimathras Level", Wc3Race.UNDEAD, 2
    """UDx5; starting level: 5; cap: 8"""
    ANUB_ARAK_LEVEL = 1010, "Anub'arak Level", Wc3Race.UNDEAD, 5
    """UDx4; starting level: 3; cap: 5"""
    ARTHAS_UNLEVEL = 1011, "Arthas Unlevel", Wc3Race.UNDEAD, 7
    """UDx01 has cap 10; UDx07c sets cap to 3"""

    # Undead - Upgrades
    GHOUL_CANNIBALIZE =              213, "Cannibalize (Ghoul)", Wc3Race.UNDEAD
    GHOUL_FRENZY =                   214, "Ghoul Frenzy (Ghoul)", Wc3Race.UNDEAD
    CRYPT_FIEND_WEB =                215, "Web (Crypt Fiend)", Wc3Race.UNDEAD
    CRYPT_FIEND_BURROW =             216, "Burrow (Crypt Fiend)", Wc3Race.UNDEAD
    GARGOYLE_STONE_FORM =            217, "Stone Form (Gargoyle)", Wc3Race.UNDEAD
    MEAT_WAGON_DISEASE_CLOUD =       218, "Disease Cloud (Meat Wagon)", Wc3Race.UNDEAD
    MEAT_WAGON_EXHUME_CORPSES =      219, "Exhume Corpses (Meat Wagon)", Wc3Race.UNDEAD
    OBSIDIAN_STATUE_DESTROYER_FORM = 220, "Destroyer Form (Obsidian Statue)", Wc3Race.UNDEAD
    NECROMANCER_SKELETAL_LONGEVITY = 221, "Skeletal Longevity (Necromancer)", Wc3Race.UNDEAD
    NECROMANCER_SKELETAL_MASTERY =   222, "Skeletal Mastery (Necromancer)", Wc3Race.UNDEAD
    FROST_WYRM_FREEZING_BREATH =     223, "Freezing Breath (Frost Wyrm)", Wc3Race.UNDEAD

    NECROMANCER_TRAINING = 224, "Necromancer Training (Necromancer)", Wc3Race.UNDEAD, 2
    BANSHEE_TRAINING =     225, "Banshee Training (Banshee)", Wc3Race.UNDEAD, 2

    UNDEAD_UNHOLY_STRENGTH = 226, "Progressive Unholy Strength (Undead Upgrade)", Wc3Race.UNDEAD, 3
    """*, Improved, Advanced"""
    UNDEAD_CREATURE_STRENGTH = 227, "Progressive Creature Strength (Undead Upgrade)", Wc3Race.UNDEAD, 3
    """*, Improved, Advanced"""
    UNDEAD_UNHOLY_ARMOR = 228, "Progressive Unholy Armor (Undead Upgrade)", Wc3Race.UNDEAD, 3
    """*, Improved, Advanced"""
    UNDEAD_CREATURE_CARAPACE = 229, "Progressive Creature Carapace (Undead Upgrade)", Wc3Race.UNDEAD, 3
    """*, Improved, Advanced"""

    UNDEAD_BACKPACK = 230, "Backpack (Undead)", Wc3Race.UNDEAD

    # Undead - Shop Items
    UNDEAD_DUST_OF_APPEARANCE =    231, "Dust of Appearance (Tomb of Relics)", Wc3Race.UNDEAD
    UNDEAD_ORB_OF_CORRUPTION =     232, "Orb of Corruption (Tomb of Relics)", Wc3Race.UNDEAD
    UNDEAD_POTION_OF_HEALING =     233, "Potion of Healing (Tomb of Relics)", Wc3Race.UNDEAD
    UNDEAD_POTION_OF_MANA =        234, "Potion of Mana (Tomb of Relics)", Wc3Race.UNDEAD
    UNDEAD_ROD_OF_NECROMANCY =     235, "Rod of Necromancy (Tomb of Relics)", Wc3Race.UNDEAD
    UNDEAD_SACRIFICIAL_SKULL =     236, "Sacrificial Skull (Tomb of Relics)", Wc3Race.UNDEAD
    UNDEAD_SCROLL_OF_TOWN_PORTAL = 237, "Scroll of Town Portal (Tomb of Relics)", Wc3Race.UNDEAD
    # melee only:
    # UNDEAD_RITUAL_DAGGER = "Ritual Dagger (Tomb of Relics)"
    # UNDEAD_WAND_OF_NEGATION = "Wand of Negation (Tomb of Relics)"

    # Night Elf - Units
    WISP =               300, "Wisp", Wc3Race.NIGHT_ELF
    ARCHER =             301, "Archer", Wc3Race.NIGHT_ELF
    HUNTRESS =           302, "Huntress", Wc3Race.NIGHT_ELF
    GLAIVE_THROWER =     303, "Glaive Thrower", Wc3Race.NIGHT_ELF
    DRYAD =              304, "Dryad", Wc3Race.NIGHT_ELF
    DRUID_OF_THE_CLAW =  305, "Druid of the Claw", Wc3Race.NIGHT_ELF
    MOUNTAIN_GIANT =     306, "Mountain Giant", Wc3Race.NIGHT_ELF
    DRUID_OF_THE_TALON = 307, "Druid of the Talon", Wc3Race.NIGHT_ELF
    HIPPOGRYPH =         308, "Hippogryph", Wc3Race.NIGHT_ELF
    FAERIE_DRAGON =      309, "Faerie Dragon", Wc3Race.NIGHT_ELF
    CHIMAERA =           310, "Chimaera", Wc3Race.NIGHT_ELF

    # Night Elf - Buildings
    ANCIENT_PROTECTOR =  311, "Ancient Protector", Wc3Race.NIGHT_ELF

    # Night Elf - Heroes
    TYRANDE_LEVEL = 1012, "Tyrande Level", Wc3Race.NIGHT_ELF, 8
    FURION_LEVEL =  1013, "Furion Level", Wc3Race.NIGHT_ELF, 8
    ILLIDAN_LEVEL = 1014, "Illidan Level", Wc3Race.NIGHT_ELF, 8
    MAIEV_LEVEL =   1015, "Maiev Level", Wc3Race.NIGHT_ELF, 8

    # Night Elf - Upgrades
    ARCHER_IMPROVED_BOWS =                 313, "Improved Bows (Archer)", Wc3Race.NIGHT_ELF
    ARCHER_MARKSMANSHIP =                  314, "Marksmanship (Archer)", Wc3Race.NIGHT_ELF
    HUNTRESS_SENTINEL =                    315, "Sentinel (Huntress)", Wc3Race.NIGHT_ELF
    HUNTRESS_MOON_GLAIVE =                 316, "Moon Glaive (Huntress)", Wc3Race.NIGHT_ELF
    GLAIVE_THROWER_VORPAL_BLADES =         317, "Vorpal Blades (Glaive Thrower)", Wc3Race.NIGHT_ELF
    DRYAD_ABOLISH_MAGIC =                  318, "Abolish Magic (Dryad)", Wc3Race.NIGHT_ELF
    DRUID_OF_THE_CLAW_MARK_OF_THE_CLAW =   319, "Mark of the Claw (Druid of the Claw)", Wc3Race.NIGHT_ELF
    MOUNTAIN_GIANT_RESISTANT_SKIN =        320, "Resistant Skin (Mountain Giant)", Wc3Race.NIGHT_ELF
    MOUNTAIN_GIANT_HARDENED_SKIN =         321, "Hardened Skin (Mountain Giant)", Wc3Race.NIGHT_ELF
    DRUID_OF_THE_TALON_MARK_OF_THE_TALON = 322, "Mark of the Talon (Druid of the Talon)", Wc3Race.NIGHT_ELF
    HIPPOGRYPH_TAMING =                    323, "Hippogryph Taming (Hippogryph)", Wc3Race.NIGHT_ELF
    CHIMAERA_CORROSIVE_BREATH =            324, "Corrosive Breath (Chimaera)", Wc3Race.NIGHT_ELF

    DRUID_OF_THE_CLAW_TRAINING =  325, "Druid of the Claw Training (Druid of the Claw)", Wc3Race.NIGHT_ELF, 2
    DRUID_OF_THE_TALON_TRAINING = 326, "Druid of the Talon Training (Druid of the Talon)", Wc3Race.NIGHT_ELF, 2

    NELF_STRENGTH_OF_THE_MOON = 327, "Progressive Strength of the Moon (Night Elf Upgrade)", Wc3Race.NIGHT_ELF, 3
    """*, Improved, Advanced"""
    NELF_STRENGTH_OF_THE_WILD = 328, "Progressive Strength of the Wild (Night Elf Upgrade)", Wc3Race.NIGHT_ELF, 3
    """*, Improved, Advanced"""
    NELF_MOON_ARMOR = 329, "Progressive Moon Armor (Night Elf Upgrade)", Wc3Race.NIGHT_ELF, 3
    """*, Improved, Advanced"""
    NELF_MOON_HIDES = 330, "Progressive Hides (Night Elf Upgrade)", Wc3Race.NIGHT_ELF, 3
    """*, Improved, Advanced"""

    NELF_ULTRAVISION = 331, "Ultravision (Night Elf)", Wc3Race.NIGHT_ELF
    NELF_NATURES_BLESSING = 332, "Nature's Blessing (Night Elf)", Wc3Race.NIGHT_ELF
    NELF_WELLSPRING = 333, "Wellspring (Night Elf)", Wc3Race.NIGHT_ELF
    NELF_BACKPACK = 334, "Backpack (Night Elf)", Wc3Race.NIGHT_ELF

    # Night Elf - Shop Items
    NELF_ANTI_MAGIC_POTION =     335, "Anti-Magic Potion (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_DUST_OF_APPERANCE =     336, "Dust of Appearance (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_LESSER_CLARITY_POTION = 337, "Lesser Clarity Potion (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_MOONSTONE =             338, "Moonstone (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_ORB_OF_VENOM =          339, "Orb of Venom (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_POTION_OF_HEALING =     340, "Potion of Healing (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_POTION_OF_MANA =        341, "Potion of Mana (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_SCROLL_OF_TOWN_PORTAL = 342, "Scroll of Town Portal (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_STAFF_OF_PRESERVATION = 343, "Staff of Preservation (Ancient of Wonders)", Wc3Race.NIGHT_ELF

    # Blood Elf - Units
    BLOOD_ELF_WORKER =  400, "Blood Elf Worker", Wc3Race.NAGA
    BLOOD_ELF_SWORDSMAN = 401, "Blood Elf Swordsman", Wc3Race.NAGA
    BLOOD_ELF_ARCHER =    402, "Blood Elf Archer", Wc3Race.NAGA

    # Blood Elf - Heroes
    KAEL_THAS_LEVEL = 1016, "Kael'Thas Level", Wc3Race.NAGA
    CHEN_STORMSTOUT_LEVEL = 1017, "Chen Stormstout Level", Wc3Race.NAGA

    # Naga - Units
    MUR_GUL_SLAVE =  403, "Mur'gul Slave", Wc3Race.NAGA
    MUR_GUL_REAVER = 404, "Mur'gul Reaver", Wc3Race.NAGA
    NAGA_MYRMIDON =  405, "Naga Myrmidon", Wc3Race.NAGA
    SNAP_DRAGON =    406, "Snap Dragon", Wc3Race.NAGA
    DRAGON_TURTLE =  407, "Dragon Turtle", Wc3Race.NAGA
    NAGA_SIREN =     408, "Naga Siren", Wc3Race.NAGA
    COUATL =         409, "Couatl", Wc3Race.NAGA

    # Naga - Buildings
    TIDAL_GUARDIAN = 410, "Tidal Guardian", Wc3Race.NAGA

    # Naga - Heroes
    LADY_VASHJ_LEVEL = 1018, "Lady Vashj Level", Wc3Race.NAGA

    # Naga - Upgrades
    NAGA_MYRMIDON_ENSNARE = 411, "Ensnare (Naga Myrmidon)", Wc3Race.NAGA
    COUATL_ABOLISH_MAGIC =  412, "Abolish Magic (Couatl)", Wc3Race.NAGA

    NAGA_SIREN_TRAINING = 413, "Naga Siren Training (Naga Siren)", Wc3Race.NAGA, 2

    NAGA_BLADES = 414, "Progressive Blades (Naga Upgrade)", Wc3Race.NAGA, 3
    """Coral, Chitinous, Razorspine"""
    NAGA_SCALES = 415, "Progressive Scales (Naga Upgrade)", Wc3Race.NAGA, 3
    """Coral, Chitinous, Razorspine"""

    NAGA_SUBMERGE = 416, "Submerge (Naga)", Wc3Race.NAGA

    # Mercenaries

    # Items
    H_RING_OF_PROTECTION_1 =         2000, "Hu: Ring of Protection +1", Wc3Race.NONE, 1
    H_TOME_OF_STRENGTH =             2001, "Hu: Tome of Strength", Wc3Race.NONE, 1
    H_CLAWS_OF_ATTACK_3 =            2002, "Hu: Claws of Attack +3", Wc3Race.NONE, 1
    H_GAUNTLETS_OF_OGRE_STRENGTH_3 = 2003, "Hu: Gauntlets of Ogre Strength +3", Wc3Race.NONE, 3
    H_BRACER_OF_AGILITY_1 =          2004, "Hu: Bracer of Agility +1", Wc3Race.NONE, 1
    H_MAUL_OF_STRENGTH_1 =           2005, "Hu: Maul of Strength +1", Wc3Race.NONE, 1
    H_MANTLE_OF_INTELLIGENCE_3 =     2006, "Hu: Mantle of Intelligence +3", Wc3Race.NONE, 1
    H_RING_OF_PROTECTION_2 =         2007, "Hu: Ring of Protection +2", Wc3Race.NONE, 1
    H_CLAWS_OF_ATTACK_6 =            2008, "Hu: Claws of Attack +6", Wc3Race.NONE, 1
    H_RING_OF_SUPERIORITY =          2009, "Hu: Ring of Superiority", Wc3Race.NONE, 1
    H_PERIAPT_OF_VITALITY =          2010, "Hu: Periapt of Vitality", Wc3Race.NONE, 2
    H_MEDALLION_OF_COURAGE =         2011, "Hu: Medallion of Courage", Wc3Race.NONE, 1
    H_BOOTS_OF_SPEED =               2012, "Hu: Boots of Speed", Wc3Race.NONE, 1
    H_TOME_OF_STRENGTH_2 =           2013, "Hu: Tome of Strength +2", Wc3Race.NONE, 1
    H_TALISMAN_OF_EVASION =          2014, "Hu: Talisman of Evasion", Wc3Race.NONE, 1
    H_ORB_OF_FROST =                 2015, "Hu: Orb of Frost", Wc3Race.NONE, 1
    H_MANUAL_OF_HEALTH =             2016, "Hu: Manual of Health", Wc3Race.NONE, 1
    H_GOBLIN_NIGHT_SCOPE =           2017, "Hu: Goblin Night Scope", Wc3Race.NONE, 1
    H_CLAWS_OF_ATTACK_12 =           2018, "Hu: Claws of Attack +12", Wc3Race.NONE, 1
    H_SOBI_MASK =                    2019, "Hu: Sobi Mask", Wc3Race.NONE, 1
    H_PENDANT_OF_MANA =              2020, "Hu: Pendant of Mana", Wc3Race.NONE, 1
    H_RING_OF_REGENERATION =         2021, "Hu: Ring of Regeneration", Wc3Race.NONE, 1
    H_RING_OF_PROTECTION_3 =         2022, "Hu: Ring of Protection +3", Wc3Race.NONE, 1
    H_TOME_OF_AGILITY =              2023, "Hu: Tome of Agility", Wc3Race.NONE, 1


item_name_to_data: dict[str, Wc3Item] = {}
item_id_to_name: dict[int, str] = {}
item_name_to_id: dict[str, int] = {}
for item in Wc3Item:
    assert item.item_name not in item_name_to_id, f"Duplicate item name: {item.item_name}"
    assert item.id not in item_id_to_name, f"Duplicate item ID: {item.id}"
    item_name_to_data[item.item_name] = item
    item_id_to_name[item.id] = item.item_name
    item_name_to_id[item.item_name] = item.id

legacy_names_to_modern_names = {
    "Gyrocopter": Wc3Item.FLYING_MACHINE.item_name,
    "Steam Tank": Wc3Item.SIEGE_ENGINE.item_name,
    "Catapult": Wc3Item.DEMOLISHER.item_name,
    "Wyvern": Wc3Item.WIND_RIDER.item_name,
    "Ballista": Wc3Item.GLAIVE_THROWER.item_name,
    # Note(mm): Technically "Furion" is the legacy name, but I'm using it as the canonical name
    "Malfurion Level": Wc3Item.FURION_LEVEL.item_name,
}
