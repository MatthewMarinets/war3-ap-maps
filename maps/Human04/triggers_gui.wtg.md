version = TFT

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 22 | Archipelago | False |
| 0 | Initialization | False |
| 8 | StartAIHarrassment | False |
| 9 | HeroesLevelLimiter | False |
| 10 | ComputerResources | False |
| 21 | Hints | False |
| 6 | Level Data | False |
| 16 | IZZZZZZ CINEMATICS IZZZZZZI | False |
| 1 | CinematicOpening | False |
| 4 | CinematicGranary | False |
| 19 | CinematicEnding | False |
| 3 | IZZZZZZZZZZZZZZZZZZZZZZZI | False |
| 2 | Timmy | False |
| 11 | VillageScenes | False |
| 7 | Creeps | False |
| 12 | Cinematic Revival | False |
| 15 | Victory | False |
| 5 | Defeat | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| OpeningSkipped | boolean | . | false |
| Town01Group | group | . | . |
| PeonGroup01 | group | . | . |
| JainaDiesSkipped | boolean | . | . |
| GranaryCancelled | boolean | . | false |
| MedivhManForm | unit | . | . |
| Jaina | unit | . | . |
| Arthas | unit | . | . |
| QuestNecromancer | quest | . | . |
| QuestAndorhal | quest | . | . |
| ArthasDies | defeatcondition | . | . |
| JainaDies | defeatcondition | . | . |
| GolemsGroup | group | . | . |
| ExpansionTown | group | . | . |
| StartingNonHeroGroup | group | . | . |
| KelThuzad | unit | . | . |
| HauntedGoldMine | unit | . | . |
| Ghoul01Group | group | . | . |
| Ghoul02Group | group | . | . |
| PeasantFarm | unit | . | . |
| PeasantBarracks | unit | . | . |
| PeasantTownHall | unit | . | . |
| KelThuzadAttackGroup | group | . | . |
| MedivhRavenForm | unit | . | . |
| Townhall | unit | . | . |
| Farm | unit | . | . |
| Barracks | unit | . | . |
| Timmy | unit | . | . |
| MedivhCancelled | boolean | . | false |
| WaygateCancelled | boolean | . | . |
| ArthasDead | boolean | . | false |
| QuestAndorhalReq | questitem | . | . |
| QuestKelThuzadReq | questitem | . | . |
| EndingCancelled | boolean | . | false |
| EndCinematicMove | group | . | . |
| SelectionGroup | group | . | . |
| GoldHintTimer | timer | . | . |
| HeroDeadTimer | timer | . | . |
| GAMEOVER | boolean | . | false |
| ArthasPoint | location | . | . |
| CinematicRegionArthas | rect | . | RectNull |
| RevivalAltar | unit | . | UnitNull |
| JainaPoint | location | . | . |
| CinematicRegionJaina | rect | . | RectNull |
| GranaryEntranceGuy | unit | . | . |

# Triggers
## fileio
- enabled: True
- category: [22] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## map_config
- enabled: True
- category: [22] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## status
- enabled: True
- category: [22] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## heroes
- enabled: True
- category: [22] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## item_locations
- enabled: True
- category: [22] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## debug
- enabled: True
- category: [22] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## zoom
- enabled: True
- category: [22] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## irregulars
- enabled: True
- category: [22] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## Map Initialization
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description


```
### Functions
- Action SetCampaignMenuRaceBJ
  - param Preset CampaignIndexH
- Action CommentString
  - param String ************
- Action SetSkyModel
  - param Preset SkyModelSky01
- Action SetTerrainFogExBJ
  - param String 0
  - param String 1000
  - param String 5000.00
  - param String 0
  - param String 20.00
  - param String 30.00
  - param String 40.00
- Action SetTimeOfDay
  - param String 12.00
- Action CommentString
  - param String Difficulty
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Easy
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Normal
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Hard
- Action CommentString
  - param String ***********
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Load_Heroes
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening01
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupCreepsSleeping
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupNonHeroGroup
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupPlayer
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupHeroes
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupPeasants
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupKelThuzad
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupAlliances
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupQuests
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AcolyteGroup
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupGolemsGroup
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupComputerResources
- Action ConditionalTriggerExecute
  - param Variable gg_trg_PeonGroup01
- Action ConditionalTriggerExecute
  - param Variable gg_trg_ForestTroll
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupNeutral
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupScoreScreen
- Action CommentString
  - param String NO AURAS FOR ENEMIES
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset Player06
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset Player05
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNA
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
- Action SetPlayerHandicapBJ
  - param Preset Player06
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player05
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset PlayerNA
  - param Preset RealHandicapEasy
- Action CommentString
  - param String From Normal
- Action RemoveUnit
  - param Variable gg_unit_uabo_0065
- Action RemoveUnit
  - param Variable gg_unit_uabo_0071
- Action RemoveUnit
  - param Variable gg_unit_ugho_0074
- Action RemoveUnit
  - param Variable gg_unit_ugho_0086
- Action RemoveUnit
  - param Variable gg_unit_ugho_0082
- Action RemoveUnit
  - param Variable gg_unit_ugho_0083
- Action RemoveUnit
  - param Variable gg_unit_usep_0087
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
  - param Variable gg_unit_uabo_0065
- Action RemoveUnit
  - param Variable gg_unit_uabo_0071
- Action RemoveUnit
  - param Variable gg_unit_ugho_0074
- Action RemoveUnit
  - param Variable gg_unit_ugho_0086
- Action RemoveUnit
  - param Variable gg_unit_ugho_0082
- Action RemoveUnit
  - param Variable gg_unit_ugho_0083
- Action RemoveUnit
  - param Variable gg_unit_usep_0087
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


## StartCampaignAI
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description
Run from Opening07 and OpeningCancelled

```
### Functions
- Action StartCampaignAI
  - param Preset Player06
  - param String h04_green.ai
- Action CommandAI
  - param Preset Player06
  - param String 0
  - param String 0
- Action CommentString
  - param String ***********************
- Action RemoveGuardPosition
  - param Variable gg_unit_ugho_0047
- Action RemoveGuardPosition
  - param Variable gg_unit_ugho_0043


## SetupComputerResources
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerState
  - param Preset Player06
  - param Preset PlayerStateGold
  - param String 1000
- Action SetPlayerState
  - param Preset Player06
  - param Preset PlayerStateLumber
  - param String 1000


## SetupCreepsSleeping
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_PatrolForestTroll01Start
  - param Function DoNothing
    - Action UnitSetCanSleepBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset SleepWakeOptionWake
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_PatrolForestTroll02Start
  - param Function DoNothing
    - Action UnitSetCanSleepBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset SleepWakeOptionWake
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_GnollRun
  - param Function DoNothing
    - Action UnitSetCanSleepBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset SleepWakeOptionWake


## SetupNonHeroGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Variable gg_unit_hfoo_0016
  - param Variable StartingNonHeroGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_hfoo_0017
  - param Variable StartingNonHeroGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_hfoo_0018
  - param Variable StartingNonHeroGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_hmpr_0070
  - param Variable StartingNonHeroGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_hmtm_0055
  - param Variable StartingNonHeroGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_hpea_0020
  - param Variable StartingNonHeroGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_hpea_0021
  - param Variable StartingNonHeroGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_hpea_0023
  - param Variable StartingNonHeroGroup


## SetupPlayer
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateGold
  - param String 1400
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateLumber
  - param String 500


## SetupHeroes
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action EnableTrigger
  - param Variable gg_trg_ArthasLevelUp
- Action EnableTrigger
  - param Variable gg_trg_JainaLevelup
- Action CommentString
  - param String ****************
- Action SetPlayerHandicapXPBJ
  - param Preset Player01
  - param String 75.00


## SetupPeasants
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable PeasantFarm
  - param Variable gg_unit_hpea_0020
- Action SetVariable
  - param Variable PeasantTownHall
  - param Variable gg_unit_hpea_0023
- Action SetVariable
  - param Variable PeasantBarracks
  - param Variable gg_unit_hpea_0021


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
  - param Variable gg_unit_uktn_0133
- Action RemoveGuardPosition
  - param Variable gg_unit_uktn_0133


## SetupQuests
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Quest Investigate Andorhal
- Action CreateQuestBJ
  - param Preset QuestTypeReqUndiscovered
  - param String TRIGSTR_054
  - param String TRIGSTR_055
  - param String ReplaceableTextures\CommandButtons\BTNJaina.tga
- Action SetVariable
  - param Variable QuestAndorhal
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestAndorhal
  - param String TRIGSTR_041
- Action SetVariable
  - param Variable QuestAndorhalReq
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CommentString
  - param String Quest Confront Kel'Thuzad
- Action CreateQuestBJ
  - param Preset QuestTypeReqUndiscovered
  - param String TRIGSTR_056
  - param String TRIGSTR_057
  - param String ReplaceableTextures\CommandButtons\BTNNecromancer.tga
- Action SetVariable
  - param Variable QuestNecromancer
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestNecromancer
  - param String TRIGSTR_044
- Action SetVariable
  - param Variable QuestKelThuzadReq
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ


## AcolyteGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Variable gg_unit_uaco_0011
  - param Variable Town01Group
- Action GroupAddUnitSimple
  - param Variable gg_unit_uaco_0006
  - param Variable Town01Group
- Action GroupAddUnitSimple
  - param Variable gg_unit_uaco_0005
  - param Variable Town01Group


## PeonGroup01
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Variable gg_unit_hpea_0020
  - param Variable PeonGroup01
- Action GroupAddUnitSimple
  - param Variable gg_unit_hpea_0021
  - param Variable PeonGroup01
- Action GroupAddUnitSimple
  - param Variable gg_unit_hpea_0023
  - param Variable PeonGroup01


## SetupGolemsGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable GolemsGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_GolemArea


## SetupAlliances
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
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action CommentString
  - param String ***********************
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Preset Player05
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action CommentString
  - param String ***********************
- Action SetPlayerAllianceStateBJ
  - param Preset Player07
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player07
  - param Preset AllianceSettingNeutral
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
  - param Preset PlayerNA
  - param Preset Player03
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset Player03
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player03
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player05
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action CommentString
  - param String ***********************
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player05
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action SetPlayerColorBJ
  - param Preset Player05
  - param Preset Color06
  - param Preset PlayerChangeColorChange


## SetupTimmy
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions


## SetupNeutral
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerColorBJ
  - param Preset Player07
  - param Preset Color01
  - param Preset PlayerChangeColorChange
- Action KillDestructable
  - param Variable gg_dest_LTg1_2150


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
  - param Preset Player00
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player05
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player07


## AIHarrassment
- enabled: True
- category: [8] StartAIHarrassment
- starts off: False
- is custom text: False
- run on map init: False
```description
Not currently run
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CommandAI
  - param Preset Player06
  - param String 0
  - param String 0


## ArthasLevelUp
- enabled: True
- category: [9] HeroesLevelLimiter
- starts off: True
- is custom text: False
- run on map init: False
```description
Turned on from 'SetupArthas'
```
### Functions
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Arthas
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventHero_Level


## JainaLevelup
- enabled: True
- category: [9] HeroesLevelLimiter
- starts off: True
- is custom text: False
- run on map init: False
```description
Turned on from 'SetupJaina'
```
### Functions
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable Jaina
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Jaina
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventHero_Level


## GreenGold
- enabled: True
- category: [10] ComputerResources
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
  - param String 1000.00


## GreenLumber
- enabled: True
- category: [10] ComputerResources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 500
  - param Preset Player06
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player06
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThanOrEqual
  - param String 500.00


## GoldmineHint
- enabled: True
- category: [21] Hints
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
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable GoldHintTimer
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_GoldmineHint_Safeties
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Variable gg_rct_RevealerGoldmine
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_011
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RevealerGoldmine
  - param String 10.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RevealerGoldmine


## MilitiaHint
- enabled: True
- category: [21] Hints
- starts off: False
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
  - param String ugho
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_TownArea
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 2
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_159


## GoldmineHint Safeties
- enabled: True
- category: [21] Hints
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
  - param Variable gg_trg_GoldmineHint
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_ExtraGoldMine_Safety1
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_ExtraGoldMine_Safety2


## PowerBuildingHint
- enabled: True
- category: [21] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description
Run from 'FarmDone'
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
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_012


## Merchant Hint
- enabled: True
- category: [21] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_154
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Goblin_Merchant_HINT


## Hero Died
- enabled: True
- category: [21] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetDyingUnit
        - Function GetDyingUnit
      - param Preset UnitTypeHero
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetDyingUnit
        - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action StartTimerBJ
  - param Variable HeroDeadTimer
  - param Preset PeriodicOptionOneTime
  - param String 5.00
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## Hero Revive Hint
- enabled: True
- category: [21] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player01
              - param String halt
      - param Preset OperatorGreater
      - param String 0
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Hero_Revive_Hint_With_Altar
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Hero_Revive_Hint_No_Altar
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable HeroDeadTimer


## Hero Revive Hint With Altar
- enabled: True
- category: [21] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeAlwaysHint
  - param String TRIGSTR_161
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Preset Player01
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
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Preset Force01
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Function GetEnumUnit
            - Function GetEnumUnit
      - param String 7.00
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Preset Player01
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
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Preset Player01
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Function GetEnumUnit
            - Function GetEnumUnit


## Hero Revive Hint No Altar
- enabled: True
- category: [21] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeAlwaysHint
  - param String TRIGSTR_163


## Load Heroes
- enabled: True
- category: [6] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description
Run from Map Init
```
### Functions
- Action InitGameCacheBJ
  - param String Campaigns.w3v
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Load_Arthas
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Load_Jaina


## Load Arthas
- enabled: True
- category: [6] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Load the hero data Arthas
- Action RestoreUnitLocFacingAngleBJ
  - param String Arthas
  - param String Human04
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasStart
  - param String 300.00
- Action SetVariable
  - param Variable Arthas
  - param Function GetLastRestoredUnitBJ
    - Function GetLastRestoredUnitBJ
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
- Action CreateNUnitsAtLoc
  - param String 1
  - param String Hart
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasStart
  - param String 300.00
- Action SetVariable
  - param Variable Arthas
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetHeroLevel
  - param Variable Arthas
  - param String 4
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillHolyBolt
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillHolyBolt
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDevotionAura
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDivineShield


## Load Jaina
- enabled: True
- category: [6] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Load the hero data Jaina
- Action RestoreUnitLocFacingAngleBJ
  - param String Jaina
  - param String Human04
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaStart
  - param String 300.00
- Action SetVariable
  - param Variable Jaina
  - param Function GetLastRestoredUnitBJ
    - Function GetLastRestoredUnitBJ
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
- Action CreateNUnitsAtLoc
  - param String 1
  - param String Hjai
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaStart
  - param String 300.00
- Action SetVariable
  - param Variable Jaina
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetHeroLevel
  - param Variable Jaina
  - param String 2
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Jaina
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable Jaina
  - param Preset HeroSkillBrillianceAura


## Next Level Prep
- enabled: True
- category: [6] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Store hero data for the next level(s)
- Action StoreUnitBJ
  - param Variable Arthas
  - param String Arthas
  - param String Human05
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action StoreUnitBJ
  - param Variable Jaina
  - param String Jaina
  - param String Human05
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SaveGameCacheBJ
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action CommentString
  - param String Enable the next level in the glue screens
- Action SetMissionAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset MissionIndexH05


## Next Level Run
- enabled: True
- category: [6] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Run the next level
- Action SetNextLevelBJ
  - param String Maps\Campaign\Human05.w3m
- Action CustomVictoryBJ
  - param Preset Player01
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse


## Victory Cheat
- enabled: True
- category: [6] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Prep
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run
- Event TriggerRegisterPlayerEventVictory
  - param Preset Player01


## DefeatCheat
- enabled: True
- category: [6] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Preset Player01
  - param String TRIGSTR_136
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player01


## OpeningCancelled
- enabled: True
- category: [1] CinematicOpening
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable OpeningSkipped
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable OpeningSkipped
  - param String true
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontDont
- Action EndThematicMusicBJ
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
- Action KillUnit
  - param Variable HauntedGoldMine
- Action RemoveUnit
  - param Variable gg_unit_uaco_0011
- Action RemoveUnit
  - param Variable gg_unit_uaco_0006
- Action RemoveUnit
  - param Variable gg_unit_uaco_0005
- Action RemoveUnit
  - param Variable Farm
- Action RemoveUnit
  - param Variable Townhall
- Action RemoveUnit
  - param Variable Barracks
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0016
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footmen01Attack
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0017
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman02Attack
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0018
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman03Attack
- Action SetUnitPositionLoc
  - param Variable gg_unit_hmpr_0070
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_PriestAttack
- Action SetUnitPositionLoc
  - param Variable gg_unit_hmtm_0055
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MortarAttack
- Action SetUnitAcquireRangeBJ
  - param Variable Jaina
  - param Function GetUnitDefaultAcquireRange
    - Function GetUnitDefaultAcquireRange
      - param Variable Jaina
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasMove
- Action SetUnitPositionLoc
  - param Variable Jaina
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaMove
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AcolyteExit
  - param String 0
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0023
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaStart
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0020
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaStart
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0021
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaStart
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0020
  - param Preset UnitOrderStop
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0021
  - param Preset UnitOrderStop
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0023
  - param Preset UnitOrderStop
- Action SetSkyModel
  - param Preset SkyModelNone
- Action ResetTerrainFogBJ
- Action TriggerSleepAction
  - param String 0.05
- Action ConditionalTriggerExecute
  - param Variable gg_trg_StartCampaignAI
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateGold
  - param String 570
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateLumber
  - param String 250
- Action CreateNUnitsAtLoc
  - param String 1
  - param String htow
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BuildTownHall
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hhou
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BuildFarm
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hbar
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BuildBarracks
  - param Preset RealUnitFacing
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0023
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BuildTownHall
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0020
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BuildFarm
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0021
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BuildBarracks
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0020
  - param Preset UnitOrderStop
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0021
  - param Preset UnitOrderStop
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0023
  - param Preset UnitOrderStop
- Action IssueTargetDestructableOrder
  - param Variable gg_unit_hpea_0023
  - param Preset UnitOrderHarvestDestructible
  - param Variable gg_dest_LTlt_2058
- Action IssueTargetOrder
  - param Variable gg_unit_hpea_0021
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0008
- Action IssueTargetOrder
  - param Variable gg_unit_hpea_0020
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0008
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasAttack
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningCamReset
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectUnitSingle
  - param Variable Arthas
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action EnableTrigger
  - param Variable gg_trg_TownIsDestroyed
- Action TriggerSleepAction
  - param String 5.00
- Action StartTimerBJ
  - param Variable GoldHintTimer
  - param Preset PeriodicOptionOneTime
  - param String 60.00
- Action QuestSetDiscoveredBJ
  - param Variable QuestAndorhal
  - param Preset DiscoveredOptionDiscovered
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_010
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## Opening01
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description
Gold given to player 7 no necros can build a haunted mine.
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningVisibility01
  - param String 1800.00
- Action CommentString
  - param String ***********************
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
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action SetUnitAcquireRangeBJ
  - param Variable Jaina
  - param String 100.00
- Action CommentString
  - param String ***********************
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Opening01
  - param Preset Player01
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable OpeningSkipped
  - param Preset OperatorEqualENE
  - param String false
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
  - param Preset MusicThemeDarkAgents
- Action SetMapMusicIndexedBJ
  - param Preset MusicFileMusic
  - param String 0
- Action CommentString
  - param String ***********************
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening02


## Opening02
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CommentString
  - param String Cinematic Can Now Be Skipped
- Action EnableTrigger
  - param Variable gg_trg_OpeningCancelled
- Action CommentString
  - param String ***********************
- Condition OperatorCompareBoolean
  - param Variable OpeningSkipped
  - param Preset OperatorEqualENE
  - param String false
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningArthas
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningJaina
- Action TriggerSleepAction
  - param String 0.75
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0016
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningFootman01
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0017
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningFootman02
- Action IssuePointOrderLoc
  - param Variable gg_unit_hmtm_0055
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningFootman03
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0018
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningFootman04
- Action IssuePointOrderLoc
  - param Variable gg_unit_hmpr_0070
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningPriest01
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssueBuildOrderByIdLocBJ
  - param Variable gg_unit_uaco_0005
  - param String ugol
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_ngol_0008
- Action IssuePointOrderLoc
  - param Variable gg_unit_uaco_0011
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte02Post
- Action IssuePointOrderLoc
  - param Variable gg_unit_uaco_0006
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte01Post
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening03


## Opening03
- enabled: True
- category: [1] CinematicOpening
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
  - param Variable OpeningSkipped
  - param Preset OperatorEqualENE
  - param String false
- Action TriggerSleepAction
  - param String 1.25
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Opening02
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Opening03
  - param Preset Player01
  - param String 11.40
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
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
  - param String TRIGSTR_013
  - param Variable gg_snd_H04Jaina01
  - param String TRIGSTR_014
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 2.31
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_uaco_0005
  - param Variable HauntedGoldMine
  - param String 0
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_uaco_0006
  - param Variable HauntedGoldMine
  - param String 0
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_uaco_0011
  - param Variable HauntedGoldMine
  - param String 0
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H04Jaina01
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0016
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningFootmanReposition
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_037
  - param Variable gg_snd_H04Arthas02
  - param String TRIGSTR_038
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasAttack
- Action TriggerSleepAction
  - param String 0.61
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H04Arthas02
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening04


## Opening04
- enabled: True
- category: [1] CinematicOpening
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
  - param Variable OpeningSkipped
  - param Preset OperatorEqualENE
  - param String false
- Action TriggerSleepAction
  - param String 0.40
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaAttack
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0016
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footmen01Attack
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0017
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman02Attack
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0018
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman03Attack
- Action IssuePointOrderLoc
  - param Variable gg_unit_hmtm_0055
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MortarAttack
- Action IssuePointOrderLoc
  - param Variable gg_unit_hmpr_0070
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_PriestAttack
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Opening04
  - param Preset Player01
  - param String 0.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_PeasantMoving
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_uaco_0006
  - param String TRIGSTR_021
  - param Variable gg_snd_H04Acolyte03
  - param String TRIGSTR_022
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action KillUnit
  - param Variable HauntedGoldMine
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AcolytesRun
- Action SetUnitInvulnerable
  - param Variable gg_unit_uaco_0011
  - param Preset InvulnerabilityVulnerable
- Action IssueTargetOrder
  - param Variable Arthas
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_uaco_0011
- Action TriggerSleepAction
  - param String 5.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H04Acolyte03
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening05


## Opening05
- enabled: True
- category: [1] CinematicOpening
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
  - param Variable OpeningSkipped
  - param Preset OperatorEqualENE
  - param String false
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_002
  - param Variable gg_snd_H04Arthas04
  - param String TRIGSTR_003
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasMove
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Opening05
  - param Preset Player01
  - param String 5.00
- Action TriggerSleepAction
  - param String 0.70
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action FogModifierStop
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaMove
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasAttack
  - param String 0.15
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H04Arthas04
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
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
  - param String TRIGSTR_005
  - param Variable gg_snd_H04Jaina05
  - param String TRIGSTR_007
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceLocTimed
  - param Variable Jaina
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningVisibility01
  - param String 0.15
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H04Jaina05
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening06


## Opening06
- enabled: True
- category: [1] CinematicOpening
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
  - param Variable OpeningSkipped
  - param Preset OperatorEqualENE
  - param String false
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_OpeningTownHallShot
  - param Preset Player01
  - param String 0
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_OpeningFarmShot
  - param Preset Player01
  - param String 0
- Action TriggerSleepAction
  - param String 4.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_OpeningBarracksShot
  - param Preset Player01
  - param String 0
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable OpeningSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action EndThematicMusicBJ
- Action CommentString
  - param String ***********************
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_OpeningCancelled
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action SetSkyModel
  - param Preset SkyModelNone
- Action ResetTerrainFogBJ
- Action SetUnitAcquireRangeBJ
  - param Variable Jaina
  - param Function GetUnitDefaultAcquireRange
    - Function GetUnitDefaultAcquireRange
      - param Variable Jaina
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 2.00
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectUnitSingle
  - param Variable Arthas
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningCamReset
  - param String 0
- Action ForGroup
  - param Variable Town01Group
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_AcolyteExit
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitType
            - Function IsUnitType
              - param Function GetEnumUnit
                - Function GetEnumUnit
              - param Preset UnitTypeMeleeAttacker
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_StartCampaignAI
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action EnableTrigger
  - param Variable gg_trg_TownIsDestroyed
- Action QuestSetDiscoveredBJ
  - param Variable QuestAndorhal
  - param Preset DiscoveredOptionDiscovered
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_008
- Action StartTimerBJ
  - param Variable GoldHintTimer
  - param Preset PeriodicOptionOneTime
  - param String 60.00
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action SetVariable
  - param Variable OpeningSkipped
  - param String true


## PeasantMoving
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable PeasantBarracks
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BuildBarracks
- Action IssuePointOrderLoc
  - param Variable PeasantFarm
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BuildFarm
- Action IssuePointOrderLoc
  - param Variable PeasantTownHall
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BuildTownHall


## PeasantFarm
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssueBuildOrderByIdLocBJ
  - param Variable PeasantFarm
  - param String hhou
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BuildFarm
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable PeasantFarm
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_BuildFarm


## PeasantBarracks
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssueBuildOrderByIdLocBJ
  - param Variable PeasantBarracks
  - param String hbar
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BuildBarracks
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable PeasantBarracks
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_BuildBarracks


## PeasantTownhall
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssueBuildOrderByIdLocBJ
  - param Variable PeasantTownHall
  - param String htow
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BuildTownHall
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable PeasantTownHall
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_BuildTownHall


## Footman01Facing
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.20
- Action SetUnitFacingToFaceLocTimed
  - param Variable gg_unit_hfoo_0016
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Footman01Facing
  - param String 0.20
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hfoo_0016
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Footmen01Attack


## PriestFacing
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.20
- Action SetUnitFacingToFaceLocTimed
  - param Variable gg_unit_hmpr_0070
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_PriestFacing
  - param String 0.20
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hmpr_0070
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_PriestAttack


## AcolytesRun
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitInvulnerable
  - param Variable gg_unit_uaco_0005
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_uaco_0006
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_uaco_0011
  - param Preset InvulnerabilityInvulnerable
- Action IssuePointOrderLoc
  - param Variable gg_unit_uaco_0005
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AcolyteExit
- Action IssuePointOrderLoc
  - param Variable gg_unit_uaco_0006
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AcolyteExit
- Action IssuePointOrderLoc
  - param Variable gg_unit_uaco_0011
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AcolyteExit
- Action TriggerSleepAction
  - param String 2


## AcolyteDeath
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.20
- Action KillUnit
  - param Function GetAttackedUnitBJ
    - Function GetAttackedUnitBJ
- Condition OperatorCompareUnit
  - param Function GetAttackedUnitBJ
    - Function GetAttackedUnitBJ
  - param Preset OperatorEqualENE
  - param Variable gg_unit_uaco_0011
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventAttacked


## ConstructingHauntedMine
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable HauntedGoldMine
  - param Function GetConstructingStructure
    - Function GetConstructingStructure
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventConstruct_Start


## ConstructingTownhall
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param String htow
- Action SetVariable
  - param Variable Townhall
  - param Function GetConstructingStructure
    - Function GetConstructingStructure
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventConstruct_Start


## ConstructingFarm
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param String hhou
- Action SetVariable
  - param Variable Farm
  - param Function GetConstructingStructure
    - Function GetConstructingStructure
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventConstruct_Start


## ConstructingBarracks
- enabled: True
- category: [1] CinematicOpening
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param String hbar
- Action SetVariable
  - param Variable Barracks
  - param Function GetConstructingStructure
    - Function GetConstructingStructure
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventConstruct_Start


## FarmDone
- enabled: True
- category: [1] CinematicOpening
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
- Action IssueTargetOrder
  - param Variable PeasantFarm
  - param Preset UnitOrderRepair
  - param Variable Townhall
- Action ConditionalTriggerExecute
  - param Variable gg_trg_PowerBuildingHint
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param String hhou
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventConstruct_Finish


## BarracksDone
- enabled: True
- category: [1] CinematicOpening
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
- Action IssueTargetOrder
  - param Variable PeasantBarracks
  - param Preset UnitOrderRepair
  - param Variable Townhall
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param String hbar
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventConstruct_Finish


## GranaryCancelled
- enabled: True
- category: [4] CinematicGranary
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
  - param Variable GranaryCancelled
  - param String true
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontDont
- Action EndThematicMusicBJ
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player03
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset PlayerNA
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset Player01
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player05
  - param Preset AllianceSettingUnallied
- Action SetUnitPositionLoc
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadFinalPost
- Action SetUnitFacingToFaceLocTimed
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadFinalFace
  - param String 0
- Action SetUnitInvulnerable
  - param Variable KelThuzad
  - param Preset InvulnerabilityVulnerable
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Variable ArthasPoint
- Action SetUnitPositionLoc
  - param Variable Jaina
  - param Variable JainaPoint
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable Jaina
  - param Preset InvulnerabilityVulnerable
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
          - param Variable gg_rct_ArthasWarpGranary
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Jaina
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_JainaWarpGranary
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action DoNothing
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GranaryCamReset
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ConditionalTriggerExecute
  - param Variable gg_trg_ForestTroll_Patrol_Restart
- Action SelectGroupBJ
  - param Variable SelectionGroup
- Action SetSkyModel
  - param Preset SkyModelNone
- Action ResetTerrainFogBJ
- Action CommentString
  - param String Quests
- Action TriggerSleepAction
  - param String 5.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_000
- Action QuestSetCompletedBJ
  - param Variable QuestAndorhal
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestAndorhalReq
  - param Preset CompletionOptionCompleted
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_009
- Action QuestSetDiscoveredBJ
  - param Variable QuestNecromancer
  - param Preset DiscoveredOptionDiscovered
- Condition OperatorCompareBoolean
  - param Variable GranaryCancelled
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## Granary01
- enabled: True
- category: [4] CinematicGranary
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable GranaryEntranceGuy
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0.00
  - param String 0
  - param String 0
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action TriggerSleepAction
  - param String 1.00
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
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset PlayerNA
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset Player01
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player05
  - param Preset AllianceSettingNeutral
- Action SetVariable
  - param Variable SelectionGroup
  - param Function GetUnitsSelectedAll
    - Function GetUnitsSelectedAll
      - param Preset Player01
- Action ClearSelection
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
- Action CommentString
  - param String Music
- Action PlayThematicMusicBJ
  - param Preset MusicThemeSadMystery
- Action CommentString
  - param String ***********************
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Variable GranaryCancelled
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetSkyModel
  - param Preset SkyModelSky06
- Action SetTerrainFogExBJ
  - param String 0
  - param String 800.00
  - param String 5000.00
  - param String 0
  - param String 30.00
  - param String 30.00
  - param String 10.00
- Action ShowUnitShow
  - param Variable KelThuzad
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable KelThuzad
- Action SetUnitInvulnerable
  - param Variable gg_unit_uktn_0133
  - param Preset InvulnerabilityInvulnerable
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable gg_unit_ugho_0043
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable gg_unit_ugho_0047
- Action SetVariable
  - param Variable CinematicRegionArthas
  - param Variable gg_rct_ArthasWarpGranary
- Action ConditionalTriggerExecute
  - param Variable gg_trg_ArthasCinematicRevive
- Action SetVariable
  - param Variable CinematicRegionJaina
  - param Variable gg_rct_JainaWarpGranary
- Action ConditionalTriggerExecute
  - param Variable gg_trg_JainaCinematicRevive
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Jaina
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable Jaina
  - param Preset InvulnerabilityInvulnerable
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Granery01Close
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Granery01d
  - param Preset Player01
  - param String 11.60
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0.00
  - param String 0
  - param String 0
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_GranaryCancelled
- Action TriggerSleepAction
  - param String 0.10
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
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_GranaryGhouls
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Jaina
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable KelThuzad
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
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String ***********************
- Action TriggerExecute
  - param Variable gg_trg_Granary02
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_GranaryKelThuzadArea01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_GranaryKelThuzadArea02


## Granary02
- enabled: True
- category: [4] CinematicGranary
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
  - param Variable GranaryCancelled
  - param Preset OperatorEqualENE
  - param String false
- Action SetUnitFacingToFaceLocTimed
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadFacing
  - param String 0.10
- Action TriggerSleepAction
  - param String 0.50
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
      - param Variable GranaryCancelled
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
  - param String TRIGSTR_023
  - param Variable gg_snd_H04KelThuzad06
  - param String TRIGSTR_024
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action SetUnitAnimation
  - param Variable gg_unit_uktn_0133
  - param String stand victory
- Action TriggerSleepAction
  - param String 7.00
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
      - param Variable GranaryCancelled
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
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ArthasWarpGranary
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasWarpGranary
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Jaina
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_JainaWarpGranary
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitPositionLoc
  - param Variable Jaina
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaWarpGranary
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasPostGranary
- Action IssuePointOrderLoc
  - param Variable Jaina
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_JainaPostGranary
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Granary02
  - param Preset Player01
  - param String 0.00
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
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H04KelThuzad06
  - param String 0
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
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable gg_unit_uktn_0133
  - param String 0.20
- Action SetUnitAnimation
  - param Variable gg_unit_uktn_0133
  - param String stand
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_072
  - param Variable gg_snd_H04Arthas22
  - param String TRIGSTR_073
  - param Preset AddSetToAdd
  - param String 0.00
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
      - param Variable GranaryCancelled
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
  - param String TRIGSTR_074
  - param Variable gg_snd_H04KelThuzad23
  - param String TRIGSTR_075
  - param Preset AddSetToAdd
  - param String 0.00
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
      - param Variable GranaryCancelled
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
  - param Variable gg_snd_H04Jaina24
  - param String TRIGSTR_018
  - param Preset AddSetToAdd
  - param String 0.00
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
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_ugho_0043
  - param Variable Jaina
  - param String 0.40
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_076
  - param Variable gg_snd_H04KelThuzad25
  - param String TRIGSTR_077
  - param Preset AddSetToAdd
  - param String 0.00
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
      - param Variable GranaryCancelled
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
  - param String TRIGSTR_078
  - param Variable gg_snd_H04Arthas26
  - param String TRIGSTR_079
  - param Preset AddSetToAdd
  - param String 0.00
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
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_ugho_0047
  - param Variable Jaina
  - param String 0.40
- Action SetUnitAnimation
  - param Variable gg_unit_uktn_0133
  - param String stand channel
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_080
  - param Variable gg_snd_H04KelThuzad27
  - param String TRIGSTR_081
  - param Preset AddSetToAdd
  - param String 0.00
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
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable Jaina
  - param Preset InvulnerabilityVulnerable
- Action IssuePointOrderLoc
  - param Variable KelThuzad
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadFinalPost
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
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_GranaryCancelled
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player03
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset PlayerNA
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset Player01
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player05
  - param Preset AllianceSettingUnallied
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Variable ArthasPoint
- Action SetUnitPositionLoc
  - param Variable Jaina
  - param Variable JainaPoint
- Action IssuePointOrderLoc
  - param Variable gg_unit_ugho_0047
  - param Preset UnitOrderAttack
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable GranaryEntranceGuy
- Action IssuePointOrderLoc
  - param Variable gg_unit_ugho_0043
  - param Preset UnitOrderAttack
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable GranaryEntranceGuy
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action SetUnitPositionLoc
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadFinalPost
- Action SetUnitFacingToFaceLocTimed
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadFinalFace
  - param String 0
- Action SetUnitInvulnerable
  - param Variable KelThuzad
  - param Preset InvulnerabilityVulnerable
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ConditionalTriggerExecute
  - param Variable gg_trg_ForestTroll_Patrol_Restart
- Action SelectGroupBJ
  - param Variable SelectionGroup
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 1.00
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GranaryCamReset
  - param String 0
- Action SetSkyModel
  - param Preset SkyModelNone
- Action ResetTerrainFogBJ
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
- Action TriggerSleepAction
  - param String 5.00
- Action CommentString
  - param String Quests
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_042
- Action QuestSetCompletedBJ
  - param Variable QuestAndorhal
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestAndorhalReq
  - param Preset CompletionOptionCompleted
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
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
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_043
- Action QuestSetDiscoveredBJ
  - param Variable QuestNecromancer
  - param Preset DiscoveredOptionDiscovered


## GranaryDialog
- enabled: True
- category: [4] CinematicGranary
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
  - param String 2
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
      - param String TRIGSTR_146
      - param Variable gg_snd_H04Arthas18
      - param String TRIGSTR_147
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action TriggerSleepAction
      - param String 0.10
- Action VolumeGroupResetBJ
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param String ngni
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNA
  - param Preset PlayerUnitEventDeath


## GranaryGhouls
- enabled: True
- category: [4] CinematicGranary
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0047
  - param String stand channel
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0043
  - param String stand channel
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0047
  - param String stand
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0043
  - param String stand
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0047
  - param String stand channel
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0043
  - param String stand channel
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0043
  - param String stand
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0047
  - param String stand
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0043
  - param String stand channel
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0047
  - param String stand channel
- Action TriggerSleepAction
  - param String 1.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0047
  - param String stand
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0043
  - param String stand
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0047
  - param String stand channel
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0043
  - param String stand channel
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0047
  - param String stand
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0043
  - param String stand
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0047
  - param String stand channel
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0043
  - param String stand channel
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0047
  - param String stand
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0043
  - param String stand
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0047
  - param String stand channel
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0043
  - param String stand channel
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0043
  - param String stand
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GranaryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable gg_unit_ugho_0047
  - param String stand


## EndingCancelled
- enabled: True
- category: [19] CinematicEnding
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable EndingCancelled
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01
- Action SetVariable
  - param Variable EndingCancelled
  - param String true
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontDont
- Action KillUnit
  - param Variable KelThuzad
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Victory


## Ending
- enabled: True
- category: [19] CinematicEnding
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable GAMEOVER
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_TownIsDestroyed
- Action ReplaceUnitBJ
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param String uktn
  - param Preset UnitStateMethodDefaults
- Action SetVariable
  - param Variable KelThuzad
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
- Action SetUnitInvulnerable
  - param Variable KelThuzad
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitLifePercentBJ
  - param Variable KelThuzad
  - param String 1.00
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_uktn_0133
  - param Preset UnitEventDeath
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_137
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
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
- Action ClearSelection
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Prep
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_EndingCancelled
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
  - param String Music
- Action PlayThematicMusicBJ
  - param Preset MusicThemeTragicConfrontation
- Action CommentString
  - param String ***********************
- Action SetVariable
  - param Variable EndCinematicMove
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_KelThuzadFinalPost
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
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player01
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ShowUnitShow
  - param Variable KelThuzad
- Action ShowUnitShow
  - param Variable Arthas
- Action ShowUnitShow
  - param Variable Jaina
- Action ForGroup
  - param Variable EndCinematicMove
  - param Function DoNothing
    - Action SetUnitPositionLocFacingLocBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Function GetPlayableMapRect
            - Function GetPlayableMapRect
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_KelThuzadFinalPost
- Action SetVariable
  - param Variable CinematicRegionArthas
  - param Variable gg_rct_Arthas_End
- Action ConditionalTriggerExecute
  - param Variable gg_trg_ArthasCinematicRevive
- Action SetVariable
  - param Variable CinematicRegionJaina
  - param Variable gg_rct_Jaina_End
- Action ConditionalTriggerExecute
  - param Variable gg_trg_JainaCinematicRevive
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadFinalPost
  - param String 0
- Action SetUnitFacingToFaceLocTimed
  - param Variable Jaina
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadFinalPost
  - param String 0
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
- Action SetUnitPositionLocFacingLocBJ
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadFinalPost
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadFinalFace
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End
  - param Preset Player01
  - param String 0
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
      - param Variable EndingCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Experimental Death
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_032
  - param Variable gg_snd_H04KelThuzad28
  - param String TRIGSTR_033
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action SetUnitBlendTimeBJ
  - param Variable KelThuzad
  - param String 0.00
- Action SetUnitInvulnerable
  - param Variable KelThuzad
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitLifeBJ
  - param Variable KelThuzad
  - param String 1.00
- Action SetUnitAnimationWithRarity
  - param Variable KelThuzad
  - param String stand
  - param Preset RarityControlFrequent
- Action VolumeGroupSetVolumeBJ
  - param Preset VolumeGroupSpells
  - param String 0.00
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
- Action SetUnitTimeScalePercent
  - param Variable KelThuzad
  - param String 10.00
- Action SetUnitAnimationWithRarity
  - param Variable KelThuzad
  - param String death
  - param Preset RarityControlFrequent
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
- Action SetUnitBlendTimeBJ
  - param Variable KelThuzad
  - param String 0.15
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
- Action SetUnitAnimationWithRarity
  - param Variable KelThuzad
  - param String death
  - param Preset RarityControlFrequent
- Action WaitForSoundBJ
  - param Variable gg_snd_H04KelThuzad28
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
- Action VolumeGroupSetVolumeBJ
  - param Preset VolumeGroupSpells
  - param String 100.00
- Action SetUnitTimeScalePercent
  - param Variable KelThuzad
  - param String 60.00
- Action KillUnit
  - param Variable KelThuzad
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_NecromancerDeath
  - param Variable KelThuzad
- Action PlaySoundBJ
  - param Variable gg_snd_NecromancerDeath
- Action TriggerSleepAction
  - param String 2
- Action CommentString
  - param String Experimental Death
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
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action EndThematicMusicBJ
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
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Victory


## Timmy
- enabled: True
- category: [2] Timmy
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
  - param String uC01
  - param Preset Player00
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CageGhoul
  - param String 24.00
- Action SetVariable
  - param Variable Timmy
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetPlayerColorBJ
  - param Preset Player00
  - param Preset Color06
  - param Preset PlayerChangeColorChange
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player01
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player07
  - param Preset AllianceSettingAllied
- Action IssuePointOrderLoc
  - param Variable Timmy
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_TimmyRoam
- Action EnableTrigger
  - param Variable gg_trg_TimmyRoam
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LOcg_2148


## TimmyDies
- enabled: True
- category: [2] Timmy
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateItemLoc
  - param String rnsp
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetDyingUnit
        - Function GetDyingUnit
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable Timmy
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player00
  - param Preset PlayerUnitEventDeath


## TimmyRoam
- enabled: True
- category: [2] Timmy
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 8.00
- Action IssuePointOrderLoc
  - param Variable Timmy
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_TimmyRoam


## GhoulsAttack
- enabled: True
- category: [11] VillageScenes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action KillUnit
  - param Variable gg_unit_nvlw_0085
- Action TriggerSleepAction
  - param String 0.50
- Action CreateNUnitsAtLoc
  - param String 2
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BurntOutFarmGhoulsStart
  - param String 0
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BurntOutFarm
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_BurntOutFarm


## BarracksBlowUp
- enabled: True
- category: [11] VillageScenes
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
  - param String 2
  - param String ugho
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BarrackBlowUp
  - param String 0
- Action KillUnit
  - param Variable gg_unit_hbar_0080
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_BarrackBlowUp


## TowerBlowUp
- enabled: True
- category: [11] VillageScenes
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
  - param String 2
- Action KillUnit
  - param Variable gg_unit_hwtw_0081
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_TowerBlowUp


## ArthasEmptyCrates
- enabled: True
- category: [11] VillageScenes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_046
  - param Variable gg_snd_H04Arthas18
  - param String TRIGSTR_047
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Condition # OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event # TriggerRegisterEnterRectSimple
  - param Variable gg_rct_EmptyCrates


## GnollRun
- enabled: True
- category: [7] Creeps
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngna_0095
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GnollRunDest
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_GnollRun


## GolemBirth
- enabled: True
- category: [7] Creeps
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action # CreateNUnitsAtLoc
  - param String 1
  - param String ngst
  - param Preset PlayerNA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable 
  - param String 200.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String birth
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event # TriggerRegisterEnterRectSimple
  - param Variable 


## ForestTroll
- enabled: True
- category: [7] Creeps
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_PatrolForestTroll01Start
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderPatrol
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_PatrolForestTroll01End
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_PatrolForestTroll02Start
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderPatrol
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_PatrolForestTroll02End


## ForestTroll Patrol Restart
- enabled: True
- category: [7] Creeps
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nftr_0066
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable gg_unit_nftr_0066
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ForestTroll66Initial
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nftr_0066
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable gg_unit_nftr_0066
      - param Preset UnitOrderPatrol
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_PatrolForestTroll01End
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nftb_0010
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable gg_unit_nftb_0010
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ForestBerseker10Initial
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nftb_0010
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable gg_unit_nftb_0010
      - param Preset UnitOrderPatrol
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_PatrolForestTroll01End
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nftr_0072
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable gg_unit_nftr_0072
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ForestTroll72Initial
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nftr_0072
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable gg_unit_nftr_0072
      - param Preset UnitOrderPatrol
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_PatrolForestTroll01End
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nftr_0073
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable gg_unit_nftr_0073
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ForestTroll73Initial
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nftr_0073
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable gg_unit_nftr_0073
      - param Preset UnitOrderPatrol
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_PatrolForestTroll02End
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nftb_0009
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable gg_unit_nftb_0009
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ForestBerserker09Initial
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nftb_0009
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable gg_unit_nftb_0009
      - param Preset UnitOrderPatrol
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_PatrolForestTroll02End
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nftr_0075
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable gg_unit_nftr_0075
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ForestTroll75Initial
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nftr_0075
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable gg_unit_nftr_0075
      - param Preset UnitOrderPatrol
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_PatrolForestTroll02End
  - param Function DoNothing
    - Action DoNothing


## Golems
- enabled: True
- category: [7] Creeps
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 2.00
- Action ForGroup
  - param Variable GolemsGroup
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAttack
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_GolemArea


## Bandits
- enabled: True
- category: [7] Creeps
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_BanditWarcry1
  - param Variable gg_unit_nenf_0069
- Action PlaySoundBJ
  - param Variable gg_snd_BanditWarcry1
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nenf_0069
  - param Preset UnitEventAcquiredTarget


## ArthasCinematicRevive
- enabled: True
- category: [12] Cinematic Revival
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable ArthasPoint
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable CinematicRegionArthas
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ReviveHeroLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable CinematicRegionArthas
  - param Preset ShowHideHide
- Action SetVariable
  - param Variable ArthasPoint
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable CinematicRegionArthas
- Action SetVariable
  - param Variable RevivalAltar
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsOfPlayerMatching
        - Function GetUnitsOfPlayerMatching
          - param Preset Player01
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
    - Action SetVariable
      - param Variable ArthasPoint
      - param Function OffsetLocation
        - Function OffsetLocation
          - param Function GetUnitLoc
            - Function GetUnitLoc
              - param Variable RevivalAltar
          - param String 0
          - param String -128.00
  - param Function DoNothing
    - Action DoNothing


## JainaCinematicRevive
- enabled: True
- category: [12] Cinematic Revival
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable JainaPoint
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Jaina
- Action SetUnitPositionLoc
  - param Variable Jaina
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable CinematicRegionJaina
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Jaina
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ReviveHeroLoc
  - param Variable Jaina
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable CinematicRegionJaina
  - param Preset ShowHideHide
- Action SetVariable
  - param Variable JainaPoint
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable CinematicRegionJaina
- Action SetVariable
  - param Variable RevivalAltar
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsOfPlayerMatching
        - Function GetUnitsOfPlayerMatching
          - param Preset Player01
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
    - Action SetVariable
      - param Variable JainaPoint
      - param Function OffsetLocation
        - Function OffsetLocation
          - param Function GetUnitLoc
            - Function GetUnitLoc
              - param Variable RevivalAltar
          - param String 0
          - param String -128.00
  - param Function DoNothing
    - Action DoNothing


## Victory
- enabled: True
- category: [15] Victory
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
- Event TriggerRegisterPlayerEventVictory
  - param Preset Player01


## ArthasDeadSpeech
- enabled: True
- category: [5] Defeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Action SetVariable
  - param Variable ArthasDead
  - param String true
- Action StopSoundBJ
  - param Variable gg_snd_H04Arthas07
  - param Preset FadeDontDont
- Action StopSoundBJ
  - param Variable gg_snd_H04Arthas09
  - param Preset FadeDontDont
- Action StopSoundBJ
  - param Variable gg_snd_H04Arthas11
  - param Preset FadeDontDont
- Action StopSoundBJ
  - param Variable gg_snd_H04Arthas15
  - param Preset FadeDontDont
- Action StopSoundBJ
  - param Variable gg_snd_H04Arthas17
  - param Preset FadeDontDont
- Action StopSoundBJ
  - param Variable gg_snd_H04Arthas18
  - param Preset FadeDontDont
- Action StopSoundBJ
  - param Variable gg_snd_H04Arthas19
  - param Preset FadeDontDont
- Action StopSoundBJ
  - param Variable gg_snd_H04Arthas21
  - param Preset FadeDontDont
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## TownIsDestroyed
- enabled: True
- category: [5] Defeat
- starts off: True
- is custom text: False
- run on map init: False
```description
Turned on from 'AltarOfKings'
DefeatedDon'tPlay should be in all the cinematics to stop them from playing once you've defeated.
```
### Functions
- Action SetVariable
  - param Variable GAMEOVER
  - param String true
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeMissionFailed
  - param String TRIGSTR_152
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CustomDefeatBJ
  - param Preset Player01
  - param String TRIGSTR_153
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerMatching
        - Function GetUnitsOfPlayerMatching
          - param Preset Player01
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
                - Condition OperatorCompareBoolean
                  - param Function IsUnitAliveBJ
                    - Function IsUnitAliveBJ
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param String true
  - param Preset OperatorLessEq
  - param String 0
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventConstruct_Cancel

