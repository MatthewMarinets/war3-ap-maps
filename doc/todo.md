## Maps
* Human01
  - [x] Eliminate gamecache usage
  - [x] Redirect starting next mission
  - [x] Hero init
  - [x] Remove hero level cap triggers
  - [x] Special considerations for first hero appearances
  - [x] Replace items -> AP items
  - [x] Location sending functions
* Human02
  - [x] Implement locations
  - [x] Remove gamecache
  - [x] Update next level path
  - [x] Fix footmen counter
  - [x] Remove rifleman unlock
  - [x] Remove hero level cap triggers

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
- [ ] Restarting a mission re-sends hero items
- [x] Add packet to send a new item to a campaign
- [x] Add packet to set/update hero state
- [x] comm: Global <--> local location conversion
- [ ] Begin converting missions
  - [ ] Eliminate gamecache usage
  - [ ] Redirect starting next mission
  - [ ] Hero init
  - [ ] Remove hero level cap triggers
  - [ ] Special considerations for first hero appearances
  - [ ] Replace items -> AP items
  - [ ] Location sending functions
  - [ ] Purge any unlock tech functions

### Longer term
- [ ] Figure out item recovery / make item bank levels
- [ ] Figure out slot storage
- [ ] RoC models
- [ ] RoC creep gold drop amounts

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
