## Maps
- [x] Human01
- [x] Human02
- [x] Human03
- [x] Human04
- [x] Human05
  - [ ] Opening cinematic: fake Jaina teleporting away
- [x] Human06
  - [x] Eliminate gamecache usage
  - [x] Redirect starting next mission
  - [x] Hero init
  - [x] Remove hero level cap triggers
  - [x] Replace items -> AP items
  - [x] Location sending functions
  - [x] Purge any unlock tech functions
  - [x] Creep bounty
- [ ] Human07
  - [ ] Eliminate gamecache usage
  - [ ] Redirect starting next mission
  - [ ] Hero init
  - [ ] Remove hero level cap triggers
  - [ ] Special considerations for first hero appearances
  - [ ] Replace items -> AP items
  - [ ] Location sending functions
  - [ ] Purge any unlock tech functions
  - [x] Creep bounty
- [ ] Human08
  - [ ] Eliminate gamecache usage
  - [ ] Redirect starting next mission
  - [ ] Hero init
  - [ ] Remove hero level cap triggers
  - [ ] Special considerations for first hero appearances
  - [ ] Replace items -> AP items
  - [ ] Location sending functions
  - [ ] Purge any unlock tech functions
  - [ ] Creep bounty
  - [ ] Figure out mercenary camps

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
- [ ] All heroes should cost 0 food
- [ ] Begin converting missions
  - [ ] Eliminate gamecache usage
  - [ ] Redirect starting next mission
  - [ ] Hero init
  - [ ] Remove hero level cap triggers
  - [ ] Special considerations for first hero appearances
  - [ ] Replace items -> AP items
  - [ ] Location sending functions
  - [ ] Purge any unlock tech functions
  - [ ] Creep bounty

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
