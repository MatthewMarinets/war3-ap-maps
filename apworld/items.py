
import enum
from . import item_names
from .missions import Wc3Race


class Wc3Item(enum.Enum):
    def __new__(cls, *args, **kwargs):
        value = len(cls.__members__) + 1
        obj = object.__new__(cls)
        obj._value_ = value
        return obj

    def __init__(self, name: str, race: Wc3Race, quantity: int = 1) -> None:
        self.item_name = name
        self.race = race
        self.quantity = quantity
    
    # Human - Units
    PEASANT = "Peasant", Wc3Race.HUMAN
    FOOTMAN = "Footman", Wc3Race.HUMAN
    RIFLEMAN = "Rifleman", Wc3Race.HUMAN
    KNIGHT = "Knight", Wc3Race.HUMAN
    PRIEST = "Priest", Wc3Race.HUMAN
    SORCERESS = "Sorceress", Wc3Race.HUMAN
    SPELL_BREAKER = "Spell Breaker", Wc3Race.HUMAN
    MORTAR_TEAM = "Mortar Team", Wc3Race.HUMAN
    FLYING_MACHINE = "Flying Machine", Wc3Race.HUMAN
    SIEGE_ENGINE = "Siege Engine", Wc3Race.HUMAN
    GRYPHON_RIDER = "Gryphon Rider", Wc3Race.HUMAN
    DRAGONHAWK_RIDER = "Dragonhawk Rider", Wc3Race.HUMAN

    # Human - Buildings
    GUARD_TOWER = "Guard Tower", Wc3Race.HUMAN
    CANNON_TOWER = "Cannon Tower", Wc3Race.HUMAN
    ARCANE_TOWER = "Arcane Tower", Wc3Race.HUMAN
    ARCANE_VAULT = "Arcane Vault", Wc3Race.HUMAN

    # Human - Heroes
    ARTHAS_LEVEL = "Arthas Level", Wc3Race.HUMAN, 8
    """HU1 starting level: 1; cap: 2"""
    JAINA_LEVEL = "Jaina Level", Wc3Race.HUMAN, 6
    """HU3 starting level: 3; cap: 4"""
    MURADIN_LEVEL = "Muradin Level", Wc3Race.HUMAN, 3
    """HU7 starting level: 5; cap: 7"""

    # Human - Upgrades
    FOOTMAN_DEFEND = "Defend (Footman)", Wc3Race.HUMAN
    RIFLEMAN_LONG_RIFLES = "Long Rifles (Rifleman)", Wc3Race.HUMAN
    KNIGHT_ANIMAL_WAR_TRAINING = "Animal War Training (Human)", Wc3Race.HUMAN
    MORTAR_TEAM_FLARE = "Flare (Mortar Team)", Wc3Race.HUMAN
    MORTAR_TEAM_FRAGMENTATION_SHARDS = "Fragmentation Shards (Mortar Team)", Wc3Race.HUMAN
    FLYING_MACHINE_BOMBS = "Flying Machine Bombs (Flying Machine)", Wc3Race.HUMAN
    FLYING_MACHINE_FLAK_CANNON = "Flak Cannons (Flying Machine)", Wc3Race.HUMAN
    SIEGE_ENGINE_BARRAGE = "Barrage (Siege Engine)", Wc3Race.HUMAN
    SPELL_BREAKER_CONTROL_MAGIC = "Control Magic (Spell Breaker)", Wc3Race.HUMAN
    GRYPHON_STORM_HAMMERS = "Storm Hammers (Gryphon)", Wc3Race.HUMAN
    DRAGONHAWK_RIDER_CLOUD = "Cloud (Dragonhawk Rider)", Wc3Race.HUMAN

    PRIEST_TRAINING = "Priest Training (Priest)", Wc3Race.HUMAN, 2
    SORCERESS_TRAINING = "Sorceress Training (Sorceress)", Wc3Race.HUMAN, 2

    UPGRADE_HUMAN_FORGED_SWORDS = "Progressive Forged Swords (Human Upgrade)", Wc3Race.HUMAN, 3
    """Iron, Steel Mithril"""
    UPGRADE_HUMAN_GUNPOWDER = "Progressive Gunpowder (Human Upgrade)", Wc3Race.HUMAN, 3
    """Black, Refined, Imbued"""
    UPGRADE_HUMAN_PLATING = "Progressive Plating (Human Upgrade)", Wc3Race.HUMAN, 3
    """Iron, Steel Mithril"""
    UPGRADE_HUMAN_LEATHER_ARMOR = "Progressive Leather Armor (Human Upgrade)", Wc3Race.HUMAN, 3
    """Studded, Reinforced, Dragonhide"""
    UPGRADE_HUMAN_MASONRY = "Progressive Masonry (Human Upgrade)", Wc3Race.HUMAN, 3
    """Improved, Advanced, Imbued"""

    HUMAN_LUMBER_HARVESTING = "Lumber Harvesting (Human)", Wc3Race.HUMAN, 2
    """Advanced, Improved"""
    HUMAN_MAGIC_SENTRY = "Magic Sentry (Human)", Wc3Race.HUMAN
    HUMAN_BACKPACK = "Backpack (Human)", Wc3Race.HUMAN

    # Human - Shop Items
    HUMAN_IVORY_TOWER = "Ivory Tower (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_LESSER_CLARITY_POTION = "Lesser Clarity Potion (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_MECHANICAL_CRITTER = "Mechanical Critter (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_ORB_OF_FIRE = "Orb of Fire (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_TOWN_PORTAL = "Town Portal (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_POTION_OF_HEALING = "Potion of Healing (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_POTION_OF_MANA = "Potion of Mana (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_SCROLL_OF_REGENERATION = "Scroll of Regeneration (Arcane Vault)", Wc3Race.HUMAN
    HUMAN_STAFF_OF_SANCTUARY = "Staff of Sanctuary (Arcane Vault)", Wc3Race.HUMAN

    # Orc - Units
    PEON = "Peon", Wc3Race.ORC
    GRUNT = "Grunt", Wc3Race.ORC
    TROLL_HEADHUNTER = "Troll Headhunter", Wc3Race.ORC
    DEMOLISHER = "Demolisher", Wc3Race.ORC
    RAIDER = "Raider", Wc3Race.ORC
    KODO_BEAT = "Kodo Beast", Wc3Race.ORC
    WIND_RIDER = "Wind Rider", Wc3Race.ORC
    TROLL_BATRIDER = "Troll Batrider", Wc3Race.ORC
    SHAMAN = "Shaman", Wc3Race.ORC
    WITCH_DOCTOR = "Witch Doctor", Wc3Race.ORC
    SPIRIT_WALKER = "Spirit Walker", Wc3Race.ORC
    TAUREN = "Tauren", Wc3Race.ORC

    # Orc - Buildings
    WATCH_TOWER = "Watch Tower", Wc3Race.ORC
    VOODOO_LOUNGE = "Voodoo Lounge", Wc3Race.ORC

    # Orc - Heroes
    THRALL_LEVEL = "Thrall Level", Wc3Race.ORC
    CAIRNE_LEVEL = "Cairne Level", Wc3Race.ORC
    GROM_LEVEL = "Grom Level", Wc3Race.ORC

    # Orc - Upgrades
    GRUNT_BERSERKER_STRENGTH = "Berserker Strength (Grunt)", Wc3Race.ORC
    HEADHUNTER_TROLL_REGENERATION = "Troll Regeneration (Trolls)", Wc3Race.ORC
    HEADHUNTER_BERSERKER = "Berserker Upgrade (Troll Headhunter)", Wc3Race.ORC
    DEMOLISHER_BURNING_OIL = "Burning Oil (Demolisher)", Wc3Race.ORC
    RAIDER_ENSNARE = "Ensnare (Raider)", Wc3Race.ORC
    KODO_BEAST_WAR_DRUMS = "War Drums Damage (Kodo Beast)", Wc3Race.ORC
    WIND_RIDER_ENVENOMED_SPEARS = "Envenomed Spears (Wind Rider)", Wc3Race.ORC
    BATRIDER_LIQUID_FIRE = "Liquid Fire (Troll Batrider)", Wc3Race.ORC
    TAUREN_PULVERIZE = "Pulverize (Tauren)", Wc3Race.ORC

    SHAMAN_TRAINING = "Shaman Training (Shaman)", Wc3Race.ORC, 2
    WITCH_DOCTOR_TRAINING = "Witch Doctor Training (Witch Doctor)", Wc3Race.ORC, 2
    SPIRIT_WALKER_DOCTOR_TRAINING = "Spirit Walker Training (Spirit Walker)", Wc3Race.ORC, 2

    UPGRADE_ORC_MELEE_WEAPONS = "Progressive Melee Weapons (Orc Upgrade)", Wc3Race.ORC, 3
    """Steel, Thorium, Arcanite"""
    UPGRADE_ORC_RANGED_WEAPONS = "Progressive Ranged Weapons (Orc Upgrade)", Wc3Race.ORC, 3
    """Steel, Thorium, Arcanite"""
    UPGRADE_ORC_ARMOR = "Progressive Armor (Orc Upgrade)", Wc3Race.ORC, 3
    """Steel, Thorium, Arcanite"""

    ORC_PILLAGE = "Pillage (Orc)", Wc3Race.ORC
    ORC_REINFORCED_DEFENSES = "Reinforced Defenses (Orc)", Wc3Race.ORC
    ORC_SPIKED_BARRICADES = "Spiked Barricades (Orc)", Wc3Race.ORC, 3
    """*, Improved, Advanced"""
    ORC_BACKPACK = "Backpack (Orc)", Wc3Race.ORC

    # Orc - Shop Items
    ORC_HEALING_SALVE = "Healing Salve (Voodoo Lounge)", Wc3Race.ORC
    ORC_LESSER_CLARITY_POTION = "Lesser Clarity Potion (Voodoo Lounge)", Wc3Race.ORC
    ORC_ORB_OF_LIGHTNING = "Orb of Lightning (Voodoo Lounge)", Wc3Race.ORC
    ORC_POTION_OF_HEALING = "Potion of Healing (Voodoo Lounge)", Wc3Race.ORC
    ORC_POTION_OF_MANA = "Potion of Mana (Voodoo Lounge)", Wc3Race.ORC
    ORC_SCROLL_OF_SPEED = "Scroll of Speed (Voodoo Lounge)", Wc3Race.ORC
    ORC_SCROLL_OF_TOWN_PORTAL = "Scroll of Town Portal (Voodoo Lounge)", Wc3Race.ORC
    ORC_TINY_GREAT_HALL = "Tiny Great Hall (Voodoo Lounge)", Wc3Race.ORC

    # Undead - Units
    ACOLYTE = "Acolyte", Wc3Race.UNDEAD
    GHOUL = "Ghoul", Wc3Race.UNDEAD
    CRYPT_FIEND = "Crypt Fiend", Wc3Race.UNDEAD
    GARGOYLE = "Gargoyle", Wc3Race.UNDEAD
    MEAT_WAGON = "Meat Wagon", Wc3Race.UNDEAD
    ABOMINATION = "Abomination", Wc3Race.UNDEAD
    OBSIDIAN_STATUE = "Obsidian Statue", Wc3Race.UNDEAD
    NECROMANCER = "Necromancer", Wc3Race.UNDEAD
    BANSHEE = "Banshee", Wc3Race.UNDEAD
    FROST_WYRM = "Frost Wyrm", Wc3Race.UNDEAD

    # Undead - Buildings
    SPIRIT_TOWER = "Spirit Tower", Wc3Race.UNDEAD
    NERUBIAN_TOWER = "Nerubian Tower", Wc3Race.UNDEAD
    TOMB_OF_RELICS = "Tomb of Relics", Wc3Race.UNDEAD

    # Undead - Heroes
    UNDEAD_ARTHAS_LEVEL = "Undead Arthas Level", Wc3Race.UNDEAD, 8
    """UD1; starting level: 1; cap: 2"""
    KEL_THUZAD_LEVEL = "Kel'Thuzad Level", Wc3Race.UNDEAD, 3
    """UD6; starting level: 5; cap: 7"""
    SYLVANAS_LEVEL = "Sylvanas Level", Wc3Race.UNDEAD, 6
    """UDx1; starting level: 2; cap: 4"""
    VARIMATHRAS_LEVEL = "Varimathras Level", Wc3Race.UNDEAD, 2
    """UDx5; starting level: 5; cap: 8"""
    ANUB_ARAK_LEVEL = "Anub'arak Level", Wc3Race.UNDEAD, 5
    """UDx4; starting level: 3; cap: 5"""
    ARTHAS_UNLEVEL = "Arthas Unlevel", Wc3Race.UNDEAD, 7
    """UDx01 has cap 10; UDx07c sets cap to 3"""

    # Undead - Upgrades
    GHOUL_CANNIBALIZE = "Cannibalize (Ghoul)", Wc3Race.UNDEAD
    GHOUL_FRENZY = "Ghoul Frenzy (Ghoul)", Wc3Race.UNDEAD
    CRYPT_FIEND_WEB = "Web (Crypt Fiend)", Wc3Race.UNDEAD
    CRYPT_FIEND_BURROW = "Burrow (Crypt Fiend)", Wc3Race.UNDEAD
    GARGOYLE_STONE_FORM = "Stone Form (Gargoyle)", Wc3Race.UNDEAD
    MEAT_WAGON_DISEASE_CLOUD = "Disease Cloud (Meat Wagon)", Wc3Race.UNDEAD
    MEAT_WAGON_EXHUME_CORPSES = "Exhume Corpses (Meat Wagon)", Wc3Race.UNDEAD
    OBSIDIAN_STATUE_DESTROYER_FORM = "Destroyer Form (Obsidian Statue)", Wc3Race.UNDEAD
    NECROMANCER_SKELETAL_LONGEVITY = "Skeletal Longevity (Necromancer)", Wc3Race.UNDEAD
    NECROMANCER_SKELETAL_MASTERY = "Skeletal Mastery (Necromancer)", Wc3Race.UNDEAD
    FROST_WYRM_FREEZING_BREATH = "Freezing Breath (Frost Wyrm)", Wc3Race.UNDEAD

    NECROMANCER_TRAINING = "Necromancer Training (Necromancer)", Wc3Race.UNDEAD, 2
    BANSHEE_TRAINING = "Banshee Training (Banshee)", Wc3Race.UNDEAD, 2

    UNDEAD_UNHOLY_STRENGTH = "Progressive Unholy Strength (Undead Upgrade)", Wc3Race.UNDEAD, 3
    """*, Improved, Advanced"""
    UNDEAD_CREATURE_STRENGTH = "Progressive Creature Strength (Undead Upgrade)", Wc3Race.UNDEAD, 3
    """*, Improved, Advanced"""
    UNDEAD_UNHOLY_ARMOR = "Progressive Unholy Armor (Undead Upgrade)", Wc3Race.UNDEAD, 3
    """*, Improved, Advanced"""
    UNDEAD_CREATURE_CARAPACE = "Progressive Creature Carapace (Undead Upgrade)", Wc3Race.UNDEAD, 3
    """*, Improved, Advanced"""

    UNDEAD_BACKPACK = "Backpack (Undead)", Wc3Race.UNDEAD

    # Undead - Shop Items
    UNDEAD_DUST_OF_APPEARANCE = "Dust of Appearance (Tomb of Relics)", Wc3Race.UNDEAD
    UNDEAD_ORB_OF_CORRUPTION = "Orb of Corruption (Tomb of Relics)", Wc3Race.UNDEAD
    UNDEAD_POTION_OF_HEALING = "Potion of Healing (Tomb of Relics)", Wc3Race.UNDEAD
    UNDEAD_POTION_OF_MANA = "Potion of Mana (Tomb of Relics)", Wc3Race.UNDEAD
    UNDEAD_ROD_OF_NECROMANCY = "Rod of Necromancy (Tomb of Relics)", Wc3Race.UNDEAD
    UNDEAD_SACRIFICIAL_SKULL = "Sacrificial Skull (Tomb of Relics)", Wc3Race.UNDEAD
    UNDEAD_SCROLL_OF_TOWN_PORTAL = "Scroll of Town Portal (Tomb of Relics)", Wc3Race.UNDEAD
    # melee only:
    # UNDEAD_RITUAL_DAGGER = "Ritual Dagger (Tomb of Relics)"
    # UNDEAD_WAND_OF_NEGATION = "Wand of Negation (Tomb of Relics)"

    # Night Elf - Units
    WISP = "Wisp", Wc3Race.NIGHT_ELF
    ARCHER = "Archer", Wc3Race.NIGHT_ELF
    HUNTRESS = "Huntress", Wc3Race.NIGHT_ELF
    GLAIVE_THROWER = "Glaive Thrower", Wc3Race.NIGHT_ELF
    DRYAD = "Dryad", Wc3Race.NIGHT_ELF
    DRUID_OF_THE_CLAW = "Druid of the Claw", Wc3Race.NIGHT_ELF
    MOUNTAIN_GIANT = "Mountain Giant", Wc3Race.NIGHT_ELF
    DRUID_OF_THE_TALON = "Druid of the Talon", Wc3Race.NIGHT_ELF
    HIPPOGRYPH = "Hippogryph", Wc3Race.NIGHT_ELF
    FAERIE_DRAGON = "Faerie Dragon", Wc3Race.NIGHT_ELF
    CHIMAERA = "Chimaera", Wc3Race.NIGHT_ELF

    # Night Elf - Buildings
    ANCIENT_PROTECTOR = "Ancient Protector", Wc3Race.NIGHT_ELF
    ANCIENT_OF_WONDERS = "Ancient of Wonders", Wc3Race.NIGHT_ELF

    # Night Elf - Heroes
    TYRANDE_LEVEL = "Tyrande Level", Wc3Race.NIGHT_ELF, 8
    FURION_LEVEL = "Furion Level", Wc3Race.NIGHT_ELF, 8
    ILLIDAN_LEVEL = "Illidan Level", Wc3Race.NIGHT_ELF, 8
    MAIEV_LEVEL = "Maiev Level", Wc3Race.NIGHT_ELF, 8

    # Night Elf - Upgrades
    ARCHER_IMPROVED_BOWS = "Improved Bows (Archer)", Wc3Race.NIGHT_ELF
    ARCHER_MARKSMANSHIP = "Marksmanship (Archer)", Wc3Race.NIGHT_ELF
    HUNTRESS_SENTINEL = "Sentinel (Huntress)", Wc3Race.NIGHT_ELF
    HUNTRESS_MOON_GLAIVE = "Moon Glaive (Huntress)", Wc3Race.NIGHT_ELF
    GLAIVE_THROWERR_VORPAL_BLADES = "Vorpal Blades (Glaive Thrower)", Wc3Race.NIGHT_ELF
    DRYAD_ABOLISH_MAGIC = "Abolish Magic (Dryad)", Wc3Race.NIGHT_ELF
    DRUID_OF_THE_CLAW_MARK_OF_THE_CLAW = "Mark of the Claw (Druid of the Claw)", Wc3Race.NIGHT_ELF
    MOUNTAIN_GIANT_RESISTANT_SKIN = "Resistant Skin (Mountain Giant)", Wc3Race.NIGHT_ELF
    MOUNTAIN_GIANT_HARDENED_SKIN = "Hardened Skin (Mountain Giant)", Wc3Race.NIGHT_ELF
    DRUID_OF_THE_TALON_MARK_OF_THE_TALON = "Mark of the Talon (Druid of the Talon)", Wc3Race.NIGHT_ELF
    HIPPOGRYPH_TAMING = "Hippogryph Taming (Hippogryph)", Wc3Race.NIGHT_ELF
    CHIMAERA_CORROSIVE_BREATH = "Corrosive Breath (Chimaera)", Wc3Race.NIGHT_ELF

    DRUID_OF_THE_CLAW_TRAINING = "Druid of the Claw Training (Druid of the Claw)", Wc3Race.NIGHT_ELF, 2
    DRUID_OF_THE_TALON_TRAINING = "Druid of the Talon Training (Druid of the Talon)", Wc3Race.NIGHT_ELF, 2

    NELF_STRENGTH_OF_THE_MOON = "Progressive Strength of the Moon (Night Elf Upgrade)", Wc3Race.NIGHT_ELF, 3
    """*, Improved, Advanced"""
    NELF_STRENGTH_OF_THE_WILD = "Progressive Strength of the Wild (Night Elf Upgrade)", Wc3Race.NIGHT_ELF, 3
    """*, Improved, Advanced"""
    NELF_MOON_ARMOR = "Progressive Moon Armor (Night Elf Upgrade)", Wc3Race.NIGHT_ELF, 3
    """*, Improved, Advanced"""
    NELF_MOON_HIDES = "Progressive Hides (Night Elf Upgrade)", Wc3Race.NIGHT_ELF, 3
    """*, Improved, Advanced"""

    NELF_ULTRAVISION = "Ultravision (Night Elf)", Wc3Race.NIGHT_ELF
    NELF_NATURES_BLESSING = "Nature's Blessing (Night Elf)", Wc3Race.NIGHT_ELF
    NELF_WELLSPRING = "Wellspring (Night Elf)", Wc3Race.NIGHT_ELF
    NELF_BACKPACK = "Backpack (Night Elf)", Wc3Race.NIGHT_ELF

    # Night Elf - Shop Items
    NELF_ANTI_MAGIC_POTION = "Anti-Magic Potion (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_DUST_OF_APPERANCE = "Dust of Appearance (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_LESSER_CLARITY_POTION = "Lesser Clarity Potion (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_MOONSTONE = "Moonstone (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_ORB_OF_VENOM = "Orb of Venom (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_POTION_OF_HEALING = "Potion of Healing (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_POTION_OF_MANA = "Potion of Mana (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_SCROLL_OF_TOWN_PORTAL = "Scroll of Town Portal (Ancient of Wonders)", Wc3Race.NIGHT_ELF
    NELF_STAFF_OF_PRESERVATION = "Staff of Preservation (Ancient of Wonders)", Wc3Race.NIGHT_ELF

    # Blood Elf - Units
    BLOOD_ELF_ENGINEER = "Blood Elf Engineer", Wc3Race.NAGA
    BLOOD_ELF_SWORDSMAN = "Blood Elf Swordsman", Wc3Race.NAGA
    BLOOD_ELF_ARCHER = "Blood Elf Archer", Wc3Race.NAGA

    # Blood Elf - Heroes
    KAEL_THAS_LEVEL = "Kael'Thas Level", Wc3Race.NAGA
    CHEN_STORMSTOUT_LEVEL = "Chen Stormstout Level", Wc3Race.NAGA

    # Naga - Units
    MUR_GUL_SLAVE = "Mur'gul Slave", Wc3Race.NAGA
    MUR_GUL_REAVER = "Mur'gul Reaver", Wc3Race.NAGA
    NAGA_MYRMIDON = "Naga Myrmidon", Wc3Race.NAGA
    SNAP_DRAGON = "Snap Dragon", Wc3Race.NAGA
    DRAGON_TURTLE = "Dragon Turtle", Wc3Race.NAGA
    NAGA_SIREN = "Naga Siren", Wc3Race.NAGA
    COUATL = "Couatl", Wc3Race.NAGA

    # Naga - Buildings
    TIDAL_GUARDIAN = "Tidal Guardian", Wc3Race.NAGA

    # Naga - Heroes
    LADY_VASHJ_LEVEL = "Lady Vashj Level", Wc3Race.NAGA

    # Naga - Upgrades
    NAGA_MYRMIDON_ENSNARE = "Ensnare (Naga Myrmidon)", Wc3Race.NAGA
    COUATL_ABOLISH_MAGIC = "Abolish Magic (Couatl)", Wc3Race.NAGA

    NAGA_SIREN_TRAINING = "Naga Siren Training (Naga Siren)", Wc3Race.NAGA, 2

    NAGA_BLADES = "Progressive Blades (Naga Upgrade)", Wc3Race.NAGA, 3
    """Coral, Chitinous, Razorspine"""
    NAGA_SCALES = "Progressive Scales (Naga Upgrade)", Wc3Race.NAGA, 3
    """Coral, Chitinous, Razorspine"""

    NAGA_SUBMERGE = "Submerge (Naga)", Wc3Race.NAGA

    # Mercenaries

    # Items
    RING_OF_PROTECTION_1 = "Ring of Protection +1", Wc3Race.NONE, 1
    TOME_OF_STRENGTH = "Tome of Strength", Wc3Race.NONE, 1
    CLAWS_OF_ATTACK_3 = "Claws of Attack +3", Wc3Race.NONE, 1
    GAUNTLETS_OF_OGRE_STRENGTH_3 = "Gauntlets of Ogre Strength +3", Wc3Race.NONE, 3
    BRACER_OF_AGILITY_1 = "Bracer of Agility +1", Wc3Race.NONE, 1
    MAUL_OF_STRENGTH_1 = "Maul of Strength +1", Wc3Race.NONE, 1
    MANTLE_OF_INTELLIGENCE_3 = "Mantle of Intelligence +3", Wc3Race.NONE, 1
    RING_OF_PROTECTION_2 = "Ring of Protection +2", Wc3Race.NONE, 1
    CLAWS_OF_ATTACK_6 = "Claws of Attack +6", Wc3Race.NONE, 1
    RING_OF_SUPERIORITY = "Ring of Superiority", Wc3Race.NONE, 1
    PERIAPT_OF_VITALITY = "Periapt of Vitality", Wc3Race.NONE, 2
    MEDALLION_OF_COURAGE = "Medallion of Courage", Wc3Race.NONE, 1
    BOOTS_OF_SPEED = "Boots of Speed", Wc3Race.NONE, 1
    TOME_OF_STRENGTH_2 = "Tome of Strength +2", Wc3Race.NONE, 1
    TALISMAN_OF_EVASION = "Talisman of Evasion", Wc3Race.NONE, 1
    ORB_OF_FROST = "Orb of Frost", Wc3Race.NONE, 1
    MANUAL_OF_HEALTH = "Manual of Health", Wc3Race.NONE, 1
    GOBLIN_NIGHT_SCOPE = "Goblin Night Scope", Wc3Race.NONE, 1
    CLAWS_OF_ATTACK_12 = "Claws of Attack +12", Wc3Race.NONE, 1
    SOBI_MASK = "Sobi Mask", Wc3Race.NONE, 1
    PENDANT_OF_MANA = "Pendant of Mana", Wc3Race.NONE, 1
    RING_OF_REGENERATION = "Ring of Regeneration", Wc3Race.NONE, 1
    RING_OF_PROTECTION_3 = "Ring of Protection +3", Wc3Race.NONE, 1
    TOME_OF_AGILITY = "Tome of Agility", Wc3Race.NONE, 1

item_name_to_data = {item.name: item for item in Wc3Item}

legacy_names_to_modern_names = {
    "Gyrocopter": Wc3Item.FLYING_MACHINE.item_name,
    "Steam Tank": Wc3Item.SIEGE_ENGINE.item_name,
    "Catapult": Wc3Item.DEMOLISHER.item_name,
    "Wyvern": Wc3Item.WIND_RIDER.item_name,
    "Ballista": Wc3Item.GLAIVE_THROWER.item_name,
    # Note(mm): Technically "Furion" is the legacy name, but I'm using it as the canonical name
    "Malfurion Level": Wc3Item.FURION_LEVEL.item_name,
}
