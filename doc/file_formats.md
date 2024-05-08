# File Formats
* This information is mostly collected from [This post on TheHelper](https://www.thehelper.net/threads/guide-explanation-of-w3m-and-w3x-files.35292/)
* [wc3-project.ag.vu](http://www.wc3-project.ag.vu/w3m-specs.html) also has a good summary of formats that appear in map files
* [Wikipedia page on .tga format](https://en.wikipedia.org/wiki/Truevision_TGA)
* [Old spec on .slk format](https://outflank.nl/upload/sylksum.txt)

## Summary
| Extension | Explanation                                                                |
| --------- | -------------------------------------------------------------------------- |
| .mpq      | Blizzard's game data archive format. Use MPQEditor to view/modify          |
| .w3m      | Warcraft 3 map file (header + MPQ)                                         |
| .w3x      | Frozen Throne map file (header + MPQ)                                      |
| .w3p      | Campaign profile file (under `~/Saved Games/Warcraft III/ProfileX`)        |
| .w3v      | Campaign gamecache file (under `~/Saved Games/Warcraft III/ProfileX`)      |
| .w3z      | Savegame file                                                              |
| .w3g      | Replay file                                                                |
| .j        | JASS script file                                                           |
| .pld      | Preloader script; JASS script file                                         |
| .w3e      | Environment file; holds map tile information                               |
| .w3i      | Info file; holds game start information                                    |
| .wtg      | Trigger names file                                                         |
| .wct      | Text trigger file                                                          |
| .wts      | Trigger string file; defines a bank of strings used by triggers            |
| .shd      | Shadow map file                                                            |
| .blp      | Blizzard picture file; header + jpeg data                                  |
| .mmp      | Minimap file; hold minimap icon information                                |
| .wpm      | Path map file                                                              |
| .doo      | Doodad placement file                                                      |
| .w3r      | Regions file; Regions used by triggers                                     |
| .w3c      | Camera file                                                                |
| .w3s      | Sound definition file                                                      |
| .imp      | Imported file list                                                         |
| .w3u      | Units file;         standard object file format                            |
| .w3t      | Items file;         standard object file format                            |
| .w3b      | Destructables file; standard object file format                            |
| .w3d      | Doodads file;       standard object file format                            |
| .w3a      | Abilities file;     standard object file format                            |
| .w3h      | Buffs file;         standard object file format                            |
| .w3q      | Upgrades file;      standard object file format                            |
| .w3o      | Objects file; collection of all standard object files                      |
| .w3n      | Custom campaign file                                                       |
| .w3f      | Campaign info file                                                         |
| .slk      | Data table                                                                 |
| .tga      | Deprecated image format (TGA) (WorldEdit replaces this with .blp)          |
| .mdx/.mdl | Model files                                                                |
| .wai      | AI file                                                                    |

## .w3m
* RoC map file
* Has a 512-byte header, followed by MPQ archive of map files
* Information in the header is generally the same as stored in the war3map.w3i file
```C
Header = {
    char[4] magic = "HM3W";  // W3MH backwards, War 3 Map Header?
    int unknown = 0;
    string map_name;
    int map_flags;  // 0x9C14 is default
    int max_players;
    // padded with 0 to 512-byte
};

enum MapFlags = {
    HIDE_MINIMAP           = 0x0001, // hide minimap in preview
    MODIFY_ALLY_PRIORITIES = 0x0002, // modify ally priorities
    MELEE_MAP              = 0x0004, // melee map
    LARGE_MAP              = 0x0008, // playable map size was large and has never been reduced to medium
    VISIBLE_BLACK_MASK     = 0x0010, // masked map areas are partially visible (as in melee)
    FIXED_FORCES           = 0x0020, // fixed player setting for custom forces
    CUSTOM_FORCES          = 0x0040, // use custom forces
    CUSTOM_TECH_TREE       = 0x0080, // use custom techtree
    CUSTOM_ABILITIES       = 0x0100, // use custom abilities
    CUSTOM_UPGRADES        = 0x0200, // use custom upgrades
    PROPERTIES_MENU_OPENED = 0x0400, // map properties menu opened at least once since map creation
    WAVES_ON_CLIFFS        = 0x0800, // show water waves on cliff shores
    WAVES_ON_SHORES        = 0x1000, // show water waves on rolling shores
};
```

## .w3i
* Contains information displayed when starting the game
* Different format depending on RoC vs TFT
* Information from `wc3-project.ag.vu` seems accurate for ROC, less so for TFT
* Information on [wc3edit.net](https://forum.wc3edit.net/deprotection-cheating-f64/guide-format-explanation-of-w3m-and-w3x-files-t7080.html) seems better
```C
Header_Common = {
    int version; // 18 for ROC, 19 for TFT beta, 25 for TFT
    int map_revision; // = number of times the map has been saved
    int editor_version;
    string map_name;
    string map_author;
    string map_description;
    string players_recommended;
    float[8] camera_bounds;  // defined in JASS file
    int[4] map_bounds_padding;  // left, right, top, bottom
    int map_playable_width;
    int map_playable_height;
    int flags; // same as .w3m / .w3x header flags
    char tileset;  // See #Tilesets
    int campaign_background;  // -1 = none
    // Note: wc3edit.net has an extra string here for TFT -- path of custom loading screen model
    // string custom_loading_screen_model;
    string map_loading_screen_text;
    string map_loading_screen_title;
    string map_loading_screen_subtitle;
};
Header_ROC = {
    Header_Common header_common;
    int map_loading_screen_number;  // -1 = none
    string prologue_screen_text;
    string prologue_screen_title;
    string prologue_screen_subtitle;
    int num_players;
    Player[num_players] players;
    int num_forces;
    Force[num_forces] forces;
    int num_upgrades;
    Upgrade[num_upgrades] upgrades;
    int num_technologies;
    Technology[num_techs] technologies;
    int num_random_entities;
    RandomEntityTable[num_random_entities] random_entities;
};
Header_TFT = {
    Header_Common header_common;
    int used_game_data_set = -1;  // 0 is "standard"
    // int magic2 = 0;
    string prologue_screen_path;
    string prologue_screen_text;
    string prologue_screen_title;
    string prologue_screen_subtitle;
    uint uses_terrain_fog = 0;    // 0 = not used
    float fog_start_z;
    float fog_end_z;
    float fog_density;
    u8_t fog_red;
    u8_t fog_green;
    u8_t fog_blue;
    u8_t fog_alpha;
    char[4] weather;  // b'0000' == none, otherwise see TerainArt/Weather.slk
    string custom_sound_environment;
    char custom_light_tileset_id;
    u8_t water_tint_red;
    u8_t water_tint_green;
    u8_t water_tint_blue;
    u8_t water_tint_alpha;
    int num_players;
    Player[max_players] players;
    int num_forces;
    Force[max_forces] forces;
    int num_upgrades;
    Upgrade[num_upgrades] upgrades;
    int num_technologies;
    Technology[num_techs] technologies;
    int num_random_entities;
    RandomEntityTable[num_random_entities] random_entities;
    int num_random_items;
    RandomItemTable[num_random_items] random_items;
};

Player = {
    int player_id;    // marked as "unknown" in source
    int player_type;  // 1=Human, 2=Computer, 3=Neutral, 4=Rescuable
    int player_race;  // 1=Human, 2=Orc, 3=Undead, 4=Night Elf
    bool32_t fixed_start_position;
    string player_name;
    float start_x;
    float start_y;
    int ally_low_priorities_flags;
    int ally_high_priorities_flags;
};
Force = {
    int flags;
    // 0x01 - allied
    // 0x02 - allied victory
    // 0x04 - share vision
    // 0x10 - share unit control
    // 0x20 - full share unit control
    int player_mask_flags;
    string force_name;
};
Upgrade = {
    int player_flags;    // bit x == 1 => this change applies for player x
    char[4] upgrade_id;  // see UpgradeData.slk
    int level;           // 0-indexed
    int availability;
    // 0 - unavailable
    // 1 - available
    // 2 - researched
}
Technology = {
    int player_flags;    // bit x == 1 => this change applies for player x
    char[4] tech_id;     // item, unit, or ability
    // presence in this list => unavailable
}
RandomEntityTable = {
    int num_groups;
    RandomEntityGroup[num_groups] groups;
    RandomEntityGroup = {
        int group_id;
        string group_name;
        int num_positions;
        int[num_positions] table_types;
        // 0 - unit
        // 1 - building
        // 2 - item
        int num_entities;
        RandomEntity[num_entities] entities;
    }
    RandomEntity = {
        int probability_percent;
        char[4][num_positions] entity_id;
        // b'0000' indicates no entity is created
    }
}
RandomItemTable = {
    // TFT only?
    int num_groups;
    RandomItemGroup[num_groups] groups;
    RandomItemGroup = {
        int group_id;
        string group_name;
        int num_sets;
        RandomItemSet[num_sets] sets;
    }
    RandomItemSet = {
        int num_items;
        Item[num_items] items;
    }
    RandomItem = {
        int probability_percent;
        char[4] item_id;  // see ItemData.slk
    }
}
```

## .w3o / .w3u / .w3t / .w3b / .w3d / .w3a / .w3h / .w3q
* .w3u files store unit data
* .w3t files store item data
* .w3b files store destructible data
* .w3d files store doodad data
* .w3a files store ability data
* .w3h files store buff data
* .w3q files store upgrade data
* .w3o essentially packages all the above files together
* Data is kept in tables that are essentially a series of key-value pairs

```C
w3u_data = {
    int version = 1;
    object_table_t blizzard_objects;
    object_table_t map_objects;
}
object_table_t = {
    int num_entries;
    entry_t[num_entries] entries;
}
entry_t = {
    char[4] parent_id;
    char[4] object_id;
    int num_modifications;
    modification_t[num_modifications] modifications;
}
modification_t = {
    char[4] modification_id;
    int type_id;
#if filetype == doodads || abilities || upgrades
    union {
        int variation_id;
        int level;
    };
    int table_column;
#endif
    T value;
    char[4] object_id;  // can be 0, parent_id, or object_id
}
```

### Variable types
| Code | Type            |
| ---- | --------------- |
| 0    | int32           |
| 1    | float           |
| 2    | unreal (float in range [0, 1]) |
| 3    | string          |
| 4    | bool8           |
| 5    | char            |
| 6    | unit[]          |
| 7    | item[]          |
| 8    | regen_type      |
| 9    | attack_type     |
| 10   | weapon_type     |
| 11   | target_type     |
| 12   | move_type       |
| 13   | defense_type    |
| 14   | pathing_texture |
| 15   | upgrade[]       |
| 16   | string[]        |
| 17   | ability[]       |
| 18   | hero_ability[]  |
| 19   | missile_art     |
| 20   | attribute_type  |
| 21   | attack_bits     |

## .wtg
* .wtg files store trigger names for display in the editor
* ints after strings need not be 4-byte aligned in the file
* bools are 4-byte values
```C
Header = {
    char[4] magic = "WTG!";
    int wtg_format_version = 4;
    int num_trigger_categories;
    TriggerCategory[num_trigger_categories] trigger_categories;
    int unknown;
    int num_variables;
    Variable[num_variables] variables;
    int num_triggers;
    Trigger[num_triggers] triggers;
};

Category = {
    int category_index;
    string category_name;
};

Variable = {
    string variable_name;
    string variable_type;
    int unknown;
    bool is_array;
    bool is_initialized;
    string initial_value;
};

Trigger = {
    string trigger_name;
    string description;
    bool is_enabled;
    bool is_custom_text_trigger;
    bool is_initially_enabled;
    int unknown;
    int category_index;
    int num_eca_functions; // ECA = event-condition-action; 0 for custom text triggers
    ECA_Function[num_eca_functions] eca_functions;
};

ECA_Function = {
    int function_type; // 0=event; 1=condition, 2=action
    string function_name;
    bool is_enabled;
    Parameter[num_params] parameters;
    int unknown;
    int num_eca_functions;
    ECA_Function[num_eca_functions] eca_functions;
};

Parameter = {
    int param_type; // 0=preset, 1=variable, 2=function, 3=string
    string parameter_value;
    bool is_function;
    FunctionDetails[is_function] function_details;
    int END_MARKER = 0;
};

FunctionDetails = {
    int type = 3;
    string parameter_value;
    int function_start = 1;
    Parameter[num_params] parameters;
};
```

## .wct
* Custom text trigger file
* All triggers get an entry here even if they're not custom text
```C
Header = {
    int version = 0;
    int num_triggers;
    Trigger[num_triggers] triggers;
};
Trigger = {
    int text_size_bytes;  // note: includes null string terminator
    string trigger_text;
} | (int)0;
```

## .w3v
* .w3v files store Campaign data. Usually at `~/Saved Games/Warcraft III/ProfileX/Campaigns.w3v` for player X
* *Note this file format must first be decompressed*
```C
struct Header {
/* 0..4 */ int reserved; // (version?)
/* 4..8 */ int num_chaches;
/* 8... */ GameCache[] game_caches;
}

struct GameCache {
/*  0.. N */ string name;
/*  N..+4 */ int reserved;
/* +4..+8 */ int num_categories;
/* +8...  */ Category[num_categories] categories;
}

struct Category {
    string name;
    int[5] reserved;
    int num_integers;
    IntKV[num_integers] integer_data;
    int num_floats;
    FloatKV[num_floats] float_data;
    int num_bools;
    BoolKV[num_bools] bool_data;
    int num_units;
    UnitKV[num_units] unit_data;
    int num_strings;
    StringKV[num_strings] string_data;
}
struct IntKV | FloatKV | BoolKV {
    string  label;
    byte[4] value;
}
struct StringKV {
    string label;
    string value;
}
struct UnitKV {
    string label;
    int unit_id;
    int inventory_size;
    InventorySlot[inventory_size] inventory;
    int experience;
    int level;
    int unused_skill_points;
    int[9] unknown;
    int num_hero_skills;
    HeroSkill[num_hero_skills] hero_skills;
    int[2] unknown;
    float unknown;
    int[4] unknown;
    short unknown;
}
```

## .blp
* .blp files store images
* They contain either jpeg data or a paletted pixmap
* [This post on Hive Workshop](https://www.hiveworkshop.com/threads/blp-specifications-wc3.279306/) was the best resource on the format
```C
Format = {
    char[4] magic = "BLP1";
    int content_type; // 0=JPGblp, 1=paletted
    int alpha_bits; // usually 0 for no alpha or 8 for alpha
    int image_width;
    int image_height;
    int unused_flag;  // WorldEdit outputs 5; common myth: this impacts team colors
    int has_mipmaps;
    int mipmap_offsets[16];
    int mipmap_size[16];
    // jpeg-specific:
    int jpeg_header_size;
    byte[jpeg_header_size] jpeg_header;
    // 0-padding
    // at offset $mipmap_offset from beginning of file
    byte[mipmap_size] jpeg_data;
};
```

## Compression (.w3v, .w3z, .w3g)
```C
Header = {
    char[28] signature = "Warcraft III recorded game\x1a\0";              // 0 ..28
    uint_t header_size;  // 0x44 for 1.07+, 0x40 for 1.06-                // 28..32
    uint_t compressed_file_size;                                          // 32..36
    uint_t header_version;  // 0x01 for 1.07+, 0x00 for 1.06-             // 36..40
    uint_t uncompressed_size;                                             // 40..44
    uint_t num_blocks;                                                    // 44..48
    char[4] identifier = "WAR3 | W3XP";                                   // 48..52
    uint_t version_number;  // major * 10000 + minor                      // 52..56
    uint16_t build_id;                                                    // 56..58
    uint16_t flags;  // 0x0000 for single-player, 0x8000 for multiplayer  // 58..60
    uint_t replay_length_ms;  // 0 for non-replays                        // 60..64
    uint_t crc32;                                                         // 64..68
    block_t[num_blocks] blocks;                                           // 68...
}
block_t = {
  uint16_t compressed_block_size;
  uint16_t original_size; // rounded up to the nearest multiple of 2048
  uint32_t checksum;
  byte[compressed_block_size] data;
  | N..N+4 | uint block checksum
}
```
* \*for header version 1, the specification diverges here at byte 48

### Block checksum
* For some reason, all the resources don't say how this checksum is calculated
* I did a test where I collected .w3v files containing only one key-value pair, with key a/b and integer value ranging from 1 to 10
* Result:
  * The LSB 2 bytes are sensitive to the original data length and nothing else

## Codes
* Some data is stored as `char[4]`, which can be read by tools as an int or by humans as ascii
* No null terminator

### Weather effects
* These can be looked up in TerrainArt/weather.slk (War3x.mpq)

| Code | Meaning                   |
| ---- | ------------------------- |
| RAhr | Ashenvale heavy rain      |
| RAlr | Ashenvale light rain      |
| MEds | Dalaran shield            |
| FDbh | Dungeon blue fog (heavy)  |
| FDbl | Dungeon blue fog (light)  |
| FDgh | Dungeon green fog (heavy) |
| FDgl | Dungeon green fog (light) |
| FDrh | Dungeon red fog (heavy)   |
| FDrl | Dungeon red fog (light)   |
| FDwh | Dungeon white fog (heavy) |
| FDwl | Dungeon white fog (light) |
| RLhr | Lordaeron heavy rain      |
| RLlr | Lordaeron light rain      |
| SNbs | Northrend Blizzard        |
| SNhs | Northrend heavy snow      |
| SNls | Northrend light snow      |
| LRaa | Rays of light             |
| LRma | Rays of moonlight         |
| WNcw | Wind                      |
| WOcw | Outland wind              |
| WOlw | Outland light wind        |

### Tilesets
From [Chocobo on TheHelper](https://www.thehelper.net/threads/guide-explanation-of-w3m-and-w3x-files.35292/) -- section 1.12.
Tilesets are a single byte, which always encodes an ascii character.

| Code | Tileset          |
| ---- | ---------------- |
| A    | Ashenvale        |
| B    | Barrens          |
| C    | Felwood          |
| D    | Dungeon          |
| F    | Lordaeron Fall   |
| G    | Underground      |
| L    | Lordaeron Summer |
| N    | Northrend        |
| Q    | Village Fall     |
| V    | Village          |
| W    | Lordaeron Winter |
| X    | Dalaran          |
| Y    | Cityscape        |
| Z    | Sunken Ruins     |
| I    | Icecrown         |
| J    | Dalaran Ruins    |
| O    | Outland          |
| K    | Black Citadel    |
