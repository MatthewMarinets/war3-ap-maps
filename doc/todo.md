## Maps
- [x] Human01
- [x] Human02
- [x] Human03
- [x] Human04
- [x] Human05
- [x] Human06
- [x] Human07
- [x] Human08
- [x] Human09
- [x] Undead01
- [x] Undead02
- [x] Undead03
- [x] Undead04
- [x] Undead05
- [x] Undead06
- [x] Undead07
- [x] Undead08

### Item check conditions boilerplate
```markdown
- Condition OperatorCompareInteger
  - param Function GetPlayerTechMaxAllowedSwap
    - Function GetPlayerTechMaxAllowedSwap
      - param String ledg
      - param Variable AAAP_Arthas
  - param Preset OperatorGreater
  - param String 0
```

## Issues
- [x] Add magic number / mechanism to prevent loading data from another game
- [x] Add packet to send a new item to a campaign
- [x] Add packet to set/update hero state
- [x] comm: Global <--> local location conversion
- [x] All heroes should cost 0 food
- [ ] Begin converting missions
  - [ ] upgrade roc
  - [ ] Save in editor
  - [ ] mapscript
  - [ ] Eliminate gamecache usage
  - [ ] Redirect starting next mission to CampaignSelect.w3x
  - [ ] Hero init
  - [ ] Remove hero level cap triggers (SuspendHeroXPBJ)
  - [ ] Special considerations for first hero appearances
  - [ ] Replace items -> AP items (CreateItemLoc)
  - [ ] Location sending functions
  - [ ] Purge any unlock tech functions -- SetPlayerUnitAvailableBJ, SetPlayerTechMaxAllowed
  - [ ] Creep bounty
  - [ ] Mercenary camps
  - [ ] irregulars

- [x] Don't copy messages on getting locations
- [ ] Item stash / item recovery
- [x] Location tracker in missions
- [x] Arcane Vault items don't roll
- [x] Mercenary distribution redux
- [x] mission orders

#### Map conversion tips
Case: Goblin Merchant locations
* Remember to update the goblin merchant abilities to include `Asid`
```toml

[blizzard_objects.ngme]
parent_id = 'ngme'  # Goblin Merchant
entity_id = 'null'

[[blizzard_objects.ngme.modifications]]
modification_id = 'uabi'  # UnitAbilities.Normal
data_type = "String"
variation_level = 0
table_column = 0
value = "Asid,Aneu,Avul,Apit"
object_id = 'null'
```

Case: Mercenary camp locations
* Remember to add `Asid` for the location purchase, and `Asud` for the mercenary camp system
* Remember to remove base units sold for the mercenary camp system
```toml
[blizzard_objects.nmrd]
parent_id = 'nmrd'  # Mercenary Camp
entity_id = 'null'

[[blizzard_objects.nmrd.modifications]]
modification_id = 'uabi'  # UnitAbilities.Normal
data_type = "String"
variation_level = 0
table_column = 0
value = "Asud,Asid,Ane2,Avul"
object_id = 'nmrd'  # Mercenary Camp

[[blizzard_objects.nmrd.modifications]]
modification_id = 'useu'  # Profile.Units Sold
data_type = "String"
variation_level = 0
table_column = 0
value = ""
object_id = 'nmrd'  # Mercenary Camp
```

Case:
`TriggerRegisterUnitEvent` with a literal unit that is now made by trigger (check player and variable)
```md
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
```

Case:
`TriggerRegisterUnitInRangeSimple` with a literal unit
* There seems to be no per-player equivalent; register the event programmatically after the hero is created
```md
<!-- python3 -m scripts.insert_trigger u1 "AP Load Arthas" "Post hero init" -->
- Action CustomScriptCode
  - param String call TriggerRegisterUnitInRangeSimple(gg_trg_Acolyte_Touched, 256.00, udg_Arthas)
- Action CustomScriptCode
  - param String call TriggerRegisterUnitInRangeSimple(gg_trg_Unit_Scared, 256.00, udg_Arthas)
```

### Longer term
- [ ] No-builds: unlock tech for usage based on max allowed
- [x] Irregulars: have some kind of resource cost to upgrade
- [ ] Figure out item recovery / make item bank levels
- [ ] Figure out slot storage
- [ ] RoC models
- [x] RoC creep gold drop amounts
- [ ] Enemysanity detection

## File formats covered
- [x] mpq/w3m/w3x -- MPQEditor
- [x] .w3i (info)
- [x] .wtg (GUI trigger metadata)
- [x] .wct (text trigger metadata)
- [x] .mmp (minimap icons)
- [x] .doo (doodads placement)
- [x] .w3r (regions)
- [x] .w3c (camera)
- [x] .w3s (sounds)
- [x] .imp (imports)
- [x] .w3u (units)
- [x] .w3t (items)
- [x] .w3b (destructables)
- [x] .w3d (doodads)
- [x] .w3a (abilities)
- [x] .w3h (buffs)
- [x] .w3q (upgrades)
- [x] .w3o (general objects)
- [x] .w3f (campaign info)
- [x] .slk (spreadsheet)

### Text
* .j (jass script)
* .wai (AI jass script)
* .pld (preloader jass script)
* .w3p (Campaign profile)
* .wts (trigger strings)

### Binary data
* .mdl/.mdx (model)
* .blp (image)
* .tga (old image format)
* .shd (shadow map)
* .w3e (environment)
* .wpm (path map)

### External - won't handle
* .w3v (gamecache) -- unsolved checksum
* .w3z (savegame)
* .w3g (replay)
