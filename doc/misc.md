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
