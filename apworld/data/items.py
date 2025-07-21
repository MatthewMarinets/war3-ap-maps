
import enum
import dataclasses
from .missions import Wc3Race, Wc3Campaign, Wc3Mission
from .game_ids import Tech, GameID
from .heroes import HeroSlot, ItemChannel


@dataclasses.dataclass
class Unit:
    game_id: Tech
    race: Wc3Race


@dataclasses.dataclass
class Building:
    game_id: Tech
    race: Wc3Race


@dataclasses.dataclass
class Level:
    slot: HeroSlot
    start_level: int = 1
    start_level_cap: int = 2


@dataclasses.dataclass
class Upgrade:
    game_id: Tech
    race: Wc3Race
    quantity: int = 1


@dataclasses.dataclass
class ShopItem:
    game_id: Tech
    race: Wc3Race


@dataclasses.dataclass
class PickupItem:
    quantity: int
    game_id: GameID
    channel: ItemChannel
    charged: bool = False


@dataclasses.dataclass
class QuestItem:
    vanilla_mission: Wc3Mission
    """The mission the player would require this quest item in vanilla"""


ItemType = Unit | Building | Level | Upgrade | ShopItem | PickupItem | QuestItem


class Wc3Item(enum.Enum):
    def __new__(cls, *args, **kwargs):
        value = len(cls.__members__) + 1
        obj = object.__new__(cls)
        obj._value_ = value
        return obj

    def __init__(self, id: int, name: str, type: ItemType) -> None:
        self.id = id
        self.item_name = name
        self.type = type
    
    # Human - Units
    PEASANT =           1,  "Peasant",          Unit(Tech.PEASANT, Wc3Race.HUMAN)
    FOOTMAN =           2,  "Footman",          Unit(Tech.FOOTMAN, Wc3Race.HUMAN)
    RIFLEMAN =          3,  "Rifleman",         Unit(Tech.RIFLEMAN, Wc3Race.HUMAN)
    KNIGHT =            4,  "Knight",           Unit(Tech.KNIGHT, Wc3Race.HUMAN)
    PRIEST =            5,  "Priest",           Unit(Tech.PRIEST, Wc3Race.HUMAN)
    SORCERESS =         6,  "Sorceress",        Unit(Tech.SORCERESS, Wc3Race.HUMAN)
    SPELL_BREAKER =     7,  "Spell Breaker",    Unit(Tech.SPELL_BREAKER, Wc3Race.HUMAN)
    MORTAR_TEAM =       8,  "Mortar Team",      Unit(Tech.MORTAR_TEAM, Wc3Race.HUMAN)
    FLYING_MACHINE =    9,  "Flying Machine",   Unit(Tech.FLYING_MACHINE, Wc3Race.HUMAN)
    SIEGE_ENGINE =      10, "Siege Engine",     Unit(Tech.SIEGE_ENGINE, Wc3Race.HUMAN)
    GRYPHON_RIDER =     11, "Gryphon Rider",    Unit(Tech.GRYPHON_RIDER, Wc3Race.HUMAN)
    DRAGONHAWK_RIDER =  12, "Dragonhawk Rider", Unit(Tech.DRAGONHAWK_RIDER, Wc3Race.HUMAN)

    # Human - Buildings
    GUARD_TOWER =       13, "Guard Tower",      Building(Tech.GUARD_TOWER, Wc3Race.HUMAN)
    CANNON_TOWER =      14, "Cannon Tower",     Building(Tech.CANNON_TOWER, Wc3Race.HUMAN)
    ARCANE_TOWER =      15, "Arcane Tower",     Building(Tech.ARCANE_TOWER, Wc3Race.HUMAN)

    # Human - Upgrades
    FOOTMAN_DEFEND =                   17, "Defend (Footman)",                      Upgrade(Tech.FOOTMAN_DEFEND, Wc3Race.HUMAN)
    RIFLEMAN_LONG_RIFLES =             18, "Long Rifles (Rifleman)",                Upgrade(Tech.RIFLEMAN_LONG_RIFLES, Wc3Race.HUMAN)
    KNIGHT_ANIMAL_WAR_TRAINING =       19, "Animal War Training (Human)",           Upgrade(Tech.KNIGHT_ANIMAL_WAR_TRAINING, Wc3Race.HUMAN)
    MORTAR_TEAM_FLARE =                20, "Flare (Mortar Team)",                   Upgrade(Tech.MORTAR_TEAM_FLARE, Wc3Race.HUMAN)
    MORTAR_TEAM_FRAGMENTATION_SHARDS = 21, "Fragmentation Shards (Mortar Team)",    Upgrade(Tech.MORTAR_TEAM_FRAGMENTATION_SHARDS, Wc3Race.HUMAN)
    FLYING_MACHINE_BOMBS =             22, "Flying Machine Bombs (Flying Machine)", Upgrade(Tech.FLYING_MACHINE_BOMBS, Wc3Race.HUMAN)
    FLYING_MACHINE_FLAK_CANNON =       23, "Flak Cannons (Flying Machine)",         Upgrade(Tech.FLYING_MACHINE_FLAK_CANNON, Wc3Race.HUMAN)
    SIEGE_ENGINE_BARRAGE =             24, "Barrage (Siege Engine)",                Upgrade(Tech.SIEGE_ENGINE_BARRAGE, Wc3Race.HUMAN)
    SPELL_BREAKER_CONTROL_MAGIC =      25, "Control Magic (Spell Breaker)",         Upgrade(Tech.SPELL_BREAKER_CONTROL_MAGIC, Wc3Race.HUMAN)
    GRYPHON_STORM_HAMMERS =            26, "Storm Hammers (Gryphon)",               Upgrade(Tech.GRYPHON_STORM_HAMMERS, Wc3Race.HUMAN)
    DRAGONHAWK_RIDER_CLOUD =           27, "Cloud (Dragonhawk Rider)",              Upgrade(Tech.DRAGONHAWK_RIDER_CLOUD, Wc3Race.HUMAN)

    PRIEST_TRAINING =                  28, "Priest Training (Priest)",              Upgrade(Tech.PRIEST_TRAINING, Wc3Race.HUMAN, 2),
    SORCERESS_TRAINING =               29, "Sorceress Training (Sorceress)",        Upgrade(Tech.SORCERESS_TRAINING, Wc3Race.HUMAN, 2),

    UPGRADE_HUMAN_FORGED_SWORDS =      30, "Progressive Forged Swords (Human)",     Upgrade(Tech.UPGRADE_HUMAN_FORGED_SWORDS, Wc3Race.HUMAN, 3)
    UPGRADE_HUMAN_GUNPOWDER =          31, "Progressive Gunpowder (Human)",         Upgrade(Tech.UPGRADE_HUMAN_GUNPOWDER, Wc3Race.HUMAN, 3)
    UPGRADE_HUMAN_PLATING =            32, "Progressive Plating (Human)",           Upgrade(Tech.UPGRADE_HUMAN_PLATING, Wc3Race.HUMAN, 3)
    UPGRADE_HUMAN_LEATHER_ARMOR =      33, "Progressive Leather Armor (Human)",     Upgrade(Tech.UPGRADE_HUMAN_LEATHER_ARMOR, Wc3Race.HUMAN, 3)
    UPGRADE_HUMAN_MASONRY =            34, "Progressive Masonry (Human)",           Upgrade(Tech.UPGRADE_HUMAN_MASONRY, Wc3Race.HUMAN, 3)

    HUMAN_LUMBER_HARVESTING =          35, "Lumber Harvesting (Human)",             Upgrade(Tech.HUMAN_LUMBER_HARVESTING, Wc3Race.HUMAN, 2)
    HUMAN_MAGIC_SENTRY =               36, "Magic Sentry (Human)",                  Upgrade(Tech.HUMAN_MAGIC_SENTRY, Wc3Race.HUMAN)
    HUMAN_BACKPACK =                   37, "Backpack (Human)",                      Upgrade(Tech.HUMAN_BACKPACK, Wc3Race.HUMAN)

    # Human - Shop Items
    SHOP_ITEM_SCROLL_OF_REGENERATION = 40, "Scroll of Regeneration (Arcane Vault)", ShopItem(Tech.SCROLL_OF_REGENERATION, Wc3Race.HUMAN_SHOP)
    SHOP_ITEM_IVORY_TOWER =            41, "Ivory Tower (Arcane Vault)",            ShopItem(Tech.IVORY_TOWER, Wc3Race.HUMAN_SHOP)
    SHOP_ITEM_MECHANICAL_CRITTER =     42, "Mechanical Critter (Arcane Vault)",     ShopItem(Tech.MECHANICAL_CRITTER, Wc3Race.HUMAN_SHOP)
    SHOP_ITEM_ORB_OF_FIRE =            43, "Orb of Fire (Arcane Vault)",            ShopItem(Tech.ORB_OF_FIRE, Wc3Race.HUMAN_SHOP)
    SHOP_ITEM_STAFF_OF_SANCTUARY =     44, "Staff of Sanctuary (Arcane Vault)",     ShopItem(Tech.STAFF_OF_SANCTUARY, Wc3Race.HUMAN_SHOP)

    # General Shop Items
    SHOP_ITEM_LESSER_CLARITY_POTION =  50, "Lesser Clarity Potion (Shops)",         ShopItem(Tech.LESSER_CLARITY_POTION, Wc3Race.HUMAN_SHOP|Wc3Race.ORC|Wc3Race.NIGHT_ELF)
    SHOP_ITEM_SCROLL_OF_TOWN_PORTAL =  51, "Scroll of Town Portal (Shops)",         ShopItem(Tech.SCROLL_OF_TOWN_PORTAL, Wc3Race.ALL_SHOPS)
    SHOP_ITEM_POTION_OF_HEALING =      52, "Potion of Healing (Shop)",              ShopItem(Tech.POTION_OF_HEALING, Wc3Race.ALL_SHOPS)
    SHOP_ITEM_POTION_OF_MANA =         53, "Potion of Mana (Shop)",                 ShopItem(Tech.POTION_OF_MANA, Wc3Race.ALL_SHOPS)
    SHOP_ITEM_DUST_OF_APPEARANCE =     54, "Dust of Appearance (Shop)",             ShopItem(Tech.DUST_OF_APPEARANCE, Wc3Race.UNDEAD|Wc3Race.NIGHT_ELF)

    # Orc - Units
    PEON =               100, "Peon",               Unit(Tech.PEON, Wc3Race.ORC)
    GRUNT =              101, "Grunt",              Unit(Tech.GRUNT, Wc3Race.ORC)
    TROLL_HEADHUNTER =   102, "Troll Headhunter",   Unit(Tech.TROLL_HEADHUNTER, Wc3Race.ORC)
    DEMOLISHER =         103, "Demolisher",         Unit(Tech.DEMOLISHER, Wc3Race.ORC)
    RAIDER =             104, "Raider",             Unit(Tech.RAIDER, Wc3Race.ORC)
    KODO_BEAST =          105, "Kodo Beast",        Unit(Tech.KODO_BEAST, Wc3Race.ORC)
    WIND_RIDER =         106, "Wind Rider",         Unit(Tech.WIND_RIDER, Wc3Race.ORC)
    TROLL_BATRIDER =     107, "Troll Batrider",     Unit(Tech.TROLL_BATRIDER, Wc3Race.ORC)
    SHAMAN =             108, "Shaman",             Unit(Tech.SHAMAN, Wc3Race.ORC)
    TROLL_WITCH_DOCTOR = 109, "TrollWitch Doctor",  Unit(Tech.TROLL_WITCH_DOCTOR, Wc3Race.ORC)
    SPIRIT_WALKER =      110, "Spirit Walker",      Unit(Tech.SPIRIT_WALKER, Wc3Race.ORC)
    TAUREN =             111, "Tauren",             Unit(Tech.TAUREN, Wc3Race.ORC)

    # Orc - Buildings
    WATCH_TOWER =        112, "Watch Tower",        Building(Tech.WATCH_TOWER, Wc3Race.ORC)

    # Orc - Upgrades
    GRUNT_BERSERKER_STRENGTH =      114, "Berserker Strength (Grunt)",           Upgrade(Tech.GRUNT_BERSERKER_STRENGTH, Wc3Race.ORC)
    HEADHUNTER_TROLL_REGENERATION = 115, "Troll Regeneration (Trolls)",          Upgrade(Tech.HEADHUNTER_TROLL_REGENERATION, Wc3Race.ORC)
    HEADHUNTER_BERSERKER =          116, "Berserker Upgrade (Troll Headhunter)", Upgrade(Tech.HEADHUNTER_BERSERKER, Wc3Race.ORC)
    DEMOLISHER_BURNING_OIL =        117, "Burning Oil (Demolisher)",             Upgrade(Tech.DEMOLISHER_BURNING_OIL, Wc3Race.ORC)
    RAIDER_ENSNARE =                118, "Ensnare (Raider)",                     Upgrade(Tech.RAIDER_ENSNARE, Wc3Race.ORC)
    KODO_BEAST_WAR_DRUMS =          119, "War Drums Damage (Kodo Beast)",        Upgrade(Tech.KODO_BEAST_WAR_DRUMS, Wc3Race.ORC)
    WIND_RIDER_ENVENOMED_SPEARS =   120, "Envenomed Spears (Wind Rider)",        Upgrade(Tech.WIND_RIDER_ENVENOMED_SPEARS, Wc3Race.ORC)
    BATRIDER_LIQUID_FIRE =          121, "Liquid Fire (Troll Batrider)",         Upgrade(Tech.BATRIDER_LIQUID_FIRE, Wc3Race.ORC)
    TAUREN_PULVERIZE =              122, "Pulverize (Tauren)",                   Upgrade(Tech.TAUREN_PULVERIZE, Wc3Race.ORC)

    SHAMAN_TRAINING =               123, "Shaman Training (Shaman)",               Upgrade(Tech.SHAMAN_TRAINING, Wc3Race.ORC, 2)
    WITCH_DOCTOR_TRAINING =         124, "Witch Doctor Training (Witch Doctor)",   Upgrade(Tech.WITCH_DOCTOR_TRAINING, Wc3Race.ORC, 2)
    SPIRIT_WALKER_TRAINING =        125, "Spirit Walker Training (Spirit Walker)", Upgrade(Tech.SPIRIT_WALKER_TRAINING, Wc3Race.ORC, 2)

    UPGRADE_ORC_MELEE_WEAPONS =     126, "Progressive Melee Weapons (Orc)",        Upgrade(Tech.UPGRADE_ORC_MELEE_WEAPONS, Wc3Race.ORC, 3)
    UPGRADE_ORC_RANGED_WEAPONS =    127, "Progressive Ranged Weapons (Orc)",       Upgrade(Tech.UPGRADE_ORC_RANGED_WEAPONS, Wc3Race.ORC, 3)
    UPGRADE_ORC_ARMOR =             128, "Progressive Armor (Orc)",                Upgrade(Tech.UPGRADE_ORC_ARMOR, Wc3Race.ORC, 3)

    ORC_PILLAGE =                   129, "Pillage (Orc)",                          Upgrade(Tech.ORC_PILLAGE, Wc3Race.ORC)
    ORC_REINFORCED_DEFENSES =       130, "Reinforced Defenses (Orc)",              Upgrade(Tech.ORC_REINFORCED_DEFENSES, Wc3Race.ORC)
    ORC_SPIKED_BARRICADES =         131, "Spiked Barricades (Orc)",                Upgrade(Tech.ORC_SPIKED_BARRICADES, Wc3Race.ORC, 3)
    ORC_BACKPACK =                  132, "Backpack (Orc)",                         Upgrade(Tech.ORC_BACKPACK, Wc3Race.ORC)

    # Orc - Shop Items
    SHOP_ITEM_HEALING_SALVE =       140, "Healing Salve (Voodoo Lounge)",    ShopItem(Tech.HEALING_SALVE, Wc3Race.ORC)
    SHOP_ITEM_ORB_OF_LIGHTNING =    141, "Orb of Lightning (Voodoo Lounge)", ShopItem(Tech.ORB_OF_LIGHTNING, Wc3Race.ORC)
    SHOP_ITEM_SCROLL_OF_SPEED =     142, "Scroll of Speed (Voodoo Lounge)",  ShopItem(Tech.SCROLL_OF_SPEED, Wc3Race.ORC)
    SHOP_ITEM_TINY_GREAT_HALL =     143, "Tiny Great Hall (Voodoo Lounge)",  ShopItem(Tech.TINY_GREAT_HALL, Wc3Race.ORC)

    # Undead - Units
    ACOLYTE =         200, "Acolyte",         Unit(Tech.ACOLYTE, Wc3Race.UNDEAD)
    GHOUL =           201, "Ghoul",           Unit(Tech.GHOUL, Wc3Race.UNDEAD)
    CRYPT_FIEND =     202, "Crypt Fiend",     Unit(Tech.CRYPT_FIEND, Wc3Race.UNDEAD)
    GARGOYLE =        203, "Gargoyle",        Unit(Tech.GARGOYLE, Wc3Race.UNDEAD)
    MEAT_WAGON =      204, "Meat Wagon",      Unit(Tech.MEAT_WAGON, Wc3Race.UNDEAD)
    ABOMINATION =     205, "Abomination",     Unit(Tech.ABOMINATION, Wc3Race.UNDEAD)
    OBSIDIAN_STATUE = 206, "Obsidian Statue", Unit(Tech.OBSIDIAN_STATUE, Wc3Race.UNDEAD)
    NECROMANCER =     207, "Necromancer",     Unit(Tech.NECROMANCER, Wc3Race.UNDEAD)
    BANSHEE =         208, "Banshee",         Unit(Tech.BANSHEE, Wc3Race.UNDEAD)
    SHADE =           209, "Shade",           Unit(Tech.SHADE, Wc3Race.UNDEAD)
    FROST_WYRM =      210, "Frost Wyrm",      Unit(Tech.FROST_WYRM, Wc3Race.UNDEAD)

    # Undead - Buildings
    SPIRIT_TOWER =    211, "Spirit Tower",    Building(Tech.SPIRIT_TOWER, Wc3Race.UNDEAD)
    NERUBIAN_TOWER =  212, "Nerubian Tower",  Building(Tech.NERUBIAN_TOWER, Wc3Race.UNDEAD)

    # Undead - Upgrades
    GHOUL_CANNIBALIZE =              213, "Cannibalize (Ghoul)",              Upgrade(Tech.GHOUL_CANNIBALIZE, Wc3Race.UNDEAD)
    GHOUL_FRENZY =                   214, "Ghoul Frenzy (Ghoul)",             Upgrade(Tech.GHOUL_FRENZY, Wc3Race.UNDEAD)
    CRYPT_FIEND_WEB =                215, "Web (Crypt Fiend)",                Upgrade(Tech.CRYPT_FIEND_WEB, Wc3Race.UNDEAD)
    CRYPT_FIEND_BURROW =             216, "Burrow (Crypt Fiend)",             Upgrade(Tech.CRYPT_FIEND_BURROW, Wc3Race.UNDEAD)
    GARGOYLE_STONE_FORM =            217, "Stone Form (Gargoyle)",            Upgrade(Tech.GARGOYLE_STONE_FORM, Wc3Race.UNDEAD)
    MEAT_WAGON_DISEASE_CLOUD =       218, "Disease Cloud (Meat Wagon)",       Upgrade(Tech.MEAT_WAGON_DISEASE_CLOUD, Wc3Race.UNDEAD)
    MEAT_WAGON_EXHUME_CORPSES =      219, "Exhume Corpses (Meat Wagon)",      Upgrade(Tech.MEAT_WAGON_EXHUME_CORPSES, Wc3Race.UNDEAD)
    OBSIDIAN_STATUE_DESTROYER_FORM = 220, "Destroyer Form (Obsidian Statue)", Upgrade(Tech.OBSIDIAN_STATUE_DESTROYER_FORM, Wc3Race.UNDEAD)
    NECROMANCER_SKELETAL_LONGEVITY = 221, "Skeletal Longevity (Necromancer)", Upgrade(Tech.NECROMANCER_SKELETAL_LONGEVITY, Wc3Race.UNDEAD)
    NECROMANCER_SKELETAL_MASTERY =   222, "Skeletal Mastery (Necromancer)",   Upgrade(Tech.NECROMANCER_SKELETAL_MASTERY, Wc3Race.UNDEAD)
    FROST_WYRM_FREEZING_BREATH =     223, "Freezing Breath (Frost Wyrm)",     Upgrade(Tech.FROST_WYRM_FREEZING_BREATH, Wc3Race.UNDEAD)

    NECROMANCER_TRAINING =           224, "Necromancer Training (Necromancer)", Upgrade(Tech.NECROMANCER_TRAINING, Wc3Race.UNDEAD, 2)
    BANSHEE_TRAINING =               225, "Banshee Training (Banshee)",         Upgrade(Tech.BANSHEE_TRAINING, Wc3Race.UNDEAD, 2)

    UNDEAD_UNHOLY_STRENGTH =    226, "Progressive Unholy Strength (Undead)",    Upgrade(Tech.UNDEAD_UNHOLY_STRENGTH, Wc3Race.UNDEAD, 3)
    UNDEAD_CREATURE_STRENGTH =  227, "Progressive Creature Strength (Undead)",  Upgrade(Tech.UNDEAD_CREATURE_STRENGTH, Wc3Race.UNDEAD, 3)
    UNDEAD_UNHOLY_ARMOR =       228, "Progressive Unholy Armor (Undead)",       Upgrade(Tech.UNDEAD_UNHOLY_ARMOR, Wc3Race.UNDEAD, 3)
    UNDEAD_CREATURE_CARAPACE =  229, "Progressive Creature Carapace (Undead)",  Upgrade(Tech.UNDEAD_CREATURE_CARAPACE, Wc3Race.UNDEAD, 3)

    UNDEAD_BACKPACK =           230, "Backpack (Undead)",                       Upgrade(Tech.UNDEAD_BACKPACK, Wc3Race.UNDEAD)

    # Undead - Shop Items
    SHOP_ITEM_ORB_OF_CORRUPTION =  240, "Orb of Corruption (Tomb of Relics)", ShopItem(Tech.ORB_OF_CORRUPTION, Wc3Race.UNDEAD)
    SHOP_ITEM_ROD_OF_NECROMANCY =  241, "Rod of Necromancy (Tomb of Relics)", ShopItem(Tech.ROD_OF_NECROMANCY, Wc3Race.UNDEAD)
    SHOP_ITEM_SACRIFICIAL_SKULL =  242, "Sacrificial Skull (Tomb of Relics)", ShopItem(Tech.SACRIFICIAL_SKULL, Wc3Race.UNDEAD)
    SHOP_ITEM_SCROLL_OF_HEALING =  243, "Scroll of Healing (Tomb of Relics)", ShopItem(Tech.SCROLL_OF_HEALING, Wc3Race.UNDEAD)
    # melee only:
    # SHOP_ITEM_RITUAL_DAGGER = _, "Ritual Dagger (Tomb of Relics)", ShopItem(Tech.RITUAL_DAGGER, Wc3Race.UNDEAD)
    # SHOP_ITEM_WAND_OF_NEGATION =  _, "Wand of Negation (Tomb of Relics)", ShopItem(Tech.WAND_OF_NEGATION, Wc3Race.UNDEAD)

    # Night Elf - Units
    WISP =               300, "Wisp",               Unit(Tech.WISP, Wc3Race.NIGHT_ELF)
    ARCHER =             301, "Archer",             Unit(Tech.ARCHER, Wc3Race.NIGHT_ELF)
    HUNTRESS =           302, "Huntress",           Unit(Tech.HUNTRESS, Wc3Race.NIGHT_ELF)
    GLAIVE_THROWER =     303, "Glaive Thrower",     Unit(Tech.GLAIVE_THROWER, Wc3Race.NIGHT_ELF)
    DRYAD =              304, "Dryad",              Unit(Tech.DRYAD, Wc3Race.NIGHT_ELF)
    DRUID_OF_THE_CLAW =  305, "Druid of the Claw",  Unit(Tech.DRUID_OF_THE_CLAW, Wc3Race.NIGHT_ELF)
    MOUNTAIN_GIANT =     306, "Mountain Giant",     Unit(Tech.MOUNTAIN_GIANT, Wc3Race.NIGHT_ELF)
    DRUID_OF_THE_TALON = 307, "Druid of the Talon", Unit(Tech.DRUID_OF_THE_TALON, Wc3Race.NIGHT_ELF)
    HIPPOGRYPH =         308, "Hippogryph",         Unit(Tech.HIPPOGRYPH, Wc3Race.NIGHT_ELF)
    FAERIE_DRAGON =      309, "Faerie Dragon",      Unit(Tech.FAERIE_DRAGON, Wc3Race.NIGHT_ELF)
    CHIMAERA =           310, "Chimaera",           Unit(Tech.CHIMAERA, Wc3Race.NIGHT_ELF)

    # Night Elf - Buildings
    ANCIENT_PROTECTOR =  311, "Ancient Protector",  Building(Tech.ANCIENT_PROTECTOR, Wc3Race.NIGHT_ELF)

    # Night Elf - Upgrades
    ARCHER_IMPROVED_BOWS =                 313, "Improved Bows (Archer)",               Upgrade(Tech.ARCHER_IMPROVED_BOWS, Wc3Race.NIGHT_ELF)
    ARCHER_MARKSMANSHIP =                  314, "Marksmanship (Archer)",                Upgrade(Tech.ARCHER_MARKSMANSHIP, Wc3Race.NIGHT_ELF)
    HUNTRESS_SENTINEL =                    315, "Sentinel (Huntress)",                  Upgrade(Tech.HUNTRESS_SENTINEL, Wc3Race.NIGHT_ELF)
    HUNTRESS_MOON_GLAIVE =                 316, "Moon Glaive (Huntress)",               Upgrade(Tech.HUNTRESS_MOON_GLAIVE, Wc3Race.NIGHT_ELF)
    GLAIVE_THROWER_VORPAL_BLADES =         317, "Vorpal Blades (Glaive Thrower)",       Upgrade(Tech.GLAIVE_THROWER_VORPAL_BLADES, Wc3Race.NIGHT_ELF)
    DRYAD_ABOLISH_MAGIC =                  318, "Abolish Magic (Dryad)",                Upgrade(Tech.DRYAD_ABOLISH_MAGIC, Wc3Race.NIGHT_ELF)
    DRUID_OF_THE_CLAW_MARK_OF_THE_CLAW =   319, "Mark of the Claw (Druid of the Claw)", Upgrade(Tech.DRUID_OF_THE_CLAW_MARK_OF_THE_CLAW, Wc3Race.NIGHT_ELF)
    MOUNTAIN_GIANT_RESISTANT_SKIN =        320, "Resistant Skin (Mountain Giant)",      Upgrade(Tech.MOUNTAIN_GIANT_RESISTANT_SKIN, Wc3Race.NIGHT_ELF)
    MOUNTAIN_GIANT_HARDENED_SKIN =         321, "Hardened Skin (Mountain Giant)",       Upgrade(Tech.MOUNTAIN_GIANT_HARDENED_SKIN, Wc3Race.NIGHT_ELF)
    DRUID_OF_THE_TALON_MARK_OF_THE_TALON = 322, "Mark of the Talon (Druid of the Talon)", Upgrade(Tech.DRUID_OF_THE_TALON_MARK_OF_THE_TALON, Wc3Race.NIGHT_ELF)
    HIPPOGRYPH_TAMING =                    323, "Hippogryph Taming (Hippogryph)",       Upgrade(Tech.HIPPOGRYPH_TAMING, Wc3Race.NIGHT_ELF)
    CHIMAERA_CORROSIVE_BREATH =            324, "Corrosive Breath (Chimaera)",          Upgrade(Tech.CHIMAERA_CORROSIVE_BREATH, Wc3Race.NIGHT_ELF)

    DRUID_OF_THE_CLAW_TRAINING =  (
        325, "Druid of the Claw Training (Druid of the Claw)",                          Upgrade(Tech.DRUID_OF_THE_CLAW_TRAINING, Wc3Race.NIGHT_ELF, 2)
    )
    DRUID_OF_THE_TALON_TRAINING = (
        326, "Druid of the Talon Training (Druid of the Talon)",                        Upgrade(Tech.DRUID_OF_THE_TALON_TRAINING, Wc3Race.NIGHT_ELF, 2)
    )

    NELF_STRENGTH_OF_THE_MOON = 327, "Progressive Strength of the Moon (Night Elf)",    Upgrade(Tech.NELF_STRENGTH_OF_THE_MOON, Wc3Race.NIGHT_ELF, 3)
    NELF_STRENGTH_OF_THE_WILD = 328, "Progressive Strength of the Wild (Night Elf)",    Upgrade(Tech.NELF_STRENGTH_OF_THE_WILD, Wc3Race.NIGHT_ELF, 3)
    NELF_MOON_ARMOR =           329, "Progressive Moon Armor (Night Elf)",              Upgrade(Tech.NELF_MOON_ARMOR, Wc3Race.NIGHT_ELF, 3)
    NELF_REINFORCED_HIDES =     330, "Progressive Reinforced Hides (Night Elf)",        Upgrade(Tech.NELF_REINFORCED_HIDES, Wc3Race.NIGHT_ELF, 3)

    NELF_ULTRAVISION =          331, "Ultravision (Night Elf)",                         Upgrade(Tech.NELF_ULTRAVISION, Wc3Race.NIGHT_ELF)
    NELF_NATURES_BLESSING =     332, "Nature's Blessing (Night Elf)",                   Upgrade(Tech.NELF_NATURES_BLESSING, Wc3Race.NIGHT_ELF)
    NELF_WELLSPRING =           333, "Wellspring (Night Elf)",                          Upgrade(Tech.NELF_WELLSPRING, Wc3Race.NIGHT_ELF)
    NELF_BACKPACK =             334, "Backpack (Night Elf)",                            Upgrade(Tech.NELF_BACKPACK, Wc3Race.NIGHT_ELF)

    # Night Elf - Shop Items
    SHOP_ITEM_ANTI_MAGIC_POTION =     340, "Anti-Magic Potion (Ancient of Wonders)",     ShopItem(Tech.ANTI_MAGIC_POTION, Wc3Race.NIGHT_ELF)
    SHOP_ITEM_MOONSTONE =             342, "Moonstone (Ancient of Wonders)",             ShopItem(Tech.MOONSTONE, Wc3Race.NIGHT_ELF)
    SHOP_ITEM_ORB_OF_VENOM =          343, "Orb of Venom (Ancient of Wonders)",          ShopItem(Tech.ORB_OF_VENOM, Wc3Race.NIGHT_ELF)
    SHOP_ITEM_STAFF_OF_PRESERVATION = 344, "Staff of Preservation (Ancient of Wonders)", ShopItem(Tech.STAFF_OF_PRESERVATION, Wc3Race.NIGHT_ELF)

    # Blood Elf - Units
    BLOOD_ELF_WORKER =    400, "Blood Elf Worker",      Unit(Tech.BLOOD_ELF_WORKER, Wc3Race.BLOOD_ELF)
    BLOOD_ELF_SWORDSMAN = 401, "Blood Elf Swordsman",   Unit(Tech.BLOOD_ELF_SWORDSMAN, Wc3Race.BLOOD_ELF)
    BLOOD_ELF_ARCHER =    402, "Blood Elf Archer",      Unit(Tech.BLOOD_ELF_ARCHER, Wc3Race.BLOOD_ELF)
    
    # Naga - Units
    MUR_GUL_SLAVE =  403, "Mur'gul Slave",  Unit(Tech.MUR_GUL_SLAVE, Wc3Race.NAGA)
    MUR_GUL_REAVER = 404, "Mur'gul Reaver", Unit(Tech.MUR_GUL_REAVER, Wc3Race.NAGA)
    NAGA_MYRMIDON =  405, "Naga Myrmidon",  Unit(Tech.NAGA_MYRMIDON, Wc3Race.NAGA)
    SNAP_DRAGON =    406, "Snap Dragon",    Unit(Tech.SNAP_DRAGON, Wc3Race.NAGA)
    DRAGON_TURTLE =  407, "Dragon Turtle",  Unit(Tech.DRAGON_TURTLE, Wc3Race.NAGA)
    NAGA_SIREN =     408, "Naga Siren",     Unit(Tech.NAGA_SIREN, Wc3Race.NAGA)
    COUATL =         409, "Couatl",         Unit(Tech.COUATL, Wc3Race.NAGA)

    # Naga - Buildings
    TIDAL_GUARDIAN = 410, "Tidal Guardian", Building(Tech.TIDAL_GUARDIAN, Wc3Race.NAGA)

    # Naga - Upgrades
    NAGA_MYRMIDON_ENSNARE = 411, "Ensnare (Naga Myrmidon)",          Upgrade(Tech.NAGA_MYRMIDON_ENSNARE, Wc3Race.NAGA)
    COUATL_ABOLISH_MAGIC =  412, "Abolish Magic (Couatl)",           Upgrade(Tech.COUATL_ABOLISH_MAGIC, Wc3Race.NAGA)
    NAGA_SUBMERGE =         413, "Submerge (Naga)",                  Upgrade(Tech.NAGA_SUBMERGE, Wc3Race.NAGA)

    NAGA_SIREN_TRAINING =   414, "Naga Siren Training (Naga Siren)", Upgrade(Tech.NAGA_SIREN_TRAINING, Wc3Race.NAGA, 2)
    NAGA_BLADES =           415, "Progressive Blades (Naga)",        Upgrade(Tech.NAGA_BLADES, Wc3Race.NAGA, 3)
    NAGA_SCALES =           416, "Progressive Scales (Naga)",        Upgrade(Tech.NAGA_SCALES, Wc3Race.NAGA, 3)

    # Quest Items
    GERARDS_LEDGER =            800, "Gerard's Ledger",                 QuestItem(Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD)
    HEART_OF_SEARINOX =         801, "Heart of Searinox",               QuestItem(Wc3Mission.H2_BLACKROCK_AND_ROLL)
    URN_OF_KING_TERENAS =       802, "Urn of King Terenas",             QuestItem(Wc3Mission.U2_DIGGING_UP_THE_DEAD)
    KEY_OF_THE_THREE_MOONS_1 =  803, "Key of the Three Moons Part 1",   QuestItem(Wc3Mission.U4_KEY_OF_THE_THREE_MOONS)
    KEY_OF_THE_THREE_MOONS_2 =  804, "Key of the Three Moons Part 2",   QuestItem(Wc3Mission.U4_KEY_OF_THE_THREE_MOONS)
    KEY_OF_THE_THREE_MOONS_3 =  805, "Key of the Three Moons Part 3",   QuestItem(Wc3Mission.U4_KEY_OF_THE_THREE_MOONS)
    HEART_OF_ASZUNE =           806, "Heart of Aszune",                 QuestItem(Wc3Mission.O7_THE_ORACLE)
    ENCHANTED_GEMSTONE =        807, "Enchanted Gemstone",              QuestItem(Wc3Mission.O7_THE_ORACLE)
    SOUL_GEM =                  808, "Soul Gem",                        QuestItem(Wc3Mission.O8_BY_DEMONS_BE_DRIVEN)
    EMPTY_VIAL =                809, "Empty Vial",                      QuestItem(Wc3Mission.N5_BROTHERS_IN_BLOOD)
    FULL_VIAL =                 810, "Full Vial",                       QuestItem(Wc3Mission.N5_BROTHERS_IN_BLOOD)
    SKELETAL_ARTIFACT =         811, "Skeletal Artifact",               QuestItem(Wc3Mission.NX2_THE_BROKEN_ISLES)

    # Heroes
    ARTHAS_LEVEL =        1000, "Arthas Level",         Level(HeroSlot.PALADIN_ARTHAS, 1, 2)
    JAINA_LEVEL =         1001, "Jaina Level",          Level(HeroSlot.JAINA, 3, 4)
    MURADIN_LEVEL =       1002, "Muradin Level",        Level(HeroSlot.MURADIN_BRONZEBEARD, 5, 7)
    THRALL_LEVEL =        1003, "Thrall Level",         Level(HeroSlot.THRALL, 1, 2)
    GROM_LEVEL =          1004, "Grom Level",           Level(HeroSlot.GROM_HELLSCREAM, 4, 6)
    CAIRNE_LEVEL =        1005, "Cairne Level",         Level(HeroSlot.CAIRNE_BLOODHOOF, 6, 7)
    FALLEN_ARTHAS_LEVEL = 1006, "Fallen Arthas Level",  Level(HeroSlot.DEATH_KNIGHT_ARTHAS, 1, 2)
    KEL_THUZAD_LEVEL =    1007, "Kel'Thuzad Level",     Level(HeroSlot.KEL_THUZAD, 5, 7)
    SYLVANAS_LEVEL =      1008, "Sylvanas Level",       Level(HeroSlot.SYLVANAS, 2, 4)
    VARIMATHRAS_LEVEL =   1009, "Varimathras Level",    Level(HeroSlot.VARIMATHRAS, 5, 8)
    ANUB_ARAK_LEVEL =     1010, "Anub'arak Level",      Level(HeroSlot.ANUB_ARAK, 3, 5)
    TYRANDE_LEVEL =       1011, "Tyrande Level",        Level(HeroSlot.TYRANDE, 1, 2)
    FURION_LEVEL =        1012, "Furion Level",         Level(HeroSlot.FURION, 4, 5)
    MAIEV_LEVEL =         1013, "Maiev Level",          Level(HeroSlot.MAIEV, 2, 3)
    KAEL_LEVEL =          1014, "Kael Level",           Level(HeroSlot.KAEL, 2, 3)
    LADY_VASHJ_LEVEL =    1015, "Lady Vashj Level",     Level(HeroSlot.LADY_VASHJ, 2, 3)
    # todo: Unlevel mechanics?
    # ARTHAS_TFT_LEVEL =    1011, "Arthas (TFT) Level", Level(HeroSlot.ARTHAS_TFT, 10, 10)
    # ILLIDAN_LEVEL =       1014, "Illidan Level",    Level(HeroSlot.ILLIDAN, 7, 10)
    # TYRANDE_TFT_LEVEL = _, "Tyrande (TFT) Level",   Level(HeroSlot.TYRANDE_TFT, 10, 10)
    # MALFURION_LEVEL =   _, "Malfurion Level",       Level(HeroSlot.MALFURION, 10, 10)
    # ILLIDAN_TFT_LEVEL = _, "Illidan (TFT) Level",   Level(HeroSlot.DEMON_ILLIDAN, 10, 10)

    # Human Campaign Items
    H_BOOTS_OF_SPEED =               2100, "Boots of Speed (Human)",                PickupItem(1, GameID.BOOTS_OF_SPEED, ItemChannel.HUMAN)
    H_BRACER_OF_AGILITY =            2101, "Bracer of Agility +1 (Human)",          PickupItem(1, GameID.BRACER_OF_AGILITY, ItemChannel.HUMAN)
    H_CLAWS_OF_ATTACK_3 =            2102, "Claws of Attack +3 (Human)",            PickupItem(1, GameID.CLAWS_OF_ATTACK_3, ItemChannel.HUMAN)
    H_CLAWS_OF_ATTACK_6 =            2103, "Claws of Attack +6 (Human)",            PickupItem(1, GameID.CLAWS_OF_ATTACK_6, ItemChannel.HUMAN)
    H_CLAWS_OF_ATTACK_12 =           2104, "Claws of Attack +12 (Human)",           PickupItem(1, GameID.CLAWS_OF_ATTACK_12, ItemChannel.HUMAN)
    H_GAUNTLETS_OF_OGRE_STRENGTH_3 = 2105, "Gauntlets of Ogre Strength +3 (Human)", PickupItem(3, GameID.GAUNTLETS_OF_OGRE_STRENGTH_3, ItemChannel.HUMAN)
    H_GOBLIN_NIGHT_SCOPE =           2106, "Goblin Night Scope (Human)",            PickupItem(1, GameID.GOBLIN_NIGHT_SCOPE, ItemChannel.HUMAN)
    H_MANTLE_OF_INTELLIGENCE_3 =     2107, "Mantle of Intelligence +3 (Human)",     PickupItem(1, GameID.MANTLE_OF_INTELLIGENCE_3, ItemChannel.HUMAN)
    H_MAUL_OF_STRENGTH =             2108, "Maul of Strength +1 (Human)",           PickupItem(1, GameID.MAUL_OF_STRENGTH, ItemChannel.HUMAN)
    H_MEDALLION_OF_COURAGE =         2109, "Medallion of Courage (Human)",          PickupItem(1, GameID.MEDALLION_OF_COURAGE, ItemChannel.HUMAN)
    H_ORB_OF_FROST =                 2110, "Orb of Frost (Human)",                  PickupItem(1, GameID.ORB_OF_FROST, ItemChannel.HUMAN)
    H_ORB_OF_FIRE =                  2111, "Orb of Fire (Human)",                   PickupItem(1, GameID.ORB_OF_FIRE, ItemChannel.HUMAN)
    H_PENDANT_OF_MANA =              2112, "Pendant of Mana (Human)",               PickupItem(1, GameID.PENDANT_OF_MANA, ItemChannel.HUMAN)
    H_PERIAPT_OF_VITALITY =          2113, "Periapt of Vitality (Human)",           PickupItem(2, GameID.PERIAPT_OF_VITALITY, ItemChannel.HUMAN)
    H_RING_OF_PROTECTION_1 =         2114, "Ring of Protection +1 (Human)",         PickupItem(1, GameID.RING_OF_PROTECTION_1, ItemChannel.HUMAN)
    H_RING_OF_PROTECTION_2 =         2115, "Ring of Protection +2 (Human)",         PickupItem(1, GameID.RING_OF_PROTECTION_2, ItemChannel.HUMAN)
    H_RING_OF_PROTECTION_3 =         2116, "Ring of Protection +3 (Human)",         PickupItem(1, GameID.RING_OF_PROTECTION_3, ItemChannel.HUMAN)
    H_RING_OF_REGENERATION =         2117, "Ring of Regeneration (Human)",          PickupItem(1, GameID.RING_OF_REGENERATION, ItemChannel.HUMAN)
    H_RING_OF_SUPERIORITY =          2118, "Ring of Superiority (Human)",           PickupItem(1, GameID.RING_OF_SUPERIORITY, ItemChannel.HUMAN)
    H_SOBI_MASK =                    2119, "Sobi Mask (Human)",                     PickupItem(1, GameID.SOBI_MASK, ItemChannel.HUMAN)
    H_TALISMAN_OF_EVASION =          2120, "Talisman of Evasion (Human)",           PickupItem(1, GameID.TALISMAN_OF_EVASION, ItemChannel.HUMAN)

    H_HEALING_WARDS =                2150, "Healing Wards (Human)",                         PickupItem(1, GameID.HEALING_WARDS, ItemChannel.HUMAN, charged=True)
    H_HEALTH_STONE =                 2151, "Health Stone (Human)",                          PickupItem(1, GameID.HEALTH_STONE, ItemChannel.HUMAN, charged=True)
    H_MANA_STONE =                   2152, "Mana Stone (Human)",                            PickupItem(1, GameID.MANA_STONE, ItemChannel.HUMAN, charged=True)
    H_MANUAL_OF_HEALTH =             2153, "Manual of Health (Human)",                      PickupItem(1, GameID.MANUAL_OF_HEALTH, ItemChannel.HUMAN, charged=True)
    H_POTION_OF_GREATER_HEALING =    2154, "Potion of Greater Healing (Human)",             PickupItem(4, GameID.POTION_OF_GREATER_HEALING, ItemChannel.HUMAN, charged=True)
    H_POTION_OF_GREATER_MANA =       2155, "Potion of Greater Mana (Human)",                PickupItem(2, GameID.POTION_OF_GREATER_MANA, ItemChannel.HUMAN, charged=True)
    H_POTION_OF_HEALING =            2156, "Potion of Healing (Human)",                     PickupItem(7, GameID.POTION_OF_HEALING, ItemChannel.HUMAN, charged=True)
    H_POTION_OF_MANA =               2157, "Potion of Mana (Human)",                        PickupItem(10, GameID.POTION_OF_MANA, ItemChannel.HUMAN, charged=True)
    H_POTION_OF_RESTORATION =        2158, "Potion of Restoration (Human)",                 PickupItem(1, GameID.POTION_OF_RESTORATION, ItemChannel.HUMAN, charged=True)
    H_SCROLL_OF_HEALING =            2159, "Scroll of Healing (Human)",                     PickupItem(3, GameID.SCROLL_OF_HEALING, ItemChannel.HUMAN, charged=True)
    H_SCROLL_OF_PROTECTION =         2160, "Scroll of Protection (Human)",                  PickupItem(4, GameID.SCROLL_OF_PROTECTION, ItemChannel.HUMAN, charged=True)
    H_SCROLL_OF_TOWN_PORTAL =        2161, "Scroll of Town Portal (Human)",                 PickupItem(2, GameID.SCROLL_OF_TOWN_PORTAL, ItemChannel.HUMAN, charged=True)
    H_SCROLL_OF_THE_BEAST =          2162, "Scroll of the Beast (Human)",                   PickupItem(1, GameID.SCROLL_OF_THE_BEAST, ItemChannel.HUMAN, charged=True)
    H_TOME_OF_AGILITY =              2163, "Tome of Agility (Human)",                       PickupItem(1, GameID.TOME_OF_AGILITY, ItemChannel.HUMAN, charged=True)
    H_TOME_OF_STRENGTH =             2164, "Tome of Strength (Human)",                      PickupItem(1, GameID.TOME_OF_STRENGTH, ItemChannel.HUMAN, charged=True)
    H_TOME_OF_STRENGTH_2 =           2165, "Tome of Strength +2 (Human)",                   PickupItem(1, GameID.TOME_OF_STRENGTH_2, ItemChannel.HUMAN, charged=True)
    H_WAND_OF_NEGATION =             2166, "Wand of Negation (Human)",                      PickupItem(1, GameID.WAND_OF_NEGATION, ItemChannel.HUMAN, charged=True)

    # Undead Campaign Items
    U_ANTI_MAGIC_POTION =            2200, "Anti-Magic Potion (Undead)",                     PickupItem(1, GameID.ANTI_MAGIC_POTION, ItemChannel.UNDEAD)
    U_BOOTS_OF_QUELTHALAS_6 =        2201, "Boots of Quel'Thalas +6 (Undead)",               PickupItem(1, GameID.BOOTS_OF_QUELTHALAS_6, ItemChannel.UNDEAD)
    U_CLAWS_OF_ATTACK_6 =            2202, "Claws of Attack +6 (Undead)",                    PickupItem(1, GameID.CLAWS_OF_ATTACK_6, ItemChannel.UNDEAD)
    U_CLAWS_OF_ATTACK_9 =            2203, "Claws of Attack +9 (Undead)",                    PickupItem(1, GameID.CLAWS_OF_ATTACK_9, ItemChannel.UNDEAD)
    U_GAUNTLETS_OF_OGRE_STRENGTH_3 = 2204, "Gauntlets of Ogre Strength +3 (Undead)",         PickupItem(1, GameID.GAUNTLETS_OF_OGRE_STRENGTH_3, ItemChannel.UNDEAD)
    U_GLOVES_OF_HASTE =              2205, "Gloves of Haste (Undead)",                       PickupItem(1, GameID.GLOVES_OF_HASTE, ItemChannel.UNDEAD)
    U_GOBLIN_NIGHT_SCOPE =           2206, "Goblin Night Scope (Undead)",                    PickupItem(1, GameID.GOBLIN_NIGHT_SCOPE, ItemChannel.UNDEAD)
    U_HOOD_OF_CUNNING =              2207, "Hood of Cunning (Undead)",                       PickupItem(1, GameID.HOOD_OF_CUNNING, ItemChannel.UNDEAD)
    U_KHADGARS_PIPE_OF_INSIGHT =     2208, "Khadgar's Pipe of Insight (Undead)",             PickupItem(1, GameID.KHADGARS_PIPE_OF_INSIGHT, ItemChannel.UNDEAD)
    U_MANTLE_OF_INTELLIGENCE_3 =     2209, "Mantle of Intelligence +3 (Undead)",             PickupItem(1, GameID.MANTLE_OF_INTELLIGENCE_3, ItemChannel.UNDEAD)
    U_MEDALLION_OF_COURAGE =         2210, "Medallion of Courage (Undead)",                  PickupItem(1, GameID.MEDALLION_OF_COURAGE, ItemChannel.UNDEAD)
    U_PENDANT_OF_ENERGY =            2211, "Pendant of Energy (Undead)",                     PickupItem(1, GameID.PENDANT_OF_ENERGY, ItemChannel.UNDEAD)
    U_PENDANT_OF_MANA =              2212, "Pendant of Mana (Undead)",                       PickupItem(1, GameID.PENDANT_OF_MANA, ItemChannel.UNDEAD)
    U_PERIAPT_OF_VITALITY =          2213, "Periapt of Vitality (Undead)",                   PickupItem(1, GameID.PERIAPT_OF_VITALITY, ItemChannel.UNDEAD)
    U_RING_OF_PROTECTION_2 =         2214, "Ring of Protection +2 (Undead)",                 PickupItem(2, GameID.RING_OF_PROTECTION_2, ItemChannel.UNDEAD)
    U_RING_OF_PROTECTION_3 =         2215, "Ring of Protection +3 (Undead)",                 PickupItem(1, GameID.RING_OF_PROTECTION_3, ItemChannel.UNDEAD)
    U_RING_OF_PROTECTION_5 =         2216, "Ring of Protection +5 (Undead)",                 PickupItem(1, GameID.RING_OF_PROTECTION_5, ItemChannel.UNDEAD)
    U_RING_OF_REGENERATION =         2217, "Ring of Regeneration (Undead)",                  PickupItem(1, GameID.RING_OF_REGENERATION, ItemChannel.UNDEAD)
    U_SLIPPERS_OF_AGILITY_3 =        2218, "Slippers of Agility +3 (Undead)",                PickupItem(1, GameID.SLIPPERS_OF_AGILITY_3, ItemChannel.UNDEAD)
    U_SOBI_MASK =                    2219, "Sobi Mask (Undead)",                             PickupItem(1, GameID.SOBI_MASK, ItemChannel.UNDEAD)
    U_SPIDER_RING =                  2220, "Spider Ring (Undead)",                           PickupItem(1, GameID.SPIDER_RING, ItemChannel.UNDEAD)
    U_VOODOO_DOLL =                  2221, "Voodoo Doll (Undead)",                           PickupItem(1, GameID.VOODOO_DOLL, ItemChannel.UNDEAD)

    U_BOOK_OF_THE_DEAD =             2250, "Book of the Dead (Undead)",                      PickupItem(1, GameID.BOOK_OF_THE_DEAD, ItemChannel.UNDEAD, charged=True)
    U_GOBLIN_LAND_MINES =            2251, "Goblin Land Mines (Undead)",                     PickupItem(1, GameID.GOBLIN_LAND_MINES, ItemChannel.UNDEAD, charged=True)
    U_HEALTH_STONE =                 2252, "Health Stone (Undead)",                          PickupItem(2, GameID.HEALTH_STONE, ItemChannel.UNDEAD, charged=True)
    U_MANA_STONE =                   2253, "Mana Stone (Undead)",                            PickupItem(1, GameID.MANA_STONE, ItemChannel.UNDEAD, charged=True)
    U_MANUAL_OF_HEALTH =             2254, "Manual of Health (Undead)",                      PickupItem(1, GameID.MANUAL_OF_HEALTH, ItemChannel.UNDEAD, charged=True)
    U_POTION_OF_GREATER_HEALING =    2255, "Potion of Greater Healing (Undead)",             PickupItem(6, GameID.POTION_OF_GREATER_HEALING, ItemChannel.UNDEAD, charged=True)
    U_POTION_OF_GREATER_MANA =       2256, "Potion of Greater Mana (Undead)",                PickupItem(3, GameID.POTION_OF_GREATER_MANA, ItemChannel.UNDEAD, charged=True)
    U_POTION_OF_HEALING =            2257, "Potion of Healing (Undead)",                     PickupItem(6, GameID.POTION_OF_HEALING, ItemChannel.UNDEAD, charged=True)
    U_POTION_OF_MANA =               2258, "Potion of Mana (Undead)",                        PickupItem(1, GameID.POTION_OF_MANA, ItemChannel.UNDEAD, charged=True)
    U_SCEPTER_OF_MASTERY =           2259, "Scepter of Mastery (Undead)",                    PickupItem(1, GameID.SCEPTER_OF_MASTERY, ItemChannel.UNDEAD, charged=True)
    U_SCROLL_OF_HEALING =            2260, "Scroll of Healing (Undead)",                     PickupItem(3, GameID.SCROLL_OF_HEALING, ItemChannel.UNDEAD, charged=True)
    U_SCROLL_OF_MANA =               2261, "Scroll of Mana (Undead)",                        PickupItem(3, GameID.SCROLL_OF_MANA, ItemChannel.UNDEAD, charged=True)
    U_SCROLL_OF_PROTECTION =         2262, "Scroll of Protection (Undead)",                  PickupItem(1, GameID.SCROLL_OF_PROTECTION, ItemChannel.UNDEAD, charged=True)
    U_SCROLL_OF_THE_BEAST =          2263, "Scroll of the Beast (Undead)",                   PickupItem(2, GameID.SCROLL_OF_THE_BEAST, ItemChannel.UNDEAD, charged=True)
    U_TOME_OF_AGILITY =              2264, "Tome of Agility (Undead)",                       PickupItem(1, GameID.TOME_OF_AGILITY, ItemChannel.UNDEAD, charged=True)
    U_TOME_OF_INTELLIGENCE =         2265, "Tome of Intelligence (Undead)",                  PickupItem(3, GameID.TOME_OF_INTELLIGENCE, ItemChannel.UNDEAD, charged=True)
    U_TOME_OF_KNOWLEDGE =            2266, "Tome of Knowledge (Undead)",                     PickupItem(1, GameID.TOME_OF_KNOWLEDGE, ItemChannel.UNDEAD, charged=True)
    U_TOME_OF_STRENGTH =             2267, "Tome of Strength (Undead)",                      PickupItem(1, GameID.TOME_OF_STRENGTH, ItemChannel.UNDEAD, charged=True)
    U_TOME_OF_STRENGTH_2 =           2268, "Tome of Strength +2 (Undead)",                   PickupItem(1, GameID.TOME_OF_STRENGTH_2, ItemChannel.UNDEAD, charged=True)

    N_HORN_OF_CENARIUS =             2400, "Horn of Cenarius (Night Elf)",          PickupItem(1, GameID.HORN_OF_CENARIUS, ItemChannel.NIGHT_ELF)


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
}
