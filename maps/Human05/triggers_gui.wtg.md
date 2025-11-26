version = TFT

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 33 | Archipelago | False |
| 1 | Map Initillization | False |
| 0 | Starting Cinematic | False |
| 8 | Militia | False |
| 7 | Start Mission | False |
| 24 | Hearthglen | False |
| 23 | Corruption Outside Hearthglen | False |
| 28 | xxxxxxxxxxxxxxxx | False |
| 17 | Roaming Villagers A | False |
| 18 | Roaming Villagers B | False |
| 19 | Roaming Villagers C | False |
| 20 | Roaming Villagers D | False |
| 21 | Roaming Villagers E | False |
| 22 | Roaming Villagers F | False |
| 26 | xxxxxxxxxxxxxxxx | False |
| 32 | Caravan Behavior | False |
| 31 | Caravan | False |
| 9 | Corrupt Farm 01 | False |
| 10 | Corrupt Farm 02 | False |
| 11 | Corrupt Farm 03 | False |
| 12 | Corrupt Farm 04 | False |
| 27 | xxxxxxxxxxxxxxxx | False |
| 5 | Free Villager | False |
| 2 | Troop Farm 05 | False |
| 4 | Fountain of Life | False |
| 29 | xxxxxxxxxxxxxxxx | False |
| 25 | Suicide AI | False |
| 15 | Green AI | False |
| 16 | Orange AI | False |
| 6 | Purple AI | False |
| 30 | xxxxxxxxxxxxxxxx | False |
| 13 | Victory Defeat | False |
| 14 | Ending Cinematic | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| Sergeant | unit | . | . |
| TeleportUnit | unit | . | . |
| Jaina | unit | . | . |
| Arthas | unit | . | . |
| Farm01CorruptedGroup | group | . | . |
| Farm02CorruptedGroup | group | . | . |
| Farm03CorruptedGroup | group | . | . |
| Farm04CorruptedGroup | group | . | . |
| LastCaravanDeath | location | . | . |
| CorruptVillager01 | location | . | . |
| CorruptVillager02 | location | . | . |
| CorruptVillager03 | location | . | . |
| CorruptVillager04 | location | . | . |
| CorruptVillager05 | location | . | . |
| CorruptVillager06 | location | . | . |
| CorruptVillager07 | location | . | . |
| CorruptVillagerGroup1 | group | . | . |
| IntroCancelled | boolean | . | false |
| Footman1 | unit | . | . |
| Footman2 | unit | . | . |
| Priest1 | unit | . | . |
| Rifleman1 | unit | . | . |
| Militia | group | . | . |
| Uther | unit | . | . |
| UtherKnights1 | group | . | . |
| EndingCancelled | boolean | . | false |
| Reinforcement | boolean | . | false |
| Farm05Group1 | group | . | . |
| Farm05 | fogmodifier | . | . |
| FountainVisibility | fogmodifier | . | . |
| Farmers01 | group | . | . |
| Farmers02 | group | . | . |
| Farmers03 | group | . | . |
| Farmers04 | group | . | . |
| HearthglenQuest | quest | . | . |
| GrainCaravanQuest | quest | . | . |
| Timer30Minute | timer | . | . |
| ArthasPoint | location | . | . |
| TimerWarning | timer | . | . |
| TheCaravanWagons | group | . | . |
| HopelessTimer | timer | . | . |
| SheepItem | unit | . | . |
| SheepPoint | location | . | . |
| PlagueCloudsA | effect | 0 | . |
| PlagueCloudsB | effect | 0 | . |
| PlagueCloudsC | effect | 0 | . |
| PlagueCloudsD | effect | 0 | . |
| Farm05Quest | effect | . | . |
| SuicideTimer | timer | . | . |
| OrangeAIAttackWave | timer | . | . |
| CaravanUnitArray | unit | 0 | . |
| FormationAngleArray | real | 0 | . |
| FormationDistanceArray | real | 0 | . |
| FormationTotal | integer | . | . |
| FormationRegionArray | rect | 0 | . |
| zBreadcrumbArray | location | 0 | . |
| BreadcrumbTotal | integer | . | . |
| BreadcrumbCurrent | integer | . | . |
| ReorientAngle | real | . | . |
| zReorientTarget | location | . | . |
| TempAngle | real | . | . |
| TempX | real | . | . |
| TempY | real | . | . |
| CaravanTestPulse | timer | . | . |
| CaravanOrderPulse | timer | . | . |
| CaravanWagonFirst | integer | . | . |
| CaravanWagonLast | integer | . | . |
| CaravanGuardFirst | integer | . | . |
| CaravanGuardLast | integer | . | . |
| BreadcrumbAngleArray | real | 0 | . |
| TempLastAngle | real | . | . |
| TempNextAngle | real | . | . |
| TempLastIndex | integer | . | . |
| TempNextIndex | integer | . | . |
| SpeedOfGuards | real | . | 150.00 |
| SpeedOfWagons | real | . | 150.00 |
| GuardCallForHelpDist | real | . | 600.00 |
| BreadcrumbAllowed | integer | . | . |
| CaravanTown1Timer | timer | . | . |
| TempMinAngle | real | . | . |
| TempMaxAngle | real | . | . |
| BreadcrumbIntro | integer | . | . |
| BreadcrumbStopTown1 | integer | . | . |
| BreadcrumbStopTown2 | integer | . | . |
| BreadcrumbStopTown3 | integer | . | . |
| BreadcrumbStopTown4 | integer | . | . |
| BreadcrumbStopExit | integer | . | . |
| BreadcrumbReached | integer | . | . |
| TheCaravanGuards | group | . | . |
| CaravanTown2Timer | timer | . | . |
| CaravanTown3Timer | timer | . | . |
| CaravanTown4Timer | timer | . | . |
| FreeVillager | unit | . | UnitNull |
| MalGanis01 | unit | . | . |
| MalGanis02 | unit | . | . |
| MalGanis03 | unit | . | . |
| MalGanis04 | unit | . | . |
| MalGanis05 | unit | . | . |
| MalGanis06 | unit | . | . |
| MalGanis07 | unit | . | . |
| MilitiaStop | boolean | . | false |
| FreeVillagerTalktoMe | effect | . | . |
| TownPortal | item | . | . |
| VillageVis | fogmodifier | . | . |
| MalGanisOutside01 | unit | . | . |
| OutsideFarmGroup | group | . | . |
| MalGanisOutside02 | unit | . | . |
| MalGanisOutside03 | unit | . | . |
| RoamingVillagersA | group | . | . |
| RoamingVillagersB | group | . | . |
| RoamingVillagersC | group | . | . |
| RoamingVillagersD | group | . | . |
| RoamingVillagersE | group | . | . |
| RoamingVillagersF | group | . | . |
| CARAVANISDEADBOOLEAN | boolean | . | false |
| CameraPosition | location | . | . |
| Villager01 | unit | . | . |
| Villager02 | unit | . | . |
| Villager03 | unit | . | . |
| Villager04 | unit | . | . |
| Villager05 | unit | . | . |
| Villager06 | unit | . | . |
| Villager07 | unit | . | . |
| Villager08 | unit | . | . |
| Villager09 | unit | . | . |
| Villager10 | unit | . | . |
| Villager11 | unit | . | . |
| Villager12 | unit | . | . |
| Villager13 | unit | . | . |
| Villager14 | unit | . | . |
| Villager15 | unit | . | . |
| Villager16 | unit | . | . |
| Villager17 | unit | . | . |
| Villager18 | unit | . | . |
| Villager19 | unit | . | . |
| MalGanis08 | unit | . | . |
| Foot1 | unit | . | . |
| Foot2 | unit | . | . |
| Foot3 | unit | . | . |
| Foot4 | unit | . | . |
| Foot5 | unit | . | . |
| Foot6 | unit | . | . |
| AbominationFodder | unit | . | . |
| AbominationFodderB | unit | . | . |
| Rifle1 | unit | . | . |
| Rifle2 | unit | . | . |
| Rifle3 | unit | . | . |
| Foot7 | unit | . | . |
| AbominationFodderC | unit | . | . |
| GhoulAttackArthas | unit | . | . |
| AbominationFodderD | unit | . | . |
| AbominationFodderE | unit | . | . |
| AbominationFodderF | unit | . | . |
| GAMEOVER | boolean | . | false |
| CaravanCorruptionPulse | timer | . | . |
| REQCaravanquest | questitem | . | . |
| mass_teleport_effect | effect | . | . |

# Triggers
## fileio
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## map_config
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## status
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## heroes
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## item_locations
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## debug
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## zoom
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## irregulars
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## AP mercenaries
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## AP Load Arthas
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Load the hero data
- Action CustomScriptCode
  - param String set udg_Arthas = hero_create(0, USER_PLAYER, GetRectCenterX(gg_rct_01Arthas_Start), GetRectCenterY(gg_rct_01Arthas_Start), 180.0)
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
  - param String set udg_Arthas = CreateUnit(USER_PLAYER, 'Hart', GetRectCenterX(gg_rct_01Arthas_Start), GetRectCenterY(gg_rct_01Arthas_Start), 180.0)
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
- category: [33] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Load the hero data
- Action CustomScriptCode
  - param String set udg_Jaina = hero_create_global(HERO_ID_JAINA, USER_PLAYER, GetRectCenterX(gg_rct_01Jaina_Start), GetRectCenterY(gg_rct_01Jaina_Start), 180.0)
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
  - param String set udg_Jaina = CreateUnit(USER_PLAYER, 'Hjai', GetRectCenterX(gg_rct_01Jaina_Start), GetRectCenterY(gg_rct_01Jaina_Start), 180.0)


## Shop Locations
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event MapInitializationEvent
- Action AddItemToStockBJ
  - param String I029
  - param Variable gg_unit_ngme_0087
  - param String 1
  - param String 1


## Purple Lich Location
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Ulic_0022
  - param Preset UnitEventDeath
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CustomScriptCode
  - param String call status_check_location(20)


## Green Lich Location
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Ulic_0059
  - param Preset UnitEventDeath
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CustomScriptCode
  - param String call status_check_location(21)


## Purple Base Location
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_unp2_0071
  - param Preset UnitEventDeath
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CustomScriptCode
  - param String call status_check_location(23)


## Green Base Location
- enabled: True
- category: [33] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_unp2_0005
  - param Preset UnitEventDeath
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CustomScriptCode
  - param String call status_check_location(24)


## Map Initilization
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description
MAP INTIALIZATION


```
### Functions
- Action Preloader
  - param String scripts\Human05.pld
- Action SetCampaignMenuRaceBJ
  - param Preset CampaignIndexH
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Easy
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Normal
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Hard
- Action TriggerExecute
  - param Variable gg_trg_Load_Heroes
- Action TriggerExecute
  - param Variable gg_trg_SetupHereos
- Action TriggerExecute
  - param Variable gg_trg_SetupBreadcrumbs
- Action TriggerExecute
  - param Variable gg_trg_SetupFormations
- Action TriggerExecute
  - param Variable gg_trg_SetupCaravan
- Action TriggerExecute
  - param Variable gg_trg_SetupPlayers
- Action TriggerExecute
  - param Variable gg_trg_Setup_Sounds
- Action TriggerExecute
  - param Variable gg_trg_SetupQuest
- Action TriggerExecute
  - param Variable gg_trg_Remove_AI_Units
- Action TriggerExecute
  - param Variable gg_trg_SetupHerathglenVillagers
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOtf
  - param Variable gg_rct_Fire1
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOtf
  - param Variable gg_rct_Fire2New
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOtf
  - param Variable gg_rct_Fire3
- Action CommentString
  - param String ----------
- Action TriggerExecute
  - param Variable gg_trg_Cinematic_A
- Event MapInitializationEvent


## Load Heroes
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description
Load the campaign game cache.
Load all heroes.
```
### Functions
- Action CommentString
  - param String Load the saved data
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AP_Load_Arthas
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AP_Load_Jaina


## SetupHereos
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description
Jaina receives Max Mana
Jaina Level 5
Learn Skill Mass Teleport
```
### Functions
- Action SetUnitManaBJ
  - param Variable Arthas
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable Arthas
- Action SetUnitManaBJ
  - param Variable Jaina
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable Jaina
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Ulic_0022
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Ulic_0059


## SetupBreadcrumbs
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description
This is basically an array of breadcrumbs for the caravan to follow.
Each breadcrumb, when targeted by the caravan, denotes the center of the formation.
```
### Functions
- Action CommentString
  - param String Configure Breadcrumb Ranges
- Action SetVariable
  - param Variable BreadcrumbTotal
  - param String 74
- Action SetVariable
  - param Variable BreadcrumbIntro
  - param String 10
- Action SetVariable
  - param Variable BreadcrumbStopTown1
  - param String 12
- Action SetVariable
  - param Variable BreadcrumbStopTown2
  - param String 35
- Action SetVariable
  - param Variable BreadcrumbStopTown3
  - param String 51
- Action SetVariable
  - param Variable BreadcrumbStopTown4
  - param String 67
- Action SetVariable
  - param Variable BreadcrumbStopExit
  - param String 73
- Action SetVariable
  - param Variable BreadcrumbCurrent
  - param String 1
- Action SetVariable
  - param Variable BreadcrumbAllowed
  - param String 1
- Action SetVariable
  - param Variable BreadcrumbReached
  - param String 0
- Action CommentString
  - param String Debug Town 4
- Action # SetVariable
  - param Variable BreadcrumbStopTown1
  - param String 70
- Action # SetVariable
  - param Variable BreadcrumbCurrent
  - param String 66
- Action CommentString
  - param String Configure Breadcrumb Array
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_01
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_02
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_03
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 4
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_04
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 5
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_05
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 6
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_06
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 7
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_07
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 8
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_08
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 9
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_09
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 10
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_10
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 11
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_11
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 12
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_12
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 13
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_13
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 14
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_14
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 15
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_15
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 16
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_16
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 17
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_17
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 18
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_18
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 19
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_19
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 20
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_20
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 21
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_21
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 22
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_22
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 23
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_23
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 24
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_24
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 25
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_25
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 26
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_26
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 27
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_27
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 28
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_28
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 29
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_29
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 30
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_30
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 31
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_31
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 32
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_32
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 33
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_33
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 34
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_34
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 35
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_35
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 36
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_36
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 37
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_37
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 38
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_38
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 39
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_39
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 40
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_40
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 41
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_41
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 42
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_42
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 43
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_43
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 44
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_44
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 45
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_45
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 46
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_46
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 47
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_47
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 48
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_48
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 49
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_49
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 50
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_50
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 51
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_51
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 52
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_52
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 53
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_53
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 54
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_54
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 55
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_55
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 56
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_56
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 57
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_57
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 58
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_58
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 59
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_59
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 60
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_60
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 61
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_61
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 62
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_62
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 63
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_63
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 64
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_64
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 65
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_65
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 66
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_66
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 67
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_67
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 68
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_68
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 69
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_69
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 70
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_70
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 71
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_71
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 72
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_72
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 73
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_73
- Action SetVariable
  - param Variable zBreadcrumbArray
    - subscript String 74
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Breadcrumb_74
- Action CommentString
  - param String Configure Breadcrumb Angle Array
- Action ForLoopA
  - param String 1
  - param Variable BreadcrumbTotal
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_SetupBreadcrumbs_Single


## SetupBreadcrumbs Single
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Make sure we're not trying to query indices that don't exist
- Action SetVariable
  - param Variable TempLastIndex
  - param Function IMaxBJ
    - Function IMaxBJ
      - param Function OperatorInt
        - Function OperatorInt
          - param Function GetForLoopIndexA
            - Function GetForLoopIndexA
          - param Preset OperatorSubtract
          - param String 1
      - param String 1
- Action SetVariable
  - param Variable TempNextIndex
  - param Function IMinBJ
    - Function IMinBJ
      - param Function OperatorInt
        - Function OperatorInt
          - param Function GetForLoopIndexA
            - Function GetForLoopIndexA
          - param Preset OperatorAdd
          - param String 1
      - param Variable BreadcrumbTotal
- Action SetVariable
  - param Variable TempLastAngle
  - param Function AngleBetweenPoints
    - Function AngleBetweenPoints
      - param Variable zBreadcrumbArray
        - subscript Variable TempLastIndex
      - param Variable zBreadcrumbArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
- Action SetVariable
  - param Variable TempNextAngle
  - param Function AngleBetweenPoints
    - Function AngleBetweenPoints
      - param Variable zBreadcrumbArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
      - param Variable zBreadcrumbArray
        - subscript Variable TempNextIndex
- Action CommentString
  - param String If the angle is over 180 degrees, add a full rotation to the min angle so that we're always taking an average on the right side of the circle
- Action SetVariable
  - param Variable TempMinAngle
  - param Function RMinBJ
    - Function RMinBJ
      - param Variable TempLastAngle
      - param Variable TempNextAngle
- Action SetVariable
  - param Variable TempMaxAngle
  - param Function RMaxBJ
    - Function RMaxBJ
      - param Variable TempLastAngle
      - param Variable TempNextAngle
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareReal
      - param Function OperatorReal
        - Function OperatorReal
          - param Variable TempMaxAngle
          - param Preset OperatorSubtract
          - param Variable TempMinAngle
      - param Preset OperatorGreater
      - param String 180.00
  - param Function DoNothing
    - Action SetVariable
      - param Variable TempMinAngle
      - param Function OperatorReal
        - Function OperatorReal
          - param Variable TempMinAngle
          - param Preset OperatorAdd
          - param String 360.00
  - param Function DoNothing
    - Action DoNothing
- Action SetVariable
  - param Variable TempAngle
  - param Function OperatorReal
    - Function OperatorReal
      - param Function OperatorReal
        - Function OperatorReal
          - param Variable TempMinAngle
          - param Preset OperatorAdd
          - param Variable TempMaxAngle
      - param Preset OperatorDivide
      - param String 2.00
- Action CommentString
  - param String Special-case the first and last breadcrumbs, as they don't have two neighbors to average
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function GetForLoopIndexA
        - Function GetForLoopIndexA
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action SetVariable
      - param Variable TempAngle
      - param Variable TempNextAngle
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function GetForLoopIndexA
        - Function GetForLoopIndexA
      - param Preset OperatorEqual
      - param Variable BreadcrumbTotal
  - param Function DoNothing
    - Action SetVariable
      - param Variable TempAngle
      - param Variable TempLastAngle
  - param Function DoNothing
    - Action DoNothing
- Action SetVariable
  - param Variable BreadcrumbAngleArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Variable TempAngle


## SetupFormations
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description
The locations of the preplaced "Formation" regions are read and stored as formation data (in polar coordinates).
For simplicity, the initial formation is assumed to be facing 0 degrees (east).
```
### Functions
- Action CommentString
  - param String Configure Region Array
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 1
  - param Variable gg_rct_Formation_01
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 2
  - param Variable gg_rct_Formation_02
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 3
  - param Variable gg_rct_Formation_03
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 4
  - param Variable gg_rct_Formation_04
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 5
  - param Variable gg_rct_Formation_05
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 6
  - param Variable gg_rct_Formation_06
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 7
  - param Variable gg_rct_Formation_07
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 8
  - param Variable gg_rct_Formation_08
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 9
  - param Variable gg_rct_Formation_09
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 10
  - param Variable gg_rct_Formation_10
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 11
  - param Variable gg_rct_Formation_11
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 12
  - param Variable gg_rct_Formation_12
- Action SetVariable
  - param Variable FormationRegionArray
    - subscript String 13
  - param Variable gg_rct_Formation_13
- Action CommentString
  - param String Configure Unit Ranges
- Action SetVariable
  - param Variable FormationTotal
  - param String 13
- Action SetVariable
  - param Variable CaravanWagonFirst
  - param String 1
- Action SetVariable
  - param Variable CaravanWagonLast
  - param String 5
- Action SetVariable
  - param Variable CaravanGuardFirst
  - param String 6
- Action SetVariable
  - param Variable CaravanGuardLast
  - param String 13
- Action CommentString
  - param String Read formation data from initial region placement
- Action ForLoopA
  - param String 1
  - param Variable FormationTotal
  - param Function DoNothing
    - Action SetVariable
      - param Variable FormationDistanceArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
      - param Function DistanceBetweenPoints
        - Function DistanceBetweenPoints
          - param Function GetRectCenter
            - Function GetRectCenter
              - param Variable gg_rct_FormationCenter
          - param Function GetRectCenter
            - Function GetRectCenter
              - param Variable FormationRegionArray
                - subscript Function GetForLoopIndexA
                  - Function GetForLoopIndexA
- Action ForLoopA
  - param String 1
  - param Variable FormationTotal
  - param Function DoNothing
    - Action SetVariable
      - param Variable FormationAngleArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
      - param Function AngleBetweenPoints
        - Function AngleBetweenPoints
          - param Function GetRectCenter
            - Function GetRectCenter
              - param Variable gg_rct_FormationCenter
          - param Function GetRectCenter
            - Function GetRectCenter
              - param Variable FormationRegionArray
                - subscript Function GetForLoopIndexA
                  - Function GetForLoopIndexA


## SetupCaravan
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Configure the caravan player
- Action SetPlayerColorBJ
  - param Preset Player04
  - param Preset Color05
  - param Preset PlayerChangeColorChange
- Action SetPlayerTechResearchedSwap
  - param String Rupc
  - param String 1
  - param Preset Player04
- Action CommentString
  - param String Configure the Caravan Units Array
- Action ForLoopA
  - param String 1
  - param Variable FormationTotal
  - param Function DoNothing
    - Action SetVariable
      - param Variable CaravanUnitArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
      - param Function GroupPickRandomUnit
        - Function GroupPickRandomUnit
          - param Function GetUnitsInRectOfPlayer
            - Function GetUnitsInRectOfPlayer
              - param Variable FormationRegionArray
                - subscript Function GetForLoopIndexA
                  - Function GetForLoopIndexA
              - param Preset Player04
- Action CommentString
  - param String Reorient the formation
- Action SetVariable
  - param Variable zReorientTarget
  - param Variable zBreadcrumbArray
    - subscript Variable BreadcrumbCurrent
- Action SetVariable
  - param Variable ReorientAngle
  - param Variable BreadcrumbAngleArray
    - subscript Variable BreadcrumbCurrent
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Reorient_Formation
- Action CommentString
  - param String Configure each caravan unit
- Action ForLoopA
  - param Variable CaravanWagonFirst
  - param Variable CaravanWagonLast
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_SetupCaravan_Single_Wagon
- Action ForLoopA
  - param Variable CaravanGuardFirst
  - param Variable CaravanGuardLast
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_SetupCaravan_Single_Guard
- Action CommentString
  - param String Start the region testing timer
- Action StartTimerBJ
  - param Variable CaravanTestPulse
  - param Preset PeriodicOptionPeriodic
  - param String 0.20
- Action StartTimerBJ
  - param Variable CaravanOrderPulse
  - param Preset PeriodicOptionPeriodic
  - param String 3.00
- Action StartTimerBJ
  - param Variable CaravanCorruptionPulse
  - param Preset PeriodicOptionPeriodic
  - param String 1.00


## SetupCaravan Single Wagon
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ShowUnitHide
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
- Action SetUnitMoveSpeed
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Variable SpeedOfWagons
- Action SetUnitPositionLocFacingBJ
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable FormationRegionArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
  - param Variable ReorientAngle
- Action GroupAddUnitSimple
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Variable TheCaravanWagons


## SetupCaravan Single Guard
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ShowUnitHide
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
- Action SetUnitMoveSpeed
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Variable SpeedOfGuards
- Action SetUnitPositionLocFacingBJ
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable FormationRegionArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
  - param Variable ReorientAngle
- Action GroupAddUnitSimple
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Variable TheCaravanGuards


## SetupHerathglenVillagers
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_02_Roaming_Villager_A
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable RoamingVillagersA
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_02_Roaming_Villager_B
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable RoamingVillagersB
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_02_Roaming_Villager_C
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable RoamingVillagersC
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_02_Roaming_Villager_D
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable RoamingVillagersD
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_02_Roaming_Villager_E
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable RoamingVillagersE
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_02_Roaming_Villager_F
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable RoamingVillagersF


## SetupPlayers
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description
The AI alliance settings
```
### Functions
- Action CommentString
  - param String Setup Starting Forces
- Action SetVariable
  - param Variable Sergeant
  - param Variable gg_unit_hfoo_0118
- Action SetVariable
  - param Variable Footman1
  - param Variable gg_unit_hA00_0024
- Action SetVariable
  - param Variable Footman2
  - param Variable gg_unit_hA00_0025
- Action SetVariable
  - param Variable Priest1
  - param Variable gg_unit_hmpr_0028
- Action SetVariable
  - param Variable Rifleman1
  - param Variable gg_unit_hrif_0026
- Action SetUnitManaBJ
  - param Variable Priest1
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable gg_unit_hmpr_0028
- Action GroupAddUnitSimple
  - param Variable gg_unit_hfoo_0023
  - param Variable Militia
- Action GroupAddUnitSimple
  - param Variable gg_unit_hfoo_0027
  - param Variable Militia
- Action GroupAddUnitSimple
  - param Variable gg_unit_hfoo_0076
  - param Variable Militia
- Action GroupAddUnitSimple
  - param Variable gg_unit_hfoo_0091
  - param Variable Militia
- Action GroupAddUnitSimple
  - param Variable gg_unit_hfoo_0077
  - param Variable Militia
- Action GroupAddUnitSimple
  - param Variable gg_unit_hfoo_0168
  - param Variable Militia
- Action GroupAddUnitSimple
  - param Variable gg_unit_hrif_0078
  - param Variable Militia
- Action GroupAddUnitSimple
  - param Variable gg_unit_hrif_0116
  - param Variable Militia
- Action CommentString
  - param String -----------
- Action SetPlayerAllianceBJ
  - param Preset Player02
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Preset Player02
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset Player02
  - param Preset AllianceTypeSharedVision
  - param Preset OnOffOn
  - param Preset Player01
- Action CommentString
  - param String ----------
- Action SetPlayerAllianceBJ
  - param Preset Player11
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Preset Player11
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player02
- Action CommentString
  - param String ----------
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player02
- Action CommentString
  - param String Hearthglen Reveal
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Variable gg_rct_02_Vis_Hearthglen_A
- Action FogModifierStop
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Variable gg_rct_02_Vis_Hearthglen_B
- Action FogModifierStop
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Variable gg_rct_02_Vis_Hearthglen_C
- Action FogModifierStop
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Variable gg_rct_02_Vis_Hearthglen_D
- Action FogModifierStop
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Variable gg_rct_02_Vis_Hearthglen_E
- Action FogModifierStop
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CommentString
  - param String ----------
- Action SetPlayerAllianceBJ
  - param Preset Player06
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset Player06
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action CommentString
  - param String -
- Action SetPlayerState
  - param Preset Player06
  - param Preset PlayerStateLumber
  - param String 5000
- Action SetPlayerState
  - param Preset Player06
  - param Preset PlayerStateGold
  - param String 5000
- Action CommentString
  - param String ----------
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action CommentString
  - param String ----------
- Action SetPlayerAllianceBJ
  - param Preset Player04
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset Player04
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action CommentString
  - param String ----------
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action CommentString
  - param String -
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateLumber
  - param String 5000
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateGold
  - param String 5000
- Action CommentString
  - param String ----------
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player06
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player05
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player04
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player03
- Action CommentString
  - param String Remove from Score Screen
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player00
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player04
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player05
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player08
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player09
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player11


## Setup Sounds
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String ----------
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


## SetupQuest
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateQuestBJ
  - param Preset QuestTypeReqDiscovered
  - param String TRIGSTR_020
  - param String TRIGSTR_021
  - param String ReplaceableTextures\CommandButtons\BTNDefend.tga
- Action SetVariable
  - param Variable HearthglenQuest
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_057
- Action CommentString
  - param String ----------
- Action CreateQuestBJ
  - param Preset QuestTypeOptUndiscovered
  - param String TRIGSTR_081
  - param String TRIGSTR_084
  - param String ReplaceableTextures\CommandButtons\BTNDarkSummoning.tga
- Action SetVariable
  - param Variable GrainCaravanQuest
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_060
- Action SetVariable
  - param Variable REQCaravanquest
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CommentString
  - param String ----------
- Action AddSpecialEffectTargetUnitBJ
  - param String overhead
  - param Variable gg_unit_nvil_0080
  - param String Abilities\Spells\Other\TalkToMe\TalkToMe.mdl
- Action SetVariable
  - param Variable Farm05Quest
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ


## Difficulty Easy
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String unec
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_06
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String unec
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_07
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_08
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_09
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_10
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_11
  - param String 0.00
- Action CommentString
  - param String handicap
- Action SetPlayerHandicapBJ
  - param Preset Player03
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player04
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player05
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player06
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset PlayerNA
  - param Preset RealHandicapEasy
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyEasy


## Difficulty Normal
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String unec
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_06
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String unec
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_07
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_08
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_09
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_10
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_11
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_12
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_13
  - param String 0.00
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyNormal


## Difficulty Hard
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String unec
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_06
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String unec
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_07
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_08
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_09
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_10
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_11
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_12
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Formation_13
  - param String 0.00
- Action CommentString
  - param String Units - Difficult Level
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String unec
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_AI_Difficulty_Unit_01
      - param String 270.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String ugho
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_AI_Difficulty_Unit_02
      - param String 270.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String ugho
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_AI_Difficulty_Unit_03
      - param String 270.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String ugho
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_AI_Difficulty_Unit_04
      - param String 270.00
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Buildings - Difficult Level
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String uzg1
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_AI_Difficulty_Building_01
      - param String 270.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String uzg1
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_AI_Difficulty_Building_02
      - param String 270.00
  - param Function DoNothing
    - Action DoNothing
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard


## Remove AI Units
- enabled: True
- category: [1] Map Initillization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player05
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit


## Intro Cancelled
- enabled: True
- category: [0] Starting Cinematic
- starts off: True
- is custom text: False
- run on map init: False
```description
This Trigger fires if the intro cinematic has been skipped!
```
### Functions
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable IntroCancelled
  - param String true
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.60
- Action ShowUnitHide
  - param Variable Jaina
- Action SetUnitOwner
  - param Variable Jaina
  - param Preset PlayerNP
  - param Preset ChangeColorFalse
- Action SetUnitOwner
  - param Variable Jaina
  - param Preset Player09
  - param Preset ChangeColorFalse
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cienmatic_Cancel
  - param Preset Player01
  - param String 0
- Action SetSkyModel
  - param Preset SkyModelNone
- Action ResetTerrainFogBJ
- Action CommentString
  - param String ------Move Corrupted Villagers-----
- Action SetUnitPositionLoc
  - param Variable gg_unit_nvil_0088
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Conversion_01
- Action SetUnitPositionLoc
  - param Variable gg_unit_nvil_0089
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Conversion_02
- Action SetUnitPositionLoc
  - param Variable gg_unit_nvil_0133
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Conversion_06
- Action CommentString
  - param String ----------
- Action SetVariable
  - param Variable CorruptVillager01
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nvil_0088
- Action RemoveUnit
  - param Variable gg_unit_nvil_0088
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nzom
  - param Preset Player05
  - param Variable CorruptVillager01
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable CorruptVillagerGroup1
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hfoo_0027
- Action CommentString
  - param String ----------
- Action SetVariable
  - param Variable CorruptVillager02
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nvil_0089
- Action RemoveUnit
  - param Variable gg_unit_nvil_0089
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nzom
  - param Preset Player05
  - param Variable CorruptVillager02
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable CorruptVillagerGroup1
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hfoo_0023
- Action CommentString
  - param String ----------
- Action SetVariable
  - param Variable CorruptVillager03
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nvil_0102
- Action RemoveUnit
  - param Variable gg_unit_nvil_0102
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nzom
  - param Preset Player05
  - param Variable CorruptVillager03
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable CorruptVillagerGroup1
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hfoo_0091
- Action CommentString
  - param String ----------
- Action SetVariable
  - param Variable CorruptVillager04
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nvil_0103
- Action RemoveUnit
  - param Variable gg_unit_nvil_0103
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nzom
  - param Preset Player05
  - param Variable CorruptVillager04
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable CorruptVillagerGroup1
- Action CommentString
  - param String ----------
- Action SetVariable
  - param Variable CorruptVillager05
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nvil_0132
- Action RemoveUnit
  - param Variable gg_unit_nvil_0132
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nzom
  - param Preset Player05
  - param Variable CorruptVillager05
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable CorruptVillagerGroup1
- Action CommentString
  - param String ----------
- Action SetVariable
  - param Variable CorruptVillager06
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nvil_0133
- Action RemoveUnit
  - param Variable gg_unit_nvil_0133
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nzom
  - param Preset Player05
  - param Variable CorruptVillager06
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable CorruptVillagerGroup1
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hfoo_0077
- Action CommentString
  - param String ----------
- Action SetVariable
  - param Variable CorruptVillager07
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nvil_0134
- Action RemoveUnit
  - param Variable gg_unit_nvil_0134
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nzom
  - param Preset Player05
  - param Variable CorruptVillager07
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable CorruptVillagerGroup1
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hrif_0116
- Action CommentString
  - param String ----------
- Action ForGroup
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Function GetEntireMapRect
        - Function GetEntireMapRect
      - param Function 
        - Condition OperatorComparePlayer
          - param Function GetOwningPlayer
            - Function GetOwningPlayer
              - param Function GetFilterUnit
                - Function GetFilterUnit
          - param Preset OperatorEqualENE
          - param Preset Player08
  - param Function DoNothing
    - Action SetUnitOwner
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset Player01
      - param Preset ChangeColorTrue
- Action TriggerSleepAction
  - param String 0.40
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action SelectUnitSingle
  - param Variable Arthas
- Action CommentString
  - param String ----------
- Action ResetUnitLookAt
  - param Variable Arthas
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_C
- Action SetUnitPositionLoc
  - param Variable Sergeant
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Sergeant_C
- Action SetUnitPositionLoc
  - param Variable Footman1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Footman_1_C
- Action SetUnitPositionLoc
  - param Variable Footman2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Footman_2_C
- Action SetUnitPositionLoc
  - param Variable Rifleman1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Rifleman_C
- Action SetUnitPositionLoc
  - param Variable Priest1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Priest_C
- Action CommentString
  - param String -----Start Mission-----
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Mission_Begins
- Action CommentString
  - param String -----Stop Militia------
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontDont
- Action SetVariable
  - param Variable MilitiaStop
  - param String true
- Action CommentString
  - param String -----Remove Villagers-----
- Action TriggerExecute
  - param Variable gg_trg_01Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_01Villager_Retreat_B
- Action TriggerExecute
  - param Variable gg_trg_02Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_03Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_04Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_05Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_06Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_06Villager_Retreat_B


## Cinematic A
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
STARTING SEQUENCE OF EVENTS (CINEMATIC - A)
```
### Functions
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetSmoothingFactorBJ
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_01
  - param Preset Player01
  - param String 0.00
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CommentString
  - param String ----------
- Action SetTimeOfDay
  - param String 4.00
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action SetSkyModel
  - param Preset SkyModelSky01
- Action SetTerrainFogExBJ
  - param String 0
  - param String 900.00
  - param String 4500.00
  - param String 0
  - param String 0.00
  - param String 40.00
  - param String 60.00
- Action CommentString
  - param String ----------
- Action ClearMapMusicBJ
- Action TriggerSleepAction
  - param String 0.10
- Action PlayThematicMusicBJ
  - param Preset MusicThemeComradeship
- Action SetMapMusicIndexedBJ
  - param Preset MusicFileMusic
  - param String 1
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Jaina_A
- Action TriggerSleepAction
  - param String 0.10
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_A
- Action CommentString
  - param String Cinematic Can Now Be Skipped
- Action EnableTrigger
  - param Variable gg_trg_Intro_Cancelled
- Action CommentString
  - param String -----Enable Cancel-----
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Militia_Line_A
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Militia_Line_B
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Militia_Line_C
- Action CommentString
  - param String ----------
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Footman1
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Footman_1_A
- Action IssuePointOrderLoc
  - param Variable Footman2
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Footman_2_A
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Rifleman1
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Rifleman_A
- Action IssuePointOrderLoc
  - param Variable Priest1
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Priest_A
- Action CommentString
  - param String ----------
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_01
  - param Preset Player01
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action # PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Uther_Attack_Abomination
  - param String 4.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_02
  - param Preset Player01
  - param String 5.00


## Cinematic B
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
Arthas enters region (CINEMATIC - B)
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_03
  - param Preset Player01
  - param String 0.00
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Jaina
  - param Variable Arthas
  - param String 0.25
- Action SetUnitAnimation
  - param Variable Arthas
  - param String stand
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Jaina
  - param String TRIGSTR_001
  - param Variable gg_snd_H05Jaina01
  - param String TRIGSTR_002
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_04
  - param Preset Player01
  - param String 0.00
- Action SetUnitLookAt
  - param Variable Arthas
  - param Preset UnitFacingBoneHead
  - param Variable Jaina
  - param String 0.00
  - param String 0.00
  - param String 90.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_003
  - param Variable gg_snd_H05Arthas02
  - param String TRIGSTR_007
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ResetUnitLookAt
  - param Variable Arthas
- Action ResetUnitAnimation
  - param Variable Arthas
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_B
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Jaina_B
- Action IssuePointOrderLoc
  - param Variable Footman1
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Footman_1_B
- Action IssuePointOrderLoc
  - param Variable Footman2
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Footman_2_B
- Action IssuePointOrderLoc
  - param Variable Rifleman1
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Rifleman_B
- Action IssuePointOrderLoc
  - param Variable Priest1
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Priest_B
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_05
  - param Preset Player01
  - param String 0.00
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_06
  - param Preset Player01
  - param String 0.00
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Jaina
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Jaina_A


## Sergeant Move
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable Sergeant
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Sergeant_A
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Jaina
  - param Variable Sergeant
  - param String 0.25
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Arthas_B


## Cinematic C
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
Sergeant enters region (CINEMATIC - C)
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssuePointOrderLoc
  - param Variable Sergeant
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Sergeant_A
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Sergeant
  - param String 0.25
- Action TriggerSleepAction
  - param String 0.25
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable Sergeant
  - param String stand
- Action SetUnitAnimation
  - param Variable Arthas
  - param String stand
- Action SetUnitAnimation
  - param Variable Jaina
  - param String stand
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Sergeant
  - param String TRIGSTR_010
  - param Variable gg_snd_H05Footman03
  - param String TRIGSTR_008
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 0.40
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Sergeant
  - param String TRIGSTR_013
  - param Variable gg_snd_H05Footman04
  - param String TRIGSTR_011
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String -----Militia Stop-----
- Action SetVariable
  - param Variable MilitiaStop
  - param String true
- Action SetUnitFacingTimed
  - param Variable gg_unit_hfoo_0027
  - param String 20.00
  - param String 0.20
- Action SetUnitFacingTimed
  - param Variable gg_unit_hfoo_0076
  - param String 20.00
  - param String 0.20
- Action SetUnitFacingTimed
  - param Variable gg_unit_hfoo_0077
  - param String 20.00
  - param String 0.20
- Action SetUnitFacingTimed
  - param Variable gg_unit_hfoo_0091
  - param String 20.00
  - param String 0.20
- Action SetUnitFacingTimed
  - param Variable gg_unit_hfoo_0168
  - param String 20.00
  - param String 0.20
- Action SetUnitFacingTimed
  - param Variable gg_unit_hfoo_0023
  - param String 20.00
  - param String 0.20
- Action SetUnitFacingTimed
  - param Variable gg_unit_hrif_0116
  - param String 20.00
  - param String 0.20
- Action SetUnitFacingTimed
  - param Variable gg_unit_hrif_0078
  - param String 20.00
  - param String 0.20
- Action CommentString
  - param String ----------
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_07
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_08
  - param Preset Player01
  - param String 5.00
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Jaina
  - param String 0.25
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Jaina
  - param Variable Arthas
  - param String 0.25
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_015
  - param Variable gg_snd_H05Arthas05
  - param String TRIGSTR_014
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
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
  - param String TRIGSTR_017
  - param Variable gg_snd_H05Jaina06
  - param String TRIGSTR_016
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
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
  - param String TRIGSTR_019
  - param Variable gg_snd_H05Arthas07
  - param String TRIGSTR_018
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ResetUnitAnimation
  - param Variable Jaina
- Action ResetUnitAnimation
  - param Variable Arthas
- Action ResetUnitAnimation
  - param Variable Sergeant
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Jaina_Teleports_A
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_09
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_10
  - param Preset Player01
  - param String 5.00
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Jaina
  - param String 0.25
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Sergeant
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Sergeant_A


## Cinematic D
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
Jaina enters region for Teleportaion (CINEMATIC - D)

Run Trigger DIALOGUE C
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Jaina_Teleports_B
  - param String 0.00
- Action SetVariable
  - param Variable TeleportUnit
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Sergeant
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Sergeant_B
- Action IssuePointOrderLoc
  - param Variable Footman1
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Footman_1_C
- Action IssuePointOrderLoc
  - param Variable Footman2
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Footman_2_C
- Action IssuePointOrderLoc
  - param Variable Rifleman1
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Rifleman_C
- Action IssuePointOrderLoc
  - param Variable Priest1
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Town_Priest_C
- Action TriggerSleepAction
  - param String 0.2
- Action IssueImmediateOrder
  - param Variable Jaina
  - param Preset UnitOrderStop
- Action SetUnitAnimation
  - param Variable Jaina
  - param String spell
- Action CustomScriptCode
  - param String set udg_mass_teleport_effect = AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTo.mdl", GetUnitX(udg_Jaina), GetUnitY(udg_Jaina))
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MassTeleportTarget
  - param Variable Jaina
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MassTeleportTarget
  - param String 80.00
- Action PlaySoundBJ
  - param Variable gg_snd_MassTeleportTarget
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 2.8
- Action CustomScriptCode
  - param String call DestroyEffect(udg_mass_teleport_effect)
- Action CustomScriptCode
  - param String set udg_mass_teleport_effect = AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(udg_Jaina), GetUnitY(udg_Jaina))
- Action TriggerSleepAction
  - param String 0.5
- Action ShowUnitHide
  - param Variable Jaina
- Action TriggerSleepAction
  - param String 2.5
- Action CustomScriptCode
  - param String call DestroyEffect(udg_mass_teleport_effect)
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.40
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetUnitOwner
  - param Variable Jaina
  - param Preset PlayerNP
  - param Preset ChangeColorFalse
- Action RemoveUnit
  - param Variable TeleportUnit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Cinematic_E
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Jaina
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Jaina_Teleports_A


## Cinematic E
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
Trigger DIALOGUE C fires this trigger (CINEMATIC - E)

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_C
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.40
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable Jaina
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_01Jaina_Teleports_B
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_11
  - param Preset Player01
  - param String 0.00
- Action CommentString
  - param String -----Move Villagers-----
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0088
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Conversion_01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0133
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Conversion_06
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0089
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Conversion_02
- Action CommentString
  - param String -----Move Militia-----
- Action CommentString
  - param String ----------
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
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
  - param String TRIGSTR_025
  - param Variable gg_snd_H05Arthas08
  - param String TRIGSTR_027
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Sergeant
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Sergeant_C
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Sergeant
  - param String 0.25
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Sergeant
  - param String TRIGSTR_029
  - param Variable gg_snd_H05Footman09
  - param String TRIGSTR_028
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
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
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_12
  - param Preset Player01
  - param String 0.00
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Sergeant
  - param Variable Arthas
  - param String 0.25
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_031
  - param Variable gg_snd_H05Arthas10
  - param String TRIGSTR_030
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_Cinematic_F


## Cinematic F
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
Trigger DIALOGUE D fires this trigger  (CINEMATIC - F)

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Action CommentString
  - param String -----Convert Zombie 01-----
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Corruption_01
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis01
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis01
- Action SetHeroLevel
  - param Variable MalGanis01
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis01
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis01
  - param Preset UnitOrderDarkConversionFast
  - param Variable gg_unit_nvil_0088
- Action CommentString
  - param String -----Convert Zombie 02-----
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Corruption_02
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis02
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis02
- Action SetHeroLevel
  - param Variable MalGanis02
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis02
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis02
  - param Preset UnitOrderDarkConversionFast
  - param Variable gg_unit_nvil_0089
- Action CommentString
  - param String -----Convert Zombie 03-----
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Corruption_03
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis03
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis03
- Action SetHeroLevel
  - param Variable MalGanis03
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis03
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis03
  - param Preset UnitOrderDarkConversionFast
  - param Variable gg_unit_nvil_0102
- Action CommentString
  - param String ----------
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cinematic_13
  - param Preset Player01
  - param String 0.00
- Action ResetTerrainFogBJ
- Action CameraResetSmoothingFactorBJ
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String -----Convert Zombie 04-----
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Corruption_04
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis04
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis04
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis04
- Action SetHeroLevel
  - param Variable MalGanis04
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis04
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis04
  - param Preset UnitOrderDarkConversionFast
  - param Variable gg_unit_nvil_0103
- Action CommentString
  - param String -----Convert Zombie 05-----
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Corruption_05
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis05
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis05
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis05
- Action SetHeroLevel
  - param Variable MalGanis05
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis05
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis05
  - param Preset UnitOrderDarkConversionFast
  - param Variable gg_unit_nvil_0132
- Action CommentString
  - param String -----Convert Zombie 06-----
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Corruption_06
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis06
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis06
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis06
- Action SetHeroLevel
  - param Variable MalGanis06
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis06
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis06
  - param Preset UnitOrderDarkConversionFast
  - param Variable gg_unit_nvil_0133
- Action CommentString
  - param String -----Convert Zombie 07-----
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Corruption_07
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis07
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis07
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis07
- Action SetHeroLevel
  - param Variable MalGanis07
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis07
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis07
  - param Preset UnitOrderDarkConversionFast
  - param Variable gg_unit_nvil_0134
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Cienmatic_14
  - param Preset Player01
  - param String 4.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_032
  - param Variable gg_snd_H05Arthas11
  - param String TRIGSTR_033
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 5.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H05Arthas11
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action SetVariable
  - param Variable IntroCancelled
  - param String true
- Action SetSkyModel
  - param Preset SkyModelNone
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 1.50
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function CameraSetupGetDestPositionLoc
    - Function CameraSetupGetDestPositionLoc
      - param Variable gg_cam_Starting_Cienmatic_Cancel
  - param String 1.50
- Action SelectUnitSingle
  - param Variable Arthas
- Action CommentString
  - param String -----Change Ownership to Blue-----
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player08
  - param Function DoNothing
    - Action SetUnitOwner
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset Player01
      - param Preset ChangeColorTrue
- Action CommentString
  - param String Cinematic No Longer Be Skipped
- Action DisableTrigger
  - param Variable gg_trg_Intro_Cancelled
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Mission_Begins
- Action CommentString
  - param String -----Remove Roaming Villagers-----
- Action TriggerExecute
  - param Variable gg_trg_01Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_01Villager_Retreat_B
- Action TriggerExecute
  - param Variable gg_trg_02Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_03Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_04Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_05Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_06Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_06Villager_Retreat_B


## Dark Conversion 01
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.10
- Action RemoveUnit
  - param Variable MalGanis01
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player05
  - param Preset ChangeColorTrue
- Action ReplaceUnitBJ
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param String nzom
  - param Preset UnitStateMethodRelative
- Action GroupAddUnitSimple
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Variable CorruptVillagerGroup1
- Action IssueTargetOrder
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hfoo_0027
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Conversion_01
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventSummoned


## Dark Conversion 02
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.10
- Action RemoveUnit
  - param Variable MalGanis02
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player05
  - param Preset ChangeColorTrue
- Action ReplaceUnitBJ
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param String nzom
  - param Preset UnitStateMethodRelative
- Action GroupAddUnitSimple
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Variable CorruptVillagerGroup1
- Action IssueTargetOrder
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hfoo_0023
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Conversion_02
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventSummoned


## Dark Conversion 03
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.10
- Action RemoveUnit
  - param Variable MalGanis03
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player05
  - param Preset ChangeColorTrue
- Action ReplaceUnitBJ
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param String nzom
  - param Preset UnitStateMethodRelative
- Action GroupAddUnitSimple
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Variable CorruptVillagerGroup1
- Action IssueTargetOrder
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hfoo_0091
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Conversion_03
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventSummoned


## Dark Conversion 04
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.10
- Action RemoveUnit
  - param Variable MalGanis04
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player05
  - param Preset ChangeColorTrue
- Action ReplaceUnitBJ
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param String nzom
  - param Preset UnitStateMethodRelative
- Action GroupAddUnitSimple
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Variable CorruptVillagerGroup1
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Conversion_04
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventSummoned


## Dark Conversion 05
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.10
- Action RemoveUnit
  - param Variable MalGanis05
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player05
  - param Preset ChangeColorTrue
- Action ReplaceUnitBJ
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param String nzom
  - param Preset UnitStateMethodRelative
- Action GroupAddUnitSimple
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Variable CorruptVillagerGroup1
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Conversion_05
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventSummoned


## Dark Conversion 06
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Conversion_06
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Action TriggerSleepAction
  - param String 0.10
- Action RemoveUnit
  - param Variable MalGanis06
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player05
  - param Preset ChangeColorTrue
- Action ReplaceUnitBJ
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param String nzom
  - param Preset UnitStateMethodRelative
- Action IssueTargetOrder
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hfoo_0077
- Action GroupAddUnitSimple
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Variable CorruptVillagerGroup1
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventSummoned


## Dark Conversion 07
- enabled: True
- category: [0] Starting Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Conversion_07
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Action TriggerSleepAction
  - param String 0.10
- Action RemoveUnit
  - param Variable MalGanis07
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player05
  - param Preset ChangeColorTrue
- Action ReplaceUnitBJ
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param String nzom
  - param Preset UnitStateMethodRelative
- Action IssueTargetOrder
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hrif_0116
- Action GroupAddUnitSimple
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Variable CorruptVillagerGroup1
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventSummoned


## Troop Facing
- enabled: True
- category: [0] Starting Cinematic
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
  - param Variable Footman1
  - param Variable Arthas
  - param String 0.25
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Footman2
  - param Variable Arthas
  - param String 0.25
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Rifleman1
  - param Variable Arthas
  - param String 0.25
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Priest1
  - param Variable Arthas
  - param String 0.25
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable Priest1
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Town_Priest_C


## Militia Line A
- enabled: True
- category: [8] Militia
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0027
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_A_01a
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0076
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_A_02a
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0077
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_A_03a


## Militia Line B
- enabled: True
- category: [8] Militia
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0091
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_B_01a
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0168
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_B_02a
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0023
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_B_03a


## Militia Line C
- enabled: True
- category: [8] Militia
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Action IssuePointOrderLoc
  - param Variable gg_unit_hrif_0116
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_C_01a
- Action IssuePointOrderLoc
  - param Variable gg_unit_hrif_0078
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_C_02a


## Militia A
- enabled: True
- category: [8] Militia
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable MilitiaStop
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hfoo_0027
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Militia_Line_A_01a
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0027
  - param String Attack Defend
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0076
  - param String Attack Defend
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0077
  - param String Attack Defend
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaStop
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0027
  - param String Attack Defend
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0076
  - param String Attack Defend
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0077
  - param String Attack Defend
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaStop
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action EnableTrigger
  - param Variable gg_trg_Militia_Repeat_A
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0027
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_A_01b
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0076
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_A_02b
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0077
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_A_03b


## Militia B
- enabled: True
- category: [8] Militia
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable MilitiaStop
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hfoo_0091
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Militia_Line_B_01a
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0091
  - param String Attack - 1
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0168
  - param String Attack -1
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0023
  - param String Attack - 1
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaStop
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0091
  - param String Attack - 1
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0168
  - param String Attack -1
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0023
  - param String Attack - 1
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaStop
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action EnableTrigger
  - param Variable gg_trg_Militia_Repeat_B
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0091
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_B_01b
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0168
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_B_02b
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0023
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_B_03b


## Militia C
- enabled: True
- category: [8] Militia
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable MilitiaStop
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hrif_0116
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Militia_Line_C_01a
- Action SetUnitAnimation
  - param Variable gg_unit_hrif_0116
  - param String Spell
- Action SetUnitAnimation
  - param Variable gg_unit_hrif_0078
  - param String Spell
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaStop
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_hrif_0116
  - param String Spell
- Action SetUnitAnimation
  - param Variable gg_unit_hrif_0078
  - param String Spell
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_RiflemanAttack1
  - param Variable gg_unit_hrif_0078
- Action SetSoundVolumeBJ
  - param Variable gg_snd_RiflemanAttack1
  - param String 50.00
- Action PlaySoundBJ
  - param Variable gg_snd_RiflemanAttack1
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaStop
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action EnableTrigger
  - param Variable gg_trg_Militia_Repeat_C
- Action IssuePointOrderLoc
  - param Variable gg_unit_hrif_0116
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_C_01b
- Action IssuePointOrderLoc
  - param Variable gg_unit_hrif_0078
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_C_02b


## Militia Repeat A
- enabled: True
- category: [8] Militia
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable MilitiaStop
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hfoo_0027
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Militia_Line_A_01b
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0027
  - param String Attack Defend
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0076
  - param String Attack Defend
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0077
  - param String Attack Defend
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaStop
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0027
  - param String Attack Defend
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0076
  - param String Attack Defend
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0077
  - param String Attack Defend
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaStop
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0027
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_A_01a
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0076
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_A_02a
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0077
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_A_03a
- Action EnableTrigger
  - param Variable gg_trg_Militia_A


## Militia Repeat B
- enabled: True
- category: [8] Militia
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable MilitiaStop
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hfoo_0091
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Militia_Line_B_01b
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0091
  - param String Attack - 1
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0168
  - param String Attack - 1
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0023
  - param String Attack - 1
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaStop
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0091
  - param String Attack - 1
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_FootmanYesAttack2
  - param Variable gg_unit_hfoo_0091
- Action SetSoundVolumeBJ
  - param Variable gg_snd_FootmanYesAttack2
  - param String 30.00
- Action PlaySoundBJ
  - param Variable gg_snd_FootmanYesAttack2
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0168
  - param String Attack - 1
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0023
  - param String Attack - 1
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaStop
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0091
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_B_01a
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0168
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_B_02a
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0023
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_B_03a
- Action EnableTrigger
  - param Variable gg_trg_Militia_B


## Militia Repeat C
- enabled: True
- category: [8] Militia
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable MilitiaStop
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hrif_0116
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Militia_Line_C_01b
- Action SetUnitAnimation
  - param Variable gg_unit_hrif_0116
  - param String Spell
- Action SetUnitAnimation
  - param Variable gg_unit_hrif_0078
  - param String Spell
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaStop
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_hrif_0116
  - param String Spell
- Action SetUnitAnimation
  - param Variable gg_unit_hrif_0078
  - param String Spell
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_RiflemanAttack2
  - param Variable gg_unit_hrif_0078
- Action SetSoundVolumeBJ
  - param Variable gg_snd_RiflemanAttack2
  - param String 50.00
- Action PlaySoundBJ
  - param Variable gg_snd_RiflemanAttack2
- Action CommentString
  - param String --------------------------------------------------------------------------------------------------------------------------
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaStop
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_hrif_0116
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_C_01a
- Action IssuePointOrderLoc
  - param Variable gg_unit_hrif_0078
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_C_02a
- Action EnableTrigger
  - param Variable gg_trg_Militia_C


## Mission Begins
- enabled: True
- category: [7] Start Mission
- starts off: False
- is custom text: False
- run on map init: False
```description
ZOMBIES DEAD fires this trigger
Quest Information / Start timer

```
### Functions
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Jaina_Items_Drop
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateGold
  - param String 500
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateLumber
  - param String 200
- Action SetPlayerHandicapXPBJ
  - param Preset Player01
  - param String 40.00
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hpea
  - param Preset Player01
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02Harvest_Gold
  - param String 0.00
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0011
- Action TriggerSleepAction
  - param String 0.20
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hpea
  - param Preset Player01
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02Harvest_Gold
  - param String 0.00
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0011
- Action TriggerSleepAction
  - param String 0.20
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hpea
  - param Preset Player01
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02Harvest_Gold
  - param String 0.00
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0011
- Action TriggerSleepAction
  - param String 0.20
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hpea
  - param Preset Player01
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02Harvest_Lumber
  - param String 0.00
- Action IssueTargetDestructableOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderHarvestDestructible
  - param Variable gg_dest_VTlt_2025
- Action CommentString
  - param String -----Main Quest Timer-----
- Action StartTimerBJ
  - param Variable Timer30Minute
  - param Preset PeriodicOptionOneTime
  - param String 1800.00
- Action CreateTimerDialogBJ
  - param Variable Timer30Minute
  - param String TRIGSTR_080
- Action CommentString
  - param String -----Countdown Timer Warning-----
- Action StartTimerBJ
  - param Variable TimerWarning
  - param Preset PeriodicOptionOneTime
  - param String 1200.00
- Action CommentString
  - param String -------------------Countdown Timer Hopeless--------------------
- Action StartTimerBJ
  - param Variable HopelessTimer
  - param Preset PeriodicOptionOneTime
  - param String 1770.00
- Action EnableTrigger
  - param Variable gg_trg_ArthasHopeless_QUE
- Action CommentString
  - param String -------------------Countdown Caravan Quest--------------------
- Action StartTimerBJ
  - param Variable CaravanTown1Timer
  - param Preset PeriodicOptionOneTime
  - param String 450.00
- Action CommentString
  - param String -------------------Countdown Timer Suicide-----------------------
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function DoNothing
    - Action StartTimerBJ
      - param Variable SuicideTimer
      - param Preset PeriodicOptionOneTime
      - param String 1755.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyNormal
  - param Function DoNothing
    - Action StartTimerBJ
      - param Variable SuicideTimer
      - param Preset PeriodicOptionOneTime
      - param String 1740.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action StartTimerBJ
      - param Variable SuicideTimer
      - param Preset PeriodicOptionOneTime
      - param String 1680.00
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String -----Countdown Orange AI Attack Wave-----
- Action StartTimerBJ
  - param Variable OrangeAIAttackWave
  - param Preset PeriodicOptionOneTime
  - param String 1080.00
- Action CommentString
  - param String ----------
- Action EnableTrigger
  - param Variable gg_trg_Ending_Start
- Action EnableTrigger
  - param Variable gg_trg_Timer_Warning_10_QUE
- Action EnableTrigger
  - param Variable gg_trg_Villagers_Greeting_QUE
- Action TriggerExecute
  - param Variable gg_trg_Start_AI


## Jaina Items Drop
- enabled: True
- category: [7] Start Mission
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetItemPositionLoc
  - param Function UnitItemInSlotBJ
    - Function UnitItemInSlotBJ
      - param Variable Jaina
      - param String 1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Jaina_Item_Drop_01
- Action SetItemPositionLoc
  - param Function UnitItemInSlotBJ
    - Function UnitItemInSlotBJ
      - param Variable Jaina
      - param String 2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Jaina_Item_Drop_02
- Action SetItemPositionLoc
  - param Function UnitItemInSlotBJ
    - Function UnitItemInSlotBJ
      - param Variable Jaina
      - param String 3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Jaina_Item_Drop_03
- Action SetItemPositionLoc
  - param Function UnitItemInSlotBJ
    - Function UnitItemInSlotBJ
      - param Variable Jaina
      - param String 4
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Jaina_Item_Drop_04
- Action SetItemPositionLoc
  - param Function UnitItemInSlotBJ
    - Function UnitItemInSlotBJ
      - param Variable Jaina
      - param String 5
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Jaina_Item_Drop_05
- Action SetItemPositionLoc
  - param Function UnitItemInSlotBJ
    - Function UnitItemInSlotBJ
      - param Variable Jaina
      - param String 6
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Jaina_Item_Drop_06


## Start AI
- enabled: True
- category: [7] Start Mission
- starts off: False
- is custom text: False
- run on map init: False
```description
This trigger is fired from either Intro Cancelled, or Cinematic F
Start the AI
Begin moving the Caravan
```
### Functions
- Action CommentString
  - param String Delay the AI start by 2 seconds, to distribute the perf spike
- Action TriggerSleepAction
  - param String 4.00
- Action StartCampaignAI
  - param Preset Player06
  - param String h05_green.ai
- Action TriggerSleepAction
  - param String 2.00
- Action StartCampaignAI
  - param Preset Player03
  - param String h05_purple.ai
- Action CommandAI
  - param Preset Player06
  - param String 0
  - param String 0
- Action CommandAI
  - param Preset Player03
  - param String 0
  - param String 0
- Action RemoveAllGuardPositions
  - param Preset Player04


## Zombies are Dead
- enabled: True
- category: [7] Start Mission
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Variable CorruptVillagerGroup1
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable CorruptVillagerGroup1
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action QueuedTriggerAddBJ
      - param Variable gg_trg_Main_Quest_Discovered
      - param Preset CheckingIgnoringChecking
  - param Function DoNothing
    - Action DoNothing
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable CorruptVillagerGroup1
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player05
  - param Preset PlayerUnitEventDeath


## Main Quest Discovered
- enabled: True
- category: [7] Start Mission
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action TriggerSleepAction
  - param String 2
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_026
- Action TriggerSleepAction
  - param String 10.00
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 10.00
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Sorceress_Available
  - param Preset CheckingIgnoringChecking


## Sorceress Available
- enabled: True
- category: [7] Start Mission
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeUnitAvailable
  - param String TRIGSTR_296
- Action TriggerSleepAction
  - param String 10.00
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## First Attack Wave 01 QUE
- enabled: True
- category: [24] Hearthglen
- starts off: False
- is custom text: False
- run on map init: False
```description
Undead Reach Hearthglen
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_First_Attack_Wave_01
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareBoolean
  - param Function IsUnitEnemy
    - Function IsUnitEnemy
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Preset Player01
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterUnitInRangeSimple
  - param String 700.00
  - param Variable gg_unit_hgtw_0085
- Event TriggerRegisterUnitInRangeSimple
  - param String 700.00
  - param Variable gg_unit_hgtw_0066
- Event TriggerRegisterUnitInRangeSimple
  - param String 700.00
  - param Variable gg_unit_hgtw_0125


## First Attack Wave 01
- enabled: True
- category: [24] Hearthglen
- starts off: False
- is custom text: False
- run on map init: False
```description
Undead Reach Hearthglen
```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset Player01
  - param String hfoo
  - param String TRIGSTR_286
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Hearthglen
  - param Variable gg_snd_H05Footman24
  - param String TRIGSTR_285
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Arthas
      - param String TRIGSTR_275
      - param Variable gg_snd_H05Arthas25
      - param String TRIGSTR_276
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## City Building
- enabled: True
- category: [24] Hearthglen
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nshe
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Sheep
  - param String 180.00
- Action SetVariable
  - param Variable SheepItem
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_Sheep1
  - param Variable SheepItem
- Action PlaySoundBJ
  - param Variable gg_snd_Sheep1
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_2867


## Sheep
- enabled: True
- category: [24] Hearthglen
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable SheepPoint
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable SheepItem
- Action CreateItemLoc
  - param String I017
  - param Variable SheepPoint
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable SheepItem
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventDeath


## ArthasHopeless QUE
- enabled: True
- category: [24] Hearthglen
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_ArthasHopeless
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable HopelessTimer


## ArthasHopeless
- enabled: True
- category: [24] Hearthglen
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Arthas
      - param String TRIGSTR_216
      - param Variable gg_snd_H05Arthas26
      - param String TRIGSTR_217
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action TriggerSleepAction
      - param String 0.10
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Timer Warning 10 QUE
- enabled: True
- category: [24] Hearthglen
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Timer_Warning_10
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerWarning


## Timer Warning 10
- enabled: True
- category: [24] Hearthglen
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_133
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Outside Farmer 01
- enabled: True
- category: [23] Corruption Outside Hearthglen
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0141
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02Outside_Farm
- Event TriggerRegisterTimerEventPeriodic
  - param String 13.00


## Outside Farmer 02
- enabled: True
- category: [23] Corruption Outside Hearthglen
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0143
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02Outside_Farm
- Event TriggerRegisterTimerEventPeriodic
  - param String 17.00


## Outside Farmer 03
- enabled: True
- category: [23] Corruption Outside Hearthglen
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0142
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02Outside_Farm
- Event TriggerRegisterTimerEventPeriodic
  - param String 9.00


## Outside Famer 01 Zombie
- enabled: True
- category: [23] Corruption Outside Hearthglen
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
  - param Variable gg_trg_Outside_Farmer_01
- Action DisableTrigger
  - param Variable gg_trg_Outside_Farmer_02
- Action DisableTrigger
  - param Variable gg_trg_Outside_Farmer_03
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Malganis_Corruption
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterUnitInRangeSimple
  - param String 600.00
  - param Variable gg_unit_nvil_0141


## Malganis Corruption
- enabled: True
- category: [23] Corruption Outside Hearthglen
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Corruption_08
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanisOutside01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanisOutside01
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanisOutside01
- Action SetHeroLevel
  - param Variable MalGanisOutside01
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanisOutside01
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanisOutside01
  - param Preset UnitOrderDarkConversionFast
  - param Variable gg_unit_nvil_0141
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Corruption_08
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanisOutside02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanisOutside02
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanisOutside02
- Action SetHeroLevel
  - param Variable MalGanisOutside02
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanisOutside02
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanisOutside02
  - param Preset UnitOrderDarkConversionFast
  - param Variable gg_unit_nvil_0143
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Corruption_08
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanisOutside03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanisOutside03
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanisOutside03
- Action SetHeroLevel
  - param Variable MalGanisOutside03
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanisOutside03
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanisOutside03
  - param Preset UnitOrderDarkConversionFast
  - param Variable gg_unit_nvil_0142


## Dark Conversion Outside Farm
- enabled: True
- category: [23] Corruption Outside Hearthglen
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Variable MalGanis01
- Action RemoveUnit
  - param Variable MalGanis02
- Action RemoveUnit
  - param Variable MalGanis03
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player05
  - param Preset ChangeColorTrue
- Action ReplaceUnitBJ
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param String nzom
  - param Preset UnitStateMethodRelative
- Action GroupAddUnitSimple
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Variable OutsideFarmGroup
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_02Outside_Farm
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventSummoned


## Crate Item
- enabled: True
- category: [23] Corruption Outside Hearthglen
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateItemLoc
  - param String I018
  - param Function GetDestructableLoc
    - Function GetDestructableLoc
      - param Variable gg_dest_LTcr_2633
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_2633


## 01Roaming Villager A
- enabled: True
- category: [17] Roaming Villagers A
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0146
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_A
- Event TriggerRegisterTimerEventPeriodic
  - param String 8.00


## 01Roaming Villager Aa
- enabled: True
- category: [17] Roaming Villagers A
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0152
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_A
- Event TriggerRegisterTimerEventPeriodic
  - param String 7.00


## 01Roaming Villager B
- enabled: True
- category: [17] Roaming Villagers A
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0150
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_A
- Event TriggerRegisterTimerEventPeriodic
  - param String 6.00


## 01Roaming Villager Bb
- enabled: True
- category: [17] Roaming Villagers A
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0148
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_A
- Event TriggerRegisterTimerEventPeriodic
  - param String 9.00


## 01Villager Retreat A
- enabled: True
- category: [17] Roaming Villagers A
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_01Roaming_Villager_A
- Action DisableTrigger
  - param Variable gg_trg_01Roaming_Villager_Aa
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0146
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvlw_0152
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0146
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_A_Retreat_A
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0152
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_A_Retreat_A


## 01Villager Retreat B
- enabled: True
- category: [17] Roaming Villagers A
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_01Roaming_Villager_B
- Action DisableTrigger
  - param Variable gg_trg_01Roaming_Villager_Bb
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0150
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0148
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0150
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_A_Retreat_B
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0148
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_A_Retreat_B


## 01Remove Villager 01
- enabled: True
- category: [17] Roaming Villagers A
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Action TriggerExecute
  - param Variable gg_trg_01Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_01Villager_Retreat_B
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable RoamingVillagersA
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_02_Villager_A_Retreat_A


## 01Remove Villager 02
- enabled: True
- category: [17] Roaming Villagers A
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Action TriggerExecute
  - param Variable gg_trg_01Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_01Villager_Retreat_B
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable RoamingVillagersA
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_02_Villager_A_Retreat_B


## 02Roaming Villager A
- enabled: True
- category: [18] Roaming Villagers B
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0161
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_B
- Event TriggerRegisterTimerEventPeriodic
  - param String 6.00


## 02Roaming Villager B
- enabled: True
- category: [18] Roaming Villagers B
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0159
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_B
- Event TriggerRegisterTimerEventPeriodic
  - param String 8.00


## 02Roaming Villager C
- enabled: True
- category: [18] Roaming Villagers B
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0160
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_B
- Event TriggerRegisterTimerEventPeriodic
  - param String 9.00


## 02Villager Retreat A
- enabled: True
- category: [18] Roaming Villagers B
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_02Roaming_Villager_A
- Action DisableTrigger
  - param Variable gg_trg_02Roaming_Villager_B
- Action DisableTrigger
  - param Variable gg_trg_02Roaming_Villager_C
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0159
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvlw_0160
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0161
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0159
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_B_Retreat_A
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0160
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_B_Retreat_A
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0161
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_B_Retreat_A


## 02Remove Villager 01
- enabled: True
- category: [18] Roaming Villagers B
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Action TriggerExecute
  - param Variable gg_trg_02Villager_Retreat_A
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable RoamingVillagersB
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_02_Villager_B_Retreat_A


## 03Roaming Villager A
- enabled: True
- category: [19] Roaming Villagers C
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0155
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_C
- Event TriggerRegisterTimerEventPeriodic
  - param String 10.00


## 03Roaming Villager B
- enabled: True
- category: [19] Roaming Villagers C
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0153
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_C
- Event TriggerRegisterTimerEventPeriodic
  - param String 12.00


## 03Roaming Villager C
- enabled: True
- category: [19] Roaming Villagers C
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0154
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_C
- Event TriggerRegisterTimerEventPeriodic
  - param String 7.00


## 03Villager Retreat A
- enabled: True
- category: [19] Roaming Villagers C
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_03Roaming_Villager_A
- Action DisableTrigger
  - param Variable gg_trg_03Roaming_Villager_B
- Action DisableTrigger
  - param Variable gg_trg_03Roaming_Villager_C
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0155
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvlw_0153
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvlw_0154
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0155
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_C_Retreat_A
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0153
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_C_Retreat_A
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0154
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_C_Retreat_A


## 03Remove Villager 01
- enabled: True
- category: [19] Roaming Villagers C
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_03Villager_Retreat_A
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable RoamingVillagersC
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_02_Villager_C_Retreat_A


## 04Roaming Villager A
- enabled: True
- category: [20] Roaming Villagers D
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0156
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_D
- Event TriggerRegisterTimerEventPeriodic
  - param String 5.00


## 04Roaming Villager B
- enabled: True
- category: [20] Roaming Villagers D
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0157
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_D
- Event TriggerRegisterTimerEventPeriodic
  - param String 16.00


## 04Roaming Villager C
- enabled: True
- category: [20] Roaming Villagers D
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0013
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_D
- Event TriggerRegisterTimerEventPeriodic
  - param String 10.00


## 04Villager Retreat A
- enabled: True
- category: [20] Roaming Villagers D
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_04Roaming_Villager_A
- Action DisableTrigger
  - param Variable gg_trg_04Roaming_Villager_B
- Action DisableTrigger
  - param Variable gg_trg_04Roaming_Villager_C
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0013
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0156
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvlw_0157
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0013
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_D_Retreat_A
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0156
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_D_Retreat_A
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0157
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_D_Retreat_A


## 04Remove Villager 01
- enabled: True
- category: [20] Roaming Villagers D
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Action TriggerExecute
  - param Variable gg_trg_04Villager_Retreat_A
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable RoamingVillagersD
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_02_Villager_D_Retreat_A


## 05Roaming Villager A
- enabled: True
- category: [21] Roaming Villagers E
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0158
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_E
- Event TriggerRegisterTimerEventPeriodic
  - param String 10.00


## 05Roaming Villager B
- enabled: True
- category: [21] Roaming Villagers E
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0169
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_E
- Event TriggerRegisterTimerEventPeriodic
  - param String 15.00


## 05Villager Retreat A
- enabled: True
- category: [21] Roaming Villagers E
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_05Roaming_Villager_A
- Action DisableTrigger
  - param Variable gg_trg_05Roaming_Villager_B
- Action SetUnitPathing
  - param Variable gg_unit_nvlw_0169
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvlw_0158
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0169
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_E_Retreat_A
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0158
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_E_Retreat_A


## 05Remove Villager 01
- enabled: True
- category: [21] Roaming Villagers E
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable RoamingVillagersE
  - param Preset OperatorEqualENE
  - param String true
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Action TriggerExecute
  - param Variable gg_trg_05Villager_Retreat_A
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_02_Villager_E_Retreat_A


## 06Roaming Villager A
- enabled: True
- category: [22] Roaming Villagers F
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0164
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_F
- Event TriggerRegisterTimerEventPeriodic
  - param String 13.00


## 06Roaming Villager B
- enabled: True
- category: [22] Roaming Villagers F
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0162
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_F
- Event TriggerRegisterTimerEventPeriodic
  - param String 10.00


## 06Roaming Villager C
- enabled: True
- category: [22] Roaming Villagers F
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0165
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_F
- Event TriggerRegisterTimerEventPeriodic
  - param String 6.00


## 06Roaming Villager D
- enabled: True
- category: [22] Roaming Villagers F
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0166
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_F
- Event TriggerRegisterTimerEventPeriodic
  - param String 9.00


## 06Roaming Villager E
- enabled: True
- category: [22] Roaming Villagers F
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0163
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_02_Roaming_Villager_F
- Event TriggerRegisterTimerEventPeriodic
  - param String 7.00


## 06Villager Retreat A
- enabled: True
- category: [22] Roaming Villagers F
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_06Roaming_Villager_A
- Action DisableTrigger
  - param Variable gg_trg_06Roaming_Villager_B
- Action DisableTrigger
  - param Variable gg_trg_06Roaming_Villager_C
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0162
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvlw_0164
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvlw_0165
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0162
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_F_Retreat_A
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0164
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_F_Retreat_A
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0165
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_F_Retreat_A


## 06Villager Retreat B
- enabled: True
- category: [22] Roaming Villagers F
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_06Roaming_Villager_D
- Action DisableTrigger
  - param Variable gg_trg_06Roaming_Villager_E
- Action SetUnitPathing
  - param Variable gg_unit_nvlw_0166
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0163
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0163
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_F_Retreat_B
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvlw_0166
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_F_Retreat_B


## 06Remove Villager 01
- enabled: True
- category: [22] Roaming Villagers F
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Action TriggerExecute
  - param Variable gg_trg_06Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_06Villager_Retreat_B
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable RoamingVillagersF
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_02_Villager_F_Retreat_A


## 06Remove Villager 02
- enabled: True
- category: [22] Roaming Villagers F
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Action TriggerExecute
  - param Variable gg_trg_06Villager_Retreat_A
- Action TriggerExecute
  - param Variable gg_trg_06Villager_Retreat_B
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable RoamingVillagersF
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_02_Villager_F_Retreat_B


## Reorient Formation
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description
This trigger repositions all of the CaravanRegions in formation (according to FormationAngles and FormationDistances), centered about ReorientTarget and rotated to ReorientAngle.

Before running this trigger, set the following variables:  ReorientAngle, ReorientTarget
```
### Functions
- Action ForLoopA
  - param String 1
  - param Variable FormationTotal
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Reorient_Formation_Single


## Reorient Formation Single
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description
Perform a simple transform on the formation data to rotate it to ReorientAngle (with respect to the formation origin) and shift it over to ReorientTarget.
The formation data is stored in polar notation to make this calculation easier.

```
### Functions
- Action SetVariable
  - param Variable TempAngle
  - param Function OperatorReal
    - Function OperatorReal
      - param Variable ReorientAngle
      - param Preset OperatorAdd
      - param Variable FormationAngleArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
- Action SetVariable
  - param Variable TempX
  - param Function OperatorReal
    - Function OperatorReal
      - param Variable FormationDistanceArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
      - param Preset OperatorMultiply
      - param Function CosBJ
        - Function CosBJ
          - param Variable TempAngle
- Action SetVariable
  - param Variable TempY
  - param Function OperatorReal
    - Function OperatorReal
      - param Variable FormationDistanceArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
      - param Preset OperatorMultiply
      - param Function SinBJ
        - Function SinBJ
          - param Variable TempAngle
- Action MoveRectToLoc
  - param Variable FormationRegionArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function OffsetLocation
    - Function OffsetLocation
      - param Variable zReorientTarget
      - param Variable TempX
      - param Variable TempY


## Caravan Orders Pause
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action PauseTimerBJ
  - param Preset PauseResumePause
  - param Variable CaravanOrderPulse


## Caravan Orders Resume
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StartTimerBJ
  - param Variable CaravanOrderPulse
  - param Preset PeriodicOptionPeriodic
  - param String 3.00


## Caravan Orders
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForLoopA
  - param Variable CaravanWagonFirst
  - param Variable CaravanWagonLast
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Caravan_Orders_Single_Wagon
- Action ForLoopA
  - param Variable CaravanGuardFirst
  - param Variable CaravanGuardLast
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Caravan_Orders_Single_Guard
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable CaravanOrderPulse


## Caravan Orders Single Wagon
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable FormationRegionArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
- Condition OperatorCompareUnit
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Preset OperatorNotEqualENE
  - param Preset UnitNull


## Caravan Orders Single Guard
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable FormationRegionArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
- Condition OperatorCompareUnit
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Preset OperatorNotEqualENE
  - param Preset UnitNull


## Caravan Unit Dies
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForLoopA
  - param String 1
  - param Variable FormationTotal
  - param Function DoNothing
    - Action IfThenElse
      - param Function 
        - Condition OperatorCompareUnit
          - param Function GetDyingUnit
            - Function GetDyingUnit
          - param Preset OperatorEqualENE
          - param Variable CaravanUnitArray
            - subscript Function GetForLoopIndexA
              - Function GetForLoopIndexA
      - param Function DoNothing
        - Action SetVariable
          - param Variable CaravanUnitArray
            - subscript Function GetForLoopIndexA
              - Function GetForLoopIndexA
          - param Preset UnitNull
      - param Function DoNothing
        - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitInGroup
        - Function IsUnitInGroup
          - param Function GetDyingUnit
            - Function GetDyingUnit
          - param Variable TheCaravanGuards
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action GroupRemoveUnitSimple
      - param Function GetDyingUnit
        - Function GetDyingUnit
      - param Variable TheCaravanGuards
  - param Function DoNothing
    - Action DoNothing
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player04
  - param Preset PlayerUnitEventDeath


## Guard Attacked
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description
If a nearby unit is attacked, reset the guards' move speeds to their natural speeds, so that they can respond effectively.
The slow guard move speed is restored for each guard when he/she catches up with the group.
```
### Functions
- Action ForLoopA
  - param Variable CaravanGuardFirst
  - param Variable CaravanGuardLast
  - param Function DoNothing
    - Action IfThenElse
      - param Function 
        - Condition OperatorCompareReal
          - param Function DistanceBetweenPoints
            - Function DistanceBetweenPoints
              - param Function GetUnitLoc
                - Function GetUnitLoc
                  - param Variable CaravanUnitArray
                    - subscript Function GetForLoopIndexA
                      - Function GetForLoopIndexA
              - param Function GetUnitLoc
                - Function GetUnitLoc
                  - param Function GetAttackedUnitBJ
                    - Function GetAttackedUnitBJ
          - param Preset OperatorLess
          - param Variable GuardCallForHelpDist
      - param Function DoNothing
        - Action SetUnitMoveSpeed
          - param Variable CaravanUnitArray
            - subscript Function GetForLoopIndexA
              - Function GetForLoopIndexA
          - param Function GetUnitDefaultMoveSpeed
            - Function GetUnitDefaultMoveSpeed
              - param Variable CaravanUnitArray
                - subscript Function GetForLoopIndexA
                  - Function GetForLoopIndexA
      - param Function DoNothing
        - Action DoNothing
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player04
  - param Preset PlayerUnitEventAttacked


## Guard Catches Up
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForLoopA
  - param Variable CaravanGuardFirst
  - param Variable CaravanGuardLast
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Guard_Catches_Up_Single
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable CaravanTestPulse


## Guard Catches Up Single
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnit
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Preset OperatorNotEqualENE
  - param Preset UnitNull
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable FormationRegionArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
      - param Variable CaravanUnitArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
  - param Preset OperatorEqualENE
  - param String true
- Action SetUnitMoveSpeed
  - param Variable CaravanUnitArray
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Variable SpeedOfGuards


## Wagons Reach Breadcrumb
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description
When all living wagons reach a breadcrumb, the formation regions are repositioned and reoriented around the next breadcrumb.
The caravan is never allowed to progress past (zBreadcrumbAllowed).
```
### Functions
- Action SetVariable
  - param Variable BreadcrumbReached
  - param Variable BreadcrumbCurrent
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Target_Next_Breadcrumb
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable CaravanUnitArray
        - subscript String 1
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function RectContainsUnit
        - Function RectContainsUnit
          - param Variable FormationRegionArray
            - subscript String 1
          - param Variable CaravanUnitArray
            - subscript String 1
      - param Preset OperatorEqualENE
      - param String true
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable CaravanUnitArray
        - subscript String 2
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function RectContainsUnit
        - Function RectContainsUnit
          - param Variable FormationRegionArray
            - subscript String 2
          - param Variable CaravanUnitArray
            - subscript String 2
      - param Preset OperatorEqualENE
      - param String true
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable CaravanUnitArray
        - subscript String 3
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function RectContainsUnit
        - Function RectContainsUnit
          - param Variable FormationRegionArray
            - subscript String 3
          - param Variable CaravanUnitArray
            - subscript String 3
      - param Preset OperatorEqualENE
      - param String true
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable CaravanUnitArray
        - subscript String 4
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function RectContainsUnit
        - Function RectContainsUnit
          - param Variable FormationRegionArray
            - subscript String 4
          - param Variable CaravanUnitArray
            - subscript String 4
      - param Preset OperatorEqualENE
      - param String true
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable CaravanUnitArray
        - subscript String 5
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function RectContainsUnit
        - Function RectContainsUnit
          - param Variable FormationRegionArray
            - subscript String 5
          - param Variable CaravanUnitArray
            - subscript String 5
      - param Preset OperatorEqualENE
      - param String true
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Variable TheCaravanWagons
  - param Preset OperatorGreater
  - param String 0
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable CaravanTestPulse


## Target Next Breadcrumb
- enabled: True
- category: [32] Caravan Behavior
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Variable BreadcrumbCurrent
  - param Preset OperatorLess
  - param Variable BreadcrumbAllowed
- Action CommentString
  - param String Calculate the next breadcrumb
- Action SetVariable
  - param Variable BreadcrumbCurrent
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable BreadcrumbCurrent
      - param Preset OperatorAdd
      - param String 1
- Action SetVariable
  - param Variable zReorientTarget
  - param Variable zBreadcrumbArray
    - subscript Variable BreadcrumbCurrent
- Action SetVariable
  - param Variable ReorientAngle
  - param Variable BreadcrumbAngleArray
    - subscript Variable BreadcrumbCurrent
- Action CommentString
  - param String Recalculate the caravan's targets and start them on their way
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Reorient_Formation
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Caravan_Orders


## Caravan To Town1
- enabled: True
- category: [31] Caravan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable BreadcrumbAllowed
  - param Variable BreadcrumbStopTown1
- Action ForLoopA
  - param String 1
  - param Variable FormationTotal
  - param Function DoNothing
    - Action ShowUnitShow
      - param Variable CaravanUnitArray
        - subscript Function GetForLoopIndexA
          - Function GetForLoopIndexA
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable CaravanTown1Timer


## Caravan To Town2
- enabled: True
- category: [31] Caravan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable BreadcrumbAllowed
  - param Variable BreadcrumbStopTown2
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable CaravanTown2Timer


## Caravan To Town3
- enabled: True
- category: [31] Caravan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable BreadcrumbAllowed
  - param Variable BreadcrumbStopTown3
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable CaravanTown3Timer


## Caravan To Town4
- enabled: True
- category: [31] Caravan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable BreadcrumbAllowed
  - param Variable BreadcrumbStopTown4
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable CaravanTown4Timer


## Caravan Attacked QUE
- enabled: True
- category: [31] Caravan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable TheCaravanWagons
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Caravan_Attacked
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player04
  - param Preset PlayerUnitEventAttacked


## Caravan Attacked
- enabled: True
- category: [31] Caravan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset Player04
  - param String uaco
  - param String TRIGSTR_127
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GroupPickRandomUnit
        - Function GroupPickRandomUnit
          - param Variable TheCaravanWagons
  - param Variable gg_snd_H05Acolyte22
  - param String TRIGSTR_128
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Caravan Wagon Dies QUE
- enabled: True
- category: [31] Caravan
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
      - param Variable TheCaravanWagons
  - param Preset OperatorEqualENE
  - param String true
- Action SetVariable
  - param Variable LastCaravanDeath
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetDyingUnit
        - Function GetDyingUnit
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable TheCaravanWagons
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable TheCaravanWagons
      - param Preset OperatorGreater
      - param String 0
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String If that was the last wagon, complete the quest. (But only if discovered)
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable CARAVANISDEADBOOLEAN
  - param String true
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Caravan_Wagon_Dies
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player04
  - param Preset PlayerUnitEventDeath


## Caravan Wagon Dies
- enabled: True
- category: [31] Caravan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CreateItemLoc
  - param String I014
  - param Variable LastCaravanDeath
- Action CreateItemLoc
  - param String I015
  - param Variable LastCaravanDeath
- Action SetVariable
  - param Variable TownPortal
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Arthas
      - param String TRIGSTR_265
      - param Variable gg_snd_H05Arthas23
      - param String TRIGSTR_266
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action ForGroup
  - param Variable TheCaravanGuards
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAttack
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_02Hearthglen
- Action CommentString
  - param String ----------
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
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
  - param String TRIGSTR_126
- Action QuestSetDiscoveredBJ
  - param Variable GrainCaravanQuest
  - param Preset DiscoveredOptionDiscovered
- Action QuestItemSetCompletedBJ
  - param Variable REQCaravanquest
  - param Preset CompletionOptionCompleted
- Action QuestSetCompletedBJ
  - param Variable GrainCaravanQuest
  - param Preset CompletionOptionCompleted
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Caravan Removal
- enabled: True
- category: [31] Caravan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitInGroup
        - Function IsUnitInGroup
          - param Function GetEnteringUnit
            - Function GetEnteringUnit
          - param Variable TheCaravanWagons
      - param Preset OperatorEqualENE
      - param String true
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitInGroup
        - Function IsUnitInGroup
          - param Function GetEnteringUnit
            - Function GetEnteringUnit
          - param Variable TheCaravanGuards
      - param Preset OperatorEqualENE
      - param String true
- Action ForLoopA
  - param String 1
  - param Variable FormationTotal
  - param Function DoNothing
    - Action IfThenElse
      - param Function 
        - Condition OperatorCompareUnit
          - param Function GetEnteringUnit
            - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param Variable CaravanUnitArray
            - subscript Function GetForLoopIndexA
              - Function GetForLoopIndexA
      - param Function DoNothing
        - Action SetVariable
          - param Variable CaravanUnitArray
            - subscript Function GetForLoopIndexA
              - Function GetForLoopIndexA
          - param Preset UnitNull
      - param Function DoNothing
        - Action DoNothing
- Action ShowUnitHide
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_03Caravan_Removal


## Town Portal Hint QUE
- enabled: True
- category: [31] Caravan
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
  - param Variable gg_trg_Town_Portal_Hint
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Condition OperatorCompareItem
  - param Function GetManipulatedItem
    - Function GetManipulatedItem
  - param Preset OperatorEqualENE
  - param Variable TownPortal
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventHeroPickUpItem


## Town Portal Hint
- enabled: True
- category: [31] Caravan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_129
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Corruption01 QUE
- enabled: True
- category: [9] Corrupt Farm 01
- starts off: False
- is custom text: False
- run on map init: False
```description
SIDE QUEST ACTIVATED after the corruption of the first village.
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Corruption01
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareInteger
  - param Variable BreadcrumbReached
  - param Preset OperatorEqual
  - param Variable BreadcrumbStopTown1
- Condition OperatorCompareBoolean
  - param Variable CARAVANISDEADBOOLEAN
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectOfPlayer
        - Function GetUnitsInRectOfPlayer
          - param Variable gg_rct_Village_Check_01
          - param Preset Player01
  - param Preset OperatorEqual
  - param String 0
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable CaravanCorruptionPulse


## Corruption01
- enabled: True
- category: [9] Corrupt Farm 01
- starts off: False
- is custom text: False
- run on map init: False
```description
SIDE QUEST ACTIVATED after the corruption of the first village.
```
### Functions
- Condition OperatorCompareBoolean
  - param Variable CARAVANISDEADBOOLEAN
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Caravan_Orders_Pause
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Caravan_Side_Quest
- Action CommentString
  - param String -----Caravan Share Vision-----
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0210
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0216
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0217
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0218
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0219
  - param Preset Player01
- Action CommentString
  - param String ---------
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Village_Vis_01
  - param String 800.00
- Action SetVariable
  - param Variable VillageVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CommentString
  - param String ---------
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 1
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_01_Roaming_Units_A
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 2
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_01_Roaming_Units_A
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 3
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_01_Roaming_Units_A
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 4
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_01_Roaming_Units_B
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 5
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_01_Roaming_Units_B
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Create_Plague_01
- Action CommentString
  - param String ---------
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 1
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 2
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 3
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 4
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 5
  - param Preset UnitOrderHoldPosition
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Caravan_Orders_Resume
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Villagers Come out
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_01_Create_B
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_01_Roaming_Units_B
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_01_Create_B
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_01_Roaming_Units_B
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_01_Create_A
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_01_Roaming_Units_A
- Action CommentString
  - param String Malganis Corruption
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_01
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis01
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis01
- Action SetHeroLevel
  - param Variable MalGanis01
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis01
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis01
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager01
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_01
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis02
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis02
- Action SetHeroLevel
  - param Variable MalGanis02
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis02
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis02
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager02
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_01
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis03
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis03
- Action SetHeroLevel
  - param Variable MalGanis03
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis03
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis03
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager03
- Action CommentString
  - param String ---------
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Ghouls01
- Action TriggerSleepAction
  - param String 15.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String ---------
- Action DestroyFogModifier
  - param Variable VillageVis
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0210
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0216
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0217
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0218
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0219
  - param Preset Player01
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Destroy_Plague_01
- Action CommentString
  - param String -----Optional Quest Activated-----
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Share_Vision_Last_Town
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestFailed
        - Function IsQuestFailed
          - param Variable GrainCaravanQuest
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action QuestSetDiscoveredBJ
      - param Variable GrainCaravanQuest
      - param Preset DiscoveredOptionDiscovered
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestFailed
        - Function IsQuestFailed
          - param Variable GrainCaravanQuest
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeDiscovered
      - param String TRIGSTR_303
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String ---------
- Action DestroyEffectBJ
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action StartTimerBJ
  - param Variable CaravanTown2Timer
  - param Preset PeriodicOptionOneTime
  - param String 130.00
- Action CommentString
  - param String ---------
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Dark Conversion Farm 01
- enabled: True
- category: [9] Corrupt Farm 01
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player04
  - param Preset ChangeColorTrue
- Action ReplaceUnitBJ
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param String nzom
  - param Preset UnitStateMethodRelative
- Action GroupAddUnitSimple
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Variable Farm01CorruptedGroup
- Action CommentString
  - param String Need to wait for transformation finished
- Action TriggerSleepAction
  - param String 4.00
- Action RemoveUnit
  - param Variable MalGanis01
- Action RemoveUnit
  - param Variable MalGanis02
- Action RemoveUnit
  - param Variable MalGanis03
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Attack01
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Village_Check_01
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventSummoned


## Caravan Side Quest
- enabled: True
- category: [9] Corrupt Farm 01
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CommentString
  - param String ---------
- Action SetVariable
  - param Variable CameraPosition
  - param Function GetCameraTargetPositionLoc
    - Function GetCameraTargetPositionLoc
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Village_Check_01
  - param String 1024.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Village_Check_01
  - param String 3.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Caravan
  - param Preset Player01
  - param String 0.00
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset Player01
  - param String hfoo
  - param String TRIGSTR_053
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_hkee_0043
  - param Variable gg_snd_H05Footman12
  - param String TRIGSTR_054
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Arthas
      - param String TRIGSTR_257
      - param Variable gg_snd_H05Arthas13
      - param String TRIGSTR_258
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action SetVariable
  - param Variable ArthasPoint
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Variable ArthasPoint


## Share Vision Last Town
- enabled: True
- category: [9] Corrupt Farm 01
- starts off: False
- is custom text: False
- run on map init: False
```description
Vision shared with the last village after receiving the side quest
```
### Functions
- Action CommentString
  - param String -----Show Vision With Last Town-----
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Village_Check_04
  - param String 1500.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Village_Check_04
  - param String 4.00


## Ghouls01
- enabled: True
- category: [9] Corrupt Farm 01
- starts off: False
- is custom text: False
- run on map init: False
```description
These units are only created on Hard Difficulty level.
```
### Functions
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_1_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm01CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_01_Ghouls_Move
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String ---------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_1_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm01CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_01_Ghouls_Move
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String ---------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_1_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm01CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_01_Ghouls_Move
- Action CommentString
  - param String ---------


## Attack01
- enabled: True
- category: [9] Corrupt Farm 01
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
  - param String 5.00
- Action GroupPointOrderLoc
  - param Variable Farm01CorruptedGroup
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Hearthglen
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard


## Create Plague 01
- enabled: True
- category: [9] Corrupt Farm 01
- starts off: False
- is custom text: False
- run on map init: False
```description
Create 40 Special Effects in Farm 01
```
### Functions
- Action ForLoopA
  - param String 1
  - param String 7
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Create_Plague_One_01


## Create Plague One 01
- enabled: True
- category: [9] Corrupt Farm 01
- starts off: False
- is custom text: False
- run on map init: False
```description
Playing the Plague cloud animation for farm 01
```
### Functions
- Action AddSpecialEffectLocBJ
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_01_Roaming_Units_A
  - param String Units\Undead\PlagueCloud\PlagueCloud.mdl
- Action SetVariable
  - param Variable PlagueCloudsA
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AddSpecialEffectLocBJ
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_01_Roaming_Units_B
  - param String Units\Undead\PlagueCloud\PlagueCloud.mdl
- Action SetVariable
  - param Variable PlagueCloudsB
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ


## Destroy Plague 01
- enabled: True
- category: [9] Corrupt Farm 01
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForLoopA
  - param String 1
  - param String 7
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Destroy_Plague_One_01


## Destroy Plague One 01
- enabled: True
- category: [9] Corrupt Farm 01
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DestroyEffectBJ
  - param Variable PlagueCloudsA
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
- Action DestroyEffectBJ
  - param Variable PlagueCloudsB
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA


## Corruption02 QUE
- enabled: True
- category: [10] Corrupt Farm 02
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Variable BreadcrumbReached
  - param Preset OperatorEqual
  - param Variable BreadcrumbStopTown2
- Condition OperatorCompareBoolean
  - param Variable CARAVANISDEADBOOLEAN
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectOfPlayer
        - Function GetUnitsInRectOfPlayer
          - param Variable gg_rct_Village_Check_02
          - param Preset Player01
  - param Preset OperatorEqual
  - param String 0
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Corruption02
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable CaravanCorruptionPulse


## Corruption02
- enabled: True
- category: [10] Corrupt Farm 02
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Caravan_Orders_Pause
- Action ConditionalTriggerExecute
  - param Variable gg_trg_DialogueFarm02
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String ----------
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0210
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0216
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0217
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0218
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0219
  - param Preset Player01
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Village_Vis_02
  - param String 800.00
- Action SetVariable
  - param Variable VillageVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CommentString
  - param String -----Caravan Attack Ground-----
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 2
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_02_Roaming_Units_A
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 4
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_02_Roaming_Units_A
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 5
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_02_Roaming_Units_C
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Create_Plague_02
- Action CommentString
  - param String ---------
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 1
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 2
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 3
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 4
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 5
  - param Preset UnitOrderHoldPosition
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Caravan_Orders_Resume
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Villagers Come out
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_02_Create_A
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager04
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager04
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_02_Roaming_Units_A
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_02_Create_A
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager05
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager05
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_02_Roaming_Units_A
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_02_Create_B
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager06
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager06
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_02_Roaming_Units_C
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_02_Create_B
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager07
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager07
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_02_Roaming_Units_C
- Action CommentString
  - param String Malganis Corruption
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_02__A
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis01
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis01
- Action SetHeroLevel
  - param Variable MalGanis01
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis01
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis01
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager04
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_02__A
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis02
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis02
- Action SetHeroLevel
  - param Variable MalGanis02
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis02
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis02
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager05
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_02__B
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis03
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis03
- Action SetHeroLevel
  - param Variable MalGanis03
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis03
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis03
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager06
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_02__B
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis04
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis04
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis04
- Action SetHeroLevel
  - param Variable MalGanis04
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis04
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis04
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager07
- Action CommentString
  - param String ---------
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Ghouls02
- Action TriggerSleepAction
  - param String 15.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String -----Remove Caravan Vision-----
- Action DestroyFogModifier
  - param Variable VillageVis
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0210
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0216
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0217
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0218
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0219
  - param Preset Player01
- Action CommentString
  - param String ---------
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Destroy_Plague_02
- Action StartTimerBJ
  - param Variable CaravanTown3Timer
  - param Preset PeriodicOptionOneTime
  - param String 130.00
- Action CommentString
  - param String ---------
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Dark Conversion Farm 02
- enabled: True
- category: [10] Corrupt Farm 02
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player04
  - param Preset ChangeColorTrue
- Action ReplaceUnitBJ
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param String nzom
  - param Preset UnitStateMethodRelative
- Action GroupAddUnitSimple
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Variable Farm02CorruptedGroup
- Action CommentString
  - param String Need to wait for transformation finished
- Action TriggerSleepAction
  - param String 4.00
- Action RemoveUnit
  - param Variable MalGanis01
- Action RemoveUnit
  - param Variable MalGanis02
- Action RemoveUnit
  - param Variable MalGanis03
- Action RemoveUnit
  - param Variable MalGanis04
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Attack02
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Village_Check_02
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventSummoned


## DialogueFarm02
- enabled: True
- category: [10] Corrupt Farm 02
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset Player01
  - param String hfoo
  - param String TRIGSTR_116
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_hkee_0043
  - param Variable gg_snd_H05Footman16
  - param String TRIGSTR_117
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_2_A
  - param String 1024.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_2_A
  - param String 4.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_2_A
- Action VolumeGroupResetBJ


## Ghouls02
- enabled: True
- category: [10] Corrupt Farm 02
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
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_2_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm02CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_02_Ghouls_Move
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String ---------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_2_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm02CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_02_Ghouls_Move
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String ---------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_2_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm02CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_02_Ghouls_Move
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String ---------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_2_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm02CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_02_Ghouls_Move


## Attack02
- enabled: True
- category: [10] Corrupt Farm 02
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
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 5.00
- Action GroupPointOrderLoc
  - param Variable Farm02CorruptedGroup
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Hearthglen


## Create Plague 02
- enabled: True
- category: [10] Corrupt Farm 02
- starts off: False
- is custom text: False
- run on map init: False
```description
Create 40 Special Effects in Farm 01
```
### Functions
- Action ForLoopA
  - param String 1
  - param String 7
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Create_Plague_One_02


## Create Plague One 02
- enabled: True
- category: [10] Corrupt Farm 02
- starts off: False
- is custom text: False
- run on map init: False
```description
Playing the Plague cloud animation for farm 01
```
### Functions
- Action AddSpecialEffectLocBJ
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_02_Roaming_Units_A
  - param String Units\Undead\PlagueCloud\PlagueCloud.mdl
- Action SetVariable
  - param Variable PlagueCloudsA
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action # AddSpecialEffectLocBJ
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable 
  - param String Units\Undead\PlagueCloud\PlagueCloud.mdl
- Action # SetVariable
  - param Variable PlagueCloudsB
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AddSpecialEffectLocBJ
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_02_Roaming_Units_C
  - param String Units\Undead\PlagueCloud\PlagueCloud.mdl
- Action SetVariable
  - param Variable PlagueCloudsC
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ


## Destroy Plague 02
- enabled: True
- category: [10] Corrupt Farm 02
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForLoopA
  - param String 1
  - param String 7
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Destroy_Plague_One_02


## Destroy Plague One 02
- enabled: True
- category: [10] Corrupt Farm 02
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DestroyEffectBJ
  - param Variable PlagueCloudsA
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
- Action DestroyEffectBJ
  - param Variable PlagueCloudsB
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
- Action DestroyEffectBJ
  - param Variable PlagueCloudsC
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA


## Corruption03 QUE
- enabled: True
- category: [11] Corrupt Farm 03
- starts off: False
- is custom text: False
- run on map init: False
```description

Create 4 Zombies, 4 Acolyte, and 4 Ghouls to attack Hearthglen

Run Trigger Orange Town

```
### Functions
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable CaravanCorruptionPulse
- Condition OperatorCompareInteger
  - param Variable BreadcrumbReached
  - param Preset OperatorEqual
  - param Variable BreadcrumbStopTown3
- Condition OperatorCompareBoolean
  - param Variable CARAVANISDEADBOOLEAN
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectOfPlayer
        - Function GetUnitsInRectOfPlayer
          - param Variable gg_rct_Village_Check_03
          - param Preset Player01
  - param Preset OperatorEqual
  - param String 0
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Corruption03
  - param Preset CheckingIgnoringChecking


## Corruption03
- enabled: True
- category: [11] Corrupt Farm 03
- starts off: False
- is custom text: False
- run on map init: False
```description

Create 4 Zombies, 4 Acolyte, and 4 Ghouls to attack Hearthglen

Run Trigger Orange Town

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Caravan_Orders_Pause
- Action ConditionalTriggerExecute
  - param Variable gg_trg_DialogueFarm03
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String ----------
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0210
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0216
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0217
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0218
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0219
  - param Preset Player01
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Village_Vis_03
  - param String 800.00
- Action SetVariable
  - param Variable VillageVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CommentString
  - param String -----Caravan Attack Ground-----
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 1
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_03_Roaming_Units_A
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 2
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_03_Roaming_Units_A
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 3
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_03_Roaming_Units_B
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 4
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_03_Roaming_Units_B
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 5
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_03_Roaming_Units_B
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Create_Plague_03
- Action CommentString
  - param String ---------
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 1
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 2
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 3
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 4
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 5
  - param Preset UnitOrderHoldPosition
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Caravan_Orders_Resume
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Villagers Come out
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_03_Create_A
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager08
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager08
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_03_Roaming_Units_A
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_03_Create_A
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager09
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager09
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_03_Roaming_Units_A
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvil
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_03_Create_B
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager10
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager10
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_03_Roaming_Units_B
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_03_Create_B
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager11
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager11
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_03_Roaming_Units_B
- Action CommentString
  - param String Malganis Corruption
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_03
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis01
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis01
- Action SetHeroLevel
  - param Variable MalGanis01
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis01
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis01
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager08
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_03
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis02
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis02
- Action SetHeroLevel
  - param Variable MalGanis02
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis02
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis02
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager09
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_03
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis03
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis03
- Action SetHeroLevel
  - param Variable MalGanis03
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis03
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis03
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager10
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_03
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis04
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis04
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis04
- Action SetHeroLevel
  - param Variable MalGanis04
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis04
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis04
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager11
- Action CommentString
  - param String ---------
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Ghouls03
- Action TriggerSleepAction
  - param String 15.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String -----Remove Caravan Vision-----
- Action DestroyFogModifier
  - param Variable VillageVis
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0210
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0216
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0217
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0218
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0219
  - param Preset Player01
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Destroy_Plague_03
- Action StartTimerBJ
  - param Variable CaravanTown4Timer
  - param Preset PeriodicOptionOneTime
  - param String 130.00
- Action CommentString
  - param String ----------
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Dark Conversion Farm 03
- enabled: True
- category: [11] Corrupt Farm 03
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player04
  - param Preset ChangeColorTrue
- Action ReplaceUnitBJ
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param String nzom
  - param Preset UnitStateMethodRelative
- Action GroupAddUnitSimple
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Variable Farm03CorruptedGroup
- Action CommentString
  - param String Need to wait for transformation finished
- Action TriggerSleepAction
  - param String 4.00
- Action RemoveUnit
  - param Variable MalGanis01
- Action RemoveUnit
  - param Variable MalGanis02
- Action RemoveUnit
  - param Variable MalGanis03
- Action RemoveUnit
  - param Variable MalGanis04
- Action CommentString
  - param String ---------
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Attack03
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Village_Check_03
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventSummoned


## DialogueFarm03
- enabled: True
- category: [11] Corrupt Farm 03
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset Player01
  - param String hfoo
  - param String TRIGSTR_118
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_hkee_0043
  - param Variable gg_snd_H05Footman18
  - param String TRIGSTR_121
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_3_A
  - param String 1024.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_3_A
  - param String 4.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_3_A
- Action VolumeGroupResetBJ


## Ghouls03
- enabled: True
- category: [11] Corrupt Farm 03
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_3_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm03CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_03_Ghouls_Move
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String ---------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_3_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm03CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_03_Ghouls_Move
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String ---------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_3_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm03CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_03_Ghouls_Move
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String ---------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_3_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm03CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_03_Ghouls_Move
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard


## Attack03
- enabled: True
- category: [11] Corrupt Farm 03
- starts off: False
- is custom text: False
- run on map init: False
```description
Issue attack wave from the Corrupted farm units
```
### Functions
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 5.00
- Action GroupPointOrderLoc
  - param Variable Farm03CorruptedGroup
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Hearthglen


## Create Plague 03
- enabled: True
- category: [11] Corrupt Farm 03
- starts off: False
- is custom text: False
- run on map init: False
```description
Create 40 Special Effects in Farm 01
```
### Functions
- Action ForLoopA
  - param String 1
  - param String 7
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Create_Plague_One_03


## Create Plague One 03
- enabled: True
- category: [11] Corrupt Farm 03
- starts off: False
- is custom text: False
- run on map init: False
```description
Playing the Plague cloud animation for farm 01
```
### Functions
- Action AddSpecialEffectLocBJ
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_03_Roaming_Units_A
  - param String Units\Undead\PlagueCloud\PlagueCloud.mdl
- Action SetVariable
  - param Variable PlagueCloudsA
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AddSpecialEffectLocBJ
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_03_Roaming_Units_B
  - param String Units\Undead\PlagueCloud\PlagueCloud.mdl
- Action SetVariable
  - param Variable PlagueCloudsB
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ


## Destroy Plague 03
- enabled: True
- category: [11] Corrupt Farm 03
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForLoopA
  - param String 1
  - param String 7
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Destroy_Plague_One_03


## Destroy Plague One 03
- enabled: True
- category: [11] Corrupt Farm 03
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DestroyEffectBJ
  - param Variable PlagueCloudsA
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
- Action DestroyEffectBJ
  - param Variable PlagueCloudsB
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA


## Corruption04 QUE
- enabled: True
- category: [12] Corrupt Farm 04
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable CaravanCorruptionPulse
- Condition OperatorCompareInteger
  - param Variable BreadcrumbReached
  - param Preset OperatorEqual
  - param Variable BreadcrumbStopTown4
- Condition OperatorCompareBoolean
  - param Variable CARAVANISDEADBOOLEAN
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectOfPlayer
        - Function GetUnitsInRectOfPlayer
          - param Variable gg_rct_Village_Check_04
          - param Preset Player01
  - param Preset OperatorEqual
  - param String 0
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Corruption04
  - param Preset CheckingIgnoringChecking


## Corruption04
- enabled: True
- category: [12] Corrupt Farm 04
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Caravan_Orders_Pause
- Action ConditionalTriggerExecute
  - param Variable gg_trg_DialogueFarm04
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String ----------
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0210
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0216
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0217
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0218
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_uC00_0219
  - param Preset Player01
- Action CommentString
  - param String -----Caravan Attack Ground-----
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 1
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_04_Roaming_Units_B
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 2
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_04_Roaming_Units_D
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 3
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_04_Roaming_Units_C
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 4
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_04_Roaming_Units_A
- Action IssuePointOrderLoc
  - param Variable CaravanUnitArray
    - subscript String 5
  - param Preset UnitOrderAttackGround
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_04_Roaming_Units_C
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Create_Plague_04
- Action CommentString
  - param String ---------
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 1
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 2
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 3
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 4
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable CaravanUnitArray
    - subscript String 5
  - param Preset UnitOrderHoldPosition
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Caravan_Orders_Resume
- Action CommentString
  - param String Villagers Come out
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvil
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Create_A
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager12
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager12
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_04_Roaming_Units_B
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Create_A
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager13
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager13
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_04_Roaming_Units_B
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvil
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Create_B
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager14
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager14
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_04_Roaming_Units_D
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Create_B
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager15
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager15
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_04_Roaming_Units_D
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Create_C
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager16
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager16
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_04_Roaming_Units_C
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Create_C
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager17
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager17
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_04_Roaming_Units_C
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Create_D
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager18
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager18
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_04_Roaming_Units_A
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nvl2
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Create_D
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Villager19
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Villager19
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm_04_Roaming_Units_A
- Action CommentString
  - param String Malganis Corruption
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_04_A
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis01
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis01
- Action SetHeroLevel
  - param Variable MalGanis01
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis01
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis01
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager12
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_04_A
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis02
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis02
- Action SetHeroLevel
  - param Variable MalGanis02
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis02
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis02
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager13
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_04_B
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis03
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis03
- Action SetHeroLevel
  - param Variable MalGanis03
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis03
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis03
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager14
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_04_B
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis04
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis04
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis04
- Action SetHeroLevel
  - param Variable MalGanis04
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis04
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis04
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager15
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_04_C
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis05
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis05
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis05
- Action SetHeroLevel
  - param Variable MalGanis05
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis05
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis05
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager16
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_04_C
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis06
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis06
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis06
- Action SetHeroLevel
  - param Variable MalGanis06
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis06
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis06
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager17
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_04_D
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis07
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis07
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis07
- Action SetHeroLevel
  - param Variable MalGanis07
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis07
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis07
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager18
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String UC02
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Farm_04_D
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable MalGanis08
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitManaPercentBJ
  - param Variable MalGanis08
  - param String 100
- Action ShowUnitHide
  - param Variable MalGanis08
- Action SetHeroLevel
  - param Variable MalGanis08
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable MalGanis08
  - param Preset HeroSkillMalganisSleepFast
- Action IssueTargetOrder
  - param Variable MalGanis08
  - param Preset UnitOrderDarkConversionFast
  - param Variable Villager19
- Action CommentString
  - param String ---------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Preset Player05
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte_Appear
  - param String 160.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte_Move
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Preset Player05
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte_Appear
  - param String 160.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte_Move
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Preset Player05
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte_Appear
  - param String 160.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte_Move
- Action CommentString
  - param String -
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Preset Player05
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte_Appear
  - param String 160.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte_Move
- Action SetVariable
  - param Variable BreadcrumbAllowed
  - param Variable BreadcrumbTotal
- Action ConditionalTriggerExecute
  - param Variable gg_trg_OrangeTown
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Ghouls04
- Action TriggerSleepAction
  - param String 15.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String -----Remove Caravan Vision-----
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0210
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0216
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0217
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0218
  - param Preset Player01
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable gg_unit_uC00_0219
  - param Preset Player01
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Destroy_Plague_04
- Action CommentString
  - param String ---------
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Dark Conversion Farm 04
- enabled: True
- category: [12] Corrupt Farm 04
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player04
  - param Preset ChangeColorTrue
- Action ReplaceUnitBJ
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param String nzom
  - param Preset UnitStateMethodRelative
- Action GroupAddUnitSimple
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
  - param Variable Farm04CorruptedGroup
- Action CommentString
  - param String Need to wait for transformation finished
- Action TriggerSleepAction
  - param String 4.00
- Action RemoveUnit
  - param Variable MalGanis01
- Action RemoveUnit
  - param Variable MalGanis02
- Action RemoveUnit
  - param Variable MalGanis03
- Action RemoveUnit
  - param Variable MalGanis04
- Action RemoveUnit
  - param Variable MalGanis05
- Action RemoveUnit
  - param Variable MalGanis06
- Action RemoveUnit
  - param Variable MalGanis07
- Action RemoveUnit
  - param Variable MalGanis08
- Action CommentString
  - param String ---------
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Attack04
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Village_Check_04
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventSummoned


## DialogueFarm04
- enabled: True
- category: [12] Corrupt Farm 04
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset Player01
  - param String hfoo
  - param String TRIGSTR_122
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_hkee_0043
  - param Variable gg_snd_H05Footman20
  - param String TRIGSTR_123
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
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
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Arthas
      - param String TRIGSTR_180
      - param Variable gg_snd_H05Arthas21
      - param String TRIGSTR_181
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_4_A
  - param String 1024.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_4_A
  - param String 4.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_4_A
- Action VolumeGroupResetBJ
- Action DisableTrigger
  - param Variable gg_trg_Caravan_Wagon_Dies_QUE
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_090
- Action QuestSetFailedBJ
  - param Variable GrainCaravanQuest
  - param Preset FailureOptionFailed


## Ghouls04
- enabled: True
- category: [12] Corrupt Farm 04
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_4_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm04CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Ghouls_Move
- Action CommentString
  - param String ---------
- Action TriggerSleepAction
  - param String 0.20
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_4_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm04CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Ghouls_Move
- Action CommentString
  - param String ---------
- Action TriggerSleepAction
  - param String 0.20
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_4_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm04CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Ghouls_Move
- Action CommentString
  - param String ---------
- Action TriggerSleepAction
  - param String 0.20
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_4_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm04CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Ghouls_Move
- Action CommentString
  - param String ---------
- Action TriggerSleepAction
  - param String 0.20
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Village_Corruption_4_A
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Farm04CorruptedGroup
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Farm_04_Ghouls_Move
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard


## Attack04
- enabled: True
- category: [12] Corrupt Farm 04
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
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 5.00
- Action GroupPointOrderLoc
  - param Variable Farm04CorruptedGroup
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Hearthglen


## Blight
- enabled: True
- category: [12] Corrupt Farm 04
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetBlightRadiusLocBJ
  - param Preset CreateRemoveCreate
  - param Preset Player05
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_04Farm04_Visibility
  - param String 600.00
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player05
  - param Preset PlayerUnitEventConstruct_Start


## Create Plague 04
- enabled: True
- category: [12] Corrupt Farm 04
- starts off: False
- is custom text: False
- run on map init: False
```description
Create 40 Special Effects in Farm 01
```
### Functions
- Action ForLoopA
  - param String 1
  - param String 7
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Create_Plague_One_04


## Create Plague One 04
- enabled: True
- category: [12] Corrupt Farm 04
- starts off: False
- is custom text: False
- run on map init: False
```description
Playing the Plague cloud animation for farm 01
```
### Functions
- Action AddSpecialEffectLocBJ
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_04_Roaming_Units_A
  - param String Units\Undead\PlagueCloud\PlagueCloud.mdl
- Action SetVariable
  - param Variable PlagueCloudsA
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AddSpecialEffectLocBJ
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_04_Roaming_Units_B
  - param String Units\Undead\PlagueCloud\PlagueCloud.mdl
- Action SetVariable
  - param Variable PlagueCloudsB
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AddSpecialEffectLocBJ
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_04_Roaming_Units_C
  - param String Units\Undead\PlagueCloud\PlagueCloud.mdl
- Action SetVariable
  - param Variable PlagueCloudsC
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AddSpecialEffectLocBJ
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_04Farm_04_Roaming_Units_D
  - param String Units\Undead\PlagueCloud\PlagueCloud.mdl
- Action SetVariable
  - param Variable PlagueCloudsD
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ


## Destroy Plague 04
- enabled: True
- category: [12] Corrupt Farm 04
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForLoopA
  - param String 1
  - param String 7
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Destroy_Plague_One_04


## Destroy Plague One 04
- enabled: True
- category: [12] Corrupt Farm 04
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DestroyEffectBJ
  - param Variable PlagueCloudsA
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
- Action DestroyEffectBJ
  - param Variable PlagueCloudsB
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
- Action DestroyEffectBJ
  - param Variable PlagueCloudsC
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA
- Action DestroyEffectBJ
  - param Variable PlagueCloudsD
    - subscript Function GetForLoopIndexA
      - Function GetForLoopIndexA


## Free Villager
- enabled: True
- category: [5] Free Villager
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LOcg_1355
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nC01
  - param Preset Player11
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Free_Villager
  - param String 285.00
- Action SetVariable
  - param Variable FreeVillager
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsTriggerQueueEmptyBJ
        - Function IsTriggerQueueEmptyBJ
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerAddBJ
      - param Variable gg_trg_Free_Vill_Dialogue01_Que
      - param Preset CheckingIgnoringChecking
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H05VillagerM49
  - param String 0
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsTriggerQueueEmptyBJ
        - Function IsTriggerQueueEmptyBJ
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerAddBJ
      - param Variable gg_trg_Free_Vill_Dialogue02_Que
      - param Preset CheckingIgnoringChecking
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H05VillagerM47
  - param String 0
- Action SetVariable
  - param Variable ArthasPoint
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action CreateItemLoc
  - param String I019
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Free_Villager
- Action IssuePointOrderLoc
  - param Variable FreeVillager
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02_Villager_F_Retreat_B
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareReal
      - param Function DistanceBetweenPoints
        - Function DistanceBetweenPoints
          - param Function GetUnitLoc
            - Function GetUnitLoc
              - param Variable Arthas
          - param Function GetUnitLoc
            - Function GetUnitLoc
              - param Variable FreeVillager
      - param Preset OperatorGreater
      - param String 1024.00
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action UnitAddItemSwapped
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Variable Arthas
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GAMEOVER
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeItemAcquired
  - param String TRIGSTR_289


## Free Vill Dialogue01 Que
- enabled: True
- category: [5] Free Villager
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable FreeVillager
  - param String TRIGSTR_297
  - param Variable gg_snd_H05VillagerM49
  - param String TRIGSTR_298
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Free Vill Dialogue02 Que
- enabled: True
- category: [5] Free Villager
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable FreeVillager
  - param String TRIGSTR_299
  - param Variable gg_snd_H05VillagerM47
  - param String TRIGSTR_300
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Free Villager Remove
- enabled: True
- category: [5] Free Villager
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable FreeVillager
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_02_Villager_F_Retreat_B


## Villagers Greeting QUE
- enabled: True
- category: [2] Troop Farm 05
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CustomScriptCode
  - param String call status_check_location(22)
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Villagers_Greeting
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterUnitInRangeSimple
  - param String 500.00
  - param Variable gg_unit_nvil_0080


## Villagers Greeting
- enabled: True
- category: [2] Troop Farm 05
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable gg_unit_nvil_0080
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
          - param Variable gg_unit_nvil_0080
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_05Farm05_Visibility
  - param String 700.00
- Action SetVariable
  - param Variable Farm05
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action FogModifierStart
  - param Variable Farm05
- Action PingMinimapLocForForce
  - param Preset Force01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_05Farm05_Visibility
  - param String 1.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_05Farm05_Visibility
- Action DestroyEffectBJ
  - param Variable Farm05Quest
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0080
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_05Farm05Greeting
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nvil_0080
  - param String TRIGSTR_134
  - param Variable gg_snd_H01VillagerM43
  - param String TRIGSTR_135
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action TriggerExecute
  - param Variable gg_trg_Villagers_in_House
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Villagers in House
- enabled: True
- category: [2] Troop Farm 05
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0079
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0080
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_nvil_0067
  - param Preset PathingOff
- Action TriggerSleepAction
  - param String 0.30
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0079
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_05Farm05Troops_03
- Action TriggerSleepAction
  - param String 0.30
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0067
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_05Farm05Troops_01
- Action TriggerSleepAction
  - param String 0.30
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0080
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_05Farm05Troops_02


## Remove Villager01
- enabled: True
- category: [2] Troop Farm 05
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_nvil_0067
  - param Variable Farm05Group1
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Villager_Reinforcement01
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nvil_0067
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_05Farm05Troops_01


## Remove Villager02
- enabled: True
- category: [2] Troop Farm 05
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_nvil_0080
  - param Variable Farm05Group1
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Villager_Reinforcement02
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nvil_0080
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_05Farm05Troops_02


## Remove Villager03
- enabled: True
- category: [2] Troop Farm 05
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_nvil_0079
  - param Variable Farm05Group1
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Villager_Reinforcement03
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nvil_0079
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_05Farm05Troops_03


## Dead Villagers No Troops
- enabled: True
- category: [2] Troop Farm 05
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nvil_0080
  - param Preset UnitEventDeath
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nvil_0079
  - param Preset UnitEventDeath
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nvil_0067
  - param Preset UnitEventDeath
- Action DestroyEffectBJ
  - param Variable Farm05Quest
- Action DestroyFogModifier
  - param Variable Farm05
- Action StopSoundBJ
  - param Variable gg_snd_H01VillagerM43
  - param Preset FadeDontDont
- Action DisableTrigger
  - param Variable gg_trg_Villagers_Greeting_QUE
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_Villagers_Greeting


## Villager Reinforcement01
- enabled: True
- category: [2] Troop Farm 05
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player01
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_05Farm05Troops_01
  - param String 0.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_05Farm05_Visibility
- Action FogModifierStop
  - param Variable Farm05


## Villager Reinforcement02
- enabled: True
- category: [2] Troop Farm 05
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player01
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_05Farm05Troops_02
  - param String 0.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_05Troop_2
- Action FogModifierStop
  - param Variable Farm05


## Villager Reinforcement03
- enabled: True
- category: [2] Troop Farm 05
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player01
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_05Farm05Troops_03
  - param String 0.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_05Troop_3
- Action FogModifierStop
  - param Variable Farm05


## Ogres QUE
- enabled: True
- category: [4] Fountain of Life
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
  - param Variable gg_trg_Ogres
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Preset UnitTypeGround
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Fountain_of_Life


## Ogres
- enabled: True
- category: [4] Fountain of Life
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
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
      - param Variable gg_rct_Fountain_of_Life
  - param String 750.00
- Action SetVariable
  - param Variable FountainVisibility
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action FogModifierStart
  - param Variable FountainVisibility
- Action PingMinimapLocForForce
  - param Preset Force01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Fountain_of_Life
  - param String 4.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Fountain_of_Life
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset Player01
  - param String hfoo
  - param String TRIGSTR_218
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_hkee_0043
  - param Variable gg_snd_H05Footman51
  - param String TRIGSTR_219
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action IssuePointOrderLoc
  - param Variable gg_unit_nogr_0014
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Fountain_of_Life
- Action IssuePointOrderLoc
  - param Variable gg_unit_nogr_0068
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Fountain_of_Life
- Action IssuePointOrderLoc
  - param Variable gg_unit_nogl_0090
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Fountain_of_Life
- Action IssuePointOrderLoc
  - param Variable gg_unit_nogr_0069
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Fountain_of_Life
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action WaitForSoundBJ
  - param Variable gg_snd_H05Footman51
  - param String 0
- Action VolumeGroupResetBJ
- Action FogModifierStop
  - param Variable FountainVisibility


## Suicide AI
- enabled: True
- category: [25] Suicide AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommandAI
  - param Preset Player06
  - param String 0
  - param String 0
- Action CommandAI
  - param Preset Player03
  - param String 0
  - param String 0
- Action CommandAI
  - param Preset Player05
  - param String 0
  - param String 0
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable SuicideTimer


## UnlimitedGoldGreen
- enabled: True
- category: [15] Green AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player06
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player06
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThanOrEqual
  - param String 500.00


## UnlimitedLumberGreen
- enabled: True
- category: [15] Green AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player06
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player06
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThanOrEqual
  - param String 500.00


## Orange AI Attack Wave
- enabled: True
- category: [16] Orange AI
- starts off: False
- is custom text: False
- run on map init: False
```description
Attack wave holds off for a bit after town is built (ASK ROB)
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CommandAI
  - param Preset Player05
  - param String 0
  - param String 0
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable OrangeAIAttackWave


## OrangeTown
- enabled: True
- category: [16] Orange AI
- starts off: False
- is custom text: False
- run on map init: False
```description
Trigger starts the Orange AI 

Enable Victory Condition2
Diable Victory Condition1

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action StartCampaignAI
  - param Preset Player05
  - param String h05_orange.ai
- Action EnableTrigger
  - param Variable gg_trg_Victory2
- Action DisableTrigger
  - param Variable gg_trg_Victory1
- Action SetVariable
  - param Variable Reinforcement
  - param String true
- Action CommentString
  - param String -----Show Score Screen-----
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideShow
  - param Preset Player05


## ResourcesOrange
- enabled: True
- category: [16] Orange AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event MapInitializationEvent
- Action SetPlayerState
  - param Preset Player05
  - param Preset PlayerStateLumber
  - param String 5000
- Action SetPlayerState
  - param Preset Player05
  - param Preset PlayerStateGold
  - param String 5000


## UnlimitedGoldOrange
- enabled: True
- category: [16] Orange AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerState
  - param Preset Player05
  - param Preset PlayerStateGold
  - param String 5000
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player05
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThanOrEqual
  - param String 4000.00


## UnlimitedLumberOrange
- enabled: True
- category: [16] Orange AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerState
  - param Preset Player05
  - param Preset PlayerStateLumber
  - param String 5000
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player05
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThanOrEqual
  - param String 4000.00


## UnlimitedGoldPurple
- enabled: True
- category: [6] Purple AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player03
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player03
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThanOrEqual
  - param String 500.00


## UnlimitedLumberPurple
- enabled: True
- category: [6] Purple AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player03
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player03
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThanOrEqual
  - param String 500.00


## Victory Cheat
- enabled: True
- category: [13] Victory Defeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_Victory
- Event TriggerRegisterPlayerEventVictory
  - param Preset Player01


## Victory1
- enabled: True
- category: [13] Victory Defeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Variable gg_trg_Villagers_Greeting_QUE
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Ending_Start
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player06
      - param Preset InclusionInclude
  - param Preset OperatorLessEq
  - param String 0
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player03
      - param Preset InclusionInclude
  - param Preset OperatorLessEq
  - param String 0
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Victory2
- enabled: True
- category: [13] Victory Defeat
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Variable gg_trg_Villagers_Greeting_QUE
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Ending_Start
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player06
      - param Preset InclusionInclude
  - param Preset OperatorLessEq
  - param String 0
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player05
      - param Preset InclusionInclude
  - param Preset OperatorLessEq
  - param String 0
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player03
      - param Preset InclusionInclude
  - param Preset OperatorLessEq
  - param String 0
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player05
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Victory
- enabled: True
- category: [13] Victory Defeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Start the next level
- Action CustomScriptCode
  - param String call status_check_location(0)
- Action SetNextLevelBJ
  - param String Maps\Archipelago\Human06.w3x
- Action CustomVictoryBJ
  - param Preset Player01
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse


## Defeat
- enabled: True
- category: [13] Victory Defeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_Ending_Start
- Action SetVariable
  - param Variable GAMEOVER
  - param String true
- Action PauseTimerBJ
  - param Preset PauseResumePause
  - param Variable Timer30Minute
- Action DestroyTimerDialogBJ
  - param Function GetLastCreatedTimerDialogBJ
    - Function GetLastCreatedTimerDialogBJ
- Action CommentString
  - param String ----------
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeMissionFailed
  - param String TRIGSTR_148
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CustomDefeatBJ
  - param Preset Player01
  - param String TRIGSTR_040
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player01
      - param Preset InclusionInclude
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## Defeat Cheat
- enabled: True
- category: [13] Victory Defeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Preset Player01
  - param String TRIGSTR_070
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player01


## Victory Cancel
- enabled: True
- category: [14] Ending Cinematic
- starts off: True
- is custom text: False
- run on map init: False
```description
Note that the "Pan camera" has to occur after the "Reset camera".  This is because the pan would be ignored if the camera was already doing a higher-priority task at the time, such as applying a camera object.  By resetting the camera first, all such tasks are cleared.
```
### Functions
- Action SetVariable
  - param Variable EndingCancelled
  - param String true
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
- Action CommentString
  - param String ---------
- Action TriggerExecute
  - param Variable gg_trg_Victory
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## Ending Start
- enabled: True
- category: [14] Ending Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable GAMEOVER
  - param String true
- Action CustomScriptCode
  - param String call status_check_location(0)
- Condition OperatorCompareBoolean
  - param Function IsTriggerEnabled
    - Function IsTriggerEnabled
      - param Variable gg_trg_Ending_Start
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_Defeat
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable Timer30Minute
- Action DisableTrigger
  - param Variable gg_trg_Villagers_Greeting_QUE
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Ending_Cinematic_A
  - param Preset CheckingIgnoringIgnoring


## Ending Cinematic A
- enabled: True
- category: [14] Ending Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
Uther and Jaina Return
```
### Functions
- Action DestroyTimerDialogBJ
  - param Function GetLastCreatedTimerDialogBJ
    - Function GetLastCreatedTimerDialogBJ
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action SetSkyModel
  - param Preset SkyModelSky04
- Action ClearSelection
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action CommentString
  - param String ----------
- Action DisableTrigger
  - param Variable gg_trg_Victory1
- Action DisableTrigger
  - param Variable gg_trg_Victory2
- Action DisableTrigger
  - param Variable gg_trg_Defeat
- Action CommentString
  - param String ----------
- Action QuestMessageBJ
  - param Preset Force01
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_252
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String YOtf
  - param Variable gg_rct_Fire1
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String YOtf
  - param Variable gg_rct_Fire2New
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String YOtf
  - param Variable gg_rct_Fire3
- Action CommentString
  - param String Fade out
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CommentString
  - param String Cinematic Can Now Be Skipped
- Action EnableTrigger
  - param Variable gg_trg_Victory_Cancel
- Action CommentString
  - param String ----------
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Arthas_Uh_Oh
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action SetUnitPositionLocFacingBJ
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Arthas_Uh_Oh
      - param String 0.00
- Action CommentString
  - param String ----------
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player03
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player05
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player01
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset Player01
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingAllied
- Action CommentString
  - param String ----------
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player09
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset Player09
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player09
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player09
  - param Preset Player03
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player09
  - param Preset Player05
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player09
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action CommentString
  - param String ----------
- Action SetUnitPositionLoc
  - param Variable Jaina
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_06Jaina_Ending_A
- Action ShowUnitShow
  - param Variable Jaina
- Action SetUnitOwner
  - param Variable Jaina
  - param Preset Player01
  - param Preset ChangeColorTrue
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String Huth
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_06Uther_Ending_A
  - param String 0.00
- Action SetVariable
  - param Variable Uther
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitInvulnerable
  - param Variable Uther
  - param Preset InvulnerabilityInvulnerable
- Action SetHeroLevel
  - param Variable Uther
  - param String 10
  - param Preset ShowHideHide
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Uther
- Action SelectHeroSkill
  - param Variable Uther
  - param Preset HeroSkillHolyBolt
- Action SelectHeroSkill
  - param Variable Uther
  - param Preset HeroSkillDevotionAura
- Action SelectHeroSkill
  - param Variable Uther
  - param Preset HeroSkillHolyBolt
- Action SelectHeroSkill
  - param Variable Uther
  - param Preset HeroSkillDevotionAura
- Action SelectHeroSkill
  - param Variable Uther
  - param Preset HeroSkillDivineShield
- Action SelectHeroSkill
  - param Variable Uther
  - param Preset HeroSkillResurrection
- Action SelectHeroSkill
  - param Variable Uther
  - param Preset HeroSkillDevotionAura
- Action SelectHeroSkill
  - param Variable Uther
  - param Preset HeroSkillHolyBolt
- Action SelectHeroSkill
  - param Variable Uther
  - param Preset HeroSkillDivineShield
- Action SelectHeroSkill
  - param Variable Uther
  - param Preset HeroSkillDivineShield
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player03
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player03
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player03
- Action SetVariable
  - param Variable AbominationFodderE
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player03
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uske
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player03
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uske
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player03
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uske
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start
  - param String 0.00
- Action SetVariable
  - param Variable AbominationFodderD
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action SetVariable
  - param Variable AbominationFodderF
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String umtw
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Meat
  - param String 90.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String attack
- Action QueueUnitAnimationBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String attack
- Action QueueUnitAnimationBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String attack
- Action QueueUnitAnimationBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String attack
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start_B
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player05
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start_B
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player05
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start_B
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player05
- Action SetVariable
  - param Variable AbominationFodderC
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start_B
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player05
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start_B
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start_B
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String umtw
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start_B
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player05
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start_B
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start_B
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start_B
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player05
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Start_B
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset Color06
- Action CommentString
  - param String ----------
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Uh_Oh
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ghoul_Face_Footman
  - param String 90.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset Color06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ghoul_Face_Footman_B
  - param String 92.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset Color03
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ghoul_Face_Footman_C
  - param String 89.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset Color03
- Action SetVariable
  - param Variable GhoulAttackArthas
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ghoul_Face_Footman_D
  - param String 93.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset Color06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ghoul_Face_Footman_E
  - param String 90.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset Color06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abomination_Face_Footman
  - param String 94.00
- Action SetVariable
  - param Variable AbominationFodder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset Color06
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abomination_Face_Footman_B
  - param String 94.00
- Action SetVariable
  - param Variable AbominationFodderB
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitTimeScalePercent
  - param Variable AbominationFodderB
  - param String 85.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player03
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman_Face_Ghoul
  - param String 300.00
- Action SetVariable
  - param Variable Foot1
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman_Face_Ghoul_B
  - param String 310.00
- Action SetVariable
  - param Variable Foot2
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman_Face_Ghoul_C
  - param String 305.00
- Action SetVariable
  - param Variable Foot3
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman_Face_Ghoul_D
  - param String 300.00
- Action SetVariable
  - param Variable Foot4
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman_Face_Ghoul_E
  - param String 302.00
- Action SetVariable
  - param Variable Foot5
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman_Face_Abomination
  - param String 306.00
- Action SetVariable
  - param Variable Foot6
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman_Face_Abomination_B
  - param String 240.00
- Action SetVariable
  - param Variable Foot7
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitTimeScalePercent
  - param Variable Foot7
  - param String 80.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hrif
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Rifleman_Fire
  - param String 305.00
- Action SetVariable
  - param Variable Rifle1
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hrif
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Rifleman_Fire_B
  - param String 290.00
- Action SetVariable
  - param Variable Rifle2
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hrif
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Rifleman_Fire_C
  - param String 280.00
- Action SetVariable
  - param Variable Rifle3
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CommentString
  - param String ----------
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action SetUnitAnimation
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action SetTerrainFogExBJ
  - param String 0
  - param String 900.00
  - param String 4500.00
  - param String 0
  - param String 0.00
  - param String 40.00
  - param String 60.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Mob_Attack_A_Alternate
  - param Preset Player01
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Undead_Mob_Start
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderMove
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_Undead_Mob_Attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action SetUnitAnimation
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action TriggerSleepAction
  - param String 0.50
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
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FootmanFightSounds
- Action TriggerSleepAction
  - param String 4.00
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
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_All_Attack_Other
  - param Function DoNothing
    - Action QueueUnitAnimationBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String attack
- Action SetUnitAnimation
  - param Variable Foot4
  - param String attack
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetUnitAnimation
  - param Variable Foot2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot4
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot4
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot4
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot4
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot4
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot4
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot4
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot4
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot4
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot4
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Foot2
  - param String attack
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Undead_Mob_Attack_B
  - param Preset Player01
  - param String 7.00
- Action TriggerSleepAction
  - param String 1.00
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
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action CommentString
  - param String ----------
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action CommentString
  - param String ----------
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action CommentString
  - param String ----------
- Action TriggerSleepAction
  - param String 3.00
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
- Action CommentString
  - param String ----------
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable AbominationFodder
  - param String 0
- Action CommentString
  - param String ----------
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
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Undead_Mob_Start_B
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderMove
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_Undead_Mob_Attack_B
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Advance
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderMove
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_Advance_End
- Action KillUnit
  - param Variable Foot3
- Action TriggerSleepAction
  - param String 0.50
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
- Action SetUnitAnimation
  - param Variable Arthas
  - param String spell
- Action QueueUnitAnimationBJ
  - param Variable Arthas
  - param String spell
- Action SetUnitLookAt
  - param Variable Arthas
  - param Preset UnitFacingBoneHead
  - param Variable AbominationFodderC
  - param String 0
  - param String 0
  - param String 90
- Action TriggerSleepAction
  - param String 0.20
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
- Action ResetUnitLookAt
  - param Variable Arthas
- Action SetUnitLookAt
  - param Variable Arthas
  - param Preset UnitFacingBoneHead
  - param Variable AbominationFodder
  - param String 0
  - param String 0
  - param String 90
- Action KillUnit
  - param Variable Foot6
- Action AddSpecialEffectTargetUnitBJ
  - param String origin
  - param Variable Foot5
  - param String Abilities\Spells\Human\Heal\Heal.mdl
- Action TriggerSleepAction
  - param String 1.00
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
  - param Variable Foot1
- Action TriggerSleepAction
  - param String 0.50
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
  - param Variable Foot5
- Action KillUnit
  - param Variable Foot7
- Action TriggerSleepAction
  - param String 0.40
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
  - param Variable Foot2
- Action TriggerSleepAction
  - param String 0.50
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Oh_Crap
  - param Preset Player01
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.50
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
- Action IssuePointOrderLoc
  - param Variable Uther
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Uther_Attack_Abomination
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hkni
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Reinforcement_3_A
  - param String 180.00
- Action TriggerSleepAction
  - param String 1.00
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
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abomination_Take_It
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hkni
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Reinforcement_3_A
  - param String 180.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abomination_Take_It
- Action IssuePointOrderLoc
  - param Variable GhoulAttackArthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GhoulMakesBadChoice
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas_Defiant_A
  - param Preset Player01
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSpeechVolumeGroupsBJ
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas_Defiant_B
  - param Preset Player01
  - param String 2.00
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_02_Roaming_Villager_F
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderMove
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_Region_287
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_ArthasPissed4
  - param Variable Arthas
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle1
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle2
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Rifle3
  - param String attack
- Action SetUnitAnimation
  - param Variable GhoulAttackArthas
  - param String attack
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_293
  - param Variable gg_snd_ArthasPissed4
  - param String TRIGSTR_294
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
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
- Action VolumeGroupResetBJ
- Action SetUnitAnimation
  - param Variable Arthas
  - param String attack
- Action TriggerSleepAction
  - param String 0.30
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
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MetalHeavyBashFlesh1
  - param Variable Arthas
- Action PlaySoundBJ
  - param Variable gg_snd_MetalHeavyBashFlesh1
- Action KillUnit
  - param Variable GhoulAttackArthas
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hkni
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Reinforcement_3_A
  - param String 180.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable UtherKnights1
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hkni
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Reinforcement_3_A
  - param String 180.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable UtherKnights1
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hkni
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Reinforcement_3_B
  - param String 180.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable UtherKnights1
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hkni
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Reinforcement_3_B
  - param String 180.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable UtherKnights1
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hkni
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Reinforcement_3_B
  - param String 180.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable UtherKnights1
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hkni
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Reinforcement_3_B
  - param String 180.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable UtherKnights1
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hsor
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Reinforcement_3_C
  - param String 180.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable UtherKnights1
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hsor
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Reinforcement_3_C
  - param String 180.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable UtherKnights1
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hmpr
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Reinforcement_3_C
  - param String 180.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable UtherKnights1
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hmpr
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Reinforcement_3_C
  - param String 180.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable UtherKnights1
- Action CommentString
  - param String ----------
- Action GroupPointOrderLoc
  - param Variable UtherKnights1
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Undead_Mob_Attack
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop3
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop2
- Action TriggerSleepAction
  - param String 1.20
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
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop3
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop2
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Uther_Arrives_A
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Uther_Arrives_B
  - param Preset Player01
  - param String 2.00
- Action TriggerSleepAction
  - param String 0.60
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
- Action SetSoundVolumeBJ
  - param Variable gg_snd_UtherReturns
  - param String 80.00
- Action PlaySoundBJ
  - param Variable gg_snd_UtherReturns
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Uther
  - param String TRIGSTR_063
  - param Variable gg_snd_H05Uther27
  - param String TRIGSTR_064
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
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
- Action TriggerSleepAction
  - param String 0.65
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
- Action CommentString
  - param String ----------
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player09
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player09
  - param Preset Player00
  - param Preset AllianceSettingUnallied
- Action TriggerSleepAction
  - param String 0.50
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
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable AbominationFodderB
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abomination_Take_It
- Action SetUnitFacingToFaceUnitTimed
  - param Variable AbominationFodderB
  - param Variable Uther
  - param String 0.20
- Action SetUnitFacingToFaceUnitTimed
  - param Variable AbominationFodderD
  - param Variable Uther
  - param String 0.20
- Action SetUnitAnimation
  - param Variable Uther
  - param String attack
- Action TriggerSleepAction
  - param String 0.50
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
  - param Variable AbominationFodderB
- Action SetUnitFacingToFaceUnitTimed
  - param Variable AbominationFodderE
  - param Variable Uther
  - param String 0.20
- Action TriggerSleepAction
  - param String 0.50
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
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_06Jaina_Ending_B
- Action SetUnitFacingToFaceUnitTimed
  - param Variable AbominationFodder
  - param Variable Uther
  - param String 0.20
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Uther
  - param Variable AbominationFodder
  - param String 0.20
- Action SetUnitAnimation
  - param Variable Uther
  - param String attack
- Action KillUnit
  - param Variable AbominationFodder
- Action IssuePointOrderLoc
  - param Variable AbominationFodderC
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abomination_Face_Footman
- Action IssuePointOrderLoc
  - param Variable AbominationFodderD
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abomination_Face_Footman
- Action CommentString
  - param String ----------
- Action TriggerSleepAction
  - param String 1.00
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
  - param Variable AbominationFodderE
- Action SetUnitFacingToFaceUnitTimed
  - param Variable AbominationFodderC
  - param Variable Uther
  - param String 0.20
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Uther
  - param Variable AbominationFodderC
  - param String 0.20
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_07Uther_Knights_Attack_02
- Action TriggerSleepAction
  - param String 1.00
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
- Action SetUnitAnimation
  - param Variable Uther
  - param String spell
- Action KillUnit
  - param Variable AbominationFodderC
- Action TriggerSleepAction
  - param String 0.40
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
  - param Variable AbominationFodderD
- Action CommentString
  - param String ----------
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas_Defiant_B
  - param Preset Player01
  - param String 0.00
- Action SetUnitAnimation
  - param Variable Arthas
  - param String spell
- Action GroupPointOrderLoc
  - param Variable UtherKnights1
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Knights_Charge_Again
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_098
  - param Variable gg_snd_H05Arthas28
  - param String TRIGSTR_099
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 2.00
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Your_Timing
  - param Preset Player01
  - param String 0.00
- Action KillUnit
  - param Variable AbominationFodderF
- Action ResetUnitLookAt
  - param Variable Arthas
- Action QueueUnitAnimationBJ
  - param Variable Uther
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Uther
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Uther
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Uther
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Uther
  - param String attack
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Dont_Celebrate_Yet
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Dont_Celebrate_Yet_B
  - param Preset Player01
  - param String 4.00
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Clear_OUt
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderMove
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_02_Vis_Hearthglen_C
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_02_Roaming_Villager_F
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderMove
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_Region_287
- Action TriggerSleepAction
  - param String 0.50
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
- Action WaitForSoundBJ
  - param Variable gg_snd_H05Arthas28
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
  - param Variable Uther
  - param String TRIGSTR_100
  - param Variable gg_snd_H05Uther29
  - param String TRIGSTR_102
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action QueueUnitAnimationBJ
  - param Variable Uther
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Uther
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Uther
  - param String attack
- Action QueueUnitAnimationBJ
  - param Variable Uther
  - param String attack
- Action CommentString
  - param String ----------
- Action TriggerSleepAction
  - param String 1.00
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
- Action CommentString
  - param String ----------
- Action TriggerSleepAction
  - param String 2.00
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
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 2.50
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
- Action WaitForSoundBJ
  - param Variable gg_snd_H05Uther29
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
- Action SetSpeechVolumeGroupsBJ
- Action CommentString
  - param String ----------
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Ending_Cinematic_C


## FootmanFightSounds
- enabled: True
- category: [14] Ending Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumBashFlesh1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MetalMediumBashFlesh1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumBashFlesh1
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_WoodMediumBashMetal2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WoodMediumBashMetal2
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_WoodMediumBashMetal2
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_WoodMediumBashMetal3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WoodMediumBashMetal3
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_WoodMediumBashMetal3
- Action TriggerSleepAction
  - param String 0.10
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MetalMediumChopFlesh1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh1
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumBashFlesh1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MetalMediumBashFlesh1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumBashFlesh1
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumSliceFlesh1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MetalMediumSliceFlesh1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumSliceFlesh1
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumBashFlesh3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MetalMediumBashFlesh3
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumBashFlesh3
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_WoodMediumBashMetal2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WoodMediumBashMetal2
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_WoodMediumBashMetal2
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumBashFlesh1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MetalMediumBashFlesh1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumBashFlesh1
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MetalMediumChopFlesh1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh1
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_WoodMediumBashMetal3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WoodMediumBashMetal3
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_WoodMediumBashMetal3
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
- Action TriggerSleepAction
  - param String 0.50
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumSliceFlesh3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MetalMediumSliceFlesh3
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumSliceFlesh3
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MetalMediumChopFlesh3
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh3
- Action TriggerSleepAction
  - param String 0.50
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_WoodMediumBashMetal3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WoodMediumBashMetal3
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_WoodMediumBashMetal3
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumBashFlesh2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MetalMediumBashFlesh2
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumBashFlesh2
- Action TriggerSleepAction
  - param String 0.50
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumSliceFlesh2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MetalMediumSliceFlesh2
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumSliceFlesh2
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_WoodMediumBashMetal1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WoodMediumBashMetal1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_WoodMediumBashMetal1
- Action TriggerSleepAction
  - param String 0.50
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumBashFlesh1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumBashFlesh1
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_WoodMediumBashMetal3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_WoodMediumBashMetal3
- Action TriggerSleepAction
  - param String 0.50
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumSliceFlesh1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumSliceFlesh1
- Action TriggerSleepAction
  - param String 0.10
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumBashFlesh3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumBashFlesh3
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_WoodMediumBashMetal2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_WoodMediumBashMetal2
- Action TriggerSleepAction
  - param String 0.50
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh1
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_WoodMediumBashMetal3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_WoodMediumBashMetal3
- Action TriggerSleepAction
  - param String 0.50
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumSliceFlesh3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumSliceFlesh3
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh3
- Action TriggerSleepAction
  - param String 0.50
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_WoodMediumBashMetal3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_WoodMediumBashMetal3
- Action TriggerSleepAction
  - param String 0.10
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumBashFlesh2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumBashFlesh2
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumSliceFlesh2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumSliceFlesh2
- Action TriggerSleepAction
  - param String 0.50
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_WoodMediumBashMetal1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_WoodMediumBashMetal1
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumSliceFlesh3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumSliceFlesh3
- Action TriggerSleepAction
  - param String 3.00
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh3
- Action TriggerSleepAction
  - param String 0.30
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
- Action TriggerSleepAction
  - param String 0.10
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh3
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumChopFlesh2
- Action TriggerSleepAction
  - param String 0.20
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
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MetalMediumSliceFlesh3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BattleSoundArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MetalMediumSliceFlesh3


## Ending Cinematic C
- enabled: True
- category: [14] Ending Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.60
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
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action SetUnitInvulnerable
  - param Variable Jaina
  - param Preset InvulnerabilityInvulnerable
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Kill_Em_All
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player09
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player09
  - param Preset Player00
  - param Preset AllianceSettingNeutral
- Action CommentString
  - param String ----------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Rifleman_Fire_B
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player01
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abomination_Dead
  - param String 0.40
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Jaina_A
  - param String 60.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abomination_Dead_B
  - param String 95.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player05
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Rifleman_Fire_C
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player01
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String umtw
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Conversion_07
  - param String 0.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hsor
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Jaina_B
  - param String 43.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player09
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Skeleton
  - param String 23.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player03
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hrif
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Rifleman_Dead
  - param String 87.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player01
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Jaina_A
  - param String 77.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player03
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hmpr
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Unlucky_Priest
  - param String 77.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player09
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dead_Ghoul_Other
  - param String 27.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Conversion_02
  - param String 234.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player05
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String unec
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Necro_Dead
  - param String 34.00
- Action SetUnitColor
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player06
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action SetUnitBlendTimeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 0.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String decay flesh
- Action SetUnitTimeScalePercent
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 10.00
- Action CommentString
  - param String ----------
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player03
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player05
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action CommentString
  - param String ----------
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Jaina
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Uther
- Condition OperatorCompareBoolean
  - param Variable EndingCancelled
  - param Preset OperatorEqualENE
  - param String false
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_06Arthas_Ending_A
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action SetUnitPositionLocFacingBJ
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_06Arthas_Ending_A
      - param String 300.00
- Action SetUnitPositionLoc
  - param Variable Jaina
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Jaina_Stands_Around
- Action ShowUnitShow
  - param Variable Jaina
- Action SetUnitPositionLoc
  - param Variable Uther
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Uther_Talks_To_Arthas
- Action ShowUnitShow
  - param Variable Uther
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Talks_To_Uther
- Action ShowUnitShow
  - param Variable Arthas
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Uther
  - param Variable Arthas
  - param String 0.25
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Jaina
  - param Variable Arthas
  - param String 0.25
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Uther
  - param String 0.25
- Action CommentString
  - param String ----------
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Uther
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
- Action CommentString
  - param String ----------
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Surprised_A
  - param Preset Player01
  - param String 0
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Ending_Cinematic_D


## Ending Cinematic D
- enabled: True
- category: [14] Ending Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.50
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
- Action IssueImmediateOrder
  - param Variable Arthas
  - param Preset UnitOrderStop
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Uther
  - param Variable Arthas
  - param String 0.25
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Jaina
  - param Variable Arthas
  - param String 0.25
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Uther
  - param String 0.25
- Action CommentString
  - param String ----------
- Action TriggerSleepAction
  - param String 0.50
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
- Action SetUnitAnimation
  - param Variable Arthas
  - param String stand
- Action SetUnitAnimation
  - param Variable Jaina
  - param String stand
- Action SetUnitAnimation
  - param Variable Uther
  - param String stand
- Action CommentString
  - param String ----------
- Action PlayThematicMusicBJ
  - param Preset MusicThemeSadMystery
- Action CommentString
  - param String ----------
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Surprised_A
  - param Preset Player01
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Surprised_B
  - param Preset Player01
  - param String 4.00
- Action TriggerSleepAction
  - param String 3.00
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
  - param Variable Uther
  - param String TRIGSTR_092
  - param Variable gg_snd_H05Uther30
  - param String TRIGSTR_093
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H05Uther30
  - param String 1.10
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
  - param String TRIGSTR_094
  - param Variable gg_snd_H05Arthas31
  - param String TRIGSTR_095
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H05Arthas31
  - param String 0.55
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Nows_Not_The_Time
  - param Preset Player01
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Uther
  - param String TRIGSTR_096
  - param Variable gg_snd_H05Uther32
  - param String TRIGSTR_097
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
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
- Action CommentString
  - param String ----------
- Action TriggerSleepAction
  - param String 0.50
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
- Action CommentString
  - param String ----------
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Surprised_B
  - param Preset Player01
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_103
  - param Variable gg_snd_H05Arthas33
  - param String TRIGSTR_104
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 2.00
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
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Moves_A_little
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_C_02a
  - param String 0.30
- Action TriggerSleepAction
  - param String 4.00
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Nows_Not_The_Time
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Easy_Lad
  - param Preset Player01
  - param String 3.00
- Action IssuePointOrderLoc
  - param Variable Uther
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Easy_Lad
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
- Action WaitForSoundBJ
  - param Variable gg_snd_H05Arthas33
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
- Action SetUnitFacingToFaceLocTimed
  - param Variable Uther
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Militia_Line_B_01a
  - param String 0.30
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Uther
  - param String TRIGSTR_105
  - param Variable gg_snd_H05Uther34
  - param String TRIGSTR_106
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
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
  - param String TRIGSTR_107
  - param Variable gg_snd_H05Arthas35
  - param String TRIGSTR_108
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action SetUnitLookAt
  - param Variable Arthas
  - param Preset UnitFacingBoneHead
  - param Variable Uther
  - param String 0
  - param String 0
  - param String 90
- Action TriggerSleepAction
  - param String 3.75
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
- Action ResetUnitLookAt
  - param Variable Arthas
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Conversion_02
- Action SetUnitLookAt
  - param Variable Uther
  - param Preset UnitFacingBoneHead
  - param Variable Arthas
  - param String 0
  - param String 0
  - param String 90
- Action TriggerSleepAction
  - param String 2.50
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
- Action WaitForSoundBJ
  - param Variable gg_snd_H05Arthas35
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
- Action CommentString
  - param String Cinematic Can No Longer Be Skipped
- Action DisableTrigger
  - param Variable gg_trg_Victory_Cancel
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2.00
- Action TriggerExecute
  - param Variable gg_trg_Victory

