version = TFT

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 30 | Archipelago | False |
| 12 | Initialization Phase | False |
| 18 | Waterfall | False |
| 11 | Hero Variables | False |
| 22 | Arthas XP | False |
| 9 | Alliance and Sight Settings | False |
| 14 | Escape Cinematic1 | False |
| 3 | Cinematic1 | False |
| 0 | Arthas Gets A Town Malganis First Atck | False |
| 10 | Arthas Kills Villagers | False |
| 24 | LEADERBOARD ConversionsVsKills | False |
| 28 | City Building HINT | False |
| 8 | Malganis Demonstration | False |
| 1 | Villagers Escape | False |
| 16 | Malganis Level And Settings | False |
| 2 | Form Districts and Destroy Check | False |
| 4 | Malganis Chooses a Village | False |
| 23 | Malganis Timer Stuff | False |
| 27 | Arthas Forgive Me | False |
| 5 | When Malganis Attacks | False |
| 29 | Villagers Turn into Zombies | False |
| 6 | Malganis Turns Villagers Into Zombies | False |
| 15 | Start Undead Army AI | False |
| 7 | Death Squad Tracking | False |
| 13 | Victory and Failure | False |
| 19 | Failure Cinematic | False |
| 20 | End Victory Cinematic | False |
| 21 | Player Dies | False |
| 26 | VICTORY | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| DestroyedBuilding | unit | . | . |
| Buildings1 | group | . | . |
| Buildings2 | group | . | . |
| Buildings3 | group | . | . |
| Buildings4 | group | . | . |
| Buildings5 | group | . | . |
| Buildings6 | group | . | . |
| MalganisDeathSquad | group | . | . |
| RegionsArray | rect | 0 | . |
| RegionLength | integer | . | . |
| RegionPicked | rect | . | . |
| RegionBucket | integer | . | 1 |
| TargetArray | integer | 0 | . |
| TargetArrayLength | integer | . | . |
| MalganisTargetHouse | unit | . | . |
| BuildingsToAttackArray | group | 0 | . |
| DeathsOfDeathSquad | real | . | 0.00 |
| MalganisConversions | real | . | . |
| ArthasDenials | real | . | . |
| UthersGroup | group | . | . |
| ArthasVariable | unit | . | . |
| UtherVariable | unit | . | . |
| JainaVariable | unit | . | . |
| MalganisVariable | unit | . | . |
| IntroCancel | boolean | . | false |
| PlayerCameraPosition | location | . | . |
| ThePlayer | player | . | Player01 |
| WaygatesQuest | quest | . | . |
| WayGatesGroup | group | . | . |
| RANDOMINTEGER | integer | . | . |
| MalganisCountdown | timerdialog | . | . |
| CullingQuest | quest | . | . |
| MalganisTimer | timer | . | . |
| VictoryCinSkip | boolean | . | false |
| WaygateCin1Playing | boolean | . | false |
| MalganisFirstTeleCin | boolean | . | false |
| MalganisGloatCin | boolean | . | false |
| WaygateCin2Playing | boolean | . | false |
| WaygateCin3Playing | boolean | . | false |
| MalganisFirstTeleCinSkip | boolean | . | false |
| MalganisTargetHouseX | real | . | . |
| MalganisTargetHouseY | real | . | . |
| MalganisCaptainX | real | . | . |
| MalganisCaptainY | real | . | . |
| MalganisAttackTimer | timer | . | . |
| BootingPlayer | boolean | . | false |
| VillagerToZombieGROUP | group | . | . |
| VillagerToBeConverted | unit | . | . |
| WaterfallRevealVis | fogmodifier | . | . |
| WaterfallSwitch | boolean | . | false |
| TeleportEffect | effect | . | . |
| Teleporting | boolean | . | false |
| NextSquad | integer | . | 1 |
| EndCinematicPlaying | boolean | . | false |
| BuildingsGone | boolean | . | false |
| SelectedUnits | group | . | . |
| RevivalAltar | unit | . | UnitNull |
| ArthasReturnPoint | location | . | . |
| HideUnits | group | . | . |
| TeleportFast | boolean | . | false |
| GameOver | boolean | . | false |
| MaySendCommands | boolean | . | true |
| TimerMaySendCommands | timer | . | . |

# Triggers
## fileio
- enabled: True
- category: [30] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## map_config
- enabled: True
- category: [30] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## status
- enabled: True
- category: [30] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## heroes
- enabled: True
- category: [30] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## item_locations
- enabled: True
- category: [30] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## debug
- enabled: True
- category: [30] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## zoom
- enabled: True
- category: [30] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## irregulars
- enabled: True
- category: [30] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## AP mercenaries
- enabled: True
- category: [30] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## AP Load Arthas
- enabled: True
- category: [30] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Load the hero data
- Action CustomScriptCode
  - param String set udg_ArthasVariable = hero_create(0, USER_PLAYER, GetRectCenterX(gg_rct_Arthas_Starts_Here), GetRectCenterY(gg_rct_Arthas_Starts_Here), 1.5708)
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable ArthasVariable
      - param Preset OperatorNotEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String If the hero data wasn't found, create a default hero
- Action CustomScriptCode
  - param String set udg_ArthasVariable = CreateUnit(USER_PLAYER, 'Hart', GetRectCenterX(gg_rct_Arthas_Starts_Here), GetRectCenterY(gg_rct_Arthas_Starts_Here), 1.5708)
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
- category: [30] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Load the hero data
- Action CustomScriptCode
  - param String set udg_JainaVariable = hero_create_global(HERO_ID_JAINA, USER_PLAYER, 11269.474609375, 6069.35498046875, 3.5)
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable JainaVariable
      - param Preset OperatorNotEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String If the hero data wasn't found, create a default hero
- Action CustomScriptCode
  - param String set udg_JainaVariable = CreateUnit(USER_PLAYER, 'Hjai', 11269.474609375, 6069.35498046875, 3.5)


## Shop Locations
- enabled: True
- category: [30] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event MapInitializationEvent
- Action AddItemToStockBJ
  - param String I025
  - param Variable gg_unit_ngme_0035
  - param String 1
  - param String 1


## Kill Malganis Location
- enabled: True
- category: [30] Archipelago
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Umal_0000
  - param Preset UnitEventDeath
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CustomScriptCode
  - param String call status_check_location(20)


## Initialize Initializations
- enabled: True
- category: [12] Initialization Phase
- starts off: False
- is custom text: False
- run on map init: False
```description
Runs all triggers that should be run in Map Init in proper order.
Levels Arthas.
Removes mask on towns.
Change Dark Green Player Color to Brown so it doesn't show up as weird on the minimap.
```
### Functions
- Action SetCampaignMenuRaceBJ
  - param Preset CampaignIndexH
- Action SetTerrainFogExBJ
  - param String 0
  - param String 700.00
  - param String 3100.00
  - param String 0.50
  - param String 10.00
  - param String 30.00
  - param String 50.00
- Action SetVariable
  - param Variable ArthasDenials
  - param String 0.00
- Action SetVariable
  - param Variable MalganisConversions
  - param String 0.00
- Action TriggerExecute
  - param Variable gg_trg_AP_Load_Arthas
- Action TriggerExecute
  - param Variable gg_trg_Initialize_Heroes
- Action TriggerExecute
  - param Variable gg_trg_Malganis_AI_and_Level
- Action TriggerExecute
  - param Variable gg_trg_Form_Uthers_Group
- Action TriggerExecute
  - param Variable gg_trg_Alliance_Sight_Color
- Action TriggerExecute
  - param Variable gg_trg_Form_Building_Groups
- Action TriggerExecute
  - param Variable gg_trg_Initialize_Region_Array
- Action TriggerExecute
  - param Variable gg_trg_Initialize_Buildings_To_Attack_Array
- Action CommentString
  - param String Hide Players
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player02
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
  - param Preset Player10
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player11
- Action TriggerExecute
  - param Variable gg_trg_Start_AI
- Action TriggerExecute
  - param Variable gg_trg_Starting_Cash
- Action SetTimeOfDay
  - param String 19.00
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Variable ThePlayer
  - param Preset FogStateFogged
  - param Variable gg_rct_Reveal1
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Variable ThePlayer
  - param Preset FogStateFogged
  - param Variable gg_rct_Reveal2
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Variable ThePlayer
  - param Preset FogStateFogged
  - param Variable gg_rct_Reveal3
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action TriggerExecute
  - param Variable gg_trg_Cinematic_Uther_Moves_In
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
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_HardGhoul1
      - param Preset RealUnitFacing
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
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_HardGhoul2
      - param Preset RealUnitFacing
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitMoveSpeed
  - param Variable gg_unit_nC00_0094
  - param String 180.00
- Action SetUnitMoveSpeed
  - param Variable gg_unit_nC04_0031
  - param String 180.00
- Action SetUnitMoveSpeed
  - param Variable gg_unit_nC01_0089
  - param String 180.00
- Action SetUnitMoveSpeed
  - param Variable gg_unit_nC00_0125
  - param String 180.00
- Action CommentString
  - param String Cinematic Building Invulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_ncb1_0064
  - param Preset InvulnerabilityInvulnerable
- Action CommentString
  - param String Mal'Ganis Altar Invulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_uaod_0019
  - param Preset InvulnerabilityInvulnerable
- Action CommentString
  - param String Set Difficulty
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty
- Action CommentString
  - param String RAIN
- Action AddWeatherEffectSaveLast
  - param Function GetPlayableMapRect
    - Function GetPlayableMapRect
  - param Preset WeatherLordaeronHeavyRain
- Action EnableWeatherEffect
  - param Function GetLastCreatedWeatherEffect
    - Function GetLastCreatedWeatherEffect
  - param Preset OnOffOn
- Event MapInitializationEvent


## Difficulty
- enabled: True
- category: [12] Initialization Phase
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function DoNothing
    - Action SetPlayerHandicapBJ
      - param Preset Player02
      - param Preset RealHandicapEasy
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function DoNothing
    - Action SetPlayerHandicapBJ
      - param Preset Player03
      - param Preset RealHandicapEasy
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function DoNothing
    - Action SetPlayerHandicapBJ
      - param Preset Player05
      - param Preset RealHandicapEasy
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function DoNothing
    - Action SetPlayerHandicapBJ
      - param Preset Player06
      - param Preset RealHandicapEasy
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function DoNothing
    - Action SetPlayerHandicapBJ
      - param Preset Player08
      - param Preset RealHandicapEasy
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function DoNothing
    - Action SetPlayerHandicapBJ
      - param Preset Player10
      - param Preset RealHandicapEasy
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function DoNothing
    - Action SetPlayerHandicapBJ
      - param Preset Player11
      - param Preset RealHandicapEasy
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function DoNothing
    - Action SetPlayerHandicapBJ
      - param Preset PlayerNA
      - param Preset RealHandicapEasy
  - param Function DoNothing
    - Action DoNothing


## Waterfall Reveal
- enabled: True
- category: [18] Waterfall
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
  - param Variable ThePlayer
- Condition OperatorCompareBoolean
  - param Variable WaterfallSwitch
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Waterfall_Reveal
- Action SetVariable
  - param Variable WaterfallSwitch
  - param String true
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable ThePlayer
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_WaterfallSight
  - param String 800.00
- Action SetVariable
  - param Variable WaterfallRevealVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier


## Waterfall Hide
- enabled: True
- category: [18] Waterfall
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable WaterfallSwitch
  - param String false
- Action DestroyFogModifier
  - param Variable WaterfallRevealVis
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectMatching
        - Function GetUnitsInRectMatching
          - param Variable gg_rct_Waterfall_Reveal
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
                - Condition OperatorComparePlayer
                  - param Function GetOwningPlayer
                    - Function GetOwningPlayer
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param Variable ThePlayer
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable WaterfallSwitch
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_Waterfall_Reveal
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## Initialize Heroes
- enabled: True
- category: [11] Hero Variables
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable UtherVariable
  - param Variable gg_unit_Huth_0007
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AP_Load_Jaina
- Action SetVariable
  - param Variable MalganisVariable
  - param Variable gg_unit_Umal_0000


## XP Cap
- enabled: True
- category: [22] Arthas XP
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable ArthasVariable
- Condition OperatorCompareUnit
  - param Function GetLevelingUnit
    - Function GetLevelingUnit
  - param Preset OperatorEqualENE
  - param Variable ArthasVariable
- Condition OperatorCompareInteger
  - param Function GetHeroLevel
    - Function GetHeroLevel
      - param Variable ArthasVariable
  - param Preset OperatorGreaterEq
  - param String 7
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventHero_Level


## Alliance Sight Color
- enabled: True
- category: [9] Alliance and Sight Settings
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerAllianceBJ
  - param Preset Player11
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player06
- Action SetPlayerAllianceBJ
  - param Preset Player11
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player10
- Action SetPlayerAllianceBJ
  - param Preset Player11
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player02
- Action SetPlayerAllianceBJ
  - param Preset Player10
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player06
- Action SetPlayerAllianceBJ
  - param Preset Player10
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player02
- Action SetPlayerAllianceBJ
  - param Preset Player06
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player03
- Action SetPlayerAllianceBJ
  - param Preset Player06
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset Player06
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player08
- Action SetPlayerAllianceBJ
  - param Preset Player06
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player05
- Action SetPlayerAllianceBJ
  - param Preset Player06
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player02
- Action SetPlayerAllianceBJ
  - param Preset Player06
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset Player02
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player10
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player05
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player06
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player08
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player10
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player02
- Action SetPlayerAllianceBJ
  - param Preset Player02
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player05
- Action SetPlayerAllianceBJ
  - param Preset Player02
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player06
- Action SetPlayerAllianceBJ
  - param Preset Player02
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player03
- Action SetPlayerAllianceBJ
  - param Preset Player02
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player10
- Action SetPlayerAllianceBJ
  - param Preset Player02
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset Player02
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player08
- Action SetPlayerAllianceBJ
  - param Preset Player09
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Variable ThePlayer
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player08
- Action SetPlayerAllianceBJ
  - param Variable ThePlayer
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player09
- Action SetPlayerAllianceBJ
  - param Variable ThePlayer
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player10
- Action SetPlayerAllianceBJ
  - param Preset Player08
  - param Preset AllianceTypePassive
  - param Preset OnOffOff
  - param Variable ThePlayer
- Action SetPlayerAllianceBJ
  - param Preset Player08
  - param Preset AllianceTypeSharedVision
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Preset Player08
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player06
- Action SetPlayerAllianceBJ
  - param Preset Player08
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player03
- Action SetPlayerAllianceBJ
  - param Preset Player08
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player02
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player02
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player03
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player06
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player10
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player10
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player08
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player06
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player03
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerColorBJ
  - param Preset Player10
  - param Preset Color11
  - param Preset PlayerChangeColorChange
- Action SetPlayerColorBJ
  - param Preset Player08
  - param Preset Color11
  - param Preset PlayerChangeColorChange
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player11
  - param Function DoNothing
    - Action UnitShareVisionBJ
      - param Preset ShareDontOptionShare
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable ThePlayer
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player10
  - param Function DoNothing
    - Action UnitShareVisionBJ
      - param Preset ShareDontOptionShare
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable ThePlayer


## Intro Cancel
- enabled: True
- category: [14] Escape Cinematic1
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
  - param Variable IntroCancel
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
  - param String 0.50
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetUnitPositionLoc
  - param Variable ArthasVariable
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Cin_Skip_Move
- Action SetUnitInvulnerable
  - param Variable ArthasVariable
  - param Preset InvulnerabilityVulnerable
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_VillagersESCmove
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Villagers_Go_Here
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas_Town
  - param Variable ThePlayer
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.10
- Action ResetToGameCameraForPlayer
  - param Variable ThePlayer
  - param String 0.00
- Action RemoveUnit
  - param Variable gg_unit_nC00_0094
- Action RemoveUnit
  - param Variable gg_unit_nC04_0031
- Action RemoveUnit
  - param Variable gg_unit_nC01_0089
- Action RemoveUnit
  - param Variable gg_unit_nC00_0125
- Action SetSkyModel
  - param Preset SkyModelNone
- Action TriggerExecute
  - param Variable gg_trg_Arthas_Gets_Town
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## Form Uthers Group
- enabled: True
- category: [3] Cinematic1
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Variable UtherVariable
  - param Variable UthersGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_hkni_0046
  - param Variable UthersGroup
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop2
  - param Variable gg_unit_hkni_0046
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop2
- Action GroupAddUnitSimple
  - param Variable gg_unit_hkni_0047
  - param Variable UthersGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_hkni_0048
  - param Variable UthersGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_hkni_0049
  - param Variable UthersGroup
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop3
  - param Variable gg_unit_hkni_0049
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop3


## Cinematic Uther Moves In
- enabled: True
- category: [3] Cinematic1
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetSkyModel
  - param Preset SkyModelSky05
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop02
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop03
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop04
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop05
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop06
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop07
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop08
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas_and_Jaina_1
  - param Preset Player01
  - param String 0.00
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action ClearMapMusicBJ
- Action TriggerSleepAction
  - param String 0.10
- Action EnableTrigger
  - param Variable gg_trg_Intro_Cancel
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action SetMapMusicIndexedBJ
  - param Preset MusicFileMusic
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable ArthasVariable
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1ArthasStop1
- Action IssuePointOrderLoc
  - param Variable JainaVariable
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1JainaStop1
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_HorseLoop3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Town
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop3
- Action IssuePointOrderLoc
  - param Variable UtherVariable
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1UtherGoHere1
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop3
  - param Variable UtherVariable
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop3
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_KnightNoRiderYesAttack2
  - param Variable gg_unit_hkni_0046
- Action SetSoundVolumeBJ
  - param Variable gg_snd_KnightNoRiderYesAttack2
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_KnightNoRiderYesAttack2
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Cin1KnightsAStart
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1KnightsAGoHere1
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Cin1KnightsBStart
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1KnightsBGoHere1
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas_and_Jaina_2
  - param Preset Player01
  - param String 8.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 8.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable ArthasVariable
  - param Variable UtherVariable
  - param String 1.00
- Action SetUnitFacingToFaceUnitTimed
  - param Variable JainaVariable
  - param Variable ArthasVariable
  - param String 0.25
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas_and_Jaina_2
  - param Preset Player01
  - param String 10.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_020
  - param Variable gg_snd_H06Arthas01
  - param String TRIGSTR_021
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Arthas01
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas_Jaina_and_UtherStart
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas_Jaina_and_Uther
  - param Preset Player01
  - param String 10.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable UtherVariable
  - param String TRIGSTR_022
  - param Variable gg_snd_H06Uther02
  - param String TRIGSTR_049
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Uther02
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable ArthasVariable
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1ArthasStop2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_053
  - param Variable gg_snd_H06Arthas03
  - param String TRIGSTR_054
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_KnightNoRiderWhat2
  - param Variable gg_unit_hkni_0047
- Action SetSoundVolumeBJ
  - param Variable gg_snd_KnightNoRiderWhat2
  - param String 40.00
- Action PlaySoundBJ
  - param Variable gg_snd_KnightNoRiderWhat2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable UtherVariable
  - param Variable ArthasVariable
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.30
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 0.30
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.30
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Villagers_Over_There
  - param Preset Player01
  - param String 0.00
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_CityScapeCathedralLoop1
  - param Variable gg_unit_nC04_0031
- Action SetSoundVolumeBJ
  - param Variable gg_snd_CityScapeCathedralLoop1
  - param String 90.00
- Action PlaySoundBJ
  - param Variable gg_snd_CityScapeCathedralLoop1
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 1.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Grain_of_Andorhal
  - param Preset Player01
  - param String 0.70
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_055
  - param Variable gg_snd_H06Arthas04
  - param String TRIGSTR_056
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action PlaySoundBJ
  - param Variable gg_snd_CityScapeCathedralLoop1
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_nC00_0125
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Villagers_Go_Here
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
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
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_nC01_0089
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Villagers_Go_Here_2
- Action TriggerSleepAction
  - param String 1.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_nC04_0031
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Villagers_Go_Here
- Action TriggerSleepAction
  - param String 0.50
- Action IssuePointOrderLoc
  - param Variable gg_unit_nC00_0094
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Villagers_Go_Here_2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Arthas04
  - param String 0.50
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable UtherVariable
  - param String TRIGSTR_057
  - param Variable gg_snd_H06Uther05
  - param String TRIGSTR_060
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable ArthasVariable
  - param Variable UtherVariable
  - param String 0.25
- Action SetUnitFacingToFaceUnitTimed
  - param Variable UtherVariable
  - param Variable ArthasVariable
  - param String 0.25
- Action SetUnitFacingToFaceUnitTimed
  - param Variable JainaVariable
  - param Variable ArthasVariable
  - param String 0.25
- Action TriggerSleepAction
  - param String 1.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_What_Must_Be_Purged
  - param Preset Player01
  - param String 0.00
- Action TriggerSleepAction
  - param String 1.00
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Uther05
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_061
  - param Variable gg_snd_H06Arthas06
  - param String TRIGSTR_062
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action PlayThematicMusicBJ
  - param Preset MusicThemeTragicConfrontation
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Arthas06
  - param String 0
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable UtherVariable
  - param String TRIGSTR_063
  - param Variable gg_snd_H06Uther07
  - param String TRIGSTR_064
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Uther07
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_065
  - param Variable gg_snd_H06Arthas08
  - param String TRIGSTR_066
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Arthas08
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable UtherVariable
  - param String TRIGSTR_067
  - param Variable gg_snd_H06Uther09
  - param String TRIGSTR_068
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Uther09
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_069
  - param Variable gg_snd_H06Arthas10
  - param String TRIGSTR_070
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Arthas10
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Uther_Shocked
  - param Preset Player01
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable UtherVariable
  - param String TRIGSTR_071
  - param Variable gg_snd_H06Uther11
  - param String TRIGSTR_072
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Uther11
  - param String 0.50
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_KnightNoRiderWhat3
  - param Variable gg_unit_hkni_0047
- Action SetSoundVolumeBJ
  - param Variable gg_snd_KnightNoRiderWhat3
  - param String 50.00
- Action PlaySoundBJ
  - param Variable gg_snd_KnightNoRiderWhat3
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas_Expostulates
  - param Preset Player01
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_073
  - param Variable gg_snd_H06Arthas12
  - param String TRIGSTR_074
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable JainaVariable
  - param String TRIGSTR_075
  - param Variable gg_snd_H06Jaina13
  - param String TRIGSTR_076
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param String 0.80
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_077
  - param Variable gg_snd_H06Arthas14
  - param String TRIGSTR_078
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Arthas14
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Jaina_Leaving
  - param Preset Player01
  - param String 0.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0049
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1KnightsALeave
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0048
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1KnightsBLeave
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0047
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1KnightsBLeave
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0046
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1KnightsALeave
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop2
  - param Variable gg_unit_hkni_0046
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop2
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop3
  - param Variable gg_unit_hkni_0049
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop3
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_KnightNoRiderYesAttack1
  - param Variable gg_unit_hkni_0046
- Action PlaySoundBJ
  - param Variable gg_snd_KnightNoRiderYesAttack1
- Action TriggerSleepAction
  - param String 3.00
- Action SetUnitPathing
  - param Variable gg_unit_hkni_0046
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_hkni_0047
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_hkni_0048
  - param Preset PathingOff
- Action SetUnitPathing
  - param Variable gg_unit_hkni_0049
  - param Preset PathingOff
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable UtherVariable
  - param String TRIGSTR_079
  - param Variable gg_snd_H06Uther15
  - param String TRIGSTR_080
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Uther15
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable UtherVariable
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1UtherLeave
- Action IssuePointOrderLoc
  - param Variable JainaVariable
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1JainaLeave
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable ArthasVariable
  - param Variable JainaVariable
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_081
  - param Variable gg_snd_H06Arthas16
  - param String TRIGSTR_082
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssueImmediateOrder
  - param Variable JainaVariable
  - param Preset UnitOrderStop
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable JainaVariable
  - param String TRIGSTR_083
  - param Variable gg_snd_H06Jaina17
  - param String TRIGSTR_084
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Jaina17
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable JainaVariable
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cin1JainaLeave
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_Uther_and_co_Leave
- Action DisableTrigger
  - param Variable gg_trg_Intro_Cancel


## Remove Villager1
- enabled: True
- category: [3] Cinematic1
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nC00_0125
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Villagers_Go_Here


## Remove Villager2
- enabled: True
- category: [3] Cinematic1
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action PlaySoundBJ
  - param Variable gg_snd_DoorSlam1
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nC04_0031
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Villagers_Go_Here


## Remove Villager3
- enabled: True
- category: [3] Cinematic1
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nC01_0089
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Villagers_Go_Here_2


## Remove Villager4
- enabled: True
- category: [3] Cinematic1
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action PlaySoundBJ
  - param Variable gg_snd_DoorSlam101
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nC00_0094
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Villagers_Go_Here_2


## Uther and co Leave
- enabled: True
- category: [3] Cinematic1
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitInvulnerable
  - param Variable ArthasVariable
  - param Preset InvulnerabilityVulnerable
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action IssuePointOrderLoc
  - param Variable ArthasVariable
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Cin_Skip_Move
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas_Town
  - param Variable ThePlayer
  - param String 2.00
- Action TriggerSleepAction
  - param String 2.00
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action SetSkyModel
  - param Preset SkyModelNone
- Action TriggerExecute
  - param Variable gg_trg_Arthas_Gets_Town


## Arthas Gets Town
- enabled: True
- category: [0] Arthas Gets A Town Malganis First Atck
- starts off: False
- is custom text: False
- run on map init: False
```description
Starts the AI.
Turns on Villagers Run District 1 (to stop possible problem with intro cinematic villagers doing dumb stuff).
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Leaderboard
- Action SelectUnitSingle
  - param Variable ArthasVariable
- Action RemoveUnit
  - param Variable JainaVariable
- Action ForGroup
  - param Variable UthersGroup
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action SetUnitInvulnerable
  - param Variable ArthasVariable
  - param Preset InvulnerabilityVulnerable
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Harvest_Gold
  - param Function DoNothing
    - Action IssueImmediateOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAutoHarvestGold
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Harvest_Lumber
  - param Function DoNothing
    - Action IssueImmediateOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAutoHarvestLumber
- Action AdjustPlayerStateBJ
  - param String 800
  - param Preset Player01
  - param Preset PlayerStateGold
- Action AdjustPlayerStateBJ
  - param String 400
  - param Preset Player01
  - param Preset PlayerStateLumber
- Action CreateQuestBJ
  - param Preset QuestTypeReqDiscovered
  - param String TRIGSTR_023
  - param String TRIGSTR_024
  - param String ReplaceableTextures\CommandButtons\BTNRallypointundead.tga
- Action SetVariable
  - param Variable CullingQuest
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable CullingQuest
  - param String TRIGSTR_114
- Action CreateQuestItemBJ
  - param Variable CullingQuest
  - param String TRIGSTR_025
- Action CreateQuestItemBJ
  - param Variable CullingQuest
  - param String TRIGSTR_026
- Action FlashQuestDialogButtonBJ
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_100
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action TriggerExecute
  - param Variable gg_trg_New_Unit_Available
- Action CommandAI
  - param Preset Player03
  - param String 0
  - param String 0
- Action EnableTrigger
  - param Variable gg_trg_Villagers_Run_District_1
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function DoNothing
    - Action StartTimerBJ
      - param Variable MalganisAttackTimer
      - param Preset PeriodicOptionOneTime
      - param String 210.00
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
      - param Variable MalganisAttackTimer
      - param Preset PeriodicOptionOneTime
      - param String 180.00
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
      - param Variable MalganisAttackTimer
      - param Preset PeriodicOptionOneTime
      - param String 120.00
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 30.00


## New Unit Available
- enabled: True
- category: [0] Arthas Gets A Town Malganis First Atck
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 5.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeUnitAcquired
  - param String TRIGSTR_245


## Malganis Attack
- enabled: True
- category: [0] Arthas Gets A Town Malganis First Atck
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
  - param String 0.50
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player08
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player02
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable MalganisAttackTimer
- Action TriggerExecute
  - param Variable gg_trg_Malganis_First_Attacks


## Kill Villager Deny Malganis
- enabled: True
- category: [10] Arthas Kills Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable ArthasDenials
  - param Function OperatorReal
    - Function OperatorReal
      - param Variable ArthasDenials
      - param Preset OperatorAdd
      - param String 1.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Leaderboard_Tracking
- Condition GetBooleanOr
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetDyingUnit
                - Function GetDyingUnit
          - param Preset OperatorEqualENE
          - param String nC02
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetDyingUnit
                - Function GetDyingUnit
          - param Preset OperatorEqualENE
          - param String nC04
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetTriggerUnit
                - Function GetTriggerUnit
          - param Preset OperatorEqualENE
          - param String nC01
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetTriggerUnit
                - Function GetTriggerUnit
          - param Preset OperatorEqualENE
          - param String nC00
- Condition OperatorCompareBoolean
  - param Function IsUnitAlly
    - Function IsUnitAlly
      - param Function GetKillingUnitBJ
        - Function GetKillingUnitBJ
      - param Variable ThePlayer
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player08
  - param Preset PlayerUnitEventDeath


## Kill Zombie Deny Malganis
- enabled: True
- category: [10] Arthas Kills Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetDyingUnit
        - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param String nzom
- Condition OperatorCompareBoolean
  - param Function IsUnitAlly
    - Function IsUnitAlly
      - param Function GetKillingUnitBJ
        - Function GetKillingUnitBJ
      - param Variable ThePlayer
  - param Preset OperatorEqualENE
  - param String true
- Action SetVariable
  - param Variable ArthasDenials
  - param Function OperatorReal
    - Function OperatorReal
      - param Variable ArthasDenials
      - param Preset OperatorAdd
      - param String 1.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Leaderboard_Tracking
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player02
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player08
  - param Preset PlayerUnitEventDeath


## Setup Leaderboard
- enabled: True
- category: [24] LEADERBOARD ConversionsVsKills
- starts off: False
- is custom text: False
- run on map init: False
```description
Adding Mal'Ganis and his Leaderboard value color are done in Malganis First Teleport (Cin Skip).
```
### Functions
- Action CreateLeaderboardBJ
  - param Preset Force01
  - param String TRIGSTR_000
- Action LeaderboardAddItemBJ
  - param Variable ThePlayer
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param String TRIGSTR_001
  - param String 0
- Action LeaderboardSetPlayerItemValueColorBJ
  - param Variable ThePlayer
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param String 100
  - param String 100
  - param String 100
  - param String 0


## Leaderboard Tracking
- enabled: True
- category: [24] LEADERBOARD ConversionsVsKills
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action LeaderboardSetPlayerItemValueBJ
  - param Variable ThePlayer
  - param Function PlayerGetLeaderboardBJ
    - Function PlayerGetLeaderboardBJ
      - param Variable ThePlayer
  - param Function R2I
    - Function R2I
      - param Variable ArthasDenials
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function LeaderboardHasPlayerItemBJ
        - Function LeaderboardHasPlayerItemBJ
          - param Function PlayerGetLeaderboardBJ
            - Function PlayerGetLeaderboardBJ
              - param Variable ThePlayer
          - param Preset Player06
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action LeaderboardSetPlayerItemValueBJ
      - param Preset Player06
      - param Function PlayerGetLeaderboardBJ
        - Function PlayerGetLeaderboardBJ
          - param Variable ThePlayer
      - param Function R2I
        - Function R2I
          - param Variable MalganisConversions
  - param Function DoNothing
    - Action DoNothing


## Hint for Killing Villagers
- enabled: True
- category: [28] City Building HINT
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
  - param Variable gg_trg_Hint_for_Killing_Villagers_Que
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable ThePlayer
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Malganis_Sneak1_Buildings
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Malganis_Sneak2_Buildings
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Malganis_Sneak3_Buildings
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Malganis_Sneak4_Buildings
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Malganis_Sneak5_Buildings


## Hint for Killing Villagers Que
- enabled: True
- category: [28] City Building HINT
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
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_104
- Action TriggerSleepAction
  - param String 10.00
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Malganis First Attacks
- enabled: True
- category: [8] Malganis Demonstration
- starts off: False
- is custom text: False
- run on map init: False
```description
Run by Arthas Gets Town
```
### Functions
- Action GroupAddGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Variable gg_rct_MalganisSpawnDS
      - param Preset Player06
  - param Variable MalganisDeathSquad
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Malganis_First_Teleport_Cinematic
  - param Preset CheckingIgnoringChecking


## Malganis First Teleport Cin Skip
- enabled: True
- category: [8] Malganis Demonstration
- starts off: True
- is custom text: False
- run on map init: False
```description
Adds Mal'Ganis to Leaderboard AND sets the color of his Leaderboard Value to white.
```
### Functions
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable MalganisFirstTeleCinSkip
  - param String true
- Action CommentString
  - param String Fade out
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
- Action CommentString
  - param String Clean up the scene
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ResetToGameCameraForPlayer
  - param Variable ThePlayer
  - param String 0
- Action PanCameraToTimedLocForPlayer
  - param Variable ThePlayer
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable ArthasVariable
  - param String 0
- Action CameraResetSmoothingFactorBJ
- Action DestroyEffectBJ
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action KillUnit
  - param Variable gg_unit_ncb1_0064
- Action SetUnitPositionLoc
  - param Variable MalganisVariable
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganicFirstTPSkip_Move
- Action ForGroup
  - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganicFirstTPSkip_Move
- Action ForGroup
  - param Variable HideUnits
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable ThePlayer
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityVulnerable
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action SelectGroupBJ
  - param Variable SelectedUnits
- Action CommentString
  - param String Start AI
- Action StartCampaignAI
  - param Preset Player06
  - param String h06_green.ai
- Action SetVariable
  - param Variable MalganisCaptainX
  - param Function GetLocationX
    - Function GetLocationX
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganicFirstTPSkip_Move
- Action SetVariable
  - param Variable MalganisCaptainY
  - param Function GetLocationY
    - Function GetLocationY
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganicFirstTPSkip_Move
- Action CommandAI
  - param Preset Player06
  - param String 7
  - param String 0
- Action CommandAI
  - param Preset Player06
  - param String 6
  - param Function R2I
    - Function R2I
      - param Variable MalganisCaptainY
- Action CommandAI
  - param Preset Player06
  - param String 5
  - param Function R2I
    - Function R2I
      - param Variable MalganisCaptainX
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable ThePlayer
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable MalganisVariable
  - param String 512.00
- Action SetVariable
  - param Variable MalganisFirstTeleCin
  - param String false
- Action CommentString
  - param String Update leaderboard
- Action LeaderboardAddItemBJ
  - param Preset Player06
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param String TRIGSTR_044
  - param String 0
- Action LeaderboardSetPlayerItemValueColorBJ
  - param Preset Player06
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param String 100
  - param String 100
  - param String 100
  - param String 0
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Leaderboard_Tracking
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
- Action CommentString
  - param String Fade in
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 4.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action TriggerExecute
  - param Variable gg_trg_Malganis_First_Building_Attack
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_Malganis_First_Teleport_Cinematic


## Malganis First Teleport Cinematic
- enabled: True
- category: [8] Malganis Demonstration
- starts off: False
- is custom text: False
- run on map init: False
```description
Adds Mal'Ganis to Leaderboard AND sets the color of his Leaderboard Value to white.
```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action SetVariable
  - param Variable MalganisFirstTeleCin
  - param String true
- Action CommentString
  - param String Fade out
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 1.00
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CommentString
  - param String Set up the scene
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable ThePlayer
  - param Function DoNothing
    - Action UnitRemoveBuffsBJ
      - param Preset BuffTypeAll
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action SetVariable
  - param Variable SelectedUnits
  - param Function GetUnitsSelectedAll
    - Function GetUnitsSelectedAll
      - param Variable ThePlayer
- Action ClearSelection
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Malganis_First_Get_Arthas_Alt
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action ForGroup
  - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action PauseUnitBJ
      - param Preset PauseUnpauseOptionUnpause
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable ThePlayer
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityInvulnerable
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player08
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable HideUnits
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player02
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable HideUnits
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable ThePlayer
      - param Function 
        - Condition GetBooleanAnd
          - param Function 
            - Condition OperatorCompareBoolean
              - param Function IsUnitType
                - Function IsUnitType
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
                  - param Preset UnitTypeHero
              - param Preset OperatorEqualENE
              - param String false
          - param Function 
            - Condition GetBooleanAnd
              - param Function 
                - Condition OperatorCompareBoolean
                  - param Function IsUnitHiddenBJ
                    - Function IsUnitHiddenBJ
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param String false
              - param Function 
                - Condition OperatorCompareBoolean
                  - param Function IsUnitAliveBJ
                    - Function IsUnitAliveBJ
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param String true
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable HideUnits
- Action ForGroup
  - param Variable HideUnits
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MalGanis_IntroCin1
  - param Variable ThePlayer
  - param String 0
- Action CommentString
  - param String CINEMATIC BEGINS - Cinematic is now skippable
- Action EnableTrigger
  - param Variable gg_trg_Malganis_First_Teleport_Cin_Skip
- Action CommentString
  - param String Fade in
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MalganisFirstTeleCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Sneak1
  - param String Abilities\Spells\Undead\DarkSummoning\DarkSummonTarget.mdl
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_DarkSummoningTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Sneak1_Buildings
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_DarkSummoningTarget1
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MalganisFirstTeleCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ForGroup
  - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Malganis_Sneak1
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MalganisFirstTeleCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DestroyEffectBJ
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable MalganisVariable
  - param String TRIGSTR_101
  - param Variable gg_snd_H06MalGanis31
  - param String TRIGSTR_102
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H06MalGanis31
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MalganisFirstTeleCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitInvulnerable
  - param Variable gg_unit_ncb1_0064
  - param Preset InvulnerabilityVulnerable
- Action SetUnitOwner
  - param Variable gg_unit_ncb1_0064
  - param Preset Player10
  - param Preset ChangeColorFalse
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MalGanis_IntroCin2
  - param Variable ThePlayer
  - param String 5.00
- Action GroupPointOrderLoc
  - param Variable MalganisDeathSquad
  - param Preset UnitOrderAttack
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_ncb1_0064
- Action TriggerSleepAction
  - param String 6.00
- Action KillUnit
  - param Variable gg_unit_ncb1_0064
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MalganisFirstTeleCinSkip
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
  - param Variable MalganisVariable
  - param String TRIGSTR_032
  - param Variable gg_snd_H06MalGanis32
  - param String TRIGSTR_041
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H06MalGanis32
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MalganisFirstTeleCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ResetToGameCameraForPlayer
  - param Variable ThePlayer
  - param String 0
- Action PanCameraToTimedLocForPlayer
  - param Variable ThePlayer
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable ArthasVariable
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_042
  - param Variable gg_snd_H06Arthas33
  - param String TRIGSTR_043
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H06Arthas33
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MalganisFirstTeleCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String CINEMATIC ENDS - Cinematic can no longer be skipped
- Action DisableTrigger
  - param Variable gg_trg_Malganis_First_Teleport_Cin_Skip
- Action CommentString
  - param String Return to gameplay without a fade
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CommentString
  - param String Clean up the scene
- Action ForGroup
  - param Variable HideUnits
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable ThePlayer
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityVulnerable
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action SelectGroupBJ
  - param Variable SelectedUnits
- Action CommentString
  - param String Start AI
- Action StartCampaignAI
  - param Preset Player06
  - param String h06_green.ai
- Action SetVariable
  - param Variable MalganisCaptainX
  - param Function GetLocationX
    - Function GetLocationX
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Malganis_Sneak1
- Action SetVariable
  - param Variable MalganisCaptainY
  - param Function GetLocationY
    - Function GetLocationY
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Malganis_Sneak1
- Action CommandAI
  - param Preset Player06
  - param String 7
  - param String 0
- Action CommandAI
  - param Preset Player06
  - param String 6
  - param Function R2I
    - Function R2I
      - param Variable MalganisCaptainY
- Action CommandAI
  - param Preset Player06
  - param String 5
  - param Function R2I
    - Function R2I
      - param Variable MalganisCaptainX
- Action CommentString
  - param String OLD STUFF BELOW LEAVE FOR END OF CIN?
- Action TriggerExecute
  - param Variable gg_trg_Malganis_First_Building_Attack
- Action SetVariable
  - param Variable PlayerCameraPosition
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable MalganisVariable
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable ThePlayer
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable MalganisVariable
  - param String 512.00
- Action SetVariable
  - param Variable MalganisFirstTeleCin
  - param String false
- Action CommentString
  - param String Update leaderboard
- Action LeaderboardAddItemBJ
  - param Preset Player06
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param String TRIGSTR_019
  - param String 0
- Action LeaderboardSetPlayerItemValueColorBJ
  - param Preset Player06
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param String 100
  - param String 100
  - param String 100
  - param String 0
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Leaderboard_Tracking
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
- Action TriggerSleepAction
  - param String 4.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Malganis First Building Attack
- enabled: True
- category: [8] Malganis Demonstration
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable Buildings1
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetVariable
  - param Variable MalganisTargetHouse
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Variable Buildings1
- Action SetUnitOwner
  - param Variable MalganisTargetHouse
  - param Preset Player10
  - param Preset ChangeColorFalse
- Action SetVariable
  - param Variable MalganisTargetHouseX
  - param Function GetLocationX
    - Function GetLocationX
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisTargetHouse
- Action SetVariable
  - param Variable MalganisTargetHouseY
  - param Function GetLocationY
    - Function GetLocationY
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisTargetHouse
- Action CommandAI
  - param Preset Player06
  - param String 3
  - param String 0
- Action CommandAI
  - param Preset Player06
  - param String 2
  - param Function R2I
    - Function R2I
      - param Variable MalganisTargetHouseY
- Action CommandAI
  - param Preset Player06
  - param String 1
  - param Function R2I
    - Function R2I
      - param Variable MalganisTargetHouseX


## Malganis First Get Arthas Alt
- enabled: True
- category: [8] Malganis Demonstration
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable ArthasVariable
  - param Preset OperatorEqualENE
  - param String true
- Action CommentString
  - param String If Arthas was dead, revive him on the spot
- Action ReviveHeroLoc
  - param Variable ArthasVariable
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Cin_Skip_Move
  - param Preset ShowHideHide
- Action CommentString
  - param String If an Altar exists, move him to the Altar's location
- Action SetVariable
  - param Variable RevivalAltar
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsOfPlayerMatching
        - Function GetUnitsOfPlayerMatching
          - param Variable ThePlayer
          - param Function 
            - Condition GetBooleanAnd
              - param Function 
                - Condition OperatorCompareUnitCode
                  - param Function GetUnitTypeId
                    - Function GetUnitTypeId
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param String halt
              - param Function 
                - Condition OperatorCompareBoolean
                  - param Function IsUnitAliveBJ
                    - Function IsUnitAliveBJ
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param String true
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable RevivalAltar
      - param Preset OperatorNotEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable ArthasVariable
      - param Function OffsetLocation
        - Function OffsetLocation
          - param Function GetUnitLoc
            - Function GetUnitLoc
              - param Variable RevivalAltar
          - param String 0
          - param String -128.00
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingTimed
  - param Variable ArthasVariable
  - param String 225.00
  - param String 0


## Villagers Run District 1
- enabled: True
- category: [1] Villagers Escape
- starts off: True
- is custom text: False
- run on map init: False
```description
Turned on in Arthas Gets Town to stop possible stupidity with intro cinematic.
```
### Functions
- Condition GetBooleanOr
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC02
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC04
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC01
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC00
- Action TriggerSleepAction
  - param String 0.10
- Action IssuePointOrderLoc
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Malganis_Sneak1_Buildings
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Malganis_Sneak1_Buildings


## Villagers Run District 2
- enabled: True
- category: [1] Villagers Escape
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition GetBooleanOr
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC02
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC04
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC01
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC00
- Action TriggerSleepAction
  - param String 0.10
- Action IssuePointOrderLoc
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Malganis_Sneak2_Buildings
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Malganis_Sneak2_Buildings


## Villagers Run District 3
- enabled: True
- category: [1] Villagers Escape
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition GetBooleanOr
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC02
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC04
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC01
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC00
- Action TriggerSleepAction
  - param String 0.10
- Action IssuePointOrderLoc
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Malganis_Sneak3_Buildings
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Malganis_Sneak3_Buildings


## Villagers Run District 4
- enabled: True
- category: [1] Villagers Escape
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition GetBooleanOr
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC02
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC04
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC01
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC00
- Action TriggerSleepAction
  - param String 0.10
- Action IssuePointOrderLoc
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Malganis_Sneak4_Buildings
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Malganis_Sneak4_Buildings


## Villagers Run District 5
- enabled: True
- category: [1] Villagers Escape
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition GetBooleanOr
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC02
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC04
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC01
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetEnteringUnit
                - Function GetEnteringUnit
          - param Preset OperatorEqualENE
          - param String nC00
- Action TriggerSleepAction
  - param String 0.10
- Action IssuePointOrderLoc
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Malganis_Sneak5_Buildings
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Malganis_Sneak5_Buildings


## If Building Pops MakeVillagers
- enabled: True
- category: [1] Villagers Escape
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player10
  - param Preset PlayerUnitEventDeath
- Condition GetBooleanOr
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition GetBooleanOr
          - param Function 
            - Condition OperatorCompareUnitCode
              - param Function GetUnitTypeId
                - Function GetUnitTypeId
                  - param Function GetDyingUnit
                    - Function GetDyingUnit
              - param Preset OperatorEqualENE
              - param String ncb0
          - param Function 
            - Condition GetBooleanOr
              - param Function 
                - Condition OperatorCompareUnitCode
                  - param Function GetUnitTypeId
                    - Function GetUnitTypeId
                      - param Function GetDyingUnit
                        - Function GetDyingUnit
                  - param Preset OperatorEqualENE
                  - param String ncb1
              - param Function 
                - Condition GetBooleanOr
                  - param Function 
                    - Condition OperatorCompareUnitCode
                      - param Function GetUnitTypeId
                        - Function GetUnitTypeId
                          - param Function GetDyingUnit
                            - Function GetDyingUnit
                      - param Preset OperatorEqualENE
                      - param String ncba
                  - param Function 
                    - Condition OperatorCompareUnitCode
                      - param Function GetUnitTypeId
                        - Function GetUnitTypeId
                          - param Function GetDyingUnit
                            - Function GetDyingUnit
                      - param Preset OperatorEqualENE
                      - param String ncbb
      - param Function 
        - Condition GetBooleanOr
          - param Function 
            - Condition GetBooleanOr
              - param Function 
                - Condition OperatorCompareUnitCode
                  - param Function GetUnitTypeId
                    - Function GetUnitTypeId
                      - param Function GetDyingUnit
                        - Function GetDyingUnit
                  - param Preset OperatorEqualENE
                  - param String ncb2
              - param Function 
                - Condition OperatorCompareUnitCode
                  - param Function GetUnitTypeId
                    - Function GetUnitTypeId
                      - param Function GetDyingUnit
                        - Function GetDyingUnit
                  - param Preset OperatorEqualENE
                  - param String ncb3
          - param Function 
            - Condition OperatorCompareUnitCode
              - param Function GetUnitTypeId
                - Function GetUnitTypeId
                  - param Function GetDyingUnit
                    - Function GetDyingUnit
              - param Preset OperatorEqualENE
              - param String ncb4
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition GetBooleanOr
          - param Function 
            - Condition OperatorCompareUnitCode
              - param Function GetUnitTypeId
                - Function GetUnitTypeId
                  - param Function GetDyingUnit
                    - Function GetDyingUnit
              - param Preset OperatorEqualENE
              - param String ncb5
          - param Function 
            - Condition OperatorCompareUnitCode
              - param Function GetUnitTypeId
                - Function GetUnitTypeId
                  - param Function GetDyingUnit
                    - Function GetDyingUnit
              - param Preset OperatorEqualENE
              - param String ncb6
      - param Function 
        - Condition GetBooleanOr
          - param Function 
            - Condition OperatorCompareUnitCode
              - param Function GetUnitTypeId
                - Function GetUnitTypeId
                  - param Function GetDyingUnit
                    - Function GetDyingUnit
              - param Preset OperatorEqualENE
              - param String ncb7
          - param Function 
            - Condition GetBooleanOr
              - param Function 
                - Condition OperatorCompareUnitCode
                  - param Function GetUnitTypeId
                    - Function GetUnitTypeId
                      - param Function GetDyingUnit
                        - Function GetDyingUnit
                  - param Preset OperatorEqualENE
                  - param String ncb9
              - param Function 
                - Condition OperatorCompareUnitCode
                  - param Function GetUnitTypeId
                    - Function GetUnitTypeId
                      - param Function GetDyingUnit
                        - Function GetDyingUnit
                  - param Preset OperatorEqualENE
                  - param String ncb8
- Action SetVariable
  - param Variable DestroyedBuilding
  - param Function GetDyingUnit
    - Function GetDyingUnit
- Action TriggerExecute
  - param Variable gg_trg_Spawn_Villagers
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player11
  - param Preset PlayerUnitEventDeath


## If Building Pops Shake Camera
- enabled: True
- category: [1] Villagers Escape
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition GetBooleanOr
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition GetBooleanOr
          - param Function 
            - Condition OperatorCompareUnitCode
              - param Function GetUnitTypeId
                - Function GetUnitTypeId
                  - param Function GetDyingUnit
                    - Function GetDyingUnit
              - param Preset OperatorEqualENE
              - param String ncb0
          - param Function 
            - Condition GetBooleanOr
              - param Function 
                - Condition OperatorCompareUnitCode
                  - param Function GetUnitTypeId
                    - Function GetUnitTypeId
                      - param Function GetDyingUnit
                        - Function GetDyingUnit
                  - param Preset OperatorEqualENE
                  - param String ncb1
              - param Function 
                - Condition GetBooleanOr
                  - param Function 
                    - Condition OperatorCompareUnitCode
                      - param Function GetUnitTypeId
                        - Function GetUnitTypeId
                          - param Function GetDyingUnit
                            - Function GetDyingUnit
                      - param Preset OperatorEqualENE
                      - param String ncba
                  - param Function 
                    - Condition OperatorCompareUnitCode
                      - param Function GetUnitTypeId
                        - Function GetUnitTypeId
                          - param Function GetDyingUnit
                            - Function GetDyingUnit
                      - param Preset OperatorEqualENE
                      - param String ncbb
      - param Function 
        - Condition GetBooleanOr
          - param Function 
            - Condition GetBooleanOr
              - param Function 
                - Condition OperatorCompareUnitCode
                  - param Function GetUnitTypeId
                    - Function GetUnitTypeId
                      - param Function GetDyingUnit
                        - Function GetDyingUnit
                  - param Preset OperatorEqualENE
                  - param String ncb2
              - param Function 
                - Condition OperatorCompareUnitCode
                  - param Function GetUnitTypeId
                    - Function GetUnitTypeId
                      - param Function GetDyingUnit
                        - Function GetDyingUnit
                  - param Preset OperatorEqualENE
                  - param String ncb3
          - param Function 
            - Condition OperatorCompareUnitCode
              - param Function GetUnitTypeId
                - Function GetUnitTypeId
                  - param Function GetDyingUnit
                    - Function GetDyingUnit
              - param Preset OperatorEqualENE
              - param String ncb4
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition GetBooleanOr
          - param Function 
            - Condition OperatorCompareUnitCode
              - param Function GetUnitTypeId
                - Function GetUnitTypeId
                  - param Function GetDyingUnit
                    - Function GetDyingUnit
              - param Preset OperatorEqualENE
              - param String ncb5
          - param Function 
            - Condition OperatorCompareUnitCode
              - param Function GetUnitTypeId
                - Function GetUnitTypeId
                  - param Function GetDyingUnit
                    - Function GetDyingUnit
              - param Preset OperatorEqualENE
              - param String ncb6
      - param Function 
        - Condition GetBooleanOr
          - param Function 
            - Condition OperatorCompareUnitCode
              - param Function GetUnitTypeId
                - Function GetUnitTypeId
                  - param Function GetDyingUnit
                    - Function GetDyingUnit
              - param Preset OperatorEqualENE
              - param String ncb7
          - param Function 
            - Condition GetBooleanOr
              - param Function 
                - Condition OperatorCompareUnitCode
                  - param Function GetUnitTypeId
                    - Function GetUnitTypeId
                      - param Function GetDyingUnit
                        - Function GetDyingUnit
                  - param Preset OperatorEqualENE
                  - param String ncb9
              - param Function 
                - Condition OperatorCompareUnitCode
                  - param Function GetUnitTypeId
                    - Function GetUnitTypeId
                      - param Function GetDyingUnit
                        - Function GetDyingUnit
                  - param Preset OperatorEqualENE
                  - param String ncb8
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player10
  - param Preset PlayerUnitEventDeath
- Action CameraSetSourceNoiseForPlayer
  - param Preset Player01
  - param String 20.00
  - param String 1000.00
- Action TriggerSleepAction
  - param String 2.00
- Action CameraClearNoiseForPlayer
  - param Preset Player01
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player11
  - param Preset PlayerUnitEventDeath


## Spawn Villagers
- enabled: True
- category: [1] Villagers Escape
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_Create_Man
- Action TriggerExecute
  - param Variable gg_trg_Create_Man
- Action TriggerExecute
  - param Variable gg_trg_Create_Woman
- Action TriggerExecute
  - param Variable gg_trg_Create_Woman
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Create_Rats


## Create Man
- enabled: True
- category: [1] Villagers Escape
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RANDOMINTEGER
  - param Function GetRandomInt
    - Function GetRandomInt
      - param String 1
      - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable RANDOMINTEGER
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String nC00
      - param Preset Player08
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable DestroyedBuilding
      - param String 0
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable RANDOMINTEGER
      - param Preset OperatorEqual
      - param String 2
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String nC04
      - param Preset Player08
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable DestroyedBuilding
      - param String 0
  - param Function DoNothing
    - Action DoNothing
- Action SetVariable
  - param Variable VillagerToBeConverted
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Convert_Villager


## Create Woman
- enabled: True
- category: [1] Villagers Escape
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nC01
  - param Preset Player08
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable DestroyedBuilding
  - param String 0.00
- Action SetVariable
  - param Variable VillagerToBeConverted
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Convert_Villager


## Create Child
- enabled: True
- category: [1] Villagers Escape
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nC02
  - param Preset Player08
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable DestroyedBuilding
  - param String 0.00
- Action SetVariable
  - param Variable VillagerToBeConverted
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Convert_Villager


## Create Rats
- enabled: True
- category: [1] Villagers Escape
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RANDOMINTEGER
  - param Function GetRandomInt
    - Function GetRandomInt
      - param String 1
      - param String 2
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nrat
  - param Preset PlayerNP
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable DestroyedBuilding
  - param String 0.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable RANDOMINTEGER
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String nrat
      - param Preset PlayerNP
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable DestroyedBuilding
      - param Preset RealUnitFacing
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable RANDOMINTEGER
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String nrat
      - param Preset PlayerNP
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable DestroyedBuilding
      - param Preset RealUnitFacing
  - param Function DoNothing
    - Action DoNothing
- Condition OperatorCompareInteger
  - param Function GetRandomInt
    - Function GetRandomInt
      - param String 1
      - param String 5
  - param Preset OperatorGreater
  - param String 4


## Malganis AI and Level
- enabled: True
- category: [16] Malganis Level And Settings
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetHeroLevel
  - param Variable MalganisVariable
  - param String 6
  - param Preset ShowHideHide
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyNormal
  - param Function DoNothing
    - Action SetHeroLevel
      - param Variable MalganisVariable
      - param String 7
      - param Preset ShowHideHide
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
    - Action SetHeroLevel
      - param Variable MalganisVariable
      - param String 8
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action DoNothing
- Action SelectHeroSkill
  - param Variable MalganisVariable
  - param Preset HeroSkillMalganisSleep
- Action SelectHeroSkill
  - param Variable MalganisVariable
  - param Preset HeroSkillSoulPreservation
- Action SelectHeroSkill
  - param Variable MalganisVariable
  - param Preset HeroSkillSleep
- Action SelectHeroSkill
  - param Variable MalganisVariable
  - param Preset HeroSkillSleep
- Action SelectHeroSkill
  - param Variable MalganisVariable
  - param Preset HeroSkillSleep
- Action SelectHeroSkill
  - param Variable MalganisVariable
  - param Preset HeroSkillCarrionSwarm
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action SelectHeroSkill
      - param Variable MalganisVariable
      - param Preset HeroSkillCarrionSwarm
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
    - Action SelectHeroSkill
      - param Variable MalganisVariable
      - param Preset HeroSkillCarrionSwarm
  - param Function DoNothing
    - Action DoNothing
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable MalganisVariable


## Form Building Groups
- enabled: True
- category: [2] Form Districts and Destroy Check
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Buildings1
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_Malganis_Sneak1_Buildings
      - param Function 
        - Condition GetBooleanAnd
          - param Function 
            - Condition OperatorCompareBoolean
              - param Function IsUnitType
                - Function IsUnitType
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
                  - param Preset UnitTypeStructure
              - param Preset OperatorEqualENE
              - param String true
          - param Function 
            - Condition OperatorComparePlayer
              - param Function GetOwningPlayer
                - Function GetOwningPlayer
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
              - param Preset OperatorEqualENE
              - param Preset Player11
- Action SetVariable
  - param Variable Buildings2
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_Malganis_Sneak2_Buildings
      - param Function 
        - Condition GetBooleanAnd
          - param Function 
            - Condition OperatorCompareBoolean
              - param Function IsUnitType
                - Function IsUnitType
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
                  - param Preset UnitTypeStructure
              - param Preset OperatorEqualENE
              - param String true
          - param Function 
            - Condition OperatorComparePlayer
              - param Function GetOwningPlayer
                - Function GetOwningPlayer
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
              - param Preset OperatorEqualENE
              - param Preset Player11
- Action SetVariable
  - param Variable Buildings3
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_Malganis_Sneak3_Buildings
      - param Function 
        - Condition GetBooleanAnd
          - param Function 
            - Condition OperatorCompareBoolean
              - param Function IsUnitType
                - Function IsUnitType
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
                  - param Preset UnitTypeStructure
              - param Preset OperatorEqualENE
              - param String true
          - param Function 
            - Condition OperatorComparePlayer
              - param Function GetOwningPlayer
                - Function GetOwningPlayer
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
              - param Preset OperatorEqualENE
              - param Preset Player11
- Action SetVariable
  - param Variable Buildings4
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_Malganis_Sneak4_Buildings
      - param Function 
        - Condition GetBooleanAnd
          - param Function 
            - Condition OperatorCompareBoolean
              - param Function IsUnitType
                - Function IsUnitType
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
                  - param Preset UnitTypeStructure
              - param Preset OperatorEqualENE
              - param String true
          - param Function 
            - Condition OperatorComparePlayer
              - param Function GetOwningPlayer
                - Function GetOwningPlayer
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
              - param Preset OperatorEqualENE
              - param Preset Player11
- Action SetVariable
  - param Variable Buildings5
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_Malganis_Sneak5_Buildings
      - param Function 
        - Condition GetBooleanAnd
          - param Function 
            - Condition OperatorCompareBoolean
              - param Function IsUnitType
                - Function IsUnitType
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
                  - param Preset UnitTypeStructure
              - param Preset OperatorEqualENE
              - param String true
          - param Function 
            - Condition OperatorComparePlayer
              - param Function GetOwningPlayer
                - Function GetOwningPlayer
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
              - param Preset OperatorEqualENE
              - param Preset Player11


## Building Destroyed Remove From Group1
- enabled: True
- category: [2] Form Districts and Destroy Check
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
      - param Variable Buildings1
  - param Preset OperatorEqualENE
  - param String true
- Action PlaySoundBJ
  - param Variable gg_snd_CityBuildingDeath1
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable Buildings1
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable Buildings1
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action SetVariable
      - param Variable RegionsArray
        - subscript String 1
      - param Variable gg_rct_NULL
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Malganis_Reacquires_Nearest_Building
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player10
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player11
  - param Preset PlayerUnitEventDeath


## Building Destroyed Remove From Group2
- enabled: True
- category: [2] Form Districts and Destroy Check
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player10
  - param Preset PlayerUnitEventDeath
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable Buildings2
  - param Preset OperatorEqualENE
  - param String true
- Action PlaySoundBJ
  - param Variable gg_snd_CityBuildingDeath1
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable Buildings2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable Buildings2
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action SetVariable
      - param Variable RegionsArray
        - subscript String 2
      - param Variable gg_rct_NULL
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Malganis_Reacquires_Nearest_Building
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player11
  - param Preset PlayerUnitEventDeath


## Building Destroyed Remove From Group3
- enabled: True
- category: [2] Form Districts and Destroy Check
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player10
  - param Preset PlayerUnitEventDeath
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable Buildings3
  - param Preset OperatorEqualENE
  - param String true
- Action PlaySoundBJ
  - param Variable gg_snd_CityBuildingDeath1
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable Buildings3
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable Buildings3
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action SetVariable
      - param Variable RegionsArray
        - subscript String 3
      - param Variable gg_rct_NULL
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Malganis_Reacquires_Nearest_Building
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player11
  - param Preset PlayerUnitEventDeath


## Building Destroyed Remove From Group4
- enabled: True
- category: [2] Form Districts and Destroy Check
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player10
  - param Preset PlayerUnitEventDeath
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable Buildings4
  - param Preset OperatorEqualENE
  - param String true
- Action PlaySoundBJ
  - param Variable gg_snd_CityBuildingDeath1
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable Buildings4
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable Buildings4
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action SetVariable
      - param Variable RegionsArray
        - subscript String 4
      - param Variable gg_rct_NULL
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Malganis_Reacquires_Nearest_Building
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player11
  - param Preset PlayerUnitEventDeath


## Building Destroyed Remove From Group5
- enabled: True
- category: [2] Form Districts and Destroy Check
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player10
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player11
  - param Preset PlayerUnitEventDeath
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable Buildings5
  - param Preset OperatorEqualENE
  - param String true
- Action PlaySoundBJ
  - param Variable gg_snd_CityBuildingDeath1
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable Buildings5
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable Buildings5
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action SetVariable
      - param Variable RegionsArray
        - subscript String 5
      - param Variable gg_rct_NULL
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Malganis_Reacquires_Nearest_Building


## Initialize Region Array
- enabled: True
- category: [4] Malganis Chooses a Village
- starts off: False
- is custom text: False
- run on map init: False
```description
RegionBucket is initialized to 1 by the map.
```
### Functions
- Action SetVariable
  - param Variable RegionsArray
    - subscript String 1
  - param Variable gg_rct_Malganis_Sneak1
- Action SetVariable
  - param Variable RegionsArray
    - subscript String 2
  - param Variable gg_rct_Malganis_Sneak2
- Action SetVariable
  - param Variable RegionsArray
    - subscript String 3
  - param Variable gg_rct_Malganis_Sneak3
- Action SetVariable
  - param Variable RegionsArray
    - subscript String 4
  - param Variable gg_rct_Malganis_Sneak4
- Action SetVariable
  - param Variable RegionsArray
    - subscript String 5
  - param Variable gg_rct_Malganis_Sneak5
- Action SetVariable
  - param Variable RegionLength
  - param String 5
- Action SetVariable
  - param Variable RegionPicked
  - param Variable RegionsArray
    - subscript Variable RegionBucket


## Choose Buildings
- enabled: True
- category: [4] Malganis Chooses a Village
- starts off: False
- is custom text: False
- run on map init: False
```description
RegionPicked is the actual region that Malganis chooses to go to when he has created his Death Squad.

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_Create_Target_Array
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable TargetArrayLength
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Choose_Default_Region
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Choose_Random_Region


## Choose Default Region
- enabled: True
- category: [4] Malganis Chooses a Village
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable BuildingsGone
  - param String true
- Action SetVariable
  - param Variable RegionBucket
  - param String 5
- Action SetVariable
  - param Variable RegionPicked
  - param Variable gg_rct_Malganis_Sneak5


## Choose Random Region
- enabled: True
- category: [4] Malganis Chooses a Village
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RegionBucket
  - param Variable TargetArray
    - subscript Function GetRandomInt
      - Function GetRandomInt
        - param String 1
        - param Variable TargetArrayLength
- Action SetVariable
  - param Variable RegionPicked
  - param Variable RegionsArray
    - subscript Variable RegionBucket


## Create Target Array
- enabled: True
- category: [4] Malganis Chooses a Village
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable TargetArrayLength
  - param String 0
- Action ForLoopA
  - param String 1
  - param String 5
  - param Function DoNothing
    - Action TriggerExecute
      - param Variable gg_trg_Target_Array_Loop


## Target Array Loop
- enabled: True
- category: [4] Malganis Chooses a Village
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareReal
      - param Function GetRectCenterX
        - Function GetRectCenterX
          - param Variable gg_rct_NULL
      - param Preset OperatorNotEqual
      - param Function GetRectCenterX
        - Function GetRectCenterX
          - param Variable RegionsArray
            - subscript Function GetForLoopIndexA
              - Function GetForLoopIndexA
  - param Function DoNothing
    - Action TriggerExecute
      - param Variable gg_trg_Add_To_Target_Array
  - param Function DoNothing
    - Action DoNothing


## Add To Target Array
- enabled: True
- category: [4] Malganis Chooses a Village
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable TargetArrayLength
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable TargetArrayLength
      - param Preset OperatorAdd
      - param String 1
- Action SetVariable
  - param Variable TargetArray
    - subscript Variable TargetArrayLength
  - param Function GetForLoopIndexA
    - Function GetForLoopIndexA


## Malganis Countdown Timer Create
- enabled: True
- category: [23] Malganis Timer Stuff
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable MalganisVariable
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath
- Action CreateTimerDialogBJ
  - param Variable MalganisTimer
  - param String TRIGSTR_123
- Action SetVariable
  - param Variable MalganisCountdown
  - param Function GetLastCreatedTimerDialogBJ
    - Function GetLastCreatedTimerDialogBJ
- Action TimerDialogSetTitleColorBJ
  - param Variable MalganisCountdown
  - param String 100.00
  - param String 0.00
  - param String 100.00
  - param String 0.00


## Malganis Countdown Timer Counts
- enabled: True
- category: [23] Malganis Timer Stuff
- starts off: False
- is custom text: False
- run on map init: False
```description
Run by Malganis Death Squad 1,2,3.
```
### Functions
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action StartTimerBJ
      - param Variable MalganisTimer
      - param Preset PeriodicOptionOneTime
      - param String 90.00
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
      - param Variable MalganisTimer
      - param Preset PeriodicOptionOneTime
      - param String 180.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function DoNothing
    - Action StartTimerBJ
      - param Variable MalganisTimer
      - param Preset PeriodicOptionOneTime
      - param String 240.00
  - param Function DoNothing
    - Action DoNothing
- Action TimerDialogDisplayBJ
  - param Preset ShowHideShow
  - param Variable MalganisCountdown


## Malganis Countdown Timer Hits 0
- enabled: True
- category: [23] Malganis Timer Stuff
- starts off: False
- is custom text: False
- run on map init: False
```description
Runs when Timer expires (hopefully).
```
### Functions
- Action SetVariable
  - param Variable BootingPlayer
  - param String false
- Action CommandAI
  - param Preset Player06
  - param String 7
  - param String 0
- Action CommandAI
  - param Preset Player06
  - param String 6
  - param Function R2I
    - Function R2I
      - param Function GetLocationY
        - Function GetLocationY
          - param Function GetRectCenter
            - Function GetRectCenter
              - param Variable gg_rct_Malganis_Revive
- Action CommandAI
  - param Preset Player06
  - param String 5
  - param Function R2I
    - Function R2I
      - param Function GetLocationX
        - Function GetLocationX
          - param Function GetRectCenter
            - Function GetRectCenter
              - param Variable gg_rct_Malganis_Revive
- Action TriggerSleepAction
  - param String 1.00
- Action SetVariable
  - param Variable BootingPlayer
  - param String false
- Condition OperatorCompareBoolean
  - param Variable EndCinematicPlaying
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable MalganisTimer
- Action ReviveHeroLoc
  - param Variable MalganisVariable
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Revive
  - param Preset ShowHideShow
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable MalganisVariable
  - param String TRIGSTR_005
  - param Variable gg_snd_H06MalGanis41
  - param String TRIGSTR_006
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NextSquad
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action TriggerExecute
      - param Variable gg_trg_Create_Sqaud_1
  - param Function DoNothing
    - Action IfThenElse
      - param Function 
        - Condition OperatorCompareInteger
          - param Variable NextSquad
          - param Preset OperatorEqual
          - param String 2
      - param Function DoNothing
        - Action TriggerExecute
          - param Variable gg_trg_Create_Squad_2
      - param Function DoNothing
        - Action TriggerExecute
          - param Variable gg_trg_Create_Squad_3
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicPlaying
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Teleport_Malganis
  - param Function DoNothing
    - Action DoNothing
- Action TimerDialogDisplayBJ
  - param Preset ShowHideHide
  - param Variable MalganisCountdown


## Arthas Says Forgive Me
- enabled: True
- category: [27] Arthas Forgive Me
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomScriptCode
  - param String call status_check_location(22)
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Arthas_Says_Forgive_Me_Que
  - param Preset CheckingIgnoringChecking
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable ArthasVariable
- Condition OperatorCompareBoolean
  - param Variable EndCinematicPlaying
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Forgive_Me


## Arthas Says Forgive Me Que
- enabled: True
- category: [27] Arthas Forgive Me
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
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_058
  - param Variable gg_snd_H06Arthas30
  - param String TRIGSTR_099
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Initialize Buildings To Attack Array
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable BuildingsToAttackArray
    - subscript String 1
  - param Variable Buildings1
- Action SetVariable
  - param Variable BuildingsToAttackArray
    - subscript String 2
  - param Variable Buildings2
- Action SetVariable
  - param Variable BuildingsToAttackArray
    - subscript String 3
  - param Variable Buildings3
- Action SetVariable
  - param Variable BuildingsToAttackArray
    - subscript String 4
  - param Variable Buildings4
- Action SetVariable
  - param Variable BuildingsToAttackArray
    - subscript String 5
  - param Variable Buildings5


## Malganis Death Squad 1
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable MalganisVariable
- Condition OperatorCompareReal
  - param Variable ArthasDenials
  - param Preset OperatorLessEq
  - param String 20.00
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath
- Action CommentString
  - param String Malganis is dead, send his units after the player
- Action CommandAI
  - param Preset Player06
  - param String 4
  - param String 1
- Action GroupClear
  - param Variable MalganisDeathSquad
- Action SetVariable
  - param Variable NextSquad
  - param String 1
- Action TriggerExecute
  - param Variable gg_trg_Malganis_Countdown_Timer_Counts


## Create Sqaud 1
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Variable MalganisVariable
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
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
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganisSpawnDS
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing


## Malganis Death Squad 2
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable MalganisVariable
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath
- Condition OperatorCompareReal
  - param Variable ArthasDenials
  - param Preset OperatorGreaterEq
  - param String 21.00
- Condition OperatorCompareReal
  - param Variable ArthasDenials
  - param Preset OperatorLessEq
  - param String 50.00
- Action CommentString
  - param String Malganis is dead, send his units after the player
- Action CommandAI
  - param Preset Player06
  - param String 4
  - param String 1
- Action GroupClear
  - param Variable MalganisDeathSquad
- Action SetVariable
  - param Variable NextSquad
  - param String 2
- Action TriggerExecute
  - param Variable gg_trg_Malganis_Countdown_Timer_Counts


## Create Squad 2
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Variable MalganisVariable
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
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
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganisSpawnDS
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
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
      - param String unec
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganisSpawnDS
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing


## Malganis Death Squad 3
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable MalganisVariable
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath
- Condition OperatorCompareReal
  - param Variable ArthasDenials
  - param Preset OperatorGreaterEq
  - param String 51.00
- Action CommentString
  - param String Malganis is dead, send his units after the player
- Action CommandAI
  - param Preset Player06
  - param String 4
  - param String 1
- Action GroupClear
  - param Variable MalganisDeathSquad
- Action SetVariable
  - param Variable NextSquad
  - param String 3
- Action TriggerExecute
  - param Variable gg_trg_Malganis_Countdown_Timer_Counts


## Create Squad 3
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Variable MalganisVariable
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uabo
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MalganisSpawnDS
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable MalganisDeathSquad
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
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganisSpawnDS
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
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
      - param String unec
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganisSpawnDS
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
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
      - param String umtw
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganisSpawnDS
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
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
      - param String uabo
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganisSpawnDS
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing


## Add To Death Squad Denials at 21
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description
Also signals to AI to start Junkyard Dog behavior.
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable MalganisVariable
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLess
      - param String 4
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String ugho
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLessEq
      - param String 4
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLess
      - param String 4
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String ugho
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLessEq
      - param String 4
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLess
      - param String 4
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String ugho
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLessEq
      - param String 4
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLess
      - param String 4
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String ugho
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLessEq
      - param String 4
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String uabo
      - param Preset OperatorLess
      - param String 2
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String uabo
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String uabo
      - param Preset OperatorLessEq
      - param String 2
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String uabo
      - param Preset OperatorLess
      - param String 2
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String uabo
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String uabo
      - param Preset OperatorLessEq
      - param String 2
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
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
      - param String unec
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
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
      - param String unec
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Malganis_Booting_Player
- Event TriggerRegisterVariableEvent
  - param Variable ArthasDenials
  - param Preset LimitOpGreaterThanOrEqual
  - param String 21.00


## Add To Death Squad Denials at 51
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description
Also signals to AI to start Junkyard Dog behavior.
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable MalganisVariable
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLess
      - param String 5
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String ugho
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLessEq
      - param String 5
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLess
      - param String 5
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String ugho
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLessEq
      - param String 5
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLess
      - param String 5
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String ugho
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLessEq
      - param String 5
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLess
      - param String 5
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String ugho
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLessEq
      - param String 5
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLess
      - param String 5
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String ugho
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String ugho
      - param Preset OperatorLessEq
      - param String 5
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String uabo
      - param Preset OperatorLess
      - param String 3
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String uabo
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String uabo
      - param Preset OperatorLessEq
      - param String 3
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String uabo
      - param Preset OperatorLess
      - param String 3
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String uabo
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String uabo
      - param Preset OperatorLessEq
      - param String 3
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String uabo
      - param Preset OperatorLess
      - param String 3
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String uabo
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player06
              - param String uabo
      - param Preset OperatorLessEq
      - param String 3
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
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
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganisSpawnDS
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
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
      - param String unec
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
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
      - param String unec
      - param Preset Player06
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisVariable
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
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
      - param String umtw
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganisSpawnDS
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
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
      - param String uabo
      - param Preset Player06
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_MalganisSpawnDS
      - param String 0.00
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
    - Action GroupAddUnitSimple
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
      - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Malganis_Booting_Player
- Event TriggerRegisterVariableEvent
  - param Variable ArthasDenials
  - param Preset LimitOpGreaterThanOrEqual
  - param String 51.00


## Das Boot to Arthas
- enabled: True
- category: [5] When Malganis Attacks
- starts off: True
- is custom text: False
- run on map init: False
```description
When Arthas is ejected from the city, stop Junkyard Dog.
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable MalganisVariable
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetVariable
  - param Variable BootingPlayer
  - param String false
- Action SetVariable
  - param Variable TeleportFast
  - param String true
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Teleport_Malganis
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectMatching
        - Function GetUnitsInRectMatching
          - param Variable gg_rct_DasBoot1
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
                - Condition OperatorComparePlayer
                  - param Function GetOwningPlayer
                    - Function GetOwningPlayer
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param Variable ThePlayer
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectMatching
        - Function GetUnitsInRectMatching
          - param Variable gg_rct_DasBoot2
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
                - Condition OperatorComparePlayer
                  - param Function GetOwningPlayer
                    - Function GetOwningPlayer
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param Variable ThePlayer
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectMatching
        - Function GetUnitsInRectMatching
          - param Variable gg_rct_DasBoot3
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
                - Condition OperatorComparePlayer
                  - param Function GetOwningPlayer
                    - Function GetOwningPlayer
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param Variable ThePlayer
  - param Preset OperatorEqual
  - param String 0
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_DasBoot1
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_DasBoot2
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_DasBoot3
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## Das Boot Malganis Leaving City
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description
When Arthas is ejected from the city, stop Junkyard Dog.
```
### Functions
- Action SetVariable
  - param Variable BootingPlayer
  - param String false
- Action SetVariable
  - param Variable TeleportFast
  - param String true
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Teleport_Malganis
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable MalganisVariable
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_DasMalganisSTOP


## Malganis Reacquires Nearest Building
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable MalganisVariable
  - param Preset OperatorEqualENE
  - param String false
- Action TriggerSleepAction
  - param String 10.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicPlaying
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BootingPlayer
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
          - param Variable MalganisVariable
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareReal
      - param Function GetRectCenterX
        - Function GetRectCenterX
          - param Variable RegionsArray
            - subscript Variable RegionBucket
      - param Preset OperatorNotEqual
      - param Function GetRectCenterX
        - Function GetRectCenterX
          - param Variable gg_rct_NULL
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Malganis_Acquires_Nearest_Building
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Teleport_Malganis
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable MalganisTargetHouse


## Teleport Malganis
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable Teleporting
  - param Preset OperatorEqualENE
  - param String false
- Action SetVariable
  - param Variable Teleporting
  - param String true
- Action TriggerExecute
  - param Variable gg_trg_Choose_Buildings
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable TeleportFast
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TriggerSleepAction
      - param String 3.00
  - param Function DoNothing
    - Action TriggerSleepAction
      - param String 11.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicPlaying
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MassTeleportTarget
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable RegionPicked
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_MassTeleportTarget
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable RegionPicked
  - param String Abilities\Spells\Undead\DarkSummoning\DarkSummonTarget.mdl
- Action SetVariable
  - param Variable TeleportEffect
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicPlaying
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetVariable
  - param Variable Teleporting
  - param String false
- Action SetVariable
  - param Variable BootingPlayer
  - param String false
- Action SetVariable
  - param Variable MalganisCaptainX
  - param Function GetLocationX
    - Function GetLocationX
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable RegionPicked
- Action SetVariable
  - param Variable MalganisCaptainY
  - param Function GetLocationY
    - Function GetLocationY
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable RegionPicked
- Action CommandAI
  - param Preset Player06
  - param String 7
  - param String 0
- Action CommandAI
  - param Preset Player06
  - param String 6
  - param Function R2I
    - Function R2I
      - param Variable MalganisCaptainY
- Action CommandAI
  - param Preset Player06
  - param String 5
  - param Function R2I
    - Function R2I
      - param Variable MalganisCaptainX
- Action ForGroup
  - param Variable MalganisDeathSquad
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable RegionPicked
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BuildingsGone
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Malganis_Acquires_Nearest_Building
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Malganis_Booting_Zombies
- Action TriggerSleepAction
  - param String 0.20
- Action DestroyEffectBJ
  - param Variable TeleportEffect


## Malganis Acquires Nearest Building
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable BootingPlayer
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable MalganisVariable
  - param Preset OperatorEqualENE
  - param String false
- Action SetVariable
  - param Variable MalganisTargetHouse
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Variable BuildingsToAttackArray
        - subscript Variable RegionBucket
- Action SetVariable
  - param Variable MalganisTargetHouseX
  - param Function GetLocationX
    - Function GetLocationX
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisTargetHouse
- Action SetVariable
  - param Variable MalganisTargetHouseY
  - param Function GetLocationY
    - Function GetLocationY
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable MalganisTargetHouse
- Action SetUnitOwner
  - param Variable MalganisTargetHouse
  - param Preset Player10
  - param Preset ChangeColorFalse
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Malganis_Continuously_Attacks_Buildings


## Malganis Continuously Attacks Buildings
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: True
- run on map init: False
```description
This gets Malganis going to the next building. 
```
### Functions


## Malganis Booting Player
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## Malganis Booting Zombies
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description
This is used in the event that the player has destroyed all the buildings, but left zombies. Then Mal'Ganis should just go after zombies.
```
### Functions
- Action CommandAI
  - param Preset Player06
  - param String 9
  - param String 2


## May Send Commands
- enabled: True
- category: [5] When Malganis Attacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable MaySendCommands
  - param String true
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerMaySendCommands


## VillagerSummonedRemoveConversionMan
- enabled: True
- category: [29] Villagers Turn into Zombies
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetSummoningUnit
    - Function GetSummoningUnit
- Action SetUnitOwner
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Preset Player02
  - param Preset ChangeColorTrue
- Condition OperatorCompareUnit
  - param Function GetSummoningUnit
    - Function GetSummoningUnit
  - param Preset OperatorNotEqualENE
  - param Variable MalganisVariable
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String nzom
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player07
  - param Preset PlayerUnitEventSummoned


## Convert Villager
- enabled: True
- category: [29] Villagers Turn into Zombies
- starts off: False
- is custom text: True
- run on map init: False
```description
This trigger is implimented using script code so that we can have a real local variable to preserve the villager in question during a 2 second delay.
```
### Functions


## Malganis Gains Convert
- enabled: True
- category: [6] Malganis Turns Villagers Into Zombies
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable EndCinematicPlaying
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player08
  - param Preset PlayerUnitEventSummoned
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventSummoned
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player02
  - param Preset PlayerUnitEventSummoned
- Condition OperatorCompareUnit
  - param Function GetSummoningUnit
    - Function GetSummoningUnit
  - param Preset OperatorEqualENE
  - param Variable MalganisVariable
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String nzom
- Action SetVariable
  - param Variable MalganisConversions
  - param Function OperatorReal
    - Function OperatorReal
      - param Variable MalganisConversions
      - param Preset OperatorAdd
      - param String 1.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Leaderboard_Tracking


## Start AI
- enabled: True
- category: [15] Start Undead Army AI
- starts off: False
- is custom text: False
- run on map init: False
```description
Starts the AI, run by Initialization Phase.
AI is started in Arthas Gets Town
```
### Functions
- Action StartCampaignAI
  - param Preset Player03
  - param String h06_purple.ai


## Starting Cash
- enabled: True
- category: [15] Start Undead Army AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateGold
  - param String 10000
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateLumber
  - param String 10000


## Give Them Money
- enabled: True
- category: [15] Start Undead Army AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 5000
  - param Preset Player03
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player03
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThanOrEqual
  - param String 1000.00


## Give Them Lumber
- enabled: True
- category: [15] Start Undead Army AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 5000
  - param Preset Player03
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player03
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThanOrEqual
  - param String 1000.00


## Death Squad Deaths
- enabled: True
- category: [7] Death Squad Tracking
- starts off: False
- is custom text: False
- run on map init: False
```description
Stop Malganis Continuously Attacks trigger.
Signals AI to suicide on the player with its remaining units.
```
### Functions
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable MalganisVariable
- Action SetVariable
  - param Variable DeathsOfDeathSquad
  - param Function OperatorReal
    - Function OperatorReal
      - param Variable DeathsOfDeathSquad
      - param Preset OperatorAdd
      - param String 1.00
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath


## Deny 100 Villagers Victory
- enabled: True
- category: [13] Victory and Failure
- starts off: False
- is custom text: False
- run on map init: False
```description
Runs Victory Save Cache in "Game Cache."
```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Variable gg_trg_Convert_100_Villagers_Failure
- Action DisableTrigger
  - param Variable gg_trg_All_Buildings_Destroyed
- Action DisableTrigger
  - param Variable gg_trg_Malganis_Countdown_Timer_Hits_0
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_107
- Action CustomScriptCode
  - param String call status_check_location(0)
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 1.00
- Action TriggerExecute
  - param Variable gg_trg_Victory_Cinematic
- Event TriggerRegisterVariableEvent
  - param Variable ArthasDenials
  - param Preset LimitOpEqual
  - param String 100.00


## Convert 100 Villagers Failure
- enabled: True
- category: [13] Victory and Failure
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
  - param Variable EndCinematicPlaying
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Variable gg_trg_Deny_100_Villagers_Victory
- Action DestroyLeaderboardBJ
  - param Function PlayerGetLeaderboardBJ
    - Function PlayerGetLeaderboardBJ
      - param Variable ThePlayer
- Action TriggerExecute
  - param Variable gg_trg_Die_Fool
- Event TriggerRegisterVariableEvent
  - param Variable MalganisConversions
  - param Preset LimitOpEqual
  - param String 100.00


## Die Fool
- enabled: True
- category: [19] Failure Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action SetSpeechVolumeGroupsBJ
- Condition OperatorCompareBoolean
  - param Variable EndCinematicPlaying
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable MalganisVariable
  - param String TRIGSTR_093
  - param Variable gg_snd_H06MalGanis42
  - param String TRIGSTR_094
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action DisableTrigger
  - param Variable gg_trg_Das_Boot_Malganis_Leaving_City
- Action DisableTrigger
  - param Variable gg_trg_Das_Boot_to_Arthas
- Action CreateNUnitsAtLoc
  - param String 3
  - param String nC03
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ending_Waves
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 3
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ending_Waves
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 3
  - param String uske
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ending_Waves
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.20
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Ending_Waves
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Town
- Action CreateNUnitsAtLoc
  - param String 3
  - param String nC03
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ending_Waves2
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 3
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ending_Waves2
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 3
  - param String uske
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ending_Waves2
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.20
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Ending_Waves2
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Town
- Action CreateNUnitsAtLoc
  - param String 3
  - param String nC03
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ending_Waves3
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 3
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ending_Waves3
  - param String 0.00
- Action CreateNUnitsAtLoc
  - param String 3
  - param String uske
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ending_Waves3
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.20
- Action RemoveAllGuardPositions
  - param Preset Player06
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAttack
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Arthas_Town
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Ending_Waves3
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Town
- Action CommandAI
  - param Preset Player06
  - param String 4
  - param String 1
- Action WaitForSoundBJ
  - param Variable gg_snd_H06MalGanis42
  - param String 0
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 20.00
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop02
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop03
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop04
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop05
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop06
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop07
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop08
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_108
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
  - param Variable ThePlayer
  - param String TRIGSTR_236


## Victory Cinematic Skip
- enabled: True
- category: [20] End Victory Cinematic
- starts off: True
- is custom text: False
- run on map init: False
```description
Victory Save Cache enables the proper campaign levels and saves Arthas.
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable VictoryCinSkip
  - param String true
- Action DestroyTimerDialogBJ
  - param Variable MalganisCountdown
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action ConditionalTriggerExecute
  - param Variable gg_trg_VICTORY
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## Victory Cinematic
- enabled: True
- category: [20] End Victory Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
Victory Save Cache enables the proper campaign levels and saves Arthas.
```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action SetVariable
  - param Variable EndCinematicPlaying
  - param String true
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action DestroyTimerDialogBJ
  - param Variable MalganisCountdown
- Action DestroyLeaderboardBJ
  - param Function PlayerGetLeaderboardBJ
    - Function PlayerGetLeaderboardBJ
      - param Preset Player06
- Action DestroyLeaderboardBJ
  - param Function PlayerGetLeaderboardBJ
    - Function PlayerGetLeaderboardBJ
      - param Variable ThePlayer
- Action EnableTrigger
  - param Variable gg_trg_Victory_Cinematic_Skip
- Action SetSkyModel
  - param Preset SkyModelSky05
- Action DisableTrigger
  - param Variable gg_trg_Malganis_Countdown_Timer_Counts
- Action DisableTrigger
  - param Variable gg_trg_Teleport_Malganis
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Function GetEntireMapRect
        - Function GetEntireMapRect
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityInvulnerable
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetEntireMapRect
        - Function GetEntireMapRect
      - param Preset Player06
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetEntireMapRect
        - Function GetEntireMapRect
      - param Preset Player01
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetEntireMapRect
        - Function GetEntireMapRect
      - param Preset Player03
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetEntireMapRect
        - Function GetEntireMapRect
      - param Preset Player08
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ReviveHeroLoc
  - param Variable ArthasVariable
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_End_Victory_Arthas
  - param Preset ShowHideHide
- Action ReviveHeroLoc
  - param Variable MalganisVariable
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_End_Victory_Arthas
  - param Preset ShowHideHide
- Action RemoveGuardPosition
  - param Variable MalganisVariable
- Action SetUnitMoveSpeed
  - param Variable ArthasVariable
  - param String 300.00
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkVictory
- Action SetUnitMoveSpeed
  - param Variable gg_unit_Umal_0000
  - param String 250.00
- Action ShowUnitShow
  - param Variable ArthasVariable
- Action ShowUnitShow
  - param Variable MalganisVariable
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable ArthasVariable
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable MalganisVariable
- Action SetUnitPositionLoc
  - param Variable ArthasVariable
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_End_Victory_Arthas
- Action SetUnitPositionLoc
  - param Variable MalganisVariable
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_End_Victory_Malganis
- Action SetUnitFacingToFaceUnitTimed
  - param Variable ArthasVariable
  - param Variable MalganisVariable
  - param String 0.00
- Action SetUnitFacingToFaceUnitTimed
  - param Variable MalganisVariable
  - param Variable ArthasVariable
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End_Win_Cinematic_1
  - param Variable ThePlayer
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_085
  - param Variable gg_snd_H06Arthas43
  - param String TRIGSTR_086
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable MalganisVariable
  - param String TRIGSTR_087
  - param Variable gg_snd_H06MalGanis44
  - param String TRIGSTR_088
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
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
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable MalganisVariable
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_End_Victory_Malganis2
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.30
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 0.30
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.30
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End_Win_Cinematic_2
  - param Variable ThePlayer
  - param String 0.00
- Action IssuePointOrderLoc
  - param Variable ArthasVariable
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_End_Victory_Malganis
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 4.50
- Action WaitForSoundBJ
  - param Variable gg_snd_H06MalGanis44
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable MalganisVariable
  - param Variable ArthasVariable
  - param String 0.40
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End_Win_Cinematic_3
  - param Variable ThePlayer
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_H06MalGanis45
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable MalganisVariable
  - param String TRIGSTR_089
  - param Variable gg_snd_H06MalGanis45
  - param String TRIGSTR_090
  - param Preset AddSetToAdd
  - param String 2.00
  - param Preset WaitDontDont
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
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
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action AddSpecialEffectLocBJ
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable MalganisVariable
  - param String Abilities\Spells\Human\MassTeleport\MassTeleportCaster.mdl
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_DarkSummoningTarget1
  - param Variable MalganisVariable
- Action PlaySoundBJ
  - param Variable gg_snd_DarkSummoningTarget1
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MassTeleportTarget
  - param Variable MalganisVariable
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MassTeleportTarget
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MassTeleportTarget
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ShowUnitHide
  - param Variable MalganisVariable
- Action SetUnitPositionLoc
  - param Variable MalganisVariable
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Malganis_Revive
- Action TriggerSleepAction
  - param String 1.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DestroyEffectBJ
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action IssuePointOrderLoc
  - param Variable ArthasVariable
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_End_Victory_Malganis2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ArthasVariable
  - param String TRIGSTR_091
  - param Variable gg_snd_H06Arthas46
  - param String TRIGSTR_092
  - param Preset AddSetToSub
  - param String 1.50
  - param Preset WaitDontWait
- Action SetUnitAnimation
  - param Variable ArthasVariable
  - param String Stand Victory
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop02
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop03
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop04
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop05
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop06
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop07
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop08
- Action WaitForSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DisableTrigger
  - param Variable gg_trg_Victory_Cinematic_Skip
- Action ConditionalTriggerExecute
  - param Variable gg_trg_VICTORY


## All Buildings Destroyed
- enabled: True
- category: [21] Player Dies
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action DisableTrigger
  - param Variable gg_trg_Deny_100_Villagers_Victory
- Action DisableTrigger
  - param Variable gg_trg_Convert_100_Villagers_Failure
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeMissionFailed
  - param String TRIGSTR_237
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CustomDefeatBJ
  - param Variable ThePlayer
  - param String TRIGSTR_238
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player01
      - param Preset InclusionInclude
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## VICTORY
- enabled: True
- category: [26] VICTORY
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomScriptCode
  - param String call status_check_location(0)
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2.00
- Event TriggerRegisterPlayerEventVictory
  - param Preset Player01
- Action SetNextLevelBJ
  - param String Maps\Archipelago\Human07.w3x
- Action CustomVictoryBJ
  - param Variable ThePlayer
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse


## DEFEAT
- enabled: True
- category: [26] VICTORY
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Variable ThePlayer
  - param String TRIGSTR_235
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player01

