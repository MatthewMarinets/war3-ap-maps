# Miscellaneous knowledge
## Item models
Items have a model. For the model to disappear after picking up the item, it needs a Ref Chest attachment

## Colours
Game text can be coloured. Use a tag formatted like `|cff<hex>` to start a coloured region, where
`<hex>` is the colour hex code in RGB format (the opening `ff` is for the alpha channel).

Use `|r` to reset the colour.

Vanilla uses:
* #ffcc00 For Quest headings in the log, and for hotkeys
* #fed312 For gold costs
* #ff8c00 For "NOTICE" like Far Sight being unavailable in a dungeon mission
  * Also for "Artifact" in item descriptions
  * Used for a few attack target specifiers like "Attack land units and trees"
* #ff0000 For "WARNING" -- TFT only (ex. Nx1 ships destroyed, Ux05 forces awake)
* #808080 For greyed-out text like completed objectives
* #32cd32 For hints
* #87ceeb For "NEW X RECEIVED"
  * Also for "Non-combat Consumable"
  * One instance in H1 uses #32ceeb
* #ffdead For choice bonus campaign items like Crown of the Deathlord or Serathil
* #fed312 For hotkeys in tip strings
* #c3dbff For "Right-click to activate auto-casting"
* #8b00ff For "Unique" in item descriptions
* #64ff64 For keywords in prologue help text
* #1ce6b9 For "Maiev" controlling the cage in Hx4

I'm using:
* #ff2222 For errors
* #2266ff For non-error "info" notices like connection re-established
* #ee1166 For Archipelago locations

## Shops
* For a trigger to affect what a shop can sell, it must have the `Asit` / "Sell Items" ability

## Custom abilities
* Every ability has an _order id_, which is used internally when performing an action
  * If a unit has two abilities with the same order id, trying to do either will always execute the first
* To detect a unit using an ability, use:
  * `EVENT_PLAYER_UNIT_SPELL_EFFECT` for "Charge Gold and Lumber" -- seems more reliable for abilities in general
  * `EVENT_PLAYER_UNIT_SPELL_CAST` for "Channel" -- slightly faster

### Channel
The "Channel" ability has a customizable order id field,
so can be used to make multiple custom abilities on the same unit
* The channel ability does nothing on its own, and must be detected by triggers to do anything
* Note: the channel ability has a "flags" field that must be updated for the ability to show up

### Charge Gold and Lumber
The "Charge Gold and Lumber" ability functions similar to Channel, but may cost resources
* Note: For some reason, the tech requirements on this ability are never checked

### Spell Book
The "Spell Book" ability is able to open a submenu holding other abilities
* Note: The "is item ability" field must be set to false in order to add a description to this ability

## Tilesets
Recording mission to tileset information here in case it every becomes useful
```python
class Tileset(enum.StrEnum):
    Ashenvale = 'A'
    Barrens = 'B'
    Felwood = 'C'
    Dungeon = 'D'
    Lordaeron_Fall = 'F'
    Underground = 'G'
    Lordaeron_Summer = 'L'
    Northrend = 'N'
    Village_Fall = 'Q'
    Village = 'V'
    Lordaeron_Winter = 'W'
    Dalaran = 'X'
    Cityscape = 'Y'
    Sunken_Ruins = 'Z'
    Icecrown = 'I'
    Dalaran_Ruins = 'J'
    Outland = 'O'
    Black_Citadel = 'K'


MISSION_TO_TILESET: dict[Wc3Mission, Tileset] = {
    Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD: Tileset.Lordaeron_Summer,
    Wc3Mission.H2_BLACKROCK_AND_ROLL: Tileset.Lordaeron_Summer,
    Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE: Tileset.Village,
    Wc3Mission.H4_THE_CULT_OF_THE_DAMNED: Tileset.Village,
    Wc3Mission.H5_MARCH_OF_THE_SCOURGE: Tileset.Village,
    Wc3Mission.H6_THE_CULLING: Tileset.Cityscape,
    Wc3Mission.H7_THE_SHORES_OF_NORTHREND: Tileset.Northrend,
    Wc3Mission.H8_DISSENSION: Tileset.Northrend,
    Wc3Mission.H9_FROSTMOURNE: Tileset.Northrend,
    Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES: Tileset.Lordaeron_Fall,
    Wc3Mission.U2_DIGGING_UP_THE_DEAD: Tileset.Village_Fall,
    Wc3Mission.U3_INTO_THE_REALM_ETERNAL: Tileset.Lordaeron_Summer,
    Wc3Mission.U4_KEY_OF_THE_THREE_MOONS: Tileset.Lordaeron_Summer,
    Wc3Mission.U5_THE_FALL_OF_SILVERMOON: Tileset.Lordaeron_Summer,
    Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO: Tileset.Lordaeron_Winter,
    Wc3Mission.U7_THE_SIEGE_OF_DALARAN: Tileset.Dalaran,
    Wc3Mission.U8_UNDER_THE_BURNING_SKY: Tileset.Dalaran,
    Wc3Mission.O1_LANDFALL: Tileset.Barrens,
    Wc3Mission.O2_THE_LONG_MARCH: Tileset.Barrens,
    Wc3Mission.O3_CRY_OF_THE_WARSONG: Tileset.Barrens,
    Wc3Mission.O4_THE_SPIRITS_OF_ASHENVALE: Tileset.Ashenvale,
    Wc3Mission.O5_THE_HUNTER_OF_SHADOWS: Tileset.Ashenvale,
    Wc3Mission.O6_WHERE_WYVERNS_DARE: Tileset.Barrens,
    Wc3Mission.O7_THE_ORACLE: Tileset.Dungeon,
    Wc3Mission.O8_BY_DEMONS_BE_DRIVEN: Tileset.Barrens,
    Wc3Mission.N1_ENEMIES_AT_THE_GATE: Tileset.Ashenvale,
    Wc3Mission.N2_DAUGHTERS_OF_THE_MOON: Tileset.Ashenvale,
    Wc3Mission.N3_THE_AWAKENING_OF_STORMRAGE: Tileset.Ashenvale,
    Wc3Mission.N4_THE_DRUIDS_ARISE: Tileset.Ashenvale,
    Wc3Mission.N5_BROTHERS_IN_BLOOD: Tileset.Underground,
    Wc3Mission.N6_A_DESTINY_OF_FLAME_AND_SORROW: Tileset.Felwood,
    Wc3Mission.N7_TWILIGHT_OF_THE_GODS: Tileset.Ashenvale,
    Wc3Mission.NX1_RISE_OF_THE_NAGA: Tileset.Ashenvale,
    Wc3Mission.NX2_THE_BROKEN_ISLES: Tileset.Sunken_Ruins,
    Wc3Mission.NX3_THE_TOMB_OF_SARGERAS: Tileset.Sunken_Ruins,
    Wc3Mission.NX4_WRATH_OF_THE_BETRAYER: Tileset.Sunken_Ruins,
    Wc3Mission.NX5_BALANCING_THE_SCALES: Tileset.Sunken_Ruins,
    Wc3Mission.NX6_SHARDS_OF_THE_ALLIANCE: Tileset.Village_Fall,
    Wc3Mission.NX7_THE_RUINS_OF_DALARAN: Tileset.Dalaran_Ruins,
    Wc3Mission.NX8_THE_BROTHERS_STORMRAGE: Tileset.Lordaeron_Summer,
    Wc3Mission.HX1_MISCONCEPTIONS: Tileset.Dalaran_Ruins,
    Wc3Mission.HX2_A_DARK_COVENANT: Tileset.Dalaran_Ruins,
    Wc3Mission.HX3_THE_DUNGEONS_OF_DALARAN: Tileset.Dalaran_Ruins,
    Wc3Mission.HXS_THE_CROSSING: Tileset.Dalaran_Ruins,
    Wc3Mission.HX4_THE_SEARCH_FOR_ILLIDAN: Tileset.Outland,
    Wc3Mission.HX5_GATES_OF_THE_ABYSS: Tileset.Outland,
    Wc3Mission.HX6_LORD_OF_OUTLAND: Tileset.Black_Citadel,
    Wc3Mission.UX1_KING_ARTHAS: Tileset.Village,
    Wc3Mission.UX2_THE_FLIGHT_FROM_LORDAERON: Tileset.Cityscape,
    Wc3Mission.UX3_THE_DARK_LADY: Tileset.Village,
    Wc3Mission.UX4_THE_RETURN_TO_NORTHREND: Tileset.Northrend,
    Wc3Mission.UX5_DREADLORDS_FALL: Tileset.Cityscape,
    Wc3Mission.UX6_A_NEW_POWER_IN_LORDAERON: Tileset.Cityscape,
    Wc3Mission.UX7A_INTO_THE_SHADOW_WEB_CAVERNS: Tileset.Underground,
    Wc3Mission.UX7B_THE_FORGOTTEN_ONES: Tileset.Icecrown,
    Wc3Mission.UX7C_ASCENT_TO_THE_UPPER_KINGDOM: Tileset.Icecrown,
    Wc3Mission.UX8_A_SYMPHONY_OF_FROST_AND_FLAME: Tileset.Icecrown,
}
```
