version = ROC

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 4 | Initialization | False |
| 8 | Suicide AI Rush | False |
| 13 | ComputerResources | False |
| 5 | Level Data | False |
| 10 | IZZZZZZI CINEMATICS IZZZZZZI | False |
| 0 | OpeningCinematic | False |
| 12 | EndingCinematic | False |
| 11 | IZZZZZZZZZZZZZZZZZZZZZZZI | False |
| 15 | KelThuzad Summon Reset | False |
| 1 | KelThuzad attack message | False |
| 7 | Reinforcements | False |
| 20 | ShadeScouts | False |
| 19 | Hermit | False |
| 6 | GoblinMinesSideQuest | False |
| 14 | DialogAttack | False |
| 3 | VictoryDefeat | False |
| 2 | Wipe The Map Victory | False |
| 9 | Debug | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| Arthas | unit | . | . |
| KelThuzad | unit | . | . |
| QuestSummoning | quest | . | . |
| OpeningCancelled | boolean | . | false |
| TimerSummoning | timer | . | . |
| Tichondrius | unit | . | . |
| QuestGoblinMine | quest | . | . |
| TimerHellHound01 | timer | . | . |
| TimerInfernals | timer | . | . |
| TimerSideQuest | timer | . | . |
| QuestGoblinMineCompleted | boolean | . | . |
| Archimonde | unit | . | . |
| CinematicUnitGroup | group | . | . |
| DarkSummonMissile | effect | . | . |
| EndingCancelled | boolean | . | false |
| QuestSummoningReq | questitem | . | . |
| QuestGoblinMineReq | questitem | . | . |
| TimerRushNormal | timer | . | . |
| SummoningEffect | effect | . | . |
| DarkSummonTarget | effect | . | . |
| HellHoundEffect01 | effect | . | . |
| HellHoundEffect02 | effect | . | . |
| HellHoundEffect03 | effect | . | . |
| TimerHellHound02 | timer | . | . |
| InfernalEffect01 | effect | . | . |
| InfernalEffect02 | effect | . | . |
| InfernalEffect03 | effect | . | . |
| InfernalEffect04 | effect | . | . |
| TimerHellHound03 | timer | . | . |
| Brilliance | effect | . | . |
| VampiricAura | effect | . | . |
| CountdownTimerWindow | timerdialog | . | . |
| WarningLoopCooldownTimer | timer | . | . |
| GameOver | boolean | . | false |
| KelzResetTimer | timer | . | . |
| TimerRushHard | timer | . | . |

# Triggers
## Melee Initialization
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description
Default melee game initialization for all players
```
### Functions
- Action SetCampaignMenuRaceBJ
  - param Preset CampaignIndexU
- Action CommentString
  - param String ***********************
- Action SetTimeOfDay
  - param String 6.01
- Action CommentString
  - param String ***********************
- Action SetSkyModel
  - param Preset SkyModelSky02
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Load_Heroes
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_PlayerResources
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Allies
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Fire
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_CinematicUnits
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Doors
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_SummoningCircle
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening01
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Vision
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Quests
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupCinematicPlayer
- Action CommentString
  - param String Difficulty
- Action SetPlayerHandicapXPBJ
  - param Preset Player03
  - param String 35.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Easy
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Normal
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Hard
- Action CommentString
  - param String ***********************
- Event MapInitializationEvent


## Difficulty Easy
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Rush Timer
- Action PauseTimerBJ
  - param Preset PauseResumePause
  - param Variable TimerRushHard
- Action DisableTrigger
  - param Variable gg_trg_TimerRushHard
- Action CommentString
  - param String Handicap
- Action SetPlayerHandicapBJ
  - param Preset Player00
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player01
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player02
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player07
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset PlayerNA
  - param Preset RealHandicapEasy
- Action CommentString
  - param String From Normal
- Action CommentString
  - param String Blue
- Action SetHeroLevel
  - param Variable gg_unit_Hamg_0201
  - param String 5
  - param Preset ShowHideHide
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Hamg_0201
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillWaterElemental
- Action CommentString
  - param String Red
- Action SetHeroLevel
  - param Variable gg_unit_Hamg_0200
  - param String 4
  - param Preset ShowHideHide
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Hamg_0200
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillWaterElemental
- Action CommentString
  - param String Teal
- Action SetHeroLevel
  - param Variable gg_unit_Hamg_0202
  - param String 3
  - param Preset ShowHideHide
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Hamg_0202
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillWaterElemental
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyEasy


## Difficulty Normal
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Rush Timer
- Action PauseTimerBJ
  - param Preset PauseResumePause
  - param Variable TimerRushHard
- Action DisableTrigger
  - param Variable gg_trg_TimerRushHard
- Action CommentString
  - param String Blue
- Action SetHeroLevel
  - param Variable gg_unit_Hamg_0201
  - param String 5
  - param Preset ShowHideHide
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Hamg_0201
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillWaterElemental
- Action CommentString
  - param String Red
- Action SetHeroLevel
  - param Variable gg_unit_Hamg_0200
  - param String 4
  - param Preset ShowHideHide
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Hamg_0200
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillWaterElemental
- Action CommentString
  - param String Teal
- Action SetHeroLevel
  - param Variable gg_unit_Hamg_0202
  - param String 3
  - param Preset ShowHideHide
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Hamg_0202
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillWaterElemental
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyNormal


## Difficulty Hard
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Rush Timer
- Action PauseTimerBJ
  - param Preset PauseResumePause
  - param Variable TimerRushNormal
- Action DisableTrigger
  - param Variable gg_trg_TimerRushNormal
- Action CommentString
  - param String Blue
- Action SetHeroLevel
  - param Variable gg_unit_Hamg_0201
  - param String 9
  - param Preset ShowHideHide
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Hamg_0201
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0201
  - param Preset HeroSkillWaterElemental
- Action CommentString
  - param String Red
- Action SetHeroLevel
  - param Variable gg_unit_Hamg_0200
  - param String 8
  - param Preset ShowHideHide
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Hamg_0200
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0200
  - param Preset HeroSkillWaterElemental
- Action CommentString
  - param String Teal
- Action SetHeroLevel
  - param Variable gg_unit_Hamg_0202
  - param String 7
  - param Preset ShowHideHide
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Hamg_0202
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0202
  - param Preset HeroSkillWaterElemental
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard


## Start Campaign AI
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description
Run from 'Opening04' and 'OpeningCancelled'
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action StartCampaignAI
  - param Preset Player00
  - param String u08_red.ai
- Action StartCampaignAI
  - param Preset Player01
  - param String u08_blue.ai
- Action StartCampaignAI
  - param Preset Player02
  - param String u08_teal.ai
- Action CommentString
  - param String Send Signal
- Action CommandAI
  - param Preset Player00
  - param String 0
  - param String 0
- Action CommandAI
  - param Preset Player01
  - param String 0
  - param String 0
- Action CommandAI
  - param Preset Player02
  - param String 0
  - param String 0


## Setup ComputerPlayers
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description
Run after the opening cinematic
```
### Functions
- Action CommentString
  - param String Blue
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateGold
  - param String 2000
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateLumber
  - param String 1500
- Action SetPlayerColorBJ
  - param Preset Player01
  - param Preset Color08
  - param Preset PlayerChangeColorChange
- Action CommentString
  - param String Red
- Action SetPlayerState
  - param Preset Player00
  - param Preset PlayerStateGold
  - param String 2000
- Action SetPlayerState
  - param Preset Player00
  - param Preset PlayerStateLumber
  - param String 1500
- Action SetPlayerColorBJ
  - param Preset Player00
  - param Preset Color01
  - param Preset PlayerChangeColorChange
- Action CommentString
  - param String Teal
- Action SetPlayerState
  - param Preset Player02
  - param Preset PlayerStateGold
  - param String 2000
- Action SetPlayerState
  - param Preset Player02
  - param Preset PlayerStateLumber
  - param String 1500
- Action SetPlayerColorBJ
  - param Preset Player02
  - param Preset Color09
  - param Preset PlayerChangeColorChange
- Action CommentString
  - param String Computers against Kel'Thuzad
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player02
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action CommentString
  - param String ***********************


## SetupCinematicPlayer
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Pre-placed non-AI player
- Action SetPlayerColorBJ
  - param Preset Player07
  - param Preset Color08
  - param Preset PlayerChangeColorChange
- Action CommentString
  - param String Cinematic Shared Vision
- Action SetPlayerAllianceStateBJ
  - param Preset Player07
  - param Preset Player03
  - param Preset AllianceSettingAlliedVision
- Action CommentString
  - param String Tichondrius Grey = Red
- Action SetPlayerColorBJ
  - param Preset Player08
  - param Preset Color00
  - param Preset PlayerChangeColorChange
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player06
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player07


## Setup PlayerResources
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateLumber
  - param String 550
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateGold
  - param String 1800


## Setup Allies
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player06
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player03
  - param Preset AllianceSettingAlliedVision


## Setup CinematicUnits
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_ArchmageArea01
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable CinematicUnitGroup
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_ArchmageArea02
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable CinematicUnitGroup
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_GryphonArea
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable CinematicUnitGroup


## Setup Fire
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.10
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOtf
  - param Function GetPlayableMapRect
    - Function GetPlayableMapRect
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOf2
  - param Function GetPlayableMapRect
    - Function GetPlayableMapRect


## Setup Doors
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ModifyGateBJ
  - param Preset GateOperationOpen
  - param Variable gg_dest_LTg4_0073
- Action ModifyGateBJ
  - param Preset GateOperationOpen
  - param Variable gg_dest_LTg4_0263


## Setup SummoningCircle
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadPost
  - param String Abilities\Spells\Undead\VampiricAura\VampiricAura.mdl
- Action SetVariable
  - param Variable VampiricAura
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ


## Setup Timers
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description
Run from 'Opening02' and OpeningCancelled'
```
### Functions
- Action CommentString
  - param String HellHounds 5 min
- Action StartTimerBJ
  - param Variable TimerHellHound01
  - param Preset PeriodicOptionOneTime
  - param String 300.00
- Action SetVariable
  - param Variable TimerHellHound01
  - param Function GetLastCreatedTimerBJ
    - Function GetLastCreatedTimerBJ
- Action CommentString
  - param String HellHounds 10 min
- Action StartTimerBJ
  - param Variable TimerHellHound02
  - param Preset PeriodicOptionOneTime
  - param String 600.00
- Action SetVariable
  - param Variable TimerHellHound02
  - param Function GetLastCreatedTimerBJ
    - Function GetLastCreatedTimerBJ
- Action CommentString
  - param String HellHounds 15 min
- Action StartTimerBJ
  - param Variable TimerHellHound03
  - param Preset PeriodicOptionOneTime
  - param String 900.00
- Action SetVariable
  - param Variable TimerHellHound03
  - param Function GetLastCreatedTimerBJ
    - Function GetLastCreatedTimerBJ
- Action CommentString
  - param String Infernals 20 min
- Action StartTimerBJ
  - param Variable TimerInfernals
  - param Preset PeriodicOptionOneTime
  - param String 1200.00
- Action SetVariable
  - param Variable TimerInfernals
  - param Function GetLastCreatedTimerBJ
    - Function GetLastCreatedTimerBJ
- Action CommentString
  - param String Rush Timer NORMAL
- Action StartTimerBJ
  - param Variable TimerRushNormal
  - param Preset PeriodicOptionOneTime
  - param String 1710.00
- Action SetVariable
  - param Variable TimerRushNormal
  - param Function GetLastCreatedTimerBJ
    - Function GetLastCreatedTimerBJ
- Action CommentString
  - param String Rush Timer HARD
- Action StartTimerBJ
  - param Variable TimerRushHard
  - param Preset PeriodicOptionOneTime
  - param String 1700.00
- Action SetVariable
  - param Variable TimerRushHard
  - param Function GetLastCreatedTimerBJ
    - Function GetLastCreatedTimerBJ
- Action CommentString
  - param String Side quest
- Action StartTimerBJ
  - param Variable TimerSideQuest
  - param Preset PeriodicOptionOneTime
  - param String 30.00
- Action SetVariable
  - param Variable TimerSideQuest
  - param Function GetLastCreatedTimerBJ
    - Function GetLastCreatedTimerBJ
- Action CommentString
  - param String Summoning timer
- Action StartTimerBJ
  - param Variable TimerSummoning
  - param Preset PeriodicOptionOneTime
  - param String 1800.00
- Action SetVariable
  - param Variable TimerSummoning
  - param Function GetLastCreatedTimerBJ
    - Function GetLastCreatedTimerBJ
- Action CreateTimerDialogBJ
  - param Variable TimerSummoning
  - param String TRIGSTR_057
- Action SetVariable
  - param Variable CountdownTimerWindow
  - param Function GetLastCreatedTimerDialogBJ
    - Function GetLastCreatedTimerDialogBJ


## Setup Vision
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TempleVision
  - param String 1200.00


## Setup Quests
- enabled: True
- category: [4] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Main Quest
- Action CreateQuestBJ
  - param Preset QuestTypeReqUndiscovered
  - param String TRIGSTR_007
  - param String TRIGSTR_008
  - param String ReplaceableTextures\CommandButtons\BTNHerolich.tga
- Action SetVariable
  - param Variable QuestSummoning
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CommentString
  - param String Main Quest Requirement
- Action CreateQuestItemBJ
  - param Variable QuestSummoning
  - param String TRIGSTR_025
- Action SetVariable
  - param Variable QuestSummoningReq
  - param Variable QuestSummoningReq
- Action CommentString
  - param String Side Quest
- Action CreateQuestBJ
  - param Preset QuestTypeOptUndiscovered
  - param String TRIGSTR_028
  - param String TRIGSTR_029
  - param String ReplaceableTextures\CommandButtons\BTNGoblinLandMine.tga
- Action SetVariable
  - param Variable QuestGoblinMine
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CommentString
  - param String Side Quest Requirement
- Action CreateQuestItemBJ
  - param Variable QuestGoblinMine
  - param String TRIGSTR_027
- Action SetVariable
  - param Variable QuestGoblinMineReq
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ


## TimerRushNormal
- enabled: True
- category: [8] Suicide AI Rush
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
- Action CommandAI
  - param Preset Player00
  - param String 0
  - param String 0
- Action CommandAI
  - param Preset Player01
  - param String 0
  - param String 0
- Action CommandAI
  - param Preset Player02
  - param String 0
  - param String 0
- Action EnableTrigger
  - param Variable gg_trg_Arthas02
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerRushNormal


## TimerRushHard
- enabled: True
- category: [8] Suicide AI Rush
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
- Action CommandAI
  - param Preset Player00
  - param String 0
  - param String 0
- Action CommandAI
  - param Preset Player01
  - param String 0
  - param String 0
- Action CommandAI
  - param Preset Player02
  - param String 0
  - param String 0
- Action EnableTrigger
  - param Variable gg_trg_Arthas02
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerRushHard


## TealGold
- enabled: True
- category: [13] ComputerResources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1500
  - param Preset Player02
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player02
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThanOrEqual
  - param String 1500.00


## BlueGold
- enabled: True
- category: [13] ComputerResources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1500
  - param Preset Player01
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player01
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThanOrEqual
  - param String 1500.00


## RedGold
- enabled: True
- category: [13] ComputerResources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1500
  - param Preset Player00
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player00
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThanOrEqual
  - param String 1500.00


## TealLumber
- enabled: True
- category: [13] ComputerResources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player02
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player02
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThanOrEqual
  - param String 1000.00


## BlueLumber
- enabled: True
- category: [13] ComputerResources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player01
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player01
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThanOrEqual
  - param String 1000.00


## RedLumber
- enabled: True
- category: [13] ComputerResources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player00
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player00
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThanOrEqual
  - param String 1000.00


## Load Heroes
- enabled: True
- category: [5] Level Data
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
  - param Variable gg_trg_Load_KelThuzad


## Load Arthas
- enabled: True
- category: [5] Level Data
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
  - param String Undead08
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasStart
  - param String 90.00
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
  - param String Uear
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasStart
  - param String 90.00
- Action SetVariable
  - param Variable Arthas
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetHeroLevel
  - param Variable Arthas
  - param String 8
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDeathCoil
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDeathCoil
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDeathCoil
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDeathPact
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillUnholyAura
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillUnholyAura
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillUnholyAura
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillAnimateDead


## Load KelThuzad
- enabled: True
- category: [5] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Load the hero data Kel'Thuzad
- Action RestoreUnitLocFacingAngleBJ
  - param String KelThuzad
  - param String Undead08
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadStart
  - param String 90.00
- Action SetVariable
  - param Variable KelThuzad
  - param Function GetLastRestoredUnitBJ
    - Function GetLastRestoredUnitBJ
- Action SetUnitFacingTimed
  - param Variable KelThuzad
  - param String 220.00
  - param String 0
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Drop_KelThuzad_Items
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable KelThuzad
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
  - param String Uktl
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadStart
  - param String 90.00
- Action SetVariable
  - param Variable KelThuzad
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetHeroLevel
  - param Variable KelThuzad
  - param String 7
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable KelThuzad
  - param Preset HeroSkillFrostNova
- Action SelectHeroSkill
  - param Variable KelThuzad
  - param Preset HeroSkillFrostNova
- Action SelectHeroSkill
  - param Variable KelThuzad
  - param Preset HeroSkillFrostArmor
- Action SelectHeroSkill
  - param Variable KelThuzad
  - param Preset HeroSkillFrostArmor
- Action SelectHeroSkill
  - param Variable KelThuzad
  - param Preset HeroSkillDarkRitual
- Action SelectHeroSkill
  - param Variable KelThuzad
  - param Preset HeroSkillDeathAndDecay


## Drop KelThuzad Items
- enabled: True
- category: [5] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action UnitRemoveItemFromSlotSwapped
  - param String 1
  - param Variable KelThuzad
- Action SetItemPositionLoc
  - param Function GetLastRemovedItem
    - Function GetLastRemovedItem
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad_Item01
- Action UnitRemoveItemFromSlotSwapped
  - param String 2
  - param Variable KelThuzad
- Action SetItemPositionLoc
  - param Function GetLastRemovedItem
    - Function GetLastRemovedItem
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad_Item02
- Action UnitRemoveItemFromSlotSwapped
  - param String 3
  - param Variable KelThuzad
- Action SetItemPositionLoc
  - param Function GetLastRemovedItem
    - Function GetLastRemovedItem
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad_Item03
- Action UnitRemoveItemFromSlotSwapped
  - param String 4
  - param Variable KelThuzad
- Action SetItemPositionLoc
  - param Function GetLastRemovedItem
    - Function GetLastRemovedItem
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad_Item04
- Action UnitRemoveItemFromSlotSwapped
  - param String 5
  - param Variable KelThuzad
- Action SetItemPositionLoc
  - param Function GetLastRemovedItem
    - Function GetLastRemovedItem
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad_Item05
- Action UnitRemoveItemFromSlotSwapped
  - param String 6
  - param Variable KelThuzad
- Action SetItemPositionLoc
  - param Function GetLastRemovedItem
    - Function GetLastRemovedItem
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad_Item06


## Next Level Prep
- enabled: True
- category: [5] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Enable the next level 
- Action SetMissionAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset MissionIndexO00
- Action SetCampaignAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset CampaignIndexO
- Action SetCinematicAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset CinematicIndexUED


## Next Level Run
- enabled: True
- category: [5] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Run the next level
- Action CustomVictoryBJ
  - param Preset Player03
  - param Preset UseSkipOptionSkip
  - param Preset UseSkipOptionUse


## Victory Cheat
- enabled: True
- category: [5] Level Data
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
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Prep
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run
- Event TriggerRegisterPlayerEventVictory
  - param Preset Player03


## DefeatCheat
- enabled: True
- category: [5] Level Data
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
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action CustomDefeatBJ
  - param Preset Player03
  - param String TRIGSTR_137
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player03


## OpeningCancelled
- enabled: True
- category: [0] OpeningCinematic
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
  - param Variable OpeningCancelled
  - param String true
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action ResetToGameCameraForPlayer
  - param Preset Player03
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadPost
  - param String 0
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde
- Action SetSkyModel
  - param Preset SkyModelNone
- Action EndThematicMusicBJ
- Action CommentString
  - param String ***********************
- Action SetUnitPositionLoc
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadPost
- Action RemoveUnit
  - param Variable Tichondrius
- Action SetUnitFacingTimed
  - param Variable KelThuzad
  - param String 90.00
  - param String 0
- Action SetUnitAnimation
  - param Variable KelThuzad
  - param String stand channel
- Action CommentString
  - param String ***********************
- Action ModifyGateBJ
  - param Preset GateOperationOpen
  - param Variable gg_dest_LTg1_0074
- Action DestroyEffectBJ
  - param Variable DarkSummonMissile
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Timers
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Shades
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypeSharedVision
  - param Preset OnOffOff
  - param Preset Player03
- Action SetPlayerAllianceStateBJ
  - param Preset Player07
  - param Preset Player03
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player07
  - param Preset AllianceSettingUnallied
- Action SetUnitOwner
  - param Variable KelThuzad
  - param Preset Player06
  - param Preset ChangeColorTrue
- Action IssueImmediateOrder
  - param Variable KelThuzad
  - param Preset UnitOrderHoldPosition
- Action ForGroup
  - param Variable CinematicUnitGroup
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_ComputerPlayers
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Start_Campaign_AI
- Action ConditionalTriggerExecute
  - param Variable gg_trg_MiningAcolytes
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateMasked
  - param Function GetEntireMapRect
    - Function GetEntireMapRect
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SelectUnitSingle
  - param Variable Arthas
- Action CommentString
  - param String ***********************
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player03
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player00
  - param Preset AllianceSettingUnallied
- Action CommentString
  - param String ***********************
- Action EnableTrigger
  - param Variable gg_trg_KelThuzad_Animation_Resets
- Action TriggerSleepAction
  - param String 5.00
- Action CommentString
  - param String Quest
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_104
- Action QuestSetDiscoveredBJ
  - param Variable QuestSummoning
  - param Preset DiscoveredOptionDiscovered
- Action CommentString
  - param String ***********************
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03


## Opening01
- enabled: True
- category: [0] OpeningCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypeSharedVision
  - param Preset OnOffOn
  - param Preset Player04
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOtf
  - param Variable gg_rct_KelThuzadPost
- Action CommentString
  - param String Opening Gryphons
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
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop10
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop11
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop12
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop13
- Action IssuePointOrderLoc
  - param Variable gg_unit_hgry_0018
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Region_025
- Action IssuePointOrderLoc
  - param Variable gg_unit_hgry_0022
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Region_023
- Action IssuePointOrderLoc
  - param Variable gg_unit_hgry_0019
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Region_024
- Action IssuePointOrderLoc
  - param Variable gg_unit_hgry_0020
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Region_026
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 6.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_OpeningGryphons01
  - param Preset Player03
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_OpeningGryphons02
  - param Preset Player03
  - param String 8.00
- Action CommentString
  - param String Music
- Action ClearMapMusicBJ
- Action TriggerSleepAction
  - param String 0.01
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action SetMapMusicIndexedBJ
  - param Preset MusicFileMusic
  - param String 1
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_OpeningCancelled
- Action CommentString
  - param String *********
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
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HippoGryphReady1
  - param Variable gg_unit_hgry_0019
- Action SetSoundVolumeBJ
  - param Variable gg_snd_HippoGryphReady1
  - param String 50.00
- Action PlaySoundBJ
  - param Variable gg_snd_HippoGryphReady1
- Action TriggerSleepAction
  - param String 5.00
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
  - param String Opening Archmage
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 3.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0011
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Knight01
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0009
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Knight02
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0007
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Knight03
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0005
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Knight04
- Action IssuePointOrderLoc
  - param Variable gg_unit_hsor_0015
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Sorc01
- Action IssuePointOrderLoc
  - param Variable gg_unit_hsor_0016
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Sorc02
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_HorseLoop2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KnightsRun
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_HorseLoop2
  - param String 50.00
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop2
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_KnightNoRiderWhat2
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KnightsRun
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_KnightNoRiderWhat2
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_KnightNoRiderWhat2
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_OpeningArchmage01
  - param Preset Player03
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_OpeningArchmage02
  - param Preset Player03
  - param String 7.00
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
- Action SetUnitFacingToFaceLocTimed
  - param Variable gg_unit_Hamg_0006
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadPost
  - param String 0.20
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
- Action ModifyGateBJ
  - param Preset GateOperationOpen
  - param Variable gg_dest_LTg1_0074
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_LargeCityGateOpen1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GateOpen
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_LargeCityGateOpen1
  - param String 60.00
- Action PlaySoundBJ
  - param Variable gg_snd_LargeCityGateOpen1
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
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 3.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CommentString
  - param String Opening Pan to Mountain
- Action CameraSetSmoothingFactorBJ
  - param String 0.00
- Action CameraResetSmoothingFactorBJ
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Opening01
  - param Preset Player03
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Opening03
  - param Preset Player03
  - param String 10.25
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 5.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 4.00
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
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypeSharedVision
  - param Preset OnOffOff
  - param Preset Player03
- Action CommentString
  - param String ***********************
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable KelThuzad
  - param String 0.30
- Action SetUnitFacingToFaceUnitTimed
  - param Variable KelThuzad
  - param Variable Arthas
  - param String 0.30
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_016
  - param Variable gg_snd_U08Arthas01
  - param String TRIGSTR_017
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
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
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Lich
  - param Preset Player03
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Lich02
  - param Preset Player03
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U08KelThuzad02
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_020
  - param Variable gg_snd_U08KelThuzad02
  - param String TRIGSTR_021
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
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
  - param String ***********************
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening02


## Opening02
- enabled: True
- category: [0] OpeningCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Tichondrius warp in
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Lich02
  - param Preset Player03
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_DreadLord
  - param Preset Player03
  - param String 12.00
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningTichondriusSpawn
  - param String Abilities\Spells\Undead\DarkSummoning\DarkSummonTarget.mdl
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_DarkSummoningTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndingReviveArthas
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_DarkSummoningTarget1
- Action SetVariable
  - param Variable DarkSummonMissile
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action TriggerSleepAction
  - param String 2
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
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String Utic
  - param Preset Player08
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningTichondriusSpawn
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable KelThuzad
- Action SetVariable
  - param Variable Tichondrius
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetPlayerAllianceStateBJ
  - param Preset Player08
  - param Preset Player03
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player08
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player08
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player08
  - param Preset AllianceSettingAllied
- Action UnitAddItemByIdSwapped
  - param String ofir
  - param Variable Tichondrius
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
- Action DestroyEffectBJ
  - param Variable DarkSummonMissile
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Tichondrius
  - param String 0.30
- Action SetUnitFacingToFaceUnitTimed
  - param Variable KelThuzad
  - param Variable Tichondrius
  - param String 0.30
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Tichondrius
  - param String TRIGSTR_035
  - param Variable gg_snd_U08Tichondrius03
  - param String TRIGSTR_040
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
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
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening03


## Opening03
- enabled: True
- category: [0] OpeningCinematic
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
- Action CommentString
  - param String Kel'Thuzad Summoning
- Action IssuePointOrderLoc
  - param Variable KelThuzad
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadPost
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Summoning01
  - param Preset Player03
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Summoning02
  - param Preset Player03
  - param String 10.00
- Action SetUnitFacingToFaceLocTimed
  - param Variable Tichondrius
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadPost
  - param String 4.00
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadPost
  - param String 1.00
- Action TriggerSleepAction
  - param String 4.50
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
- Action SetUnitFacingTimed
  - param Variable KelThuzad
  - param String 90.00
  - param String 0
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
  - param Variable KelThuzad
  - param String stand channel
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_CityScapeMagicRunesLoop1
  - param Variable gg_rct_Summoning
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_AntiMagicShellBirth1
  - param Variable KelThuzad
- Action PlaySoundBJ
  - param Variable gg_snd_AntiMagicShellBirth1
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_CrippleTarget1
  - param Variable KelThuzad
- Action PlaySoundBJ
  - param Variable gg_snd_CrippleTarget1
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
- Action CommentString
  - param String Summoning Effect
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
- Action CommentString
  - param String Tichondrius warps out
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningTichondriusSpawn
  - param String Abilities\Spells\Undead\DarkSummoning\DarkSummonTarget.mdl
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_DarkSummoningTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndingReviveArthas
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_DarkSummoningTarget1
- Action SetVariable
  - param Variable DarkSummonMissile
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action TriggerSleepAction
  - param String 2
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
- Action ShowUnitHide
  - param Variable Tichondrius
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
- Action DestroyEffectBJ
  - param Variable DarkSummonMissile
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
  - param String ***********************
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_OpeningCancelled
- Action SetUnitOwner
  - param Variable KelThuzad
  - param Preset Player06
  - param Preset ChangeColorTrue
- Action IssueImmediateOrder
  - param Variable KelThuzad
  - param Preset UnitOrderHoldPosition
- Action RemoveUnit
  - param Variable Tichondrius
- Action ForGroup
  - param Variable CinematicUnitGroup
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Shades
- Action CommentString
  - param String ***********************
- Action ResetToGameCameraForPlayer
  - param Preset Player03
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateMasked
  - param Function GetEntireMapRect
    - Function GetEntireMapRect
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SelectUnitSingle
  - param Variable Arthas
- Action SetPlayerAllianceStateBJ
  - param Preset Player07
  - param Preset Player03
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player07
  - param Preset AllianceSettingUnallied
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Timers
- Action SetSkyModel
  - param Preset SkyModelNone
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_ComputerPlayers
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Start_Campaign_AI
- Action ConditionalTriggerExecute
  - param Variable gg_trg_MiningAcolytes
- Action CommentString
  - param String ***********************
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player03
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player00
  - param Preset AllianceSettingUnallied
- Action CommentString
  - param String ***********************
- Action EnableTrigger
  - param Variable gg_trg_KelThuzad_Animation_Resets
- Action CommentString
  - param String Quest
- Action TriggerSleepAction
  - param String 5.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_107
- Action QuestSetDiscoveredBJ
  - param Variable QuestSummoning
  - param Preset DiscoveredOptionDiscovered
- Action CommentString
  - param String ***********************


## MiningAcolytes
- enabled: True
- category: [0] OpeningCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
Run from 'Opening03' and 'OpeningCancelled'
```
### Functions
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_MiningAcolytes
  - param Function DoNothing
    - Action IssueTargetOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderHarvest
      - param Variable gg_unit_ugol_0092
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Harvesters
  - param Function DoNothing
    - Action IssueImmediateOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAutoHarvestLumber


## ArthasHoldPosition
- enabled: True
- category: [12] EndingCinematic
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.50
- Action IssueImmediateOrder
  - param Variable Arthas
  - param Preset UnitOrderHoldPosition
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_EndingMoveArthas


## EndingCancelled
- enabled: True
- category: [12] EndingCinematic
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
  - param Variable EndingCancelled
  - param String true
- Action CommentString
  - param String Fade out
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable EndingCancelled
  - param Preset OperatorEqualENE
  - param String false
- Action TriggerSleepAction
  - param String 2
- Action EndThematicMusicBJ
- Action CommentString
  - param String Start the next level
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03


## Ending01
- enabled: True
- category: [12] EndingCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerExecute
  - param Variable gg_trg_Next_Level_Prep
- Action CommentString
  - param String Cinematic Stuff
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable KelThuzad
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_EndCin_Hide_Units
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ShowUnitShow
  - param Variable Arthas
- Action ShowUnitShow
  - param Variable KelThuzad
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
          - param Variable gg_rct_EndingReviveArthas
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_EndingReviveArthas
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable KelThuzad
- Action ClearSelection
- Action CommentString
  - param String Stop Summoning
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_CityScapeMagicRunesLoop1
  - param Variable gg_rct_Summoning
- Action DisableTrigger
  - param Variable gg_trg_KelThuzad_Animation_Resets
- Action ResetUnitAnimation
  - param Variable KelThuzad
- Action DestroyTimerDialogBJ
  - param Variable CountdownTimerWindow
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetSkyModel
  - param Preset SkyModelSky02
- Action SetTerrainFogExBJ
  - param String 0
  - param String 500.00
  - param String 7000.00
  - param String 0
  - param String 35.00
  - param String 0.00
  - param String 15.00
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable KelThuzad
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitAcquireRangeBJ
  - param Variable Arthas
  - param String 0.00
- Action EnableTrigger
  - param Variable gg_trg_ArthasHoldPosition
- Action CommentString
  - param String Cinematic Can Now Be Skipped
- Action EnableTrigger
  - param Variable gg_trg_EndingCancelled
- Action CommentString
  - param String Archimonde Enters
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ArchimondeBirth01
  - param Preset Player03
  - param String 0
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 5.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ArchimondeBirth02
  - param Preset Player03
  - param String 24.00
- Action DestroyEffectBJ
  - param Variable DarkSummonMissile
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
- Action DestroyEffectBJ
  - param Variable DarkSummonTarget
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
  - param Variable KelThuzad
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndingKelThuzadPost
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
- Action CommentString
  - param String Arthas watches
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndingMoveArthas
- Action CommentString
  - param String ************
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_076
  - param Variable gg_snd_U08KelThuzad18
  - param String TRIGSTR_077
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
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
- Action SetUnitFacingToFaceLocTimed
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde
  - param String 0
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde
  - param String 0
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadPost
  - param String Abilities\Spells\Undead\DarkSummoning\DarkSummonTarget.mdl
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_DarkSummoningTarget1
  - param Variable KelThuzad
- Action PlaySoundBJ
  - param Variable gg_snd_DarkSummoningTarget1
- Action SetVariable
  - param Variable DarkSummonMissile
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action TriggerSleepAction
  - param String 6.00
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
- Action DestroyEffectBJ
  - param Variable DarkSummonMissile
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String YOtf
  - param Function GetPlayableMapRect
    - Function GetPlayableMapRect
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_BuildingDeathLargeOrc
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_BuildingDeathLargeOrc
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
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String YOf2
  - param Function GetPlayableMapRect
    - Function GetPlayableMapRect
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String YOtf
  - param Variable gg_rct_KelThuzadPost
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_BuildingDeathLargeHuman
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_BuildingDeathLargeHuman
- Action CommentString
  - param String Warlock appears
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_WarlockAppears
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_WarlockAppears
- Action CommentString
  - param String **********
- Action CreateNUnitsAtLoc
  - param String 1
  - param String Uwar
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde
  - param String 90.00
- Action SetVariable
  - param Variable Archimonde
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
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
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOf2
  - param Function GetPlayableMapRect
    - Function GetPlayableMapRect
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOtf
  - param Function GetPlayableMapRect
    - Function GetPlayableMapRect
- Action SetUnitAnimation
  - param Variable Archimonde
  - param String spell inferno
- Action TriggerSleepAction
  - param String 2
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
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde
  - param String 0
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOtf
  - param Variable gg_rct_KelThuzadPost
- Action SetUnitAnimation
  - param Variable Archimonde
  - param String stand
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Preset Player00
  - param Function DoNothing
    - Action ExplodeUnitBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Preset Player01
  - param Function DoNothing
    - Action ExplodeUnitBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Preset Player02
  - param Function DoNothing
    - Action ExplodeUnitBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action WaitForSoundBJ
  - param Variable gg_snd_U08KelThuzad18
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
  - param Variable Archimonde
  - param String TRIGSTR_078
  - param Variable gg_snd_U08Archimonde19
  - param String TRIGSTR_079
  - param Preset AddSetToAdd
  - param String 0
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
  - param String Music
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDoom
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Archimonde
  - param Variable KelThuzad
  - param String 0
- Action CommentString
  - param String Archimonde Talks
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ArchimondeSpeaks
  - param Preset Player03
  - param String 0
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Archimonde
  - param String TRIGSTR_080
  - param Variable gg_snd_U08Archimonde20
  - param String TRIGSTR_081
  - param Preset AddSetToAdd
  - param String 0
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
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningTichondriusSpawn
  - param String Abilities\Spells\Undead\DarkSummoning\DarkSummonTarget.mdl
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_DarkSummoningTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningTichondriusSpawn
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_DarkSummoningTarget1
- Action SetVariable
  - param Variable DarkSummonMissile
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action TriggerSleepAction
  - param String 2
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
  - param String ************
- Action SetPlayerColorBJ
  - param Preset Player00
  - param Preset Color00
  - param Preset PlayerChangeColorChange
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String Utic
  - param Preset Player08
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningTichondriusSpawn
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable KelThuzad
- Action SetVariable
  - param Variable Tichondrius
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssueImmediateOrder
  - param Variable Tichondrius
  - param Preset UnitOrderHoldPosition
- Action SetPlayerAllianceStateBJ
  - param Preset Player08
  - param Preset Player03
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player08
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player08
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player08
  - param Preset AllianceSettingAllied
- Action UnitAddItemByIdSwapped
  - param String ofir
  - param Variable Tichondrius
- Action CommentString
  - param String ************
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Tichondrius
  - param Variable Archimonde
  - param String 0
- Action DestroyEffectBJ
  - param Variable DarkSummonMissile
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
- Action WaitForSoundBJ
  - param Variable gg_snd_U08Archimonde20
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
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Archimonde
  - param Variable Tichondrius
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_TichondriusUpClose
  - param Preset Player03
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_TichondriusUpClose
  - param Preset Player03
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U08Tichondrius21
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Tichondrius
  - param String TRIGSTR_086
  - param Variable gg_snd_U08Tichondrius21
  - param String TRIGSTR_087
  - param Preset AddSetToAdd
  - param String 0
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_VeryWell
  - param Preset Player03
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_VeryWell
  - param Preset Player03
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U08Archimonde22
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Archimonde
  - param String TRIGSTR_088
  - param Variable gg_snd_U08Archimonde22
  - param String TRIGSTR_089
  - param Preset AddSetToAdd
  - param String 0
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
  - param Variable Tichondrius
  - param String TRIGSTR_090
  - param Variable gg_snd_U08Tichondrius23
  - param String TRIGSTR_091
  - param Preset AddSetToAdd
  - param String 0
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_AboveArchimonde
  - param Preset Player03
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Archimonde
  - param String TRIGSTR_092
  - param Variable gg_snd_U08Archimonde24
  - param String TRIGSTR_093
  - param Preset AddSetToAdd
  - param String 0
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
- Action SetUnitAnimation
  - param Variable Archimonde
  - param String spell inferno
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_LightningShieldTarget
  - param Variable Archimonde
- Action PlaySoundBJ
  - param Variable gg_snd_LightningShieldTarget
- Action TriggerSleepAction
  - param String 2
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
  - param Variable Archimonde
  - param String stand
- Action IssuePointOrderLoc
  - param Variable Archimonde
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArchimondeDest
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
- Action IssuePointOrderLoc
  - param Variable Tichondrius
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TichondriusDest
- Action TriggerSleepAction
  - param String 2.60
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
- Action SetUnitFacingToFaceUnitTimed
  - param Variable KelThuzad
  - param Variable Arthas
  - param String 0
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable KelThuzad
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ArthasJoke
  - param Preset Player03
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U08Arthas25
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_096
  - param Variable gg_snd_U08Arthas25
  - param String TRIGSTR_097
  - param Preset AddSetToAdd
  - param String 0
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_KelEnding01
  - param Preset Player03
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_KelEnding02
  - param Preset Player03
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U08KelThuzad26
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_098
  - param Variable gg_snd_U08KelThuzad26
  - param String TRIGSTR_099
  - param Preset AddSetToAdd
  - param String 0
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
- Action EndThematicMusicBJ
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
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop10
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop11
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop12
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop13
- Action CommentString
  - param String Cinematic Can No Longer Be Skipped
- Action DisableTrigger
  - param Variable gg_trg_EndingCancelled
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 4.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 4.00
- Action CommentString
  - param String Start the next level
- Action TriggerSleepAction
  - param String 2
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run


## KelThuzad Animation Resets
- enabled: True
- category: [15] KelThuzad Summon Reset
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitAnimation
  - param Variable KelThuzad
  - param String stand channel
- Event TriggerRegisterTimerEventPeriodic
  - param String 1.82


## DialogueStart
- enabled: True
- category: [1] KelThuzad attack message
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
- Action TriggerSleepAction
  - param String 1.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_144
- Action StartTimerBJ
  - param Variable WarningLoopCooldownTimer
  - param Preset PeriodicOptionOneTime
  - param String 45.00
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventAttacked


## DialogueCooldown
- enabled: True
- category: [1] KelThuzad attack message
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action EnableTrigger
  - param Variable gg_trg_DialogueStart
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable WarningLoopCooldownTimer


## Timer01HellHound
- enabled: True
- category: [7] Reinforcements
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
  - param Variable gg_trg_Timer01HellHound_Queue
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerHellHound01


## Timer01HellHound Queue
- enabled: True
- category: [7] Reinforcements
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
  - param String Music
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDoom
- Action CommentString
  - param String **********
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_118
  - param Variable gg_snd_U08KelThuzad07
  - param String TRIGSTR_119
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action CommentString
  - param String Hell Hound 03
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_HellHound03
  - param String Abilities\Spells\Undead\ReviveUndead\ReviveUndead.mdl
- Action SetVariable
  - param Variable HellHoundEffect03
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nfel
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_HellHound03
  - param String 50.00
- Action TriggerSleepAction
  - param String 1.00
- Action CommentString
  - param String Hell Hound 01
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Hellhound01
  - param String Abilities\Spells\Undead\ReviveUndead\ReviveUndead.mdl
- Action SetVariable
  - param Variable HellHoundEffect01
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nfel
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Hellhound01
  - param String 120.00
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String Hell Hound 02
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Hellhound02
  - param String Abilities\Spells\Undead\ReviveUndead\ReviveUndead.mdl
- Action SetVariable
  - param Variable HellHoundEffect02
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nfel
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Hellhound02
  - param String 50.00
- Action CommentString
  - param String *******************
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_120
  - param Variable gg_snd_U08KelThuzad08
  - param String TRIGSTR_121
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action EndThematicMusicBJ
- Action DestroyEffectBJ
  - param Variable HellHoundEffect01
- Action DestroyEffectBJ
  - param Variable HellHoundEffect02
- Action DestroyEffectBJ
  - param Variable HellHoundEffect03
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_Timer01HellHound_Queue


## Timer02HellHound
- enabled: True
- category: [7] Reinforcements
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
  - param Variable gg_trg_Timer02HellHound_Queue
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerHellHound02


## Timer02HellHound Queue
- enabled: True
- category: [7] Reinforcements
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
  - param String Music
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDoom
- Action CommentString
  - param String **********
- Action CommentString
  - param String Hell Hound 03
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_HellHound03
  - param String Abilities\Spells\Undead\ReviveUndead\ReviveUndead.mdl
- Action SetVariable
  - param Variable HellHoundEffect03
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nfel
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_HellHound03
  - param String 50.00
- Action TriggerSleepAction
  - param String 1.00
- Action CommentString
  - param String Hell Hound 01
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Hellhound01
  - param String Abilities\Spells\Undead\ReviveUndead\ReviveUndead.mdl
- Action SetVariable
  - param Variable HellHoundEffect01
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nfel
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Hellhound01
  - param String 120.00
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String Hell Hound 02
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Hellhound02
  - param String Abilities\Spells\Undead\ReviveUndead\ReviveUndead.mdl
- Action SetVariable
  - param Variable HellHoundEffect02
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nfel
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Hellhound02
  - param String 50.00
- Action CommentString
  - param String *******************
- Action SetSpeechVolumeGroupsBJ
- Action EndThematicMusicBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_122
  - param Variable gg_snd_U08KelThuzad08
  - param String TRIGSTR_123
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action DestroyEffectBJ
  - param Variable HellHoundEffect01
- Action DestroyEffectBJ
  - param Variable HellHoundEffect02
- Action DestroyEffectBJ
  - param Variable HellHoundEffect03
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_Timer02HellHound_Queue


## Timer03HellHound
- enabled: True
- category: [7] Reinforcements
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
  - param Variable gg_trg_Timer03HellHound_Queue
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerHellHound03


## Timer03HellHound Queue
- enabled: True
- category: [7] Reinforcements
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
  - param String Music
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDoom
- Action CommentString
  - param String **********
- Action CommentString
  - param String Hell Hound 03
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_HellHound03
  - param String Abilities\Spells\Undead\ReviveUndead\ReviveUndead.mdl
- Action SetVariable
  - param Variable HellHoundEffect03
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nfel
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_HellHound03
  - param String 50.00
- Action TriggerSleepAction
  - param String 1.00
- Action CommentString
  - param String Hell Hound 01
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Hellhound01
  - param String Abilities\Spells\Undead\ReviveUndead\ReviveUndead.mdl
- Action SetVariable
  - param Variable HellHoundEffect01
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nfel
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Hellhound01
  - param String 120.00
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String Hell Hound 02
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Hellhound02
  - param String Abilities\Spells\Undead\ReviveUndead\ReviveUndead.mdl
- Action SetVariable
  - param Variable HellHoundEffect02
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nfel
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Hellhound02
  - param String 50.00
- Action CommentString
  - param String *******************
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_124
  - param Variable gg_snd_U08KelThuzad08
  - param String TRIGSTR_125
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action EndThematicMusicBJ
- Action DestroyEffectBJ
  - param Variable HellHoundEffect01
- Action DestroyEffectBJ
  - param Variable HellHoundEffect02
- Action DestroyEffectBJ
  - param Variable HellHoundEffect03
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_Timer03HellHound_Queue


## TimerInfernals
- enabled: True
- category: [7] Reinforcements
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
  - param Variable gg_trg_TimerInfernals_Queue
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerInfernals


## TimerInfernals Queue
- enabled: True
- category: [7] Reinforcements
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
  - param String Music
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDoom
- Action CommentString
  - param String **********
- Action SetSpeechVolumeGroupsBJ
- Action VolumeGroupResetBJ
- Action PanCameraToTimedLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde
  - param String 0
- Action CommentString
  - param String Infernal 01
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Infernal01
  - param String Abilities\Spells\Demon\RainOfFire\RainOfFireTarget.mdl
- Action SetVariable
  - param Variable InfernalEffect01
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action TriggerSleepAction
  - param String 0.20
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ninf
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Infernal01
  - param String 160.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String birth
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String Infernal 02
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Infernal02
  - param String Abilities\Spells\Demon\RainOfFire\RainOfFireTarget.mdl
- Action SetVariable
  - param Variable InfernalEffect02
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action TriggerSleepAction
  - param String 0.20
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ninf
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Infernal02
  - param String 140.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String birth
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String Infernal 03
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Infernal03
  - param String Abilities\Spells\Demon\RainOfFire\RainOfFireTarget.mdl
- Action SetVariable
  - param Variable InfernalEffect03
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action TriggerSleepAction
  - param String 0.20
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ninf
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Infernal03
  - param String 100.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String birth
- Action TriggerSleepAction
  - param String 0.20
- Action CommentString
  - param String Infernal 04
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Infernal04
  - param String Abilities\Spells\Demon\RainOfFire\RainOfFireTarget.mdl
- Action SetVariable
  - param Variable InfernalEffect04
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action TriggerSleepAction
  - param String 0.20
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ninf
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Infernal04
  - param String 40.00
- Action SetUnitAnimation
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String birth
- Action CommentString
  - param String *****************
- Action SetSpeechVolumeGroupsBJ
- Action EndThematicMusicBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_126
  - param Variable gg_snd_U08KelThuzad09
  - param String TRIGSTR_127
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_TimerInfernals_Queue


## Shades
- enabled: True
- category: [20] ShadeScouts
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_ushd_0170
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Shade01PatrolDest
- Action IssuePointOrderLoc
  - param Variable gg_unit_ushd_0171
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Shade02PatrolDest
- Action IssuePointOrderLoc
  - param Variable gg_unit_ushd_0177
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Shade03PatrolDest
- Action IssuePointOrderLoc
  - param Variable gg_unit_ushd_0169
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ShadeGoblinLandMine
- Action IssuePointOrderLoc
  - param Variable gg_unit_ushd_0178
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ShadeGoldmine


## ShadeFountain
- enabled: True
- category: [20] ShadeScouts
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
  - param Variable gg_trg_ShadeFountain_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param String ushd
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_HintFountainsArea


## ShadeFountain Queue
- enabled: True
- category: [20] ShadeScouts
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
  - param String 2.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_128
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## ArchmageLevel
- enabled: True
- category: [19] Hermit
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetHeroLevel
  - param Variable gg_unit_Hamg_0205
  - param String 8
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0205
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0205
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0205
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0205
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0205
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0205
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0205
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0205
  - param Preset HeroSkillWaterElemental
- Event TriggerRegisterTimerEventSingle
  - param String 1.00


## ArchmageSpell
- enabled: True
- category: [19] Hermit
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetAttackedUnitBJ
        - Function GetAttackedUnitBJ
  - param Preset OperatorEqualENE
  - param String nshe
- Action IssueTargetOrder
  - param Variable gg_unit_Hamg_0205
  - param Preset UnitOrderAttackUnit
  - param Function GetAttacker
    - Function GetAttacker
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNP
  - param Preset PlayerUnitEventAttacked


## SheepContainmentArea
- enabled: True
- category: [19] Hermit
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param String nshe
- Action IssuePointOrderLoc
  - param Function GetLeavingUnit
    - Function GetLeavingUnit
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_SheepContainmentArea
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_SheepContainmentArea


## InitSideQuest
- enabled: True
- category: [6] GoblinMinesSideQuest
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
  - param Variable gg_trg_InitSideQuest_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareBoolean
  - param Function IsQuestCompleted
    - Function IsQuestCompleted
      - param Variable QuestGoblinMine
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerSideQuest


## InitSideQuest Queue
- enabled: True
- category: [6] GoblinMinesSideQuest
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
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_unec_0159
  - param String TRIGSTR_145
  - param Variable gg_snd_U08Necromancer10
  - param String TRIGSTR_146
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
      - param String TRIGSTR_164
      - param Variable gg_snd_U08Arthas11
      - param String TRIGSTR_165
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestCompleted
        - Function IsQuestCompleted
          - param Variable QuestGoblinMine
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RevealerGoblinMines
  - param String 512
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RevealerGoblinMines
  - param String 5.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GoblinMineArea
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_149
- Action QuestSetDiscoveredBJ
  - param Variable QuestGoblinMine
  - param Preset DiscoveredOptionDiscovered
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## QuestCompleted
- enabled: True
- category: [6] GoblinMinesSideQuest
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsTriggerEnabled
    - Function IsTriggerEnabled
      - param Variable gg_trg_QuestCompleted
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QuestSetCompletedBJ
  - param Variable QuestGoblinMine
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_101
- Action QuestItemSetCompletedBJ
  - param Variable QuestGoblinMineReq
  - param Preset CompletionOptionCompleted
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0174
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FootmanCamp01
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0017
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FootmanCamp02


## GoblinMine01
- enabled: True
- category: [6] GoblinMinesSideQuest
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
- Action CreateItemLoc
  - param String gobm
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GoblinMine01
- Action ConditionalTriggerExecute
  - param Variable gg_trg_QuestCompleted
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_0142


## GoblinMine02
- enabled: True
- category: [6] GoblinMinesSideQuest
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
- Action CreateItemLoc
  - param String gobm
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GoblinMine02
- Action ConditionalTriggerExecute
  - param Variable gg_trg_QuestCompleted
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_0113


## GoblinMine03
- enabled: True
- category: [6] GoblinMinesSideQuest
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
- Action CreateItemLoc
  - param String gobm
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GoblinMine03
- Action ConditionalTriggerExecute
  - param Variable gg_trg_QuestCompleted
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_0111


## GoblinMine04
- enabled: True
- category: [6] GoblinMinesSideQuest
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
- Action CreateItemLoc
  - param String gobm
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GoblinMine04
- Action ConditionalTriggerExecute
  - param Variable gg_trg_QuestCompleted
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_0112


## Arthas01
- enabled: True
- category: [14] DialogAttack
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_TempleArea
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Arthas01_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareRace
  - param Function GetUnitRace
    - Function GetUnitRace
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset RaceHuman


## Arthas01 Queue
- enabled: True
- category: [14] DialogAttack
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
      - param String TRIGSTR_190
      - param Variable gg_snd_U08Arthas04
      - param String TRIGSTR_191
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Arthas02
- enabled: True
- category: [14] DialogAttack
- starts off: True
- is custom text: False
- run on map init: False
```description
Turned on from 'TimerAtRushPoint'
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Arthas02_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareRace
  - param Function GetUnitRace
    - Function GetUnitRace
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset RaceHuman
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_TempleArea


## Arthas02 Queue
- enabled: True
- category: [14] DialogAttack
- starts off: True
- is custom text: False
- run on map init: False
```description
Turned on from 'TimerAtRushPoint'
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
      - param Variable gg_snd_U08Arthas06
      - param String TRIGSTR_217
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## KelThuzadDead
- enabled: True
- category: [3] VictoryDefeat
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
  - param Variable KelThuzad
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_KelThuzad_Animation_Resets
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action PauseTimerBJ
  - param Preset PauseResumePause
  - param Variable TimerSummoning
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_105
- Action TriggerSleepAction
  - param String 2.00
- Action PauseGameOn
- Action TriggerSleepAction
  - param String 2.00
- Action CustomDefeatBJ
  - param Preset Player03
  - param String TRIGSTR_106


## Victory
- enabled: True
- category: [3] VictoryDefeat
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
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerSummoning
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Ending01


## Player Kills All
- enabled: True
- category: [2] Wipe The Map Victory
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player00
      - param Preset InclusionInclude
  - param Preset OperatorLessEq
  - param String 0
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player01
      - param Preset InclusionInclude
  - param Preset OperatorLessEq
  - param String 0
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player02
      - param Preset InclusionInclude
  - param Preset OperatorLessEq
  - param String 0
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action StartTimerBJ
  - param Variable TimerSummoning
  - param Preset PeriodicOptionOneTime
  - param String 5.00
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player02
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player00
  - param Preset PlayerUnitEventDeath


## HellHoundSummoning
- enabled: False
- category: [9] Debug
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Timer01HellHound
- Action DisableTrigger
  - param Variable gg_trg_InitSideQuest
- Event TriggerRegisterPlayerChatEvent
  - param Preset Player03
  - param String HellHounds
  - param Preset ChatMatchTypeExact


## InfernalSummoning
- enabled: False
- category: [9] Debug
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ConditionalTriggerExecute
  - param Variable gg_trg_TimerInfernals
- Action DisableTrigger
  - param Variable gg_trg_InitSideQuest
- Event TriggerRegisterPlayerChatEvent
  - param Preset Player03
  - param String Infernals
  - param Preset ChatMatchTypeExact


## EndingCinematic
- enabled: False
- category: [9] Debug
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Victory
- Action DisableTrigger
  - param Variable gg_trg_InitSideQuest
- Event TriggerRegisterPlayerChatEvent
  - param Preset Player03
  - param String Ending
  - param Preset ChatMatchTypeExact

