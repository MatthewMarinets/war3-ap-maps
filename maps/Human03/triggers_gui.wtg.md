version = TFT

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 40 | Archipelago | False |
| 0 | Initialization | False |
| 35 | Bubble | False |
| 24 | SetupQuests | False |
| 9 | Level Data | False |
| 37 | IZZZZZI CINEMATICS IZZZZZZZI | False |
| 2 | CinematicOpening | False |
| 30 | CinematicGrain | False |
| 8 | CinematicPriests | False |
| 23 | CinematicEnding | False |
| 6 | IZZZZZZZZZZZZZZZZZZZZZZZI | False |
| 26 | SheepContainmentAreas | False |
| 19 | RandomizerPatrols | False |
| 21 | KidsPlaying | False |
| 22 | OgrePatrol | False |
| 29 | BanditsCamp | False |
| 12 | VillagerStacie | False |
| 14 | VillagerMarie | False |
| 13 | VillagerHello01 | False |
| 15 | VillagerTaxes | False |
| 39 | Tax | False |
| 11 | Achilles | False |
| 18 | MurlocPatrol | False |
| 31 | VillagerGift | False |
| 3 | BanditsAttack | False |
| 27 | VillagerSelections | False |
| 4 | FountainOfLife | False |
| 17 | IZZZZZZZZZZZZZZZZZZZZZZZI | False |
| 5 | DefendingFootman | False |
| 33 | HolyLightHint | False |
| 7 | AmbushSkeletons | False |
| 16 | VillageRaiseSkeleton | False |
| 32 | CrateSkeleton | False |
| 10 | MortarTeamIntro | False |
| 1 | Defeat | False |
| 34 | Victory | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| WaterElemental | unit | . | UnitNull |
| StartingParty | group | . | . |
| BanditsVillage | group | . | . |
| SkeletonsArcher | group | . | . |
| Heroes | group | . | . |
| SkeletonsAmbush | group | . | . |
| Priests | group | . | . |
| SkeletonsMortarFodder | group | . | . |
| Abomination | unit | . | . |
| KelThuzad | unit | . | . |
| OpeningCancelled | boolean | . | false |
| Grain01Cancelled | boolean | . | false |
| WarehouseCancelled | boolean | . | false |
| SkeletonsPatrol01 | group | . | . |
| Arthas | unit | . | . |
| Jaina | unit | . | . |
| SkeletonShipGroup | group | . | . |
| SkeletonFinalGroup | group | . | . |
| SkeletonBeforeMortarsGroup | group | . | . |
| PeasantPatrolGroup01 | group | . | . |
| PeasantPatrolGroup02 | group | . | . |
| Trees | destructable | . | . |
| QuestFountain | quest | . | . |
| QuestInvestigateVillages | quest | . | . |
| QuestSkeleton | quest | . | . |
| Captain | unit | . | . |
| QuestDestroyGranary | quest | . | . |
| FootmenDefending | group | . | . |
| Granary01 | unit | . | . |
| GranaryReq | questitem | . | . |
| GranaryReqInteger | integer | . | . |
| Airship | unit | . | . |
| Acolyte01 | unit | . | . |
| Acolyte02 | unit | . | . |
| BanditsCamp | group | . | . |
| AcolyteGroup | group | . | . |
| EncounterCancelled | boolean | . | false |
| StacieBang | effect | . | . |
| AchillesBang | effect | . | . |
| AlricBang | effect | . | . |
| MortarTeam01 | unit | . | . |
| MortarTeam02 | unit | . | . |
| QuestInvestigateReq | questitem | . | . |
| QuestFountainReq | questitem | . | . |
| GrainCancelled | boolean | . | false |
| EndingCancelled | boolean | . | false |
| Skeleton01 | unit | . | UnitNull |
| Skeleton02 | unit | . | UnitNull |
| Skeleton03 | unit | . | UnitNull |
| Skeleton04 | unit | . | UnitNull |
| Tax | integer | . | . |
| RiverRouteVis | fogmodifier | . | . |
| CameraPosition | location | . | . |
| DefendersGroup | group | . | . |
| BanditSightVis1 | fogmodifier | . | . |
| BanditSightVis2 | fogmodifier | . | . |
| BanditSightVis3 | fogmodifier | . | . |
| BanditSightVis4 | fogmodifier | . | . |
| BridgeVis | fogmodifier | . | . |
| SelectionGroup | group | . | . |
| PositionArthas | location | . | . |
| PositionJaina | location | . | . |
| PositionCamera | location | . | . |
| GameOver | boolean | . | false |
| GrainCinVis | fogmodifier | . | . |
| PriestsVis | fogmodifier | . | . |
| ArcherVis | fogmodifier | . | . |
| MortarTeamVis | fogmodifier | . | . |

# Triggers
## fileio
- enabled: True
- category: [40] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## map_config
- enabled: True
- category: [40] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## status
- enabled: True
- category: [40] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## heroes
- enabled: True
- category: [40] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## item_locations
- enabled: True
- category: [40] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## debug
- enabled: True
- category: [40] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## zoom
- enabled: True
- category: [40] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## irregulars
- enabled: True
- category: [40] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## AP Load Arthas
- enabled: True
- category: [40] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Load the hero data
- Action CustomScriptCode
  - param String set udg_Arthas = hero_create(0, USER_PLAYER, GetRectCenterX(gg_rct_ArthasStart), GetRectCenterY(gg_rct_ArthasStart), 90.0)
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Arthas
      - param Preset OperatorNotEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String If the hero data wasn't found, create a default hero
- Action CustomScriptCode
  - param String set udg_Arthas = CreateUnit(USER_PLAYER, 'Hart', GetRectCenterX(gg_rct_ArthasStart), GetRectCenterY(gg_rct_ArthasStart), 90.0)
- Action CustomScriptCode
  - param String set hero_abil_1[0] = 'AHhb'
- Action CustomScriptCode
  - param String set hero_abil_2[0] = 'AHds'
- Action CustomScriptCode
  - param String set hero_abil_3[0] = 'AHad'
- Action CustomScriptCode
  - param String set hero_abil_4[0] = 'AHre'


## AP Load Jaina
- enabled: True
- category: [40] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Load the hero data
- Action CustomScriptCode
  - param String set udg_Jaina = hero_create(1, Player(3), 5927.87646484375, -3474.820556640625, 3.270430326461792)
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Jaina
      - param Preset OperatorNotEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String If the hero data wasn't found, create a default hero
- Action CustomScriptCode
  - param String set udg_Jaina = CreateUnit(Player(3), 'Hjai', 5927.87646484375, -3474.820556640625, 3.270430326461792)
- Action CustomScriptCode
  - param String set hero_abil_1[1] = 'AHbz'
- Action CustomScriptCode
  - param String set hero_abil_2[1] = 'AHwe'
- Action CustomScriptCode
  - param String set hero_abil_3[1] = 'AHab'
- Action CustomScriptCode
  - param String set hero_abil_4[1] = 'AHmt'


## MapInitialization
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description
Default melee game initialization for all players
```
### Functions
- Action SetCampaignMenuRaceBJ
  - param Preset CampaignIndexH
- Action CommentString
  - param String ************
- Action SetTimeOfDay
  - param String 6.01
- Action SetSkyModel
  - param Preset SkyModelSky04
- Action CommentString
  - param String ************
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Bubble
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening01
- Action TriggerExecute
  - param Variable gg_trg_SetupOpeningAllies
- Action TriggerExecute
  - param Variable gg_trg_SetupScoreScreen
- Action TriggerExecute
  - param Variable gg_trg_SetupHeroes
- Action CommentString
  - param String Difficulty
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Easy
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Normal
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Hard
- Action CommentString
  - param String Setup Characters
- Action TriggerExecute
  - param Variable gg_trg_SetupCaptain
- Action TriggerExecute
  - param Variable gg_trg_SetupKelThuzad
- Action TriggerExecute
  - param Variable gg_trg_SetupHeroGroup
- Action CommentString
  - param String Setup Creeps and Undead
- Action TriggerExecute
  - param Variable gg_trg_SetupCreeps
- Action TriggerExecute
  - param Variable gg_trg_SetupBanditVillageGroup
- Action TriggerExecute
  - param Variable gg_trg_SetupAbomination
- Action TriggerExecute
  - param Variable gg_trg_SetupBanditCampGroup
- Action TriggerExecute
  - param Variable gg_trg_SetupAcolyteGroup
- Action TriggerExecute
  - param Variable gg_trg_SetupSkeletonGroup01
- Action TriggerExecute
  - param Variable gg_trg_SetupSkeletonGroup02
- Action TriggerExecute
  - param Variable gg_trg_SetupSkeletonArcherGroup
- Action TriggerExecute
  - param Variable gg_trg_SetupSkeletonBeforeMortars
- Action TriggerExecute
  - param Variable gg_trg_SetupSkeletonShipGroup
- Action TriggerExecute
  - param Variable gg_trg_SetupSkeletonFinalGroup
- Action TriggerExecute
  - param Variable gg_trg_SetupSkeletonsMortarFodder
- Action TriggerExecute
  - param Variable gg_trg_SetupVillagerVision
- Action CommentString
  - param String Grainary Invulnerable For Grain Cinematic
- Action SetUnitInvulnerable
  - param Variable gg_unit_ngni_0080
  - param Preset InvulnerabilityInvulnerable
- Action CommentString
  - param String Villagers and rescuable
- Action TriggerExecute
  - param Variable gg_trg_SetupStartingPartyGroup
- Action TriggerExecute
  - param Variable gg_trg_SetupPeasantPatrolGroup
- Action TriggerExecute
  - param Variable gg_trg_SetupFootmenDefendingGroup
- Action TriggerExecute
  - param Variable gg_trg_SetupPriestGroup
- Action CommentString
  - param String Alliance and Spell Settings
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypeSpells
  - param Preset OnOffOn
  - param Preset Player09
- Action SetPlayerAllianceBJ
  - param Preset Player09
  - param Preset AllianceTypeSpells
  - param Preset OnOffOn
  - param Preset Player01
- Action CommentString
  - param String Defenders Group
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Variable gg_rct_FootmenDefendingArea
      - param Preset Player09
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable DefendersGroup
- Action CommentString
  - param String *****************
- Event MapInitializationEvent


## Difficulty Easy
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Handicap
- Action SetPlayerHandicapBJ
  - param Preset Player06
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset PlayerNA
  - param Preset RealHandicapEasy
- Action CommentString
  - param String From Normal
- Action RemoveUnit
  - param Variable gg_unit_nska_0027
- Action RemoveUnit
  - param Variable gg_unit_nska_0137
- Action RemoveUnit
  - param Variable gg_unit_unec_0139
- Action RemoveUnit
  - param Variable gg_unit_nban_0140
- Action RemoveUnit
  - param Variable gg_unit_nban_0141
- Action RemoveUnit
  - param Variable gg_unit_nmrl_0142
- Action RemoveUnit
  - param Variable gg_unit_nrog_0143
- Action RemoveUnit
  - param Variable gg_unit_nska_0145
- Action RemoveUnit
  - param Variable gg_unit_nska_0144
- Action RemoveUnit
  - param Variable gg_unit_nska_0146
- Action RemoveUnit
  - param Variable gg_unit_uske_0148
- Action RemoveUnit
  - param Variable gg_unit_uske_0147
- Action RemoveUnit
  - param Variable gg_unit_nska_0149
- Action RemoveUnit
  - param Variable gg_unit_nska_0150
- Action RemoveUnit
  - param Variable gg_unit_nska_0151
- Action RemoveUnit
  - param Variable gg_unit_nska_0152
- Action RemoveUnit
  - param Variable gg_unit_nska_0153
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyEasy


## Difficulty Normal
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Variable gg_unit_nska_0027
- Action RemoveUnit
  - param Variable gg_unit_nska_0137
- Action RemoveUnit
  - param Variable gg_unit_unec_0139
- Action RemoveUnit
  - param Variable gg_unit_nban_0140
- Action RemoveUnit
  - param Variable gg_unit_nban_0141
- Action RemoveUnit
  - param Variable gg_unit_nmrl_0142
- Action RemoveUnit
  - param Variable gg_unit_nrog_0143
- Action RemoveUnit
  - param Variable gg_unit_nska_0145
- Action RemoveUnit
  - param Variable gg_unit_nska_0144
- Action RemoveUnit
  - param Variable gg_unit_nska_0146
- Action RemoveUnit
  - param Variable gg_unit_uske_0148
- Action RemoveUnit
  - param Variable gg_unit_uske_0147
- Action RemoveUnit
  - param Variable gg_unit_nska_0149
- Action RemoveUnit
  - param Variable gg_unit_nska_0150
- Action RemoveUnit
  - param Variable gg_unit_nska_0151
- Action RemoveUnit
  - param Variable gg_unit_nska_0152
- Action RemoveUnit
  - param Variable gg_unit_nska_0153
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyNormal


## Difficulty Hard
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard


## SetupOpeningAllies
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Preset Player01
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Preset Player03
  - param Preset AllianceSettingAllied
- Action CommentString
  - param String ***********************
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action CommentString
  - param String ***********************
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player03
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player01
  - param Preset AllianceSettingAlliedVision
- Action CommentString
  - param String ***********************
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player07
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player07
  - param Preset Player01
  - param Preset AllianceSettingAllied
- Action CommentString
  - param String ***********************
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player09
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action CommentString
  - param String ***********************
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Preset Player02
  - param Preset AllianceSettingAllied


## SetupHeroes
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_AP_Load_Arthas
- Action TriggerExecute
  - param Variable gg_trg_AP_Load_Jaina
- Action CommentString
  - param String Experience
- Action SetPlayerHandicapXPBJ
  - param Preset Player01
  - param String 70.00


## SetupHeroGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Variable Arthas
  - param Variable Heroes
- Action GroupAddUnitSimple
  - param Variable Jaina
  - param Variable Heroes


## SetupCaptain
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Captain
  - param Variable gg_unit_hfoo_0062


## SetupKelThuzad
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable KelThuzad
  - param Variable gg_unit_uktn_0109
- Action SetUnitInvulnerable
  - param Variable KelThuzad
  - param Preset InvulnerabilityInvulnerable


## SetupAbomination
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Abomination
  - param Variable gg_unit_uabo_0110


## SetupFootmenDefendingGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_FootmenDefendingArea
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable FootmenDefending
- Action SetPlayerAllianceStateBJ
  - param Preset Player09
  - param Preset Player06
  - param Preset AllianceSettingUnallied


## SetupBanditVillageGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_BanditsVillageArea01
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable BanditsVillage
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_BanditsVillageArea02
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable BanditsVillage


## SetupBanditCampGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Variable gg_unit_nrog_0127
  - param Variable BanditsCamp
- Action GroupAddUnitSimple
  - param Variable gg_unit_nenf_0102
  - param Variable BanditsCamp
- Action GroupAddUnitSimple
  - param Variable gg_unit_nban_0088
  - param Variable BanditsCamp


## SetupAcolyteGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Variable gg_unit_uaco_0100
  - param Variable AcolyteGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_uaco_0038
  - param Variable AcolyteGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_uaco_0095
  - param Variable AcolyteGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_uaco_0040
  - param Variable AcolyteGroup


## SetupStartingPartyGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Variable Arthas
  - param Variable StartingParty
- Action GroupAddUnitSimple
  - param Variable Jaina
  - param Variable StartingParty
- Action GroupAddUnitSimple
  - param Variable Captain
  - param Variable StartingParty
- Action GroupAddUnitSimple
  - param Variable gg_unit_hA00_0004
  - param Variable StartingParty
- Action GroupAddUnitSimple
  - param Variable gg_unit_hA00_0003
  - param Variable StartingParty


## SetupSkeletonArcherGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable SkeletonsArcher
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_SkeletonArchers


## SetupSkeletonGroup01
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable SkeletonsAmbush
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_AmbushSkeletons


## SetupSkeletonGroup02
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable SkeletonsPatrol01
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Patrol01Start
- Action ForGroup
  - param Variable SkeletonsPatrol01
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderPatrol
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Patrol01End


## SetupSkeletonShipGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable SkeletonShipGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_SkeletonShip


## SetupPeasantPatrolGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable PeasantPatrolGroup01
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_PeasantPatrolArea
- Action SetVariable
  - param Variable PeasantPatrolGroup02
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_PatrollSmallArea


## SetupSkeletonBeforeMortars
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable SkeletonBeforeMortarsGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_SkeletonBeforeMortars


## SetupSkeletonFinalGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable SkeletonFinalGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_SkeletonFinalGroup


## SetupSkeletonsMortarFodder
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable SkeletonsMortarFodder
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_SkeletonsMortarFodderStart


## SetupPriestGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Priests
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Priests


## SetupVillagerKidsJumping
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitAnimationWithRarity
  - param Variable gg_unit_nvlk_0026
  - param String stand 2
  - param Preset RarityControlFrequent
- Action SetUnitAnimationWithRarity
  - param Variable gg_unit_nvlk_0025
  - param String stand 2
  - param Preset RarityControlRare


## SetupCreeps
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Preset PlayerNA
  - param Function DoNothing
    - Action UnitSetCanSleepBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset SleepWakeOptionWake


## SetupVillagerVision
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypeSharedVision
  - param Preset OnOffOn
  - param Preset Player02


## SetupScoreScreen
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player02
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player03
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player09


## Bubble
- enabled: True
- category: [35] Bubble
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Stacie
- Action AddSpecialEffectTargetUnitBJ
  - param String overhead
  - param Variable gg_unit_nC00_0093
  - param String Abilities\Spells\Other\TalkToMe\TalkToMe.mdl
- Action SetVariable
  - param Variable StacieBang
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action CommentString
  - param String Achilles Bridge out
- Action AddSpecialEffectTargetUnitBJ
  - param String overhead
  - param Variable gg_unit_nC02_0039
  - param String Abilities\Spells\Other\TalkToMe\TalkToMe.mdl
- Action SetVariable
  - param Variable AchillesBang
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action CommentString
  - param String Alric Fountain
- Action AddSpecialEffectTargetUnitBJ
  - param String overhead
  - param Variable gg_unit_nC03_0092
  - param String Abilities\Spells\Other\TalkToMe\TalkToMe.mdl
- Action SetVariable
  - param Variable AlricBang
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ


## VillagerConcernedDead
- enabled: True
- category: [35] Bubble
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_VillagerConcernedMessage
- Action DestroyEffectBJ
  - param Variable StacieBang
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC00_0093
  - param Preset UnitEventDeath


## VillagerBridgeOutDead
- enabled: True
- category: [35] Bubble
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC02_0039
  - param Preset UnitEventDeath
- Action DisableTrigger
  - param Variable gg_trg_VillagerBridgeOutMessage
- Action DestroyEffectBJ
  - param Variable AchillesBang


## VillagerFountainQuest
- enabled: True
- category: [35] Bubble
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC03_0092
  - param Preset UnitEventDeath
- Action DisableTrigger
  - param Variable gg_trg_VillagerFountainQuest
- Action DestroyEffectBJ
  - param Variable AlricBang


## SetupQuests
- enabled: True
- category: [24] SetupQuests
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Main Investigate Villages Quest
- Action CreateQuestBJ
  - param Preset QuestTypeReqUndiscovered
  - param String TRIGSTR_018
  - param String TRIGSTR_019
  - param String ReplaceableTextures\CommandButtons\BTNfarm.tga
- Action SetVariable
  - param Variable QuestInvestigateVillages
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestInvestigateVillages
  - param String TRIGSTR_081
- Action SetVariable
  - param Variable QuestInvestigateReq
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Variable QuestInvestigateVillages
  - param String TRIGSTR_537
- Action CreateQuestItemBJ
  - param Variable QuestInvestigateVillages
  - param String TRIGSTR_538
- Action CommentString
  - param String Main Granary Quest
- Action CreateQuestBJ
  - param Preset QuestTypeReqUndiscovered
  - param String TRIGSTR_013
  - param String TRIGSTR_014
  - param String ReplaceableTextures\CommandButtons\BTNfarm.tga
- Action SetVariable
  - param Variable QuestDestroyGranary
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestDestroyGranary
  - param String TRIGSTR_109
- Action SetVariable
  - param Variable GranaryReq
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CommentString
  - param String Side Fountain of Health Quest
- Action CreateQuestBJ
  - param Preset QuestTypeOptUndiscovered
  - param String TRIGSTR_016
  - param String TRIGSTR_017
  - param String ReplaceableTextures\CommandButtons\BTNFountainoflife.tga
- Action SetVariable
  - param Variable QuestFountain
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestFountain
  - param String TRIGSTR_063
- Action SetVariable
  - param Variable QuestFountainReq
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ


## Next Level Run
- enabled: True
- category: [9] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Run next level
- Action SetNextLevelBJ
  - param String Maps\Archipelago\Human04.w3x
- Action CustomVictoryBJ
  - param Preset Player01
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse


## Victory Cheat
- enabled: True
- category: [9] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run
- Event TriggerRegisterPlayerEventVictory
  - param Preset Player01


## DefeatCheat
- enabled: True
- category: [9] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Preset Player01
  - param String TRIGSTR_012
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player01


## OpeningCancelled
- enabled: True
- category: [2] CinematicOpening
- starts off: True
- is custom text: False
- run on map init: False
```description
Activated from 'MapInitialization'
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable OpeningCancelled
  - param String true
- Action CommentString
  - param String ******************
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontDont
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Jaina
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable gg_unit_nogr_0009
- Action SetUnitPositionLoc
  - param Variable Jaina
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaMove02
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasMove02
- Action SetUnitPositionLoc
  - param Variable Captain
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Captain1b
- Action SetUnitPositionLoc
  - param Variable gg_unit_hA00_0003
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman1b
- Action SetUnitPositionLoc
  - param Variable gg_unit_hA00_0004
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman2b
- Action ForGroup
  - param Variable StartingParty
  - param Function DoNothing
    - Action SetUnitFacingToFaceLocTimed
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_FacingPoint
      - param String 0.00
- Action SetUnitInvulnerable
  - param Variable Jaina
  - param Preset InvulnerabilityVulnerable
- Action SetUnitLifePercentBJ
  - param Variable Jaina
  - param String 100.00
- Action SetUnitManaPercentBJ
  - param Variable Jaina
  - param String 100
- Action RemoveUnit
  - param Variable gg_unit_nogr_0008
- Action SetUnitInvulnerable
  - param Variable gg_unit_nogr_0009
  - param Preset InvulnerabilityVulnerable
- Action SetUnitPositionLoc
  - param Variable gg_unit_nogr_0009
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OgreHide
- Action SetUnitLifePercentBJ
  - param Variable gg_unit_nogr_0009
  - param String 10.00
- Action ForGroup
  - param Function GetUnitsOfTypeIdAll
    - Function GetUnitsOfTypeIdAll
      - param String hwat
  - param Function DoNothing
    - Action KillUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Preset Player01
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset PlayerNA
  - param Preset AllianceSettingUnallied
- Action SetUnitOwner
  - param Variable Jaina
  - param Preset Player01
  - param Preset ChangeColorTrue
- Action SuspendHeroXPBJ
  - param Preset EnableDisableEnable
  - param Variable Jaina
- Action ResetUnitLookAt
  - param Variable Arthas
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action TriggerSleepAction
  - param String 0.20
- Action KillUnit
  - param Variable WaterElemental
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SelectUnitSingle
  - param Variable Arthas
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ResetCam
  - param String 0
- Action SetSkyModel
  - param Preset SkyModelNone
- Action ResetTerrainFogBJ
- Action CommentString
  - param String ******************
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupQuests
- Action TriggerSleepAction
  - param String 2.00
- Action QuestSetDiscoveredBJ
  - param Variable QuestInvestigateVillages
  - param Preset DiscoveredOptionDiscovered
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_078
- Action TriggerSleepAction
  - param String 10.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Ogre01
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Water_Elemental_Hint_Queued
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## Opening01
- enabled: True
- category: [2] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description
Default melee game initialization for all players
```
### Functions
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop01
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop02
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop03
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop04
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop05
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop06
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop07
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop08
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop09
- Action SetTerrainFogExBJ
  - param String 0
  - param String 1000
  - param String 8000
  - param String 0
  - param String 20.00
  - param String 90.00
  - param String 20.00
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable Jaina
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable gg_unit_nogr_0008
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable gg_unit_nogr_0009
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player03
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CommentString
  - param String Music
- Action ClearMapMusicBJ
- Action TriggerSleepAction
  - param String 0.01
- Action PlayThematicMusicBJ
  - param Preset MusicThemeComradeship
- Action SetMapMusicIndexedBJ
  - param Preset MusicFileMusic
  - param String 2
- Action CommentString
  - param String ***********************
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_OpeningCancelled
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Camera_001
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Camera_002
  - param Preset Player01
  - param String 13.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Captain
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CaptainMoveStart
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Captain
  - param String 0.50
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Captain
  - param String TRIGSTR_074
  - param Variable gg_snd_H03Captain01
  - param String TRIGSTR_075
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitLookAt
  - param Variable Arthas
  - param Preset UnitFacingBoneHead
  - param Variable Captain
  - param String 0
  - param String 0
  - param String 80.00
- Action TriggerSleepAction
  - param String 4.40
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Captain01
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_072
  - param Variable gg_snd_H03Arthas02
  - param String TRIGSTR_073
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Arthas02
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetSmoothingFactorBJ
  - param String 0.00
- Action VolumeGroupResetBJ
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Camera_003
  - param Preset Player01
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Jaina
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable gg_unit_nogr_0008
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable gg_unit_nogr_0009
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_StartJaina
- Action IssuePointOrderLoc
  - param Variable gg_unit_nogr_0008
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ogre_Attack_Move
- Action IssuePointOrderLoc
  - param Variable gg_unit_nogr_0009
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ogre_Attack_Move
- Action TriggerSleepAction
  - param String 1.80
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitLookAt
  - param Variable Arthas
  - param Preset UnitFacingBoneHead
  - param Variable Jaina
  - param String 0
  - param String 0
  - param String 80.00
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Jaina
  - param String 0.15
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Captain
  - param Variable Jaina
  - param String 0.15
- Action SetUnitAnimation
  - param Variable gg_unit_hA00_0004
  - param String stand
- Action SetUnitAnimation
  - param Variable gg_unit_hA00_0003
  - param String stand
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Captain
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_StartCaptain
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Captain
  - param String TRIGSTR_066
  - param Variable gg_snd_H03Captain03
  - param String TRIGSTR_067
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Captain03
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable Arthas
  - param String stand
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_057
  - param Variable gg_snd_H03Arthas04
  - param String TRIGSTR_065
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 0.18
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetSmoothingFactorBJ
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_OgreBattle01
  - param Preset Player01
  - param String 0.00
- Action SetUnitAnimation
  - param Variable Captain
  - param String stand
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 2.00
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Arthas04
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_StartArthas
- Action CommentString
  - param String ***********************
- Action TriggerExecute
  - param Variable gg_trg_Opening02


## Opening02
- enabled: True
- category: [2] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable OpeningCancelled
  - param Preset OperatorEqualENE
  - param String false
- Action SetUnitLifeBJ
  - param Variable gg_unit_nogr_0008
  - param String 1.00
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_hA00_0003
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman02
- Action IssuePointOrderLoc
  - param Variable gg_unit_hA00_0004
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman01
- Action CommentString
  - param String ***********************
- Action TriggerExecute
  - param Variable gg_trg_Opening03


## Opening03
- enabled: True
- category: [2] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Condition OperatorCompareBoolean
  - param Variable OpeningCancelled
  - param Preset OperatorEqualENE
  - param String false
- Action CameraSetSmoothingFactorBJ
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Camera_005
  - param Preset Player01
  - param String 0.00
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasPost
- Action IssuePointOrderLoc
  - param Variable Captain
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CaptainPost
- Action SetUnitManaBJ
  - param Variable Jaina
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable Jaina
- Action SetUnitLifePercentBJ
  - param Variable Jaina
  - param String 100.00
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Jaina
  - param String 0.10
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaPost
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_084
  - param Variable gg_snd_H03Arthas05
  - param String TRIGSTR_087
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable WaterElemental
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_WaterElementalPost
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Arthas05
  - param String 0.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ResetUnitLookAt
  - param Variable Arthas
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas
  - param Preset Player01
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_090
  - param Variable gg_snd_H03Arthas06
  - param String TRIGSTR_091
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Arthas06
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Jaina
  - param Preset Player01
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Jaina
  - param String TRIGSTR_092
  - param Variable gg_snd_H03Jaina07
  - param String TRIGSTR_093
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Jaina07
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas
  - param Preset Player01
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_094
  - param Variable gg_snd_H03Arthas08
  - param String TRIGSTR_095
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Arthas08
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Jaina
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_GroupShot
  - param Preset Player01
  - param String 6.00
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Jaina
  - param Variable WaterElemental
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable Jaina
  - param String spell
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_DivineShield
  - param Variable Jaina
- Action SetSoundVolumeBJ
  - param Variable gg_snd_DivineShield
  - param String 40.00
- Action PlaySoundBJ
  - param Variable gg_snd_DivineShield
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action KillUnit
  - param Variable WaterElemental
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSpeechVolumeGroupsBJ
- Action CommentString
  - param String ***********************
- Action TriggerExecute
  - param Variable gg_trg_Opening04


## Opening04
- enabled: True
- category: [2] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable OpeningCancelled
  - param Preset OperatorEqualENE
  - param String false
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaMove01
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasMove01
- Action TriggerSleepAction
  - param String 1.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Formation
  - param Preset Player01
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Captain
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Captain1a
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Jaina
  - param String TRIGSTR_096
  - param Variable gg_snd_H03Jaina09
  - param String TRIGSTR_097
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Jaina
  - param String 0.15
- Action TriggerSleepAction
  - param String 1.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Captain
  - param Variable Jaina
  - param String 0.15
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Jaina09
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasMove02
  - param String 6.00
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaMove02
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasMove02
- Action IssuePointOrderLoc
  - param Variable Captain
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Captain1b
- Action IssuePointOrderLoc
  - param Variable gg_unit_hA00_0004
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman1b
- Action IssuePointOrderLoc
  - param Variable gg_unit_hA00_0003
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman2b
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_OpeningCancelled
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 1.05
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitOwner
  - param Variable Jaina
  - param Preset Player01
  - param Preset ChangeColorTrue
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetUnitInvulnerable
  - param Variable Jaina
  - param Preset InvulnerabilityVulnerable
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Preset Player01
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset PlayerNA
  - param Preset AllianceSettingUnallied
- Action SetUserControlForceOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SuspendHeroXPBJ
  - param Preset EnableDisableEnable
  - param Variable Jaina
- Action SetSkyModel
  - param Preset SkyModelNone
- Action ResetTerrainFogBJ
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action CommentString
  - param String ***********************
- Action SelectUnitSingle
  - param Variable Arthas
- Action SetVariable
  - param Variable OpeningCancelled
  - param String true
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupQuests
- Action TriggerSleepAction
  - param String 2.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_076
- Action QuestSetDiscoveredBJ
  - param Variable QuestInvestigateVillages
  - param Preset DiscoveredOptionDiscovered
- Action TriggerSleepAction
  - param String 10.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Ogre01
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Water_Elemental_Hint_Queued
  - param Preset CheckingIgnoringChecking


## OgreRun
- enabled: True
- category: [2] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description
Disabled the .01 second wait because it was preventing the ogre from running away via the Unit order 'Move To' trigger.
```
### Functions
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player03
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action TriggerSleepAction
  - param String 0.50
- Action IssuePointOrderLoc
  - param Variable gg_unit_nogr_0009
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OgreHide
- Action SetUnitInvulnerable
  - param Variable gg_unit_nogr_0009
  - param Preset InvulnerabilityInvulnerable
- Action TriggerSleepAction
  - param String 5.00
- Action SetUnitInvulnerable
  - param Variable gg_unit_nogr_0009
  - param Preset InvulnerabilityVulnerable
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitLifePercentBJ
  - param Variable gg_unit_nogr_0009
  - param String 10.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitPositionLoc
  - param Variable gg_unit_nogr_0009
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OgreHide
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitFacingToFaceLocTimed
  - param Variable gg_unit_nogr_0009
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OgreFace
  - param String 0
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nogr_0008
  - param Preset UnitEventDeath


## JainaKillOgre
- enabled: True
- category: [2] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssueImmediateOrder
  - param Variable Jaina
  - param Preset UnitOrderStop
- Action TriggerSleepAction
  - param String 0.05
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitInvulnerable
  - param Variable Jaina
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Jaina
  - param Variable gg_unit_nogr_0008
  - param String 0.15
- Action TriggerSleepAction
  - param String 0.25
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CustomScriptCode
  - param String set udg_WaterElemental = CreateUnit(Player(3), 'hwt2', GetUnitX(udg_Jaina) + 180.0, GetUnitY(udg_Jaina) - 60.0, 45.0)
- Action SetUnitAnimation
  - param Variable WaterElemental
  - param String birth
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOff
  - param Preset Player03
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOff
  - param Preset PlayerNA
- Action IssueTargetOrder
  - param Variable WaterElemental
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_nogr_0008
- Action IssueTargetOrder
  - param Variable Jaina
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_nogr_0008
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Jaina
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_StartJaina


## JainaPost
- enabled: True
- category: [2] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssueImmediateOrder
  - param Variable Jaina
  - param Preset UnitOrderStop
- Action TriggerSleepAction
  - param String 0.05
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Jaina
  - param Variable Arthas
  - param String 0.10
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Jaina
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_JainaPost


## Water Elemental Hint Queued
- enabled: True
- category: [2] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_675
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## GrainCinematicCancelled
- enabled: True
- category: [30] CinematicGrain
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_JainaFaceGrainery
- Action DisableTrigger
  - param Variable gg_trg_ArthasFaceGrainery
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable Grain01Cancelled
  - param String true
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action StopSoundBJ
  - param Variable gg_snd_LordaeronSummerFliesLoop1
  - param Preset FadeDontFade
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.50
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.50
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset PlayerNP
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetUnitInvulnerable
  - param Variable gg_unit_ngni_0080
  - param Preset InvulnerabilityVulnerable
- Action DestroyFogModifier
  - param Variable GrainCinVis
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Variable PositionCamera
  - param String 0
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Variable PositionArthas
- Action SetUnitPositionLoc
  - param Variable Jaina
  - param Variable PositionJaina
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player01
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action SelectGroupBJ
  - param Variable SelectionGroup
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_Grain01_Queue
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## Grain01
- enabled: True
- category: [30] CinematicGrain
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Grain01_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Preset UnitTypeHero
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable Grain01Cancelled
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_GrainArea


## Grain01 Queue
- enabled: True
- category: [30] CinematicGrain
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable PositionArthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action SetVariable
  - param Variable PositionJaina
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Jaina
- Action SetVariable
  - param Variable PositionCamera
  - param Function CameraSetupGetDestPositionLoc
    - Function CameraSetupGetDestPositionLoc
      - param Function GetCurrentCameraSetup
        - Function GetCurrentCameraSetup
- Action SetVariable
  - param Variable SelectionGroup
  - param Function GetUnitsSelectedAll
    - Function GetUnitsSelectedAll
      - param Preset Player01
- Action ClearSelection
- Action CommentString
  - param String Music
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action CommentString
  - param String ***********************
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Function DoNothing
    - Action UnitRemoveBuffsBJ
      - param Preset BuffTypeAll
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player03
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset PlayerNP
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GrainArea
  - param String 1024.00
- Action SetVariable
  - param Variable GrainCinVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_GrainCinematicCancelled
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Grain01Cancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player01
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ShowUnitShow
  - param Variable Arthas
- Action ShowUnitShow
  - param Variable Jaina
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Jaina
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasGranaryTeleport
- Action SetUnitPositionLoc
  - param Variable Jaina
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaGranaryTeleport
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Granary02
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Granary01
  - param Preset Player01
  - param Function OperatorReal
    - Function OperatorReal
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Variable gg_snd_H03Jaina18
      - param Preset OperatorAdd
      - param Function OperatorReal
        - Function OperatorReal
          - param Function GetSoundDurationBJ
            - Function GetSoundDurationBJ
              - param Variable gg_snd_H03Arthas19
          - param Preset OperatorAdd
          - param Function GetSoundDurationBJ
            - Function GetSoundDurationBJ
              - param Variable gg_snd_H03Jaina20
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_LordaeronSummerFliesLoop1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FlySound
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_LordaeronSummerFliesLoop1
  - param String 80.00
- Action PlaySoundBJ
  - param Variable gg_snd_LordaeronSummerFliesLoop1
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Grain01Cancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasGranaryPost
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaGranaryPost
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Grain01Cancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String ***********************
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Jaina
  - param String TRIGSTR_302
  - param Variable gg_snd_H03Jaina18
  - param String TRIGSTR_303
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Grain01Cancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Jaina18
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Grain01Cancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_304
  - param Variable gg_snd_H03Arthas19
  - param String TRIGSTR_305
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Grain01Cancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Jaina
  - param String TRIGSTR_306
  - param Variable gg_snd_H03Jaina20
  - param String TRIGSTR_307
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Jaina20
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Grain01Cancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_GrainCinematicCancelled
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action StopSoundBJ
  - param Variable gg_snd_LordaeronSummerFliesLoop1
  - param Preset FadeDontFade
- Action TriggerSleepAction
  - param String 1.00
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Variable PositionCamera
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action DestroyFogModifier
  - param Variable GrainCinVis
- Action CommentString
  - param String ***********************
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Variable PositionArthas
- Action SetUnitPositionLoc
  - param Variable Jaina
  - param Variable PositionJaina
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset PlayerNP
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player01
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action SelectGroupBJ
  - param Variable SelectionGroup
- Action SetUnitInvulnerable
  - param Variable gg_unit_ngni_0080
  - param Preset InvulnerabilityVulnerable
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetVariable
  - param Variable Grain01Cancelled
  - param String true
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## JainaFaceGrainery
- enabled: True
- category: [30] CinematicGrain
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 0.10
- Action IssueImmediateOrder
  - param Variable Jaina
  - param Preset UnitOrderStop
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Jaina
  - param Variable gg_unit_ngni_0080
  - param String 0.15
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Jaina
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_JainaGranaryPost


## ArthasFaceGrainery
- enabled: True
- category: [30] CinematicGrain
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 0.10
- Action IssueImmediateOrder
  - param Variable Arthas
  - param Preset UnitOrderStop
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable gg_unit_ngni_0080
  - param String 0.15
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_ArthasGranaryPost


## Priests
- enabled: True
- category: [8] CinematicPriests
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Priest_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_PriestsStartArea


## Priest Queue
- enabled: True
- category: [8] CinematicPriests
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action CommentString
  - param String ****************************************
- Action IssuePointOrderLoc
  - param Variable gg_unit_hmpr_0073
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Priest01GranaryPost
- Action RescueUnitBJ
  - param Variable gg_unit_hmpr_0073
  - param Preset Player01
  - param Preset ChangeColorTrue
- Action CustomScriptCode
  - param String call status_check_location(22)
- Action CustomScriptCode
  - param String call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "Got an |cffee1166Archipelago location|r (Priest Rescue)")
- Action TriggerSleepAction
  - param String 0.20
- Action IssuePointOrderLoc
  - param Variable gg_unit_hmpr_0072
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Priest02GranaryPost
- Action RescueUnitBJ
  - param Variable gg_unit_hmpr_0072
  - param Preset Player01
  - param Preset ChangeColorTrue
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Priest02GranaryPost
  - param String 1.00
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Priests
  - param String 1024.00
- Action SetVariable
  - param Variable PriestsVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hmtm
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MortarTeamCreate01
  - param String 45.00
- Action SetVariable
  - param Variable MortarTeam01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetPlayerAllianceStateBJ
  - param Preset Player09
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player09
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player09
  - param Preset AllianceSettingAllied
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_hmpr_0072
  - param String TRIGSTR_608
  - param Variable gg_snd_H03Priest21
  - param String TRIGSTR_609
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function RectContainsUnit
        - Function RectContainsUnit
          - param Variable gg_rct_Priest_ArthasJaina_Here
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Jaina
      - param String TRIGSTR_639
      - param Variable gg_snd_H03Jaina22
      - param String TRIGSTR_640
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_hmpr_0072
  - param String TRIGSTR_614
  - param Variable gg_snd_H03Priest23
  - param String TRIGSTR_615
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function RectContainsUnit
        - Function RectContainsUnit
          - param Variable gg_rct_Priest_ArthasJaina_Here
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Arthas
      - param String TRIGSTR_629
      - param Variable gg_snd_H03Arthas24
      - param String TRIGSTR_630
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_620
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action CommentString
  - param String ***********************
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DestroyFogModifier
  - param Variable PriestsVis
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_621
- Action QuestSetCompletedBJ
  - param Variable QuestInvestigateVillages
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestInvestigateReq
  - param Preset CompletionOptionCompleted
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_622
- Action QuestSetDiscoveredBJ
  - param Variable QuestDestroyGranary
  - param Preset DiscoveredOptionDiscovered
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Granary_Warehouse_Ping
  - param String 1024.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Granary_Warehouse_Ping
  - param String 6.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Granary_Warehouse_Ping
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## EndingCancelled
- enabled: True
- category: [23] CinematicEnding
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable EndingCancelled
  - param String true
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Victory


## Ending01
- enabled: True
- category: [23] CinematicEnding
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerClearBJ
- Action SetUnitTimeScalePercent
  - param Variable gg_unit_ngwr_0074
  - param String 50.00
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action DisableTrigger
  - param Variable gg_trg_DefeatArthasDeath
- Action DisableTrigger
  - param Variable gg_trg_DefeatJainaDeath
- Action DisableTrigger
  - param Variable gg_trg_AbominationDies
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable Jaina
  - param Preset InvulnerabilityInvulnerable
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Ending01_Queue
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_ngwr_0074
  - param Preset UnitEventDeath


## Ending01 Queue
- enabled: True
- category: [23] CinematicEnding
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String **************
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_593
- Action QuestSetCompletedBJ
  - param Variable QuestDestroyGranary
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable GranaryReq
  - param Preset CompletionOptionCompleted
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player01
  - param Function DoNothing
    - Action SetUnitLifePercentBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String 100
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action TriggerSleepAction
  - param String 1.00
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDefeatHuman
- Action SetSkyModel
  - param Preset SkyModelSky04
- Action ClearSelection
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Jaina
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Preset Player01
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Preset Player06
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ShowUnitShow
  - param Variable Abomination
- Action ShowUnitShow
  - param Variable Arthas
- Action ShowUnitShow
  - param Variable Jaina
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Jaina
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Abomination
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_FinalCin1
  - param Preset Player01
  - param String 0
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FinalCin_Arthas
- Action SetUnitPositionLocFacingLocBJ
  - param Variable Jaina
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FinalCin_Jaina
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Abomination
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Abomination
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_FinalCin_Abomination
  - param Function DoNothing
    - Action DoNothing
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.50
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_EndingCancelled
- Action TriggerSleepAction
  - param String 1.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndingCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action KillUnit
  - param Variable Abomination
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Jaina
  - param String 0.30
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndingCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_594
  - param Variable gg_snd_H03Arthas36
  - param String TRIGSTR_595
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_FinalCin2
  - param Preset Player00
  - param String 10.00
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Arthas36
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndingCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Jaina
  - param String TRIGSTR_596
  - param Variable gg_snd_H03Jaina37
  - param String TRIGSTR_597
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Jaina37
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndingCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_598
  - param Variable gg_snd_H03Arthas38
  - param String TRIGSTR_599
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Arthas38
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndingCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DisableTrigger
  - param Variable gg_trg_EndingCancelled
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Victory
- Action CommentString
  - param String ***********************


## EncounterCancelled
- enabled: True
- category: [23] CinematicEnding
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable EncounterCancelled
  - param String true
- Action EndThematicMusicBJ
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.50
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.50
- Action RemoveUnit
  - param Variable Skeleton01
- Action SetVariable
  - param Variable Skeleton01
  - param Preset UnitNull
- Action RemoveUnit
  - param Variable Skeleton02
- Action SetVariable
  - param Variable Skeleton02
  - param Preset UnitNull
- Action RemoveUnit
  - param Variable Skeleton03
- Action SetVariable
  - param Variable Skeleton03
  - param Preset UnitNull
- Action RemoveUnit
  - param Variable Skeleton04
- Action SetVariable
  - param Variable Skeleton04
  - param Preset UnitNull
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontDont
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 1.00
- Action SmartCameraPanBJ
  - param Preset Player01
  - param Variable PositionCamera
  - param String 1.00
- Action DisableTrigger
  - param Variable gg_trg_AcolytesBusy
- Action RemoveUnit
  - param Variable gg_unit_uaco_0038
- Action RemoveUnit
  - param Variable gg_unit_uaco_0040
- Action RemoveUnit
  - param Variable gg_unit_uaco_0095
- Action RemoveUnit
  - param Variable gg_unit_uaco_0100
- Action RemoveUnit
  - param Variable KelThuzad
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingUnallied
- Action KillDestructable
  - param Variable gg_dest_LTba_2334
- Action KillDestructable
  - param Variable gg_dest_LTcr_2310
- Action KillDestructable
  - param Variable gg_dest_LTcr_2312
- Action KillDestructable
  - param Variable gg_dest_LTcr_2313
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Skeleton01
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String uske
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_EndCrate01
      - param String 270.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Skeleton01
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action SetVariable
      - param Variable Skeleton01
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Skeleton02
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String uske
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_EndCrate02
      - param String 270.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Skeleton02
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action SetVariable
      - param Variable Skeleton02
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Skeleton03
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String uske
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_EndCrate03
      - param String 270.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Skeleton03
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action SetVariable
      - param Variable Skeleton03
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Skeleton04
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String uske
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_EndCrate04
      - param String 270.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Skeleton04
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action SetVariable
      - param Variable Skeleton04
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Abomination
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
- Action IssuePointOrderLoc
  - param Variable Skeleton01
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
- Action IssuePointOrderLoc
  - param Variable Skeleton02
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
- Action IssuePointOrderLoc
  - param Variable Skeleton03
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
- Action IssuePointOrderLoc
  - param Variable Skeleton04
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable Jaina
  - param Preset InvulnerabilityVulnerable
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectGroupBJ
  - param Variable SelectionGroup
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## Encounter
- enabled: True
- category: [23] CinematicEnding
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Granary03Area
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable PositionCamera
  - param Function CameraSetupGetDestPositionLoc
    - Function CameraSetupGetDestPositionLoc
      - param Function GetCurrentCameraSetup
        - Function GetCurrentCameraSetup
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable Jaina
  - param Preset InvulnerabilityInvulnerable
- Action QueuedTriggerClearBJ
- Action ConditionalTriggerExecute
  - param Variable gg_trg_MortarTeamDialogue_DESTRUCTION
- Action CommentString
  - param String Music
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action CommentString
  - param String **********
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetVariable
  - param Variable SelectionGroup
  - param Function GetUnitsSelectedAll
    - Function GetUnitsSelectedAll
      - param Preset Player01
- Action ClearSelection
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Abomination
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable KelThuzad
- Action ForGroup
  - param Variable AcolyteGroup
  - param Function DoNothing
    - Action PauseUnitBJ
      - param Preset PauseUnpauseOptionUnpause
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action TriggerSleepAction
  - param String 0.80
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Function DoNothing
    - Action UnitRemoveBuffsBJ
      - param Preset BuffTypeAll
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Ending01
  - param Preset Player01
  - param String 2.50
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingAllied
- Action SetUnitFacingToFaceLocTimed
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
  - param String 0.20
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_EncounterCancelled
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_077
  - param Variable gg_snd_H03KelThuzad32
  - param String TRIGSTR_080
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ForGroup
  - param Variable AcolyteGroup
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderMove
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Exit
- Action DisableTrigger
  - param Variable gg_trg_AcolytesBusy
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable KelThuzad
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadPost
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceLocTimed
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
  - param String 0.25
- Action WaitForSoundBJ
  - param Variable gg_snd_H03KelThuzad32
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_085
  - param Variable gg_snd_H03KelThuzad33
  - param String TRIGSTR_086
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 1.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Skeleton01
- Action SetUnitFacingToFaceLocTimed
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndCrate01
  - param String 0
- Action SetUnitAnimation
  - param Variable KelThuzad
  - param String stand channel
- Action KillDestructable
  - param Variable gg_dest_LTcr_2313
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uske
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndCrate01
  - param String 300.00
- Action SetVariable
  - param Variable Skeleton01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String birth
- Action SetSoundVolumeBJ
  - param Variable gg_snd_RaiseSkeleton
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_RaiseSkeleton
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Skeleton02
- Action SetUnitFacingToFaceLocTimed
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndCrate02
  - param String 0
- Action SetUnitAnimation
  - param Variable KelThuzad
  - param String stand channel
- Action KillDestructable
  - param Variable gg_dest_LTcr_2312
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uske
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndCrate02
  - param String 120.00
- Action SetVariable
  - param Variable Skeleton02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String birth
- Action SetSoundVolumeBJ
  - param Variable gg_snd_RaiseSkeleton01
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_RaiseSkeleton01
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Skeleton03
- Action SetUnitFacingToFaceLocTimed
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndCrate03
  - param String 0
- Action SetUnitAnimation
  - param Variable KelThuzad
  - param String stand channel
- Action KillDestructable
  - param Variable gg_dest_LTcr_2310
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uske
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndCrate03
  - param String 256.00
- Action SetVariable
  - param Variable Skeleton03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String birth
- Action SetSoundVolumeBJ
  - param Variable gg_snd_RaiseSkeleton02
  - param String 80.00
- Action PlaySoundBJ
  - param Variable gg_snd_RaiseSkeleton02
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Skeleton04
- Action SetUnitFacingToFaceLocTimed
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndCrate04
  - param String 0
- Action SetUnitAnimation
  - param Variable KelThuzad
  - param String stand channel
- Action KillDestructable
  - param Variable gg_dest_LTba_2334
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uske
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndCrate04
  - param String 0.00
- Action SetVariable
  - param Variable Skeleton04
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String birth
- Action SetSoundVolumeBJ
  - param Variable gg_snd_RaiseSkeleton03
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_RaiseSkeleton03
- Action CommentString
  - param String ***********
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H03KelThuzad33
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action RemoveGuardPosition
  - param Variable KelThuzad
- Action IssuePointOrderLoc
  - param Variable KelThuzad
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Exit
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Ending02
  - param Preset Player01
  - param String 0
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_AbominationYesAttack2
  - param Variable Abomination
- Action SetSoundVolumeBJ
  - param Variable gg_snd_AbominationYesAttack2
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_AbominationYesAttack2
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Jaina
  - param String TRIGSTR_088
  - param Variable gg_snd_H03Jaina34
  - param String TRIGSTR_089
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Ending03
  - param Preset Player01
  - param String 3.50
- Action IssuePointOrderLoc
  - param Variable Abomination
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_AbominationPissed5
  - param Variable Abomination
- Action SetSoundVolumeBJ
  - param Variable gg_snd_AbominationPissed5
  - param String 50.00
- Action PlaySoundBJ
  - param Variable gg_snd_AbominationPissed5
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_098
  - param Variable gg_snd_H03Arthas35
  - param String TRIGSTR_099
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 2.00
- Action SmartCameraPanBJ
  - param Preset Player01
  - param Variable PositionCamera
  - param String 1.00
- Action RemoveUnit
  - param Variable KelThuzad
- Action RemoveUnit
  - param Variable gg_unit_uaco_0038
- Action RemoveUnit
  - param Variable gg_unit_uaco_0040
- Action RemoveUnit
  - param Variable gg_unit_uaco_0095
- Action RemoveUnit
  - param Variable gg_unit_uaco_0100
- Action EndThematicMusicBJ
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EncounterCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_EncounterCancelled
- Action IssuePointOrderLoc
  - param Variable Abomination
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
- Action IssuePointOrderLoc
  - param Variable Skeleton01
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
- Action IssuePointOrderLoc
  - param Variable Skeleton02
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
- Action IssuePointOrderLoc
  - param Variable Skeleton03
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
- Action IssuePointOrderLoc
  - param Variable Skeleton04
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AbominationAttack_2
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingUnallied
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop01
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop02
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop03
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop04
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop05
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop06
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop07
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop08
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop09
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectGroupBJ
  - param Variable SelectionGroup
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable Jaina
  - param Preset InvulnerabilityVulnerable


## MortarTeamDialogue DESTRUCTION
- enabled: True
- category: [23] CinematicEnding
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_MortarTeamDialogue
- Action StopSoundBJ
  - param Variable gg_snd_H03Arthas25
  - param Preset FadeDontFade
- Action StopSoundBJ
  - param Variable gg_snd_H03Arthas27
  - param Preset FadeDontFade
- Action StopSoundBJ
  - param Variable gg_snd_H03Dwarf26
  - param Preset FadeDontFade
- Action VolumeGroupResetBJ


## AcolytesBusy
- enabled: True
- category: [23] CinematicEnding
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Variable AcolyteGroup
  - param Function DoNothing
    - Action SetUnitAnimation
      - param Function GroupPickRandomUnit
        - Function GroupPickRandomUnit
          - param Variable AcolyteGroup
      - param String attack
- Event TriggerRegisterTimerEventPeriodic
  - param String 0.50


## AbominationDies
- enabled: True
- category: [23] CinematicEnding
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerClearBJ
- Action TriggerSleepAction
  - param String 2.00
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_562
  - param Variable gg_snd_H03Arthas31
  - param String TRIGSTR_563
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_uabo_0110
  - param Preset UnitEventDeath


## Spawn Ghouls
- enabled: True
- category: [23] CinematicEnding
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ghoul02
  - param String 180.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadAppear
- Action TriggerSleepAction
  - param String 0.50
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ghoul01
  - param String 180.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadAppear
- Action TriggerSleepAction
  - param String 0.50
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ghoul02
  - param String 180.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadAppear
- Action TriggerSleepAction
  - param String 0.50
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ghoul01
  - param String 180.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadAppear
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_ngwr_0074
  - param Preset UnitEventDamaged


## SheepOgreArea
- enabled: True
- category: [26] SheepContainmentAreas
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nshe_0081
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SheepArea
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param String nshe
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_SheepArea


## SheepBanditArea
- enabled: True
- category: [26] SheepContainmentAreas
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SheepBanditArea
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param String nshe
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_SheepBanditArea


## SkeletonShip
- enabled: True
- category: [19] RandomizerPatrols
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 1.00
- Action IssuePointOrderLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Variable SkeletonShipGroup
  - param Preset UnitOrderAttack
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_SkeletonShip


## SkeletonFinal
- enabled: True
- category: [19] RandomizerPatrols
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 1.00
- Action IssuePointOrderLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Variable SkeletonFinalGroup
  - param Preset UnitOrderAttack
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_SkeletonFinalGroup
- Action IssuePointOrderLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Variable SkeletonFinalGroup
  - param Preset UnitOrderAttack
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_SkeletonFinalGroup


## SkeletonBeforeMortars
- enabled: True
- category: [19] RandomizerPatrols
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 1.00
- Action IssuePointOrderLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Variable SkeletonBeforeMortarsGroup
  - param Preset UnitOrderAttack
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_SkeletonBeforeMortars


## PeasantPatrolSmall
- enabled: True
- category: [19] RandomizerPatrols
- starts off: False
- is custom text: False
- run on map init: False
```description
Activated from 'BanditsAllDie'
Turns off when 'BanditsAttack' starts

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 4.00
- Action IssuePointOrderLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Variable PeasantPatrolGroup02
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_PatrollSmallArea


## PeasantPatrolHello01
- enabled: True
- category: [19] RandomizerPatrols
- starts off: False
- is custom text: False
- run on map init: False
```description
Turns off when 'BanditsAttack' starts

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 4.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0010
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_PatrolHello01area


## PeasantPatrol
- enabled: True
- category: [19] RandomizerPatrols
- starts off: True
- is custom text: False
- run on map init: False
```description
Turned on from 'BanditsAllDie'
```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 4.00
- Action IssuePointOrderLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Variable PeasantPatrolGroup01
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_PeasantPatrolArea
- Action IssuePointOrderLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Variable PeasantPatrolGroup01
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_PeasantPatrolArea


## StartKidsRunning
- enabled: True
- category: [21] KidsPlaying
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventSingle
  - param String 5.00
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlk_0026
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillagerKidsRunning03
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlk_0025
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillagerKidsRunning02
- Action EnableTrigger
  - param Variable gg_trg_KidsRunningDest01
- Action EnableTrigger
  - param Variable gg_trg_KidsRunningDest02
- Action EnableTrigger
  - param Variable gg_trg_KidsRunningDest03


## KidsRunningArea
- enabled: True
- category: [21] KidsPlaying
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable gg_unit_nvlk_0025
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable gg_unit_nvlk_0026
  - param Preset OperatorEqualENE
  - param String true
- Action IssueImmediateOrder
  - param Variable gg_unit_nvlk_0026
  - param Preset UnitOrderStop
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_nvlk_0026
  - param Variable Arthas
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.20
- Action IssueImmediateOrder
  - param Variable gg_unit_nvlk_0025
  - param Preset UnitOrderStop
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_nvlk_0025
  - param Variable Arthas
  - param String 0.00
- Action DisableTrigger
  - param Variable gg_trg_KidsRunningDest01
- Action DisableTrigger
  - param Variable gg_trg_KidsRunningDest02
- Action DisableTrigger
  - param Variable gg_trg_KidsRunningDest03
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_KidsRunningArea


## KidsLaughing
- enabled: True
- category: [21] KidsPlaying
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable gg_unit_nvlk_0025
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable gg_unit_nvlk_0026
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_H01VillagerC38
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nvlk_0025
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_H01VillagerC38
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_H01VillagerC37
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nvlk_0026
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_H01VillagerC37
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nvlk_0025
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nvlk_0026
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_H01VillagerC38
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nvlk_0025
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_H01VillagerC38
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_KidsLaughing


## KidsRunningDest01
- enabled: True
- category: [21] KidsPlaying
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String nvlk
- Action IssuePointOrderLoc
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillagerKidsRunning02
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VillagerKidsRunning01


## KidsRunningDest02
- enabled: True
- category: [21] KidsPlaying
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String nvlk
- Action IssuePointOrderLoc
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillagerKidsRunning03
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VillagerKidsRunning02


## KidsRunningDest03
- enabled: True
- category: [21] KidsPlaying
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String nvlk
- Action IssuePointOrderLoc
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillagerKidsRunning01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VillagerKidsRunning03


## Ogre01
- enabled: True
- category: [22] OgrePatrol
- starts off: False
- is custom text: False
- run on map init: False
```description
Run by cinematic ending
```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nogr_0012
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OgrePatroler


## BanditBusy
- enabled: True
- category: [29] BanditsCamp
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 3.50
- Action ForGroup
  - param Variable BanditsCamp
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GroupPickRandomUnit
        - Function GroupPickRandomUnit
          - param Variable BanditsCamp
      - param Preset UnitOrderAttack
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_BanditRoamCamp


## VillagerConcernedMessage
- enabled: True
- category: [12] VillagerStacie
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssuePointOrderLoc
  - param Variable gg_unit_nC00_0093
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillagerConcernedDestination
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC00_0093
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_VillagerConcernedMessage_Queued
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable gg_unit_nC00_0093
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VillagerConcernedArea


## VillagerConcernedMessage Queued
- enabled: True
- category: [12] VillagerStacie
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DestroyEffectBJ
  - param Variable StacieBang
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BridgeOut
  - param String 5.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BridgeOut
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BridgeOut
  - param String 900.00
- Action SetVariable
  - param Variable BridgeVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC00_0093
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Function GetTriggeringTrigger
        - Function GetTriggeringTrigger
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC00_0093
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nC00_0093
  - param String TRIGSTR_676
  - param Variable gg_snd_H03VillagerF39
  - param String TRIGSTR_677
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 3.00
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC00_0093
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action # EnableTrigger
  - param Variable gg_trg_Stacie


## Stacie Killed
- enabled: True
- category: [12] VillagerStacie
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StopSoundBJ
  - param Variable gg_snd_H03VillagerF39
  - param Preset FadeDontDont
- Action VolumeGroupResetBJ
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC00_0093
  - param Preset UnitEventDeath


## VillagerHello
- enabled: True
- category: [14] VillagerMarie
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_nC04_0118
  - param Variable Arthas
  - param String 0.20
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nC04_0118
  - param String TRIGSTR_125
  - param Variable gg_snd_H03VillagerF53
  - param String TRIGSTR_126
  - param Preset AddSetToSub
  - param String 0.00
  - param Preset WaitDontDont
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 0.30
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC08_0155
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_nC08_0155
  - param Variable Arthas
  - param String 0.20
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC09_0001
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_nC09_0001
  - param Variable Arthas
  - param String 0.20
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable gg_unit_nC04_0118
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VillagerHello02


## Marie Killed
- enabled: True
- category: [14] VillagerMarie
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StopSoundBJ
  - param Variable gg_snd_H03VillagerF53
  - param Preset FadeDontDont
- Action VolumeGroupResetBJ
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC04_0118
  - param Preset UnitEventDeath


## VillagerHello01
- enabled: True
- category: [13] VillagerHello01
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssueImmediateOrder
  - param Variable gg_unit_nvil_0010
  - param Preset UnitOrderStop
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_nvil_0010
  - param Variable Arthas
  - param String 0.20
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nvil_0010
  - param String TRIGSTR_175
  - param Variable gg_snd_H03VillagerM41
  - param String TRIGSTR_176
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable gg_unit_nvil_0010
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VillagerHello01


## Farmer Killed
- enabled: True
- category: [13] VillagerHello01
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StopSoundBJ
  - param Variable gg_snd_H03VillagerM41
  - param Preset FadeDontDont
- Action VolumeGroupResetBJ
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nvil_0010
  - param Preset UnitEventDeath


## VillagerTaxesMessage
- enabled: True
- category: [15] VillagerTaxes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_nC01_0002
  - param Variable Arthas
  - param String 0.20
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC01_0002
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nC01_0002
  - param String TRIGSTR_056
  - param Variable gg_snd_H03VillagerM45
  - param String TRIGSTR_058
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC01_0002
  - param Preset UnitEventSelected


## TaxEvader Killed
- enabled: True
- category: [15] VillagerTaxes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StopSoundBJ
  - param Variable gg_snd_H03VillagerM45
  - param Preset FadeDontDont
- Action VolumeGroupResetBJ
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC01_0002
  - param Preset UnitEventDeath


## ClicksMetGold
- enabled: True
- category: [39] Tax
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ConditionalTriggerExecute
  - param Variable gg_trg_PayoutGold
- Condition OperatorCompareInteger
  - param Variable Tax
  - param Preset OperatorGreaterEq
  - param String 50
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC01_0002
  - param Preset UnitEventSelected


## ClicksMetItem
- enabled: True
- category: [39] Tax
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ConditionalTriggerExecute
  - param Variable gg_trg_PayoutItem
- Condition OperatorCompareInteger
  - param Variable Tax
  - param Preset OperatorGreaterEq
  - param String 100
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC01_0002
  - param Preset UnitEventSelected


## PayoutGold
- enabled: True
- category: [39] Tax
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomScriptCode
  - param String call status_check_location(24)
- Action CustomScriptCode
  - param String call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "Got an |cffee1166Archipelago location|r (Garglemel's Taxes)")
- Action AdjustPlayerStateBJ
  - param Function OperatorInt
    - Function OperatorInt
      - param String 21
      - param Preset OperatorMultiply
      - param Function GetRandomInt
        - Function GetRandomInt
          - param String 1
          - param String 10
  - param Preset Player01
  - param Preset PlayerStateGold


## PayoutItem
- enabled: True
- category: [39] Tax
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateItemLoc
  - param String phea
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillagerTaxes
- Action SetUnitFacingToFaceLocTimed
  - param Variable gg_unit_nC01_0002
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TaxVillagerFace
  - param String 0.20


## Clicks
- enabled: True
- category: [39] Tax
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Tax
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable Tax
      - param Preset OperatorAdd
      - param String 1
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC01_0002
  - param Preset UnitEventSelected


## VillagerBridgeOutMessage
- enabled: True
- category: [11] Achilles
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_VillagerBridgeOutMessage
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_nC02_0039
  - param Variable Arthas
  - param String 0.25
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC02_0039
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_nC02_0039
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BridgeOutVillagerDestination
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nvil_0123
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitFacingToFaceUnitTimed
      - param Variable gg_unit_nvil_0123
      - param Variable Arthas
      - param String 0.20
  - param Function DoNothing
    - Action DoNothing
- Action DestroyEffectBJ
  - param Variable AchillesBang
- Action TriggerSleepAction
  - param String 1.00
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_nvil_0119
  - param Variable Arthas
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC02_0039
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nvil_0120
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitFacingToFaceUnitTimed
      - param Variable gg_unit_nvil_0123
      - param Variable Arthas
      - param String 0.20
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nvil_0124
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitFacingToFaceUnitTimed
      - param Variable gg_unit_nvil_0123
      - param Variable Arthas
      - param String 0.20
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nC02_0039
  - param String TRIGSTR_059
  - param Variable gg_snd_H03VillagerM40
  - param String TRIGSTR_060
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RiverRouteVisibility
  - param String 10.00
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RiverRouteVisibility
  - param String 1024.00
- Action SetVariable
  - param Variable RiverRouteVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RiverRouteVisibility
- Action TriggerSleepAction
  - param String 5.00
- Action # EnableTrigger
  - param Variable gg_trg_Achilles
- Action DestroyFogModifier
  - param Variable RiverRouteVis
- Action DestroyFogModifier
  - param Variable BridgeVis
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable gg_unit_nC02_0039
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_BridgeOut


## Achilles Dead
- enabled: True
- category: [11] Achilles
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DestroyEffectBJ
  - param Variable AchillesBang
- Action StopSoundBJ
  - param Variable gg_snd_H03VillagerM40
  - param Preset FadeDontDont
- Action VolumeGroupResetBJ
- Action DestroyFogModifier
  - param Variable RiverRouteVis
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC02_0039
  - param Preset UnitEventDeath


## MurlocPatrol
- enabled: True
- category: [18] MurlocPatrol
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventSingle
  - param String 5
- Action IssuePointOrderLoc
  - param Variable gg_unit_nmrl_0014
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MurlocPatrolPoint02


## MurlocObserver
- enabled: True
- category: [18] MurlocPatrol
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_MurlocArea
- Action IssuePointOrderLoc
  - param Variable gg_unit_nmrl_0023
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MurlocObserverDestination


## VillagerSplendora
- enabled: True
- category: [31] VillagerGift
- starts off: False
- is custom text: False
- run on map init: False
```description
Run from 'BanditsAllDie'
```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable gg_unit_nC10_0121
  - param Preset OperatorEqualENE
  - param String true
- Action IssueTargetOrder
  - param Variable gg_unit_nC10_0121
  - param Preset UnitOrderMoveUnit
  - param Variable Arthas
- Action EnableTrigger
  - param Variable gg_trg_VillagerInRange


## VillagerInRange
- enabled: True
- category: [31] VillagerGift
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_VillagerSplendora
- Action IssuePointOrderLoc
  - param Variable gg_unit_nC10_0121
  - param Preset UnitOrderMove
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC10_0121
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 1.00
- Action IssueImmediateOrder
  - param Variable gg_unit_nC10_0121
  - param Preset UnitOrderStop
- Action GroupAddUnitSimple
  - param Variable gg_unit_nC10_0121
  - param Variable PeasantPatrolGroup01
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Que_Splendora_Speech
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareReal
  - param Function DistanceBetweenPoints
    - Function DistanceBetweenPoints
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable gg_unit_nC10_0121
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable Arthas
  - param Preset OperatorLessEq
  - param String 400.00
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterTimerEventPeriodic
  - param String 0.50


## Que Splendora Speech
- enabled: True
- category: [31] VillagerGift
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC10_0121
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Function GetTriggeringTrigger
        - Function GetTriggeringTrigger
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC10_0121
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nC10_0121
  - param String TRIGSTR_671
  - param Variable gg_snd_H01VillagerF42
  - param String TRIGSTR_672
  - param Preset AddSetToSub
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action CustomScriptCode
  - param String call status_check_location(25)
- Action CustomScriptCode
  - param String call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "Got an |cffee1166Archipelago location|r (Defeat Bandits)")
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## VillagerDies
- enabled: True
- category: [31] VillagerGift
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_VillagerSplendora
- Action DisableTrigger
  - param Variable gg_trg_VillagerInRange
- Action StopSoundBJ
  - param Variable gg_snd_H01VillagerF42
  - param Preset FadeDontDont
- Action VolumeGroupResetBJ
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC10_0121
  - param Preset UnitEventDeath


## StartAttack
- enabled: True
- category: [3] BanditsAttack
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_PeasantPatrolSmall
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Preset Player02
  - param Preset AllianceSettingUnallied
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BANDIT_SIGHT
  - param String 1024.00
- Action SetVariable
  - param Variable BanditSightVis1
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BANDIT_SIGHT_2
  - param String 1024.00
- Action SetVariable
  - param Variable BanditSightVis2
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BANDIT_SIGHT_3
  - param String 1024.00
- Action SetVariable
  - param Variable BanditSightVis3
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BANDIT_SIGHT_4
  - param String 1024.00
- Action SetVariable
  - param Variable BanditSightVis4
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nban_0046
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable gg_unit_nban_0046
      - param String TRIGSTR_186
      - param Variable gg_snd_H03Bandit51
      - param String TRIGSTR_187
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action IssueTargetOrder
  - param Variable gg_unit_nban_0046
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_nvil_0049
- Action SetUnitLifeBJ
  - param Variable gg_unit_nvil_0033
  - param String 2.00
- Action SetUnitLifeBJ
  - param Variable gg_unit_nvil_0049
  - param String 2.00
- Action IssueTargetOrder
  - param Variable gg_unit_nban_0044
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_nvil_0033
- Action IssueTargetOrder
  - param Variable gg_unit_nban_0045
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_nC10_0121
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0125
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillageRunDest01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0024
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillageRunDest02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0022
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillageRunDest03
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0048
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillageRunDest04
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nvil_0024
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable gg_unit_nvil_0024
      - param String TRIGSTR_202
      - param Variable gg_snd_H03VillagerM49
      - param String TRIGSTR_203
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 1.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0024
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillageRunDest04
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0049
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillageRunDest05
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0033
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillageRunDest05
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0047
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillageRunDest06
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0034
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillageRunDest07
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nban_0046
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable gg_unit_nban_0046
      - param String TRIGSTR_254
      - param Variable gg_snd_H03Bandit52
      - param String TRIGSTR_255
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nvil_0024
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable gg_unit_nvil_0024
      - param String TRIGSTR_491
      - param Variable gg_snd_H03VillagerM50
      - param String TRIGSTR_492
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action IssuePointOrderLoc
  - param Variable gg_unit_nC10_0121
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillageRunDest08
- Action EnableTrigger
  - param Variable gg_trg_SuicideBandits
- Action TriggerSleepAction
  - param String 6.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ForGroup
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_PeasantPatrolArea
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Function GetFilterUnit
                - Function GetFilterUnit
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action SetUnitFacingToFaceLocTimed
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_VillageRunDest01
      - param String 0.20
- Action TriggerSleepAction
  - param String 9.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nban_0126
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssueTargetOrder
      - param Variable gg_unit_nban_0126
      - param Preset UnitOrderAttackUnit
      - param Variable gg_unit_nvil_0116
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nvil_0116
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitLifeBJ
      - param Variable gg_unit_nvil_0116
      - param String 20.00
  - param Function DoNothing
    - Action DoNothing
- Action DestroyFogModifier
  - param Variable BanditSightVis1
- Action DestroyFogModifier
  - param Variable BanditSightVis2
- Action DestroyFogModifier
  - param Variable BanditSightVis3
- Action DestroyFogModifier
  - param Variable BanditSightVis4
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Bandit


## SuicideBandits
- enabled: True
- category: [3] BanditsAttack
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitGroupDeadBJ
    - Function IsUnitGroupDeadBJ
      - param Variable BanditsVillage
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterTimerEventPeriodic
  - param String 4.00
- Action IssuePointOrderLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsOfPlayerMatching
        - Function GetUnitsOfPlayerMatching
          - param Preset PlayerNA
          - param Function 
            - Condition GetBooleanAnd
              - param Function 
                - Condition OperatorCompareBoolean
                  - param Function IsUnitAliveBJ
                    - Function IsUnitAliveBJ
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param String true
              - param Function 
                - Condition OperatorCompareBoolean
                  - param Function IsUnitInGroup
                    - Function IsUnitInGroup
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                      - param Variable BanditsVillage
                  - param Preset OperatorEqualENE
                  - param String true
  - param Preset UnitOrderAttack
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Bandit
- Action IssuePointOrderLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsOfPlayerMatching
        - Function GetUnitsOfPlayerMatching
          - param Preset PlayerNA
          - param Function 
            - Condition GetBooleanAnd
              - param Function 
                - Condition OperatorCompareBoolean
                  - param Function IsUnitAliveBJ
                    - Function IsUnitAliveBJ
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param String true
              - param Function 
                - Condition OperatorCompareBoolean
                  - param Function IsUnitInGroup
                    - Function IsUnitInGroup
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                      - param Variable BanditsVillage
                  - param Preset OperatorEqualENE
                  - param String true
  - param Preset UnitOrderAttack
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Bandit


## BanditsAllDie
- enabled: True
- category: [3] BanditsAttack
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetDyingUnit
        - Function GetDyingUnit
      - param Variable BanditsVillage
  - param Preset OperatorEqualENE
  - param String true
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable BanditsVillage
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_nC10_0121
  - param Variable PeasantPatrolGroup01
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable BanditsVillage
      - param Preset OperatorLessEq
      - param String 0
  - param Function DoNothing
    - Action EnableTrigger
      - param Variable gg_trg_PeasantPatrol
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable BanditsVillage
      - param Preset OperatorLessEq
      - param String 0
  - param Function DoNothing
    - Action DisableTrigger
      - param Variable gg_trg_SuicideBandits
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable BanditsVillage
      - param Preset OperatorLessEq
      - param String 0
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_VillagerSplendora
  - param Function DoNothing
    - Action DoNothing
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNA
  - param Preset PlayerUnitEventDeath


## Stacie
- enabled: False
- category: [27] VillagerSelections
- starts off: True
- is custom text: False
- run on map init: False
```description
Turned on from 'VillagerConcernedMessage'
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nC00_0093
  - param String TRIGSTR_117
  - param Variable gg_snd_H03VillagerF39
  - param String TRIGSTR_118
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC00_0093
  - param Preset UnitEventSelected


## Achilles
- enabled: False
- category: [27] VillagerSelections
- starts off: True
- is custom text: False
- run on map init: False
```description
Turned on from 'VillagerBridgeOutMessage'
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nC02_0039
  - param String TRIGSTR_132
  - param Variable gg_snd_H03VillagerM40
  - param String TRIGSTR_133
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC02_0039
  - param Preset UnitEventSelected


## Marie
- enabled: True
- category: [27] VillagerSelections
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC04_0118
  - param Preset UnitEventSelected
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_H01VillagerF39
  - param Variable gg_unit_nC04_0118
- Action PlaySoundBJ
  - param Variable gg_snd_H01VillagerF39
- Action UnitAddIndicatorBJ
  - param Variable gg_unit_nC04_0118
  - param String 100
  - param String 100
  - param String 100
  - param String 0


## Linda
- enabled: True
- category: [27] VillagerSelections
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_H01VillagerF40
  - param Variable gg_unit_nC08_0155
- Action PlaySoundBJ
  - param Variable gg_snd_H01VillagerF40
- Action UnitAddIndicatorBJ
  - param Variable gg_unit_nC08_0155
  - param String 100
  - param String 100
  - param String 100
  - param String 0
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC08_0155
  - param Preset UnitEventSelected


## Jillian
- enabled: True
- category: [27] VillagerSelections
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_H01VillagerF41
  - param Variable gg_unit_nC09_0001
- Action PlaySoundBJ
  - param Variable gg_snd_H01VillagerF41
- Action UnitAddIndicatorBJ
  - param Variable gg_unit_nC09_0001
  - param String 100
  - param String 100
  - param String 100
  - param String 0
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC09_0001
  - param Preset UnitEventSelected


## FountainSideQuest
- enabled: True
- category: [4] FountainOfLife
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_FountainSideQuest_Que
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable gg_unit_nC03_0092
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VillagerActivateFountainQuest


## FountainSideQuest Que
- enabled: True
- category: [4] FountainOfLife
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DestroyEffectBJ
  - param Variable AlricBang
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC03_0092
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Function GetTriggeringTrigger
        - Function GetTriggeringTrigger
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC03_0092
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nC03_0092
  - param String TRIGSTR_682
  - param Variable gg_snd_H03VillagerM10
  - param String TRIGSTR_683
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC03_0092
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Function GetTriggeringTrigger
        - Function GetTriggeringTrigger
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nC03_0092
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestSetDiscoveredBJ
  - param Variable QuestFountain
  - param Preset DiscoveredOptionDiscovered
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_684
  - param Variable gg_snd_H03Arthas11
  - param String TRIGSTR_685
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FountainOfLifeReveal
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FountainOfLifeReveal
  - param String 512.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FountainOfLifeReveal
  - param String 5.00
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_686
- Action TriggerSleepAction
  - param String 2.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uske
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FountainSkeleton01
  - param String 340.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uske
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FountainSkeleton02
  - param String 0.00
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Alric is Killed
- enabled: True
- category: [4] FountainOfLife
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StopSoundBJ
  - param Variable gg_snd_H03VillagerM10
  - param Preset FadeDontDont
- Action VolumeGroupResetBJ
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nC03_0092
  - param Preset UnitEventDeath


## Fountain Found
- enabled: True
- category: [4] FountainOfLife
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Function IsQuestDiscovered
    - Function IsQuestDiscovered
      - param Variable QuestFountain
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Variable gg_trg_Fountain_Found
- Action CustomScriptCode
  - param String call status_check_location(21)
- Action CustomScriptCode
  - param String call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "Got an |cffee1166Archipelago location|r (Fountain of Healing)")
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_115
  - param Variable gg_snd_H03Arthas12
  - param String TRIGSTR_116
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_123
- Action QuestItemSetCompletedBJ
  - param Variable QuestFountainReq
  - param Preset CompletionOptionCompleted
- Action FlashQuestDialogButtonBJ
- Action QuestSetCompletedBJ
  - param Variable QuestFountain
  - param Preset CompletionOptionCompleted
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeAlwaysHint
  - param String TRIGSTR_670
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_FountainOfLifeZone


## StartDefend
- enabled: True
- category: [5] DefendingFootman
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArcherPanCamera
  - param String 1.00
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player09
  - param Preset AllianceSettingUnallied
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArcherVisibility
  - param String 1024.00
- Action SetVariable
  - param Variable ArcherVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_SkeletonArchers
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAttack
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_DefendZone
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_hfoo_0042
  - param String TRIGSTR_024
  - param Variable gg_snd_H03Footman13
  - param String TRIGSTR_046
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 2.00
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_DefendCaster
  - param Variable gg_unit_hfoo_0042
- Action PlaySoundBJ
  - param Variable gg_snd_DefendCaster
- Action IssueImmediateOrder
  - param Variable gg_unit_hfoo_0042
  - param Preset UnitOrderDefend
- Action TriggerSleepAction
  - param String 0.10
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_DefendCaster01
  - param Variable gg_unit_hfoo_0043
- Action PlaySoundBJ
  - param Variable gg_snd_DefendCaster01
- Action IssueImmediateOrder
  - param Variable gg_unit_hfoo_0043
  - param Preset UnitOrderDefend
- Action TriggerSleepAction
  - param String 0.20
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_DefendCaster02
  - param Variable gg_unit_hfoo_0005
- Action PlaySoundBJ
  - param Variable gg_snd_DefendCaster02
- Action IssueImmediateOrder
  - param Variable gg_unit_hfoo_0005
  - param Preset UnitOrderDefend
- Action TriggerSleepAction
  - param String 2.00
- Action WaitForSoundBJ
  - param Variable gg_snd_H03Footman13
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_047
  - param Variable gg_snd_H03Arthas17
  - param String TRIGSTR_049
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_DefendZone


## SkeletonsDyingCheck
- enabled: True
- category: [5] DefendingFootman
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetDyingUnit
        - Function GetDyingUnit
      - param Variable SkeletonsArcher
  - param Preset OperatorEqualENE
  - param String true
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable SkeletonsArcher
- Action DestroyFogModifier
  - param Variable ArcherVis
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable SkeletonsArcher
      - param Preset OperatorLessEq
      - param String 0
  - param Function DoNothing
    - Action QueuedTriggerAddBJ
      - param Variable gg_trg_SkeletonsAllDead
      - param Preset CheckingIgnoringChecking
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable SkeletonsArcher
      - param Preset OperatorLessEq
      - param String 0
  - param Function DoNothing
    - Action DisableTrigger
      - param Function GetTriggeringTrigger
        - Function GetTriggeringTrigger
  - param Function DoNothing
    - Action DoNothing
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath


## SkeletonsAllDead
- enabled: True
- category: [5] DefendingFootman
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Variable gg_trg_SkeletonsDyingCheck
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CustomScriptCode
  - param String call status_check_location(20)
- Action CustomScriptCode
  - param String call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "Got an |cffee1166Archipelago location|r (Footman Rescue)")
- Action ForGroup
  - param Variable FootmenDefending
  - param Function DoNothing
    - Action IssueImmediateOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderStop
- Action ForGroup
  - param Variable FootmenDefending
  - param Function DoNothing
    - Action SetUnitFacingToFaceUnitTimed
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable Arthas
      - param String 0.20
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitGroupDeadBJ
        - Function IsUnitGroupDeadBJ
          - param Variable DefendersGroup
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Arthas
      - param String TRIGSTR_362
      - param Variable gg_snd_H03Arthas14
      - param String TRIGSTR_363
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitGroupDeadBJ
        - Function IsUnitGroupDeadBJ
          - param Variable DefendersGroup
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Function GroupPickRandomUnit
        - Function GroupPickRandomUnit
          - param Variable DefendersGroup
      - param String TRIGSTR_334
      - param Variable gg_snd_H03Footman15
      - param String TRIGSTR_335
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_069
  - param Variable gg_snd_H03Arthas16
  - param String TRIGSTR_070
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action ForGroup
  - param Variable FootmenDefending
  - param Function DoNothing
    - Action RescueUnitBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset Player01
      - param Preset ChangeColorTrue
- Action ForGroup
  - param Variable FootmenDefending
  - param Function DoNothing
    - Action IssueImmediateOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderUnDefend
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Defend_Hint_Que
  - param Preset CheckingIgnoringChecking


## Defend Hint Que
- enabled: True
- category: [5] DefendingFootman
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_300
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## RemoveDeadFromGroup
- enabled: True
- category: [5] DefendingFootman
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable FootmenDefending
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetDyingUnit
        - Function GetDyingUnit
      - param Variable FootmenDefending
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player09
  - param Preset PlayerUnitEventDeath


## Holy Light Hint
- enabled: True
- category: [33] HolyLightHint
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Holy_Light_Hint_Q
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_HolyLightHintArea


## Holy Light Hint Q
- enabled: True
- category: [33] HolyLightHint
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_540
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## AmbushStart
- enabled: True
- category: [7] AmbushSkeletons
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 1.00
- Action ForGroup
  - param Variable SkeletonsAmbush
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAttack
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_AmbushSkeletons
- Action CommentString
  - param String ***********************
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_AmbushStart


## AttackingSkeletons01
- enabled: True
- category: [16] VillageRaiseSkeleton
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 1.00
- Action IssueTargetOrder
  - param Variable gg_unit_uske_0066
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_nvil_0068
- Action IssueTargetOrder
  - param Variable gg_unit_uske_0065
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_nvil_0068
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VillageRaiseSkeletonStart


## AttackingSkeletons02
- enabled: True
- category: [16] VillageRaiseSkeleton
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 1.00
- Action IssueTargetOrder
  - param Variable gg_unit_uske_0098
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_nvil_0099
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VillageRaiseSkeletonStart


## AttackingSkeletons03
- enabled: True
- category: [16] VillageRaiseSkeleton
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 1.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0085
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VillagerRunDest09
- Action IssueTargetOrder
  - param Variable gg_unit_uske_0069
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_nvil_0085
- Action IssueTargetOrder
  - param Variable gg_unit_nska_0105
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_nvil_0085
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VillageRaiseSkeletonStart


## CrateSkeleton01
- enabled: True
- category: [32] CrateSkeleton
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.10
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uske
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CrateSkeleton01
  - param String 65.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String birth
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_1798


## MortarTeamStart
- enabled: True
- category: [10] MortarTeamIntro
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MortarTeamVisibility
  - param String 512
- Action SetVariable
  - param Variable MortarTeamVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetPlayerAllianceStateBJ
  - param Preset Player09
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player09
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MortarTeam_Visibility
  - param String 1024.00
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player09
  - param Preset AllianceSettingUnallied
- Action IssuePointOrderLoc
  - param Variable MortarTeam01
  - param Preset UnitOrderAttackGround
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MortarTeam_Visibility
- Action SetUnitInvulnerable
  - param Variable gg_unit_uske_0087
  - param Preset InvulnerabilityVulnerable
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitInvulnerable
  - param Variable gg_unit_uske_0096
  - param Preset InvulnerabilityVulnerable
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_SkeletonsMortarFodderStart
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderMove
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SkeletonsMortarFodderEnd
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable MortarTeam01
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action RescueUnitBJ
      - param Variable MortarTeam01
      - param Preset Player01
      - param Preset ChangeColorTrue
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable MortarTeam01
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeHint
      - param String TRIGSTR_681
  - param Function DoNothing
    - Action DoNothing
- Action DestroyFogModifier
  - param Variable MortarTeamVis
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsInRectMatching
            - Function GetUnitsInRectMatching
              - param Variable gg_rct_MortarTeam_ArthasNear
              - param Function 
                - Condition OperatorCompareUnit
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param Variable Arthas
      - param Preset OperatorGreaterEq
      - param String 1
  - param Function DoNothing
    - Action QueuedTriggerAddBJ
      - param Variable gg_trg_MortarTeamDialogue
      - param Preset CheckingIgnoringChecking
  - param Function DoNothing
    - Action DoNothing
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_MortarTeamArea


## MortarTeamDialogue
- enabled: True
- category: [10] MortarTeamIntro
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable MortarTeam01
  - param Preset OperatorEqualENE
  - param String true
- Action SmartCameraPanBJ
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MortarTeamCreate01
  - param String 0.5
- Action TriggerSleepAction
  - param String 0.20
- Action CustomScriptCode
  - param String call status_check_location(23)
- Action CustomScriptCode
  - param String call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "Got an |cffee1166Archipelago location|r (Mortar Team Rescue)")
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable MortarTeam01
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Arthas
      - param String TRIGSTR_498
      - param Variable gg_snd_H03Arthas25
      - param String TRIGSTR_499
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable MortarTeam01
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable MortarTeam01
      - param String TRIGSTR_650
      - param Variable gg_snd_H03Dwarf26
      - param String TRIGSTR_651
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable MortarTeam01
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Arthas
      - param String TRIGSTR_591
      - param Variable gg_snd_H03Arthas27
      - param String TRIGSTR_592
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MortarTeamWhat1
  - param Variable MortarTeam01
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable MortarTeam01
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action PlaySoundBJ
      - param Variable gg_snd_MortarTeamWhat1
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## DefeatArthasDeath
- enabled: True
- category: [1] Defeat
- starts off: False
- is custom text: False
- run on map init: False
```description
Default melee victory/defeat conditions for all players
```
### Functions
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action DisableTrigger
  - param Variable gg_trg_DefeatJainaDeath
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_114
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2
- Action CustomDefeatBJ
  - param Preset Player01
  - param String TRIGSTR_010
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## DefeatJainaDeath
- enabled: True
- category: [1] Defeat
- starts off: False
- is custom text: False
- run on map init: False
```description
Default melee victory/defeat conditions for all players
```
### Functions
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable Jaina
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action DisableTrigger
  - param Variable gg_trg_DefeatArthasDeath
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_124
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2
- Action CustomDefeatBJ
  - param Preset Player01
  - param String TRIGSTR_041
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## Victory
- enabled: True
- category: [34] Victory
- starts off: False
- is custom text: False
- run on map init: False
```description
Save all heroes.
Save the campaign game cache.
Enable the next level.
Start the next level.
```
### Functions
- Action CommentString
  - param String Start the next level
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run

