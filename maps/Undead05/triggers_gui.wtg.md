version = TFT

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 23 | Archipelago | False |
| 0 | Initialization | False |
| 13 | Difficulty | False |
| 12 | AI Resourcing | False |
| 7 | Heroes | False |
| 22 | Villagers | False |
| 14 | Hints | False |
| 1 | IntroCinematic | False |
| 15 | Tichondrius Fade | False |
| 17 | SylvanasFailsafes | False |
| 2 | SylvanasAttacks | False |
| 6 | AI Activation | False |
| 3 | Runners | False |
| 21 | Runner Messaging | False |
| 19 | RunnerSpawnLocation | False |
| 18 | GargoyleCinematic | False |
| 4 | SylvanusCinematic | False |
| 10 | BansheesAvailable | False |
| 5 | ExitCinematic | False |
| 16 | Level Changing | False |
| 8 | Victory | False |
| 9 | Defeat | False |
| 11 | Cheat Code Support | False |
| 20 | DEBUGSylvanus | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| IntroCinematicRunning | boolean | . | . |
| IntroCinematicEscape | boolean | . | . |
| ExitCinematicEscape | boolean | . | . |
| ExitCinematicRunning | boolean | . | . |
| Arthas | unit | . | . |
| WeatherSunbeams | weathereffect | . | . |
| PlayerSylvanus | player | . | . |
| PlayerSilvermoon | player | . | . |
| PlayerArthas | player | . | . |
| EffectDarkSummoning | effect | . | . |
| PlayerTichondrius | player | . | . |
| Tichondrius | unit | . | . |
| Sylvanas | unit | . | . |
| SylvanasAttackGroup | group | . | . |
| TimerSylvanasAttack | timer | . | . |
| SylvanasIntro | unit | . | . |
| SilvermoonArchMage | unit | . | . |
| TimerReinforcementWarning | timer | . | . |
| QuestSunwell | quest | . | . |
| QuestSilvanus | quest | . | . |
| QuestRunners | quest | . | . |
| TimerFirstMessenger | timer | . | . |
| Runner | unit | . | . |
| GargoyleGroup | group | . | . |
| RunnerActive | boolean | . | true |
| TimerRunner | timer | . | . |
| SylvanasCinematicEscape | boolean | . | . |
| SylvanasCinematicRunning | boolean | . | . |
| SylvanasBanshee | unit | . | . |
| AISilvermoonActive | boolean | . | false |
| AIBlueActive | boolean | . | false |
| SylvanasBansheeCreated | boolean | . | false |
| QuestReqSunwellGuardians | questitem | . | . |
| QuestReqSunwellArthas | questitem | . | . |
| QuestReqSilvanus | questitem | . | . |
| QuestReqRunners | questitem | . | . |
| ArthasAtSunwell | boolean | . | false |
| GuardianGroup | group | . | . |
| GuardiansDead | boolean | . | false |
| ExitDeathSceneAFarm01 | unit | . | . |
| ExitDeathSceneAFarm02 | unit | . | . |
| ExitDeathSceneBFarm01 | unit | . | . |
| ExitDeathSceneBFarm04 | unit | . | . |
| ExitKelthuzadGhost | unit | . | . |
| ExitKelthuzadLich | unit | . | . |
| TimerBansheeHint | timer | . | . |
| PlayerSilvermoonBrown | player | . | . |
| ExitDeathSceneAElf | unit | . | . |
| ExitDeathSceneBElf01 | unit | . | . |
| RunnerVariableTarget | rect | . | . |
| RandomRegion | real | . | . |
| RunnerTimerLength | real | . | 240.00 |
| ExitDeathSceneBElf02 | unit | . | . |
| ExitDeathSceneBElf03 | unit | . | . |
| RunnerMovementSpeedHandicap | real | . | . |
| TimerStartSylvanusAI | timer | . | . |
| QuestReqNoAttackSilvermoon | questitem | . | . |
| TimerStoneFormHint | timer | . | . |
| FadeIn | real | . | 100.00 |
| FadeOut | real | . | 0.00 |
| ArthasInitialPosition | location | . | . |
| RunnerRandomLine | real | . | . |
| GargoyleCinematicRunning | boolean | . | false |
| GargoyleCinematicEscape | boolean | . | false |
| RunnerSpawnBuilding | unit | . | UnitNull |
| TimerRunnerFailsafe | timer | . | . |
| LeaderboardRunner | leaderboard | . | . |
| TimerWindowRunner | timerdialog | . | . |
| EffectLichRes | effect | . | . |
| UnitGroupSelection | group | . | . |
| UnitVillager01 | unit | . | . |
| UnitVillager02 | unit | . | . |
| UnitVillager03 | unit | . | . |
| UnitVillager04 | unit | . | . |
| UnitVillager05 | unit | . | . |
| UnitAltar | unit | . | . |
| PointArthasRevivePosition | location | . | . |
| UnitExitDeathSceneGhoul | unit | . | . |
| GameOver | boolean | . | false |

# Triggers
## fileio
- enabled: True
- category: [23] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## map_config
- enabled: True
- category: [23] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## status
- enabled: True
- category: [23] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## heroes
- enabled: True
- category: [23] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## item_locations
- enabled: True
- category: [23] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## debug
- enabled: True
- category: [23] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## zoom
- enabled: True
- category: [23] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## irregulars
- enabled: True
- category: [23] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## StartInitializationSequence
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetCampaignMenuRaceBJ
  - param Preset CampaignIndexU
- Event MapInitializationEvent
- Action TriggerExecute
  - param Variable gg_trg_Initialize_Variables
- Action TriggerExecute
  - param Variable gg_trg_Initial_Resources
- Action TriggerExecute
  - param Variable gg_trg_Initial_Alliances
- Action TriggerExecute
  - param Variable gg_trg_Initial_Weather
- Action TriggerExecute
  - param Variable gg_trg_Initial_Heroes
- Action TriggerExecute
  - param Variable gg_trg_Initial_Quests
- Action TriggerExecute
  - param Variable gg_trg_Initial_Music
- Action TriggerExecute
  - param Variable gg_trg_Setup_Scorescreen
- Action TriggerExecute
  - param Variable gg_trg_TriggerIntroCinematic


## Initialize Variables
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable PlayerTichondrius
  - param Preset Player00
- Action SetVariable
  - param Variable PlayerSylvanus
  - param Preset Player01
- Action SetVariable
  - param Variable PlayerSilvermoon
  - param Preset Player02
- Action SetVariable
  - param Variable PlayerArthas
  - param Preset Player03
- Action SetVariable
  - param Variable PlayerSilvermoonBrown
  - param Preset Player11
- Action SetPlayerColorBJ
  - param Preset Player09
  - param Preset Color01
  - param Preset PlayerChangeColorChange
- Action SetPlayerColorBJ
  - param Preset Player11
  - param Preset Color02
  - param Preset PlayerChangeColorChange
- Action SetVariable
  - param Variable Sylvanas
  - param Variable gg_unit_Hvwd_0128
- Action SetVariable
  - param Variable SilvermoonArchMage
  - param Variable gg_unit_Hamg_0203
- Action SetVariable
  - param Variable SylvanasIntro
  - param Variable gg_unit_Hvwd_0167
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Variable gg_rct_SylvanasIntroGroup
      - param Preset Player09
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable SylvanasAttackGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_nggr_0134
  - param Variable GuardianGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_nggr_0049
  - param Variable GuardianGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_nggr_0135
  - param Variable GuardianGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_nggr_0136
  - param Variable GuardianGroup
- Action SetPlayerColorBJ
  - param Preset Player05
  - param Preset Color04
  - param Preset PlayerChangeColorChange
- Action SetUnitColor
  - param Variable gg_unit_ncp3_0202
  - param Function GetPlayerColor
    - Function GetPlayerColor
      - param Preset Player03
- Action SetVariable
  - param Variable RunnerSpawnBuilding
  - param Variable gg_unit_hcas_0004
- Action SetVariable
  - param Variable RunnerVariableTarget
  - param Variable gg_rct_RunnerTargetWest
- Action CommentString
  - param String VILLAGERS
- Action SetVariable
  - param Variable UnitVillager01
  - param Variable gg_unit_nhef_0055
- Action SetVariable
  - param Variable UnitVillager02
  - param Variable gg_unit_nhef_0051
- Action SetVariable
  - param Variable UnitVillager03
  - param Variable gg_unit_nhef_0039
- Action SetVariable
  - param Variable UnitVillager04
  - param Variable gg_unit_nhef_0035
- Action SetVariable
  - param Variable UnitVillager05
  - param Variable gg_unit_nhef_0040


## Initial Resources
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerState
  - param Variable PlayerSylvanus
  - param Preset PlayerStateGold
  - param String 1000
- Action SetPlayerState
  - param Variable PlayerSylvanus
  - param Preset PlayerStateLumber
  - param String 1000
- Action SetPlayerState
  - param Variable PlayerSilvermoon
  - param Preset PlayerStateGold
  - param String 1000
- Action SetPlayerState
  - param Variable PlayerSilvermoon
  - param Preset PlayerStateLumber
  - param String 1000


## Initial Weather
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AddWeatherEffectSaveLast
  - param Variable gg_rct_WeatherSunlight
  - param Preset WeatherRaysOfLight
- Action SetVariable
  - param Variable WeatherSunbeams
  - param Function GetLastCreatedWeatherEffect
    - Function GetLastCreatedWeatherEffect
- Action EnableWeatherEffect
  - param Variable WeatherSunbeams
  - param Preset OnOffOn


## Initial Alliances
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
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player02
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player04
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player11
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player02
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player04
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11


## Initial Quests
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateQuestBJ
  - param Preset QuestTypeReqDiscovered
  - param String TRIGSTR_029
  - param String TRIGSTR_030
  - param String ReplaceableTextures\CommandButtons\BTNManaRecharge.tga
- Action SetVariable
  - param Variable QuestSunwell
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestSunwell
  - param String TRIGSTR_035
- Action SetVariable
  - param Variable QuestReqSunwellGuardians
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestBJ
  - param Preset QuestTypeOptUndiscovered
  - param String TRIGSTR_031
  - param String TRIGSTR_032
  - param String ReplaceableTextures\CommandButtons\BTNSylvanusWindrunner.tga
- Action SetVariable
  - param Variable QuestSilvanus
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestSilvanus
  - param String TRIGSTR_037
- Action SetVariable
  - param Variable QuestReqSilvanus
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestBJ
  - param Preset QuestTypeOptUndiscovered
  - param String TRIGSTR_040
  - param String TRIGSTR_041
  - param String ReplaceableTextures\CommandButtons\BTNCallToArms.tga
- Action SetVariable
  - param Variable QuestRunners
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestRunners
  - param String TRIGSTR_042
- Action SetVariable
  - param Variable QuestReqRunners
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Variable QuestRunners
  - param String TRIGSTR_111
- Action SetVariable
  - param Variable QuestReqNoAttackSilvermoon
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ


## Initial Music
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ClearMapMusicBJ
- Action TriggerSleepAction
  - param String 0.01
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action SetMapMusicIndexedBJ
  - param Preset MusicFileMusic
  - param String 1


## Setup Scorescreen
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
  - param Variable PlayerTichondrius
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Variable PlayerSilvermoonBrown
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player04
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player05
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player09
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player10


## Easy
- enabled: True
- category: [13] Difficulty
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RunnerTimerLength
  - param String 240.00
- Action SetVariable
  - param Variable RunnerMovementSpeedHandicap
  - param String 40.00
- Action RemoveGuardPosition
  - param Variable gg_unit_nheb_0015
- Action CommentString
  - param String REMOVE UNITS
- Action RemoveUnit
  - param Variable gg_unit_nheb_0015
- Action RemoveUnit
  - param Variable gg_unit_negt_0005
- Action RemoveUnit
  - param Variable gg_unit_nheb_0056
- Action CommentString
  - param String HANDICAP
- Action SetPlayerHandicapBJ
  - param Preset Player01
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player02
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player04
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player09
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player10
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player11
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset PlayerNA
  - param Preset RealHandicapEasy
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyEasy
- Event MapInitializationEvent


## Normal
- enabled: True
- category: [13] Difficulty
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RunnerTimerLength
  - param String 240.00
- Action SetVariable
  - param Variable RunnerMovementSpeedHandicap
  - param String 40.00
- Action RemoveGuardPosition
  - param Variable gg_unit_nheb_0015
- Action CommentString
  - param String REMOVE UNITS
- Action RemoveUnit
  - param Variable gg_unit_nheb_0015
- Action RemoveUnit
  - param Variable gg_unit_negt_0005
- Action RemoveUnit
  - param Variable gg_unit_nheb_0056
- Event MapInitializationEvent
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyNormal


## Hard
- enabled: True
- category: [13] Difficulty
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RunnerTimerLength
  - param String 180.00
- Action SetVariable
  - param Variable RunnerMovementSpeedHandicap
  - param String 0.00
- Event MapInitializationEvent
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard


## BlueGold
- enabled: True
- category: [12] AI Resourcing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player01
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player01
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThan
  - param String 1000


## BlueLumber
- enabled: True
- category: [12] AI Resourcing
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
  - param Preset LimitOpLessThan
  - param String 1000


## TealGold
- enabled: True
- category: [12] AI Resourcing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player02
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player02
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThan
  - param String 1000


## TealLumber
- enabled: True
- category: [12] AI Resourcing
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
  - param Preset LimitOpLessThan
  - param String 1000


## BrownGold
- enabled: True
- category: [12] AI Resourcing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player11
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player11
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThan
  - param String 1000


## BrownLumber
- enabled: True
- category: [12] AI Resourcing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player11
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player11
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThan
  - param String 1000


## Initial Heroes
- enabled: True
- category: [7] Heroes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_Load_Arthas
- Action SetHeroLevel
  - param Variable Sylvanas
  - param String 7
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Sylvanas
  - param Preset HeroSkillColdArrows
- Action SelectHeroSkill
  - param Variable Sylvanas
  - param Preset HeroSkillColdArrows
- Action SelectHeroSkill
  - param Variable Sylvanas
  - param Preset HeroSkillColdArrows
- Action SelectHeroSkill
  - param Variable Sylvanas
  - param Preset HeroSkillTrueshotAura
- Action SelectHeroSkill
  - param Variable Sylvanas
  - param Preset HeroSkillTrueshotAura
- Action SelectHeroSkill
  - param Variable Sylvanas
  - param Preset HeroSkillTrueshotAura
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Sylvanas
- Action SetHeroLevel
  - param Variable SilvermoonArchMage
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable SilvermoonArchMage
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable SilvermoonArchMage
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable SilvermoonArchMage
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable SilvermoonArchMage
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable SilvermoonArchMage
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable SilvermoonArchMage
  - param Preset HeroSkillBrillianceAura
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable SilvermoonArchMage
- Action SetHeroLevel
  - param Variable SylvanasIntro
  - param String 7
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable SylvanasIntro
  - param Preset HeroSkillColdArrows
- Action SelectHeroSkill
  - param Variable SylvanasIntro
  - param Preset HeroSkillColdArrows
- Action SelectHeroSkill
  - param Variable SylvanasIntro
  - param Preset HeroSkillColdArrows
- Action SelectHeroSkill
  - param Variable SylvanasIntro
  - param Preset HeroSkillTrueshotAura
- Action SelectHeroSkill
  - param Variable SylvanasIntro
  - param Preset HeroSkillTrueshotAura
- Action SelectHeroSkill
  - param Variable SylvanasIntro
  - param Preset HeroSkillTrueshotAura
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable SylvanasIntro


## Load Arthas
- enabled: True
- category: [7] Heroes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action InitGameCacheBJ
  - param String Campaigns.w3v
- Action RestoreUnitLocFacingAngleBJ
  - param String Arthas
  - param String Undead05
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Variable PlayerArthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialArthasLocation
  - param String 180.00
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
- Action CreateNUnitsAtLoc
  - param String 1
  - param String Uear
  - param Variable PlayerArthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialArthasLocation
  - param String 180.00
- Action SetVariable
  - param Variable Arthas
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetHeroLevel
  - param Variable Arthas
  - param String 5
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDeathCoil
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDeathCoil
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillUnholyAura
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillUnholyAura
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDeathPact
- Action SetPlayerHandicapXPBJ
  - param Preset Player03
  - param String 50.00
- Action UnitAddItemByIdSwapped
  - param String ktrm
  - param Variable Arthas
- Action SetItemDroppableBJ
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Preset DropNoDropOptionNoDrop


## Limit Arthas XP
- enabled: True
- category: [7] Heroes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Arthas
- Action TriggerSleepAction
  - param String 0.10
- Action SetHeroXP
  - param Variable Arthas
  - param String 2000
  - param Preset ShowHideHide
- Condition OperatorCompareInteger
  - param Function GetHeroLevel
    - Function GetHeroLevel
      - param Variable Arthas
  - param Preset OperatorGreaterEq
  - param String 6
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventHero_Level


## Villager01Patrol
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable UnitVillager01
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Villager01Patrol
- Event TriggerRegisterTimerEventPeriodic
  - param String 6.00


## Villager01Panic
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitPathing
  - param Variable UnitVillager01
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable UnitVillager01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Villager01Flee
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nhef_0055


## Villager01Remove
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Variable UnitVillager01
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String nhef
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Villager01Flee


## Villager02Patrol
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable UnitVillager02
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Villager02Patrol
- Event TriggerRegisterTimerEventPeriodic
  - param String 7.00


## Villager02Panic
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitPathing
  - param Variable UnitVillager02
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable UnitVillager02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Villager02Flee
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nhef_0051


## Villager02Remove
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Variable UnitVillager02
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String nhef
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Villager02Flee


## Villager03Patrol
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable UnitVillager03
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Villager03Patrol
- Event TriggerRegisterTimerEventPeriodic
  - param String 8.00


## Villager03Panic
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitPathing
  - param Variable UnitVillager03
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable UnitVillager03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Villager03Flee
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nhef_0039


## Villager03Remove
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Variable UnitVillager03
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String nhef
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Villager03Flee


## Villager04Patrol
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable UnitVillager04
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Villager04Patrol
- Event TriggerRegisterTimerEventPeriodic
  - param String 5.00


## Villager04Panic
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitPathing
  - param Variable UnitVillager04
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable UnitVillager04
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Villager04Flee
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nhef_0035


## Villager04Remove
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Variable UnitVillager04
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String nhef
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Villager04Flee


## Villager05Patrol
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable UnitVillager05
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Villager05Patrol
- Event TriggerRegisterTimerEventPeriodic
  - param String 6.00


## Villager05Panic
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitPathing
  - param Variable UnitVillager05
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable UnitVillager05
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Villager05Flee
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nhef_0040


## Villager05Remove
- enabled: True
- category: [22] Villagers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Variable UnitVillager05
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String nhef
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Villager05Flee


## Gargoyles Available
- enabled: True
- category: [14] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Gargoyles_Available_Message
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerStoneFormHint


## Gargoyles Available Message
- enabled: True
- category: [14] Hints
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
  - param Preset Force03
  - param Preset QuestMessageTypeUnitAvailable
  - param String TRIGSTR_113
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## TriggerIntroCinematic
- enabled: True
- category: [1] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable IntroCinematicRunning
  - param String true
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
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop09
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop10
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop11
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop12
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop13
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop14
- Action EnableTrigger
  - param Variable gg_trg_IntroCinematicEscape
- Action TriggerExecute
  - param Variable gg_trg_IntroEnvironment
- Action TriggerExecute
  - param Variable gg_trg_IntroCinematicMode
- Action TriggerExecute
  - param Variable gg_trg_IntroActorSetup
- Action TriggerExecute
  - param Variable gg_trg_IntroInitialCamera


## IntroEnvironment
- enabled: True
- category: [1] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetSkyModel
  - param Preset SkyModelSky04
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String YOsw
  - param Variable gg_rct_WeatherSunlight
- Action ShowUnitHide
  - param Variable gg_unit_ncp3_0202


## IntroCinematicMode
- enabled: True
- category: [1] IntroCinematic
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


## IntroActorSetup
- enabled: True
- category: [1] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssueTargetOrder
  - param Variable gg_unit_uaco_0121
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ugol_0044
- Action IssueTargetOrder
  - param Variable gg_unit_uaco_0065
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ugol_0044
- Action IssueTargetOrder
  - param Variable gg_unit_uaco_0122
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ugol_0044
- Action IssueTargetOrder
  - param Variable gg_unit_uaco_0119
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ugol_0044
- Action IssueTargetOrder
  - param Variable gg_unit_uaco_0120
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ugol_0044
- Action IssueImmediateOrder
  - param Variable gg_unit_ugho_0050
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable gg_unit_ugho_0052
  - param Preset UnitOrderAutoHarvestLumber


## IntroInitialCamera
- enabled: True
- category: [1] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroInitialCam
  - param Variable PlayerArthas
  - param String 0
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_IntroTichoTalks


## IntroTichoTalks
- enabled: True
- category: [1] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroSpawnTicho_Talk
  - param String Abilities\Spells\Undead\DarkSummoning\DarkSummonTarget.mdl
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_DarkSummoningTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroSpawnTicho_Talk
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_DarkSummoningTarget1
- Action SetVariable
  - param Variable EffectDarkSummoning
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String Utic
  - param Variable PlayerTichondrius
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroSpawnTicho
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action SetVariable
  - param Variable Tichondrius
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action ShowUnitHide
  - param Variable Tichondrius
- Action TriggerSleepAction
  - param String 1.00
- Action SetUnitPositionLocFacingLocBJ
  - param Variable Tichondrius
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroSpawnTicho_Talk
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialArthasLocation
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Solidify_A
- Action UnitAddItemByIdSwapped
  - param String ofir
  - param Variable Tichondrius
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DestroyEffectBJ
  - param Variable EffectDarkSummoning
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Tichondrius
  - param String TRIGSTR_011
  - param Variable gg_snd_U05ATichondrius01
  - param String TRIGSTR_012
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param String 0.20
      - param Preset OperatorMultiply
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Variable gg_snd_U05ATichondrius01
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Tichondrius
  - param String 0.30
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param String 0.80
      - param Preset OperatorMultiply
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Variable gg_snd_U05ATichondrius01
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
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
      - param Variable IntroCinematicEscape
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
  - param String TRIGSTR_013
  - param Variable gg_snd_U05AArthas02
  - param String TRIGSTR_014
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroTichoCloseup
  - param Variable PlayerArthas
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Tichondrius
  - param String TRIGSTR_015
  - param Variable gg_snd_U05ATichondrius03
  - param String TRIGSTR_016
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroArthasCloseup
  - param Variable PlayerArthas
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_017
  - param Variable gg_snd_U05AArthas04
  - param String TRIGSTR_018
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroTichoCloseup
  - param Variable PlayerArthas
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Tichondrius
  - param String TRIGSTR_019
  - param Variable gg_snd_U05ATichondrius05
  - param String TRIGSTR_020
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param String 0.15
      - param Preset OperatorMultiply
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Variable gg_snd_U05ATichondrius05
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroSunWell
  - param Variable PlayerArthas
  - param String 0
- Action TriggerSleepAction
  - param String 0.01
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_CityScapeMagicRunesLoop1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FountainSound
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_CityScapeMagicRunesLoop1
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_CityscapeFountainLoop1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FountainSound
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_CityscapeFountainLoop1
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_InvisibilityTarget
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FountainSound
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_InvisibilityTarget
  - param String 60.00
- Action PlaySoundBJ
  - param Variable gg_snd_InvisibilityTarget
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroSunWellCloseup
  - param Variable PlayerArthas
  - param Function OperatorReal
    - Function OperatorReal
      - param String 0.80
      - param Preset OperatorMultiply
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Variable gg_snd_U05ATichondrius05
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param String 0.80
      - param Preset OperatorMultiply
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Variable gg_snd_U05ATichondrius05
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action StopSoundBJ
  - param Variable gg_snd_CityScapeMagicRunesLoop1
  - param Preset FadeDontFade
- Action StopSoundBJ
  - param Variable gg_snd_CityscapeFountainLoop1
  - param Preset FadeDontFade
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroTichoCloseup
  - param Variable PlayerArthas
  - param String 0
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroSpawnTicho_Talk
  - param String Abilities\Spells\Undead\DarkSummoning\DarkSummonTarget.mdl
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_DarkSummoningTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroSpawnTicho_Talk
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_DarkSummoningTarget1
- Action SetVariable
  - param Variable EffectDarkSummoning
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Dissolve_A
- Action TriggerSleepAction
  - param String 3.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DestroyEffectBJ
  - param Variable EffectDarkSummoning
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroArthasCloseup
  - param Variable PlayerArthas
  - param String 0
- Action WaitForSoundBJ
  - param Variable gg_snd_U05ATichondrius05
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
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
  - param String TRIGSTR_021
  - param Variable gg_snd_U05AArthas06
  - param String TRIGSTR_022
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable PlayerArthas
  - param String uktg
  - param String TRIGSTR_025
  - param Function GetPlayerStartLocationLoc
    - Function GetPlayerStartLocationLoc
      - param Preset Player03
  - param Variable gg_snd_U05AKelThuzad07
  - param String TRIGSTR_026
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_IntroCinematicEnd


## IntroCinematicEnd
- enabled: True
- category: [1] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable IntroCinematicRunning
  - param String false
- Action DisableTrigger
  - param Variable gg_trg_IntroCinematicEscape
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectUnitSingle
  - param Variable Arthas
- Action ResetToGameCameraForPlayer
  - param Variable PlayerArthas
  - param String 0.00
- Action SetSkyModel
  - param Preset SkyModelNone
- Action SetResourceAmount
  - param Variable gg_unit_ugol_0044
  - param String 20000
- Action SetPlayerState
  - param Variable PlayerArthas
  - param Preset PlayerStateGold
  - param String 750
- Action SetPlayerState
  - param Variable PlayerArthas
  - param Preset PlayerStateLumber
  - param String 250
- Action StartTimerBJ
  - param Variable TimerSylvanasAttack
  - param Preset PeriodicOptionOneTime
  - param String 25.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_008
- Action ShowUnitShow
  - param Variable gg_unit_ncp3_0202
- Action StartCampaignAI
  - param Preset Player01
  - param String u05_blue.ai
- Action StartCampaignAI
  - param Preset Player02
  - param String u05_teal.ai
- Action StartCampaignAI
  - param Preset Player11
  - param String u05_brown.ai
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable PlayerArthas
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilitySunwell
  - param String 640.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PingMinimapLocForForce
  - param Preset Force03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilitySunwell
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilitySunwell


## IntroCinematicEscape
- enabled: True
- category: [1] IntroCinematic
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
  - param Variable IntroCinematicEscape
  - param String true
- Action SetVariable
  - param Variable IntroCinematicRunning
  - param String false
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.40
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.60
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroArthasCloseup
  - param Preset Player03
  - param String 0
- Action ShowUnitHide
  - param Variable Tichondrius
- Action TriggerSleepAction
  - param String 0.20
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Tichondrius
  - param String 0.00
- Action DestroyEffectBJ
  - param Variable EffectDarkSummoning
- Action SetResourceAmount
  - param Variable gg_unit_ugol_0044
  - param String 20000
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateGold
  - param String 750
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateLumber
  - param String 250
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.40
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectUnitSingle
  - param Variable Arthas
- Action ResetToGameCameraForPlayer
  - param Variable PlayerArthas
  - param String 0.00
- Action SetSkyModel
  - param Preset SkyModelNone
- Action StartTimerBJ
  - param Variable TimerSylvanasAttack
  - param Preset PeriodicOptionOneTime
  - param String 25.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_058
- Action ShowUnitShow
  - param Variable gg_unit_ncp3_0202
- Action StartCampaignAI
  - param Preset Player01
  - param String u05_blue.ai
- Action StartCampaignAI
  - param Preset Player02
  - param String u05_teal.ai
- Action StartCampaignAI
  - param Preset Player11
  - param String u05_brown.ai
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable PlayerArthas
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilitySunwell
  - param String 640.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PingMinimapLocForForce
  - param Preset Force03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilitySunwell
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilitySunwell
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03


## Solidify A
- enabled: True
- category: [15] Tichondrius Fade
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.25
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 10.00
  - param String 40.00
  - param String 10.00
  - param String 100.00
- Action ShowUnitShow
  - param Variable Tichondrius
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 25.00
  - param String 50.00
  - param String 25.00
  - param String 85.00
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 40.00
  - param String 60.00
  - param String 40.00
  - param String 70.00
- Action TriggerSleepAction
  - param String 0.15
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 55.00
  - param String 70.00
  - param String 55.00
  - param String 65.00
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 70.00
  - param String 70.00
  - param String 70.00
  - param String 45.00
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 85.00
  - param String 80.00
  - param String 85.00
  - param String 30.00
- Action TriggerSleepAction
  - param String 0.15
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 100.00
  - param String 90.00
  - param String 100.00
  - param String 15.00
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 100.00
  - param String 100.00
  - param String 100.00
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing


## Dissolve A
- enabled: True
- category: [15] Tichondrius Fade
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.25
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 100.00
  - param String 100.00
  - param String 100.00
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 100.00
  - param String 90.00
  - param String 100.00
  - param String 15.00
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 85.00
  - param String 80.00
  - param String 85.00
  - param String 30.00
- Action TriggerSleepAction
  - param String 0.15
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 70.00
  - param String 70.00
  - param String 70.00
  - param String 45.00
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 55.00
  - param String 70.00
  - param String 55.00
  - param String 65.00
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 25.00
  - param String 50.00
  - param String 25.00
  - param String 85.00
- Action TriggerSleepAction
  - param String 0.15
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 40.00
  - param String 60.00
  - param String 40.00
  - param String 70.00
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitVertexColorBJ
  - param Variable Tichondrius
  - param String 10.00
  - param String 40.00
  - param String 10.00
  - param String 100.00
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ShowUnitHide
  - param Variable Tichondrius


## InitialSylvanasPlacement
- enabled: True
- category: [17] SylvanasFailsafes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ShowUnitHide
  - param Variable Sylvanas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable Sylvanas
- Event TriggerRegisterTimerEventSingle
  - param String 1.00


## IntroSylvanasDies
- enabled: True
- category: [17] SylvanasFailsafes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitPositionLoc
  - param Variable Sylvanas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SylvanusIntroRevive
- Action ShowUnitShow
  - param Variable Sylvanas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Sylvanas
- Action AddSpecialEffectTargetUnitBJ
  - param String overhead
  - param Variable Sylvanas
  - param String Abilities\Spells\Human\ReviveHuman\ReviveHuman.mdl
- Action TriggerSleepAction
  - param String 2
- Action DestroyEffectBJ
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Hvwd_0167
  - param Preset UnitEventDeath


## SylvanasTimerElapses
- enabled: True
- category: [2] SylvanasAttacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupPointOrderLoc
  - param Variable SylvanasAttackGroup
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SylvanasAttackTarget
- Action DisableTrigger
  - param Variable gg_trg_OrderSylvanasFailsafe
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerSylvanasAttack


## SylvanasAttacks
- enabled: True
- category: [2] SylvanasAttacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetAttacker
        - Function GetAttacker
      - param Function GetUnitsOfPlayerAll
        - Function GetUnitsOfPlayerAll
          - param Preset Player09
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_SylvanusAttacksMessage
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventAttacked


## SylvanusAttacksMessage
- enabled: True
- category: [2] SylvanasAttacks
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
  - param Variable SylvanasIntro
  - param String TRIGSTR_114
  - param Variable gg_snd_U05ASylvanas08
  - param String TRIGSTR_115
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action TransmissionFromUnitTypeWithNameBJ
  - param Preset Force03
  - param Preset Player03
  - param String uktg
  - param String TRIGSTR_116
  - param Function GetPlayerStartLocationLoc
    - Function GetPlayerStartLocationLoc
      - param Preset Player03
  - param Variable gg_snd_U04AKelThuzad08
  - param String TRIGSTR_117
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_118
  - param Variable gg_snd_U04AArthas09
  - param String TRIGSTR_119
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## OrderSylvanasFailsafe
- enabled: True
- category: [2] SylvanasAttacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupPointOrderLoc
  - param Variable SylvanasAttackGroup
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SylvanasAttackTarget
- Action DisableTrigger
  - param Variable gg_trg_SylvanasTimerElapses
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable PlayerArthas
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_SylvanusIntroFailsafe


## CheckForWaveDeath
- enabled: True
- category: [2] SylvanasAttacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StartTimerBJ
  - param Variable TimerReinforcementWarning
  - param Preset PeriodicOptionOneTime
  - param String 10.00
- Action StartTimerBJ
  - param Variable TimerStartSylvanusAI
  - param Preset PeriodicOptionOneTime
  - param String 60.00
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorCompareBoolean
  - param Function IsUnitGroupDeadBJ
    - Function IsUnitGroupDeadBJ
      - param Variable SylvanasAttackGroup
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player09
  - param Preset PlayerUnitEventDeath


## Reinforcement
- enabled: True
- category: [2] SylvanasAttacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_ReinforcementMessage
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerReinforcementWarning


## ReinforcementMessage
- enabled: True
- category: [2] SylvanasAttacks
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
- Action TransmissionFromUnitTypeWithNameBJ
  - param Preset Force03
  - param Preset Player03
  - param String unec
  - param String TRIGSTR_124
  - param Function GetPlayerStartLocationLoc
    - Function GetPlayerStartLocationLoc
      - param Preset Player03
  - param Variable gg_snd_U05ANecromancer11
  - param String TRIGSTR_125
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
      - param String TRIGSTR_126
      - param Variable gg_snd_U05AArthas12
      - param String TRIGSTR_127
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QuestSetDiscoveredBJ
  - param Variable QuestSilvanus
  - param Preset DiscoveredOptionDiscovered
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_130
- Action TriggerSleepAction
  - param String 10.00
- Action QuestSetDiscoveredBJ
  - param Variable QuestRunners
  - param Preset DiscoveredOptionDiscovered
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_131
- Action StartTimerBJ
  - param Variable TimerFirstMessenger
  - param Preset PeriodicOptionOneTime
  - param String 25.00
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## AI BlueAttacked
- enabled: True
- category: [6] AI Activation
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CommandAI
  - param Preset Player01
  - param String 0
  - param String 0
- Action SetVariable
  - param Variable AIBlueActive
  - param String true
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetAttacker
        - Function GetAttacker
  - param Preset OperatorEqualENE
  - param Variable PlayerArthas
- Condition OperatorCompareBoolean
  - param Variable AIBlueActive
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventAttacked


## AI TealAttackedSylvanusActive
- enabled: True
- category: [6] AI Activation
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardRunner
- Action TimerDialogDisplayBJ
  - param Preset ShowHideHide
  - param Variable TimerWindowRunner
- Action SetVariable
  - param Variable AISilvermoonActive
  - param String true
- Action CommandAI
  - param Preset Player02
  - param String 0
  - param String 0
- Action SetVariable
  - param Variable RunnerActive
  - param String false
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Runner
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action RemoveUnit
      - param Variable Runner
  - param Function DoNothing
    - Action DoNothing
- Action QuestSetFailedBJ
  - param Variable QuestRunners
  - param Preset FailureOptionFailed
- Action StopSoundBJ
  - param Variable gg_snd_U05ANecromancer13
  - param Preset FadeDontFade
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Silvermoon_Quest_Failure_Message
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetAttacker
        - Function GetAttacker
  - param Preset OperatorEqualENE
  - param Variable PlayerArthas
- Condition OperatorCompareBoolean
  - param Variable AISilvermoonActive
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Function IsQuestCompleted
    - Function IsQuestCompleted
      - param Variable QuestSilvanus
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Function IsQuestDiscovered
    - Function IsQuestDiscovered
      - param Variable QuestRunners
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player02
  - param Preset PlayerUnitEventAttacked


## AI TealAttackedSylvanusDead
- enabled: True
- category: [6] AI Activation
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardRunner
- Action TimerDialogDisplayBJ
  - param Preset ShowHideHide
  - param Variable TimerWindowRunner
- Action SetVariable
  - param Variable AISilvermoonActive
  - param String true
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Runner
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action RemoveUnit
      - param Variable Runner
  - param Function DoNothing
    - Action DoNothing
- Action CommandAI
  - param Preset Player02
  - param String 0
  - param String 0
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetAttacker
        - Function GetAttacker
  - param Preset OperatorEqualENE
  - param Variable PlayerArthas
- Condition OperatorCompareBoolean
  - param Variable AISilvermoonActive
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Function IsQuestCompleted
    - Function IsQuestCompleted
      - param Variable QuestSilvanus
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsQuestDiscovered
    - Function IsQuestDiscovered
      - param Variable QuestRunners
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player02
  - param Preset PlayerUnitEventAttacked


## AI BrownAttackedSylvanusActive
- enabled: True
- category: [6] AI Activation
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardRunner
- Action TimerDialogDisplayBJ
  - param Preset ShowHideHide
  - param Variable TimerWindowRunner
- Action SetVariable
  - param Variable AISilvermoonActive
  - param String true
- Action CommandAI
  - param Preset Player02
  - param String 0
  - param String 0
- Action SetVariable
  - param Variable RunnerActive
  - param String false
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Runner
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action RemoveUnit
      - param Variable Runner
  - param Function DoNothing
    - Action DoNothing
- Action QuestSetFailedBJ
  - param Variable QuestRunners
  - param Preset FailureOptionFailed
- Action StopSoundBJ
  - param Variable gg_snd_U05ANecromancer13
  - param Preset FadeDontFade
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Silvermoon_Quest_Failure_Message
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetAttacker
        - Function GetAttacker
  - param Preset OperatorEqualENE
  - param Variable PlayerArthas
- Condition OperatorCompareBoolean
  - param Variable AISilvermoonActive
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Function IsQuestCompleted
    - Function IsQuestCompleted
      - param Variable QuestSilvanus
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Function IsQuestDiscovered
    - Function IsQuestDiscovered
      - param Variable QuestRunners
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player11
  - param Preset PlayerUnitEventAttacked


## AI BrownAttackedSylvanusDead
- enabled: True
- category: [6] AI Activation
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardRunner
- Action TimerDialogDisplayBJ
  - param Preset ShowHideHide
  - param Variable TimerWindowRunner
- Action SetVariable
  - param Variable AISilvermoonActive
  - param String true
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Runner
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action RemoveUnit
      - param Variable Runner
  - param Function DoNothing
    - Action DoNothing
- Action CommandAI
  - param Preset Player02
  - param String 0
  - param String 0
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetAttacker
        - Function GetAttacker
  - param Preset OperatorEqualENE
  - param Variable PlayerArthas
- Condition OperatorCompareBoolean
  - param Variable AISilvermoonActive
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Function IsQuestCompleted
    - Function IsQuestCompleted
      - param Variable QuestSilvanus
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsQuestDiscovered
    - Function IsQuestDiscovered
      - param Variable QuestRunners
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player11
  - param Preset PlayerUnitEventAttacked


## Silvermoon Quest Failure Message
- enabled: True
- category: [6] AI Activation
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_175
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## AI RunnerReaches
- enabled: True
- category: [6] AI Activation
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommandAI
  - param Preset Player02
  - param String 0
  - param String 0
- Action CommandAI
  - param Preset Player11
  - param String 0
  - param String 0
- Action SetVariable
  - param Variable AISilvermoonActive
  - param String true
- Condition OperatorCompareBoolean
  - param Variable AISilvermoonActive
  - param Preset OperatorEqualENE
  - param String false


## AI SylvanusLaunch
- enabled: True
- category: [6] AI Activation
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerStartSylvanusAI
- Action CommandAI
  - param Preset Player01
  - param String 0
  - param String 0
- Action SetVariable
  - param Variable AIBlueActive
  - param String true
- Condition OperatorCompareBoolean
  - param Variable AIBlueActive
  - param Preset OperatorEqualENE
  - param String false


## InitialTimerExpires
- enabled: True
- category: [3] Runners
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Function IsQuestFailed
    - Function IsQuestFailed
      - param Variable QuestRunners
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_InitialTimerExpiresMessage
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerFirstMessenger


## InitialTimerExpiresMessage
- enabled: True
- category: [3] Runners
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable RunnerActive
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action ConditionalTriggerExecute
  - param Variable gg_trg_CreateLeaderboard
- Action TriggerExecute
  - param Variable gg_trg_CreateTimerWindow
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Preset Force03
  - param Preset Player03
  - param String unec
  - param String TRIGSTR_132
  - param Function GetPlayerStartLocationLoc
    - Function GetPlayerStartLocationLoc
      - param Variable PlayerArthas
  - param Variable gg_snd_U05ANecromancer13
  - param String TRIGSTR_133
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action VolumeGroupResetBJ
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hC00
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerSpawn
  - param String 270.00
- Action SetVariable
  - param Variable Runner
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitInvulnerable
  - param Variable Runner
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitMoveSpeed
  - param Variable Runner
  - param Function OperatorReal
    - Function OperatorReal
      - param Function GetUnitDefaultMoveSpeed
        - Function GetUnitDefaultMoveSpeed
          - param Variable Runner
      - param Preset OperatorSubtract
      - param Variable RunnerMovementSpeedHandicap
- Action IssuePointOrderLoc
  - param Variable Runner
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable RunnerVariableTarget
- Action PingMinimapLocForForce
  - param Preset Force03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerSpawn
  - param String 2.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerSpawn
- Action SetPlayerAllianceBJ
  - param Preset Player04
  - param Preset AllianceTypeSharedVision
  - param Preset OnOffOn
  - param Preset Player03
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param String 5.00
      - param Preset OperatorAdd
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Variable gg_snd_U05ANecromancer13
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_TriggerGargoyleCinematic
  - param Preset CheckingIgnoringChecking


## RunnerDies
- enabled: True
- category: [3] Runners
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardRunner
- Action TimerDialogDisplayBJ
  - param Preset ShowHideShow
  - param Variable TimerWindowRunner
- Action DisableTrigger
  - param Variable gg_trg_RunnerHeartbeat
- Action StartTimerBJ
  - param Variable TimerRunner
  - param Preset PeriodicOptionOneTime
  - param Variable RunnerTimerLength
- Action SetVariable
  - param Variable RunnerTimerLength
  - param Function OperatorReal
    - Function OperatorReal
      - param Variable RunnerTimerLength
      - param Preset OperatorSubtract
      - param String 30.00
- Action CommentString
  - param String DIFFICULTY MODIFIERS
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareGameDifficulty
          - param Function GetGameDifficulty
            - Function GetGameDifficulty
          - param Preset OperatorEqualENE
          - param Preset GameDifficultyEasy
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RunnerTimerLength
          - param Preset OperatorLess
          - param String 120.00
  - param Function DoNothing
    - Action SetVariable
      - param Variable RunnerTimerLength
      - param String 120.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareGameDifficulty
          - param Function GetGameDifficulty
            - Function GetGameDifficulty
          - param Preset OperatorEqualENE
          - param Preset GameDifficultyNormal
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RunnerTimerLength
          - param Preset OperatorLess
          - param String 120.00
  - param Function DoNothing
    - Action SetVariable
      - param Variable RunnerTimerLength
      - param String 120.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareGameDifficulty
          - param Function GetGameDifficulty
            - Function GetGameDifficulty
          - param Preset OperatorEqualENE
          - param Preset GameDifficultyHard
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RunnerTimerLength
          - param Preset OperatorLess
          - param String 90.00
  - param Function DoNothing
    - Action SetVariable
      - param Variable RunnerTimerLength
      - param String 90.00
  - param Function DoNothing
    - Action DoNothing
- Action DisableTrigger
  - param Variable gg_trg_PathBRedirect
- Action DisableTrigger
  - param Variable gg_trg_PathCRedirect
- Action DisableTrigger
  - param Variable gg_trg_PathDRedirect
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable Runner
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player04
  - param Preset PlayerUnitEventDeath


## ReoccuringRunnerTimerExpires
- enabled: True
- category: [3] Runners
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_ReoccuringRunnerTimerExpiresMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareBoolean
  - param Variable RunnerActive
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerRunner


## ReoccuringRunnerTimerExpiresMessage
- enabled: True
- category: [3] Runners
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable RunnerActive
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action TimerDialogDisplayBJ
  - param Preset ShowHideHide
  - param Variable TimerWindowRunner
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Variable LeaderboardRunner
- Action SetVariable
  - param Variable RunnerRandomLine
  - param Function GetRandomReal
    - Function GetRandomReal
      - param String 0
      - param String 2.00
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareReal
      - param Variable RunnerRandomLine
      - param Preset OperatorLessEq
      - param String 1.00
  - param Function DoNothing
    - Action TransmissionFromUnitTypeWithNameBJ
      - param Preset Force03
      - param Preset Player03
      - param String unec
      - param String TRIGSTR_142
      - param Function GetPlayerStartLocationLoc
        - Function GetPlayerStartLocationLoc
          - param Preset Player03
      - param Variable gg_snd_U05ANecromancer15
      - param String TRIGSTR_143
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action TransmissionFromUnitTypeWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset Player03
      - param String unec
      - param String TRIGSTR_144
      - param Function GetPlayerStartLocationLoc
        - Function GetPlayerStartLocationLoc
          - param Preset Player03
      - param Variable gg_snd_U05ANecromancer13A
      - param String TRIGSTR_145
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hC00
  - param Preset Player04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerSpawn
  - param String 270.00
- Action SetVariable
  - param Variable Runner
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitMoveSpeed
  - param Variable Runner
  - param Function OperatorReal
    - Function OperatorReal
      - param Function GetUnitDefaultMoveSpeed
        - Function GetUnitDefaultMoveSpeed
          - param Variable Runner
      - param Preset OperatorSubtract
      - param Variable RunnerMovementSpeedHandicap
- Action TriggerExecute
  - param Variable gg_trg_RandomizePath
- Action IssuePointOrderLoc
  - param Variable Runner
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable RunnerVariableTarget
- Action EnableTrigger
  - param Variable gg_trg_RunnerHeartbeat
- Action PingMinimapLocForForce
  - param Preset Force03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerSpawn
  - param String 2.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerSpawn
- Action StartTimerBJ
  - param Variable TimerRunnerFailsafe
  - param Preset PeriodicOptionOneTime
  - param String 300.00
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## RandomizePath
- enabled: True
- category: [3] Runners
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RandomRegion
  - param Function GetRandomReal
    - Function GetRandomReal
      - param String 0
      - param String 4.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareReal
      - param Variable RandomRegion
      - param Preset OperatorLess
      - param String 1.00
  - param Function DoNothing
    - Action SetVariable
      - param Variable RunnerVariableTarget
      - param Variable gg_rct_RunnerTargetWest
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RandomRegion
          - param Preset OperatorGreaterEq
          - param String 1.00
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RandomRegion
          - param Preset OperatorLess
          - param String 2.00
  - param Function DoNothing
    - Action SetVariable
      - param Variable RunnerVariableTarget
      - param Variable gg_rct_RegionRedirectB
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RandomRegion
          - param Preset OperatorGreaterEq
          - param String 1.00
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RandomRegion
          - param Preset OperatorLess
          - param String 2.00
  - param Function DoNothing
    - Action EnableTrigger
      - param Variable gg_trg_PathBRedirect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RandomRegion
          - param Preset OperatorGreaterEq
          - param String 2.00
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RandomRegion
          - param Preset OperatorLess
          - param String 3.00
  - param Function DoNothing
    - Action SetVariable
      - param Variable RunnerVariableTarget
      - param Variable gg_rct_RegionRedirectC
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RandomRegion
          - param Preset OperatorGreaterEq
          - param String 2.00
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RandomRegion
          - param Preset OperatorLess
          - param String 3.00
  - param Function DoNothing
    - Action EnableTrigger
      - param Variable gg_trg_PathCRedirect
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareReal
      - param Variable RandomRegion
      - param Preset OperatorGreaterEq
      - param String 3.00
  - param Function DoNothing
    - Action SetVariable
      - param Variable RunnerVariableTarget
      - param Variable gg_rct_RegionRedirectD
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareReal
      - param Variable RandomRegion
      - param Preset OperatorGreaterEq
      - param String 3.00
  - param Function DoNothing
    - Action EnableTrigger
      - param Variable gg_trg_PathDRedirect
  - param Function DoNothing
    - Action DoNothing


## RunnerHeartbeat
- enabled: True
- category: [3] Runners
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable Runner
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable RunnerVariableTarget
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable Runner
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable RunnerActive
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterTimerEventPeriodic
  - param String 4.00


## PathBRedirect
- enabled: True
- category: [3] Runners
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
  - param Variable RunnerVariableTarget
  - param Variable gg_rct_RunnerTargetWest
- Action IssuePointOrderLoc
  - param Variable Runner
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable RunnerVariableTarget
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Runner
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_RegionRedirectB


## PathCRedirect
- enabled: True
- category: [3] Runners
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
  - param Variable RunnerVariableTarget
  - param Variable gg_rct_RunnerTargetEast
- Action IssuePointOrderLoc
  - param Variable Runner
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable RunnerVariableTarget
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Runner
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_RegionRedirectC


## PathDRedirect
- enabled: True
- category: [3] Runners
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
  - param Variable RunnerVariableTarget
  - param Variable gg_rct_RunnerTargetEast
- Action IssuePointOrderLoc
  - param Variable Runner
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable RunnerVariableTarget
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Runner
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_RegionRedirectD


## RunnerReachesSilvermoonEast
- enabled: True
- category: [3] Runners
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
  - param Variable gg_trg_RunnerReachesSilvermoonEastMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Runner
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Variable Runner
  - param Preset OperatorEqualENE
  - param Preset Player04
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_RunnerTargetEast


## RunnerReachesSilvermoonEastMessage
- enabled: True
- category: [3] Runners
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardRunner
- Action TimerDialogDisplayBJ
  - param Preset ShowHideHide
  - param Variable TimerWindowRunner
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Preset Force03
  - param Preset Player03
  - param String unec
  - param String TRIGSTR_154
  - param Function GetPlayerStartLocationLoc
    - Function GetPlayerStartLocationLoc
      - param Preset Player03
  - param Variable gg_snd_U05ANecromancer16
  - param String TRIGSTR_155
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action VolumeGroupResetBJ
- Action PingMinimapLocForForce
  - param Preset Force03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerTargetEast
  - param String 2.00
- Action TriggerSleepAction
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U05ANecromancer16
- Action ShowUnitHide
  - param Variable Runner
- Action SetVariable
  - param Variable RunnerActive
  - param String false
- Action QuestSetFailedBJ
  - param Variable QuestRunners
  - param Preset FailureOptionFailed
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AI_RunnerReaches
- Action QuestMessageBJ
  - param Preset Force03
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_156
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## RunnerReachesSilvermoonWest
- enabled: True
- category: [3] Runners
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
  - param Variable gg_trg_RunnerReachesSilvermoonWestMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Runner
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Variable Runner
  - param Preset OperatorEqualENE
  - param Preset Player04
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_RunnerTargetWest


## RunnerReachesSilvermoonWestMessage
- enabled: True
- category: [3] Runners
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardRunner
- Action TimerDialogDisplayBJ
  - param Preset ShowHideHide
  - param Variable TimerWindowRunner
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Preset Force03
  - param Preset Player03
  - param String unec
  - param String TRIGSTR_157
  - param Function GetPlayerStartLocationLoc
    - Function GetPlayerStartLocationLoc
      - param Preset Player03
  - param Variable gg_snd_U05ANecromancer16
  - param String TRIGSTR_158
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action VolumeGroupResetBJ
- Action PingMinimapLocForForce
  - param Preset Force03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerTargetWest
  - param String 2.00
- Action TriggerSleepAction
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U05ANecromancer16
- Action ShowUnitHide
  - param Variable Runner
- Action SetVariable
  - param Variable RunnerActive
  - param String false
- Action QuestSetFailedBJ
  - param Variable QuestRunners
  - param Preset FailureOptionFailed
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AI_RunnerReaches
- Action QuestMessageBJ
  - param Preset Force03
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_159
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## RunnerFailsafeTimerExpires
- enabled: True
- category: [3] Runners
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Variable Runner
- Action SetVariable
  - param Variable RunnerTimerLength
  - param Function OperatorReal
    - Function OperatorReal
      - param Variable RunnerTimerLength
      - param Preset OperatorSubtract
      - param String 30.00
- Action CommentString
  - param String DIFFICULTY MODIFIERS
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareGameDifficulty
          - param Function GetGameDifficulty
            - Function GetGameDifficulty
          - param Preset OperatorEqualENE
          - param Preset GameDifficultyEasy
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RunnerTimerLength
          - param Preset OperatorLess
          - param String 180.00
  - param Function DoNothing
    - Action SetVariable
      - param Variable RunnerTimerLength
      - param String 180.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareGameDifficulty
          - param Function GetGameDifficulty
            - Function GetGameDifficulty
          - param Preset OperatorEqualENE
          - param Preset GameDifficultyNormal
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RunnerTimerLength
          - param Preset OperatorLess
          - param String 120.00
  - param Function DoNothing
    - Action SetVariable
      - param Variable RunnerTimerLength
      - param String 120.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareGameDifficulty
          - param Function GetGameDifficulty
            - Function GetGameDifficulty
          - param Preset OperatorEqualENE
          - param Preset GameDifficultyHard
      - param Function 
        - Condition OperatorCompareReal
          - param Variable RunnerTimerLength
          - param Preset OperatorLess
          - param String 30.00
  - param Function DoNothing
    - Action SetVariable
      - param Variable RunnerTimerLength
      - param String 30.00
  - param Function DoNothing
    - Action DoNothing
- Action DisableTrigger
  - param Variable gg_trg_PathBRedirect
- Action DisableTrigger
  - param Variable gg_trg_PathCRedirect
- Action DisableTrigger
  - param Variable gg_trg_PathDRedirect
- Action TriggerExecute
  - param Variable gg_trg_ReoccuringRunnerTimerExpires
- Condition OperatorCompareBoolean
  - param Variable RunnerActive
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerRunnerFailsafe


## CreateLeaderboard
- enabled: True
- category: [21] Runner Messaging
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateLeaderboardBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param String TRIGSTR_164
- Action LeaderboardSetStyleBJ
  - param Variable LeaderboardRunner
  - param Preset ShowHideShow
  - param Preset ShowHideHide
  - param Preset ShowHideHide
  - param Preset ShowHideHide
- Action SetVariable
  - param Variable LeaderboardRunner
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
- Action LeaderboardSetLabelColorBJ
  - param Variable LeaderboardRunner
  - param String 0.00
  - param String 100.00
  - param String 100.00
  - param String 0


## CreateTimerWindow
- enabled: True
- category: [21] Runner Messaging
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateTimerDialogBJ
  - param Variable TimerRunner
  - param String TRIGSTR_169
- Action SetVariable
  - param Variable TimerWindowRunner
  - param Function GetLastCreatedTimerDialogBJ
    - Function GetLastCreatedTimerDialogBJ
- Action TimerDialogSetTitleColorBJ
  - param Function GetLastCreatedTimerDialogBJ
    - Function GetLastCreatedTimerDialogBJ
  - param String 100
  - param String 100
  - param String 100
  - param String 0
- Action TimerDialogDisplayBJ
  - param Preset ShowHideHide
  - param Variable TimerWindowRunner


## RunnerSpawnBuilding Dies
- enabled: True
- category: [19] RunnerSpawnLocation
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RunnerSpawnBuilding
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsOfPlayerMatching
        - Function GetUnitsOfPlayerMatching
          - param Preset Player01
          - param Function 
            - Condition GetBooleanAnd
              - param Function 
                - Condition OperatorCompareBoolean
                  - param Function IsUnitAliveBJ
                    - Function IsUnitAliveBJ
                      - param Function GetEnumUnit
                        - Function GetEnumUnit
                  - param Preset OperatorEqualENE
                  - param String true
              - param Function 
                - Condition OperatorCompareBoolean
                  - param Function IsUnitType
                    - Function IsUnitType
                      - param Function GetEnumUnit
                        - Function GetEnumUnit
                      - param Preset UnitTypeStructure
                  - param Preset OperatorEqualENE
                  - param String true
- Action MoveRectToLoc
  - param Variable gg_rct_RunnerSpawn
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable RunnerSpawnBuilding
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable RunnerSpawnBuilding
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## TriggerGargoyleCinematic
- enabled: True
- category: [18] GargoyleCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable RunnerActive
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action SetVariable
  - param Variable GargoyleCinematicRunning
  - param String true
- Action TriggerExecute
  - param Variable gg_trg_GargoyleInitialCamera


## GargoyleEnvironment
- enabled: True
- category: [18] GargoyleCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetSkyModel
  - param Preset SkyModelSky04
- Action UseTimeOfDayBJ
  - param Preset OnOffOff


## GargoyleInitialCamera
- enabled: True
- category: [18] GargoyleCinematic
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
  - param String 1.00
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardRunner
- Action TriggerExecute
  - param Variable gg_trg_GargoyleEnvironment
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Preset Force03
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_GargoyleView
  - param Variable PlayerArthas
  - param String 0.01
- Action ClearSelection
- Action TriggerExecute
  - param Variable gg_trg_GargoyleActorSetup
- Action CommentString
  - param String CINEMATIC BEGINS - Cinematic can now be skipped
- Action EnableTrigger
  - param Variable gg_trg_GargoyleCinematicEscape
- Action TriggerSleepAction
  - param String 1.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GargoyleCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_GargoyleNarrative


## GargoyleActorSetup
- enabled: True
- category: [18] GargoyleCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Runner
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugrm
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle01
  - param String 270.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable GargoyleGroup
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugrm
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle02
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable GargoyleGroup
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugrm
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle03
  - param String 90.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable GargoyleGroup
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugrm
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle04
  - param String 135.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable GargoyleGroup
- Action SetUnitPositionLoc
  - param Variable Runner
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GargoyleInitialRunner
- Action IssuePointOrderLoc
  - param Variable Runner
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerTargetWest


## GargoyleNarrative
- enabled: True
- category: [18] GargoyleCinematic
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
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Arthas
      - param String TRIGSTR_097
      - param Variable gg_snd_U05AArthas14
      - param String TRIGSTR_099
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontDont
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 4.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GargoyleCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_GargoyleFakeRunnerVisibilty
- Action ForGroup
  - param Variable GargoyleGroup
  - param Function DoNothing
    - Action IssueImmediateOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderUnStoneForm
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_GargoyleMorph1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle01
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_GargoyleMorph1
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Variable gg_snd_U05AArthas14
      - param Preset OperatorSubtract
      - param String 4.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GargoyleCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitInvulnerable
  - param Variable Runner
  - param Preset InvulnerabilityVulnerable
- Action GroupTargetOrder
  - param Variable GargoyleGroup
  - param Preset UnitOrderAttackUnit
  - param Variable Runner
- Action SelectGroupBJ
  - param Variable GargoyleGroup
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action ResetToGameCameraForPlayer
  - param Preset Player03
  - param String 2.00
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetSkyModel
  - param Preset SkyModelNone
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action StartTimerBJ
  - param Variable TimerStoneFormHint
  - param Preset PeriodicOptionOneTime
  - param String 15.00
- Action SetVariable
  - param Variable GargoyleCinematicRunning
  - param String false
- Action DisableTrigger
  - param Variable gg_trg_GargoyleCinematicEscape
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Variable LeaderboardRunner
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_TriggerGargoyleCinematic


## GargoyleFakeRunnerVisibilty
- enabled: True
- category: [18] GargoyleCinematic
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
      - param Variable gg_rct_RunnerVis1
  - param String 800.00
- Action FogModifierStop
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerVis2
  - param String 800.00
- Action FogModifierStop
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerVis3
  - param String 800.00
- Action FogModifierStop
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerVis4
  - param String 800.00
- Action FogModifierStop
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier


## GargoyleCinematicEscape
- enabled: True
- category: [18] GargoyleCinematic
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable GargoyleCinematicEscape
  - param String true
- Action SetVariable
  - param Variable GargoyleCinematicRunning
  - param String false
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.40
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.80
- Action TriggerExecute
  - param Variable gg_trg_GargoyleFakeRunnerVisibilty
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action GroupClear
  - param Variable GargoyleGroup
- Action ForGroup
  - param Function GetUnitsOfPlayerAndTypeId
    - Function GetUnitsOfPlayerAndTypeId
      - param Variable PlayerArthas
      - param String ugrm
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAndTypeId
    - Function GetUnitsOfPlayerAndTypeId
      - param Variable PlayerArthas
      - param String ugar
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugar
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle01
  - param String 270.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable GargoyleGroup
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugar
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle02
  - param String 0.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable GargoyleGroup
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugar
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle03
  - param String 90.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable GargoyleGroup
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugar
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle04
  - param String 135.00
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable GargoyleGroup
- Action SetUnitPositionLoc
  - param Variable Runner
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GargoyleFinalRunner
- Action IssuePointOrderLoc
  - param Variable Runner
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RunnerTargetWest
- Action SetUnitInvulnerable
  - param Variable Runner
  - param Preset InvulnerabilityVulnerable
- Action SelectGroupBJ
  - param Variable GargoyleGroup
- Action GroupTargetOrder
  - param Variable GargoyleGroup
  - param Preset UnitOrderAttackUnit
  - param Variable Runner
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.40
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ResetToGameCameraForPlayer
  - param Preset Player03
  - param String 0.00
- Action SetSkyModel
  - param Preset SkyModelNone
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_TriggerGargoyleCinematic
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Variable LeaderboardRunner
- Action StartTimerBJ
  - param Variable TimerStoneFormHint
  - param Preset PeriodicOptionOneTime
  - param String 15.00


## TriggerSylvanasCinematic
- enabled: True
- category: [4] SylvanusCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
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
                - Condition GetBooleanAnd
                  - param Function 
                    - Condition OperatorCompareUnitCode
                      - param Function GetUnitTypeId
                        - Function GetUnitTypeId
                          - param Function GetFilterUnit
                            - Function GetFilterUnit
                      - param Preset OperatorNotEqualENE
                      - param String nefm
                  - param Function 
                    - Condition OperatorCompareBoolean
                      - param Function IsUnitAliveBJ
                        - Function IsUnitAliveBJ
                          - param Function GetFilterUnit
                            - Function GetFilterUnit
                      - param Preset OperatorEqualENE
                      - param String true
  - param Preset OperatorEqual
  - param String 0
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_SylvanusStart
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerEventPeriodic
  - param String 2.00


## SylvanusStart
- enabled: True
- category: [4] SylvanusCinematic
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
  - param Variable SylvanasCinematicRunning
  - param String true
- Action SetVariable
  - param Variable RunnerActive
  - param String false
- Action TriggerExecute
  - param Variable gg_trg_SylvanasInitialCamera


## SylvanasEnvironment
- enabled: True
- category: [4] SylvanusCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetSkyModel
  - param Preset SkyModelSky04
- Action UseTimeOfDayBJ
  - param Preset OnOffOff


## SylvanasInitialCamera
- enabled: True
- category: [4] SylvanusCinematic
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
  - param String 1.00
- Action TriggerExecute
  - param Variable gg_trg_SylvanasEnvironment
- Action TimerDialogDisplayBJ
  - param Preset ShowHideHide
  - param Variable TimerWindowRunner
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardRunner
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action ForGroup
  - param Function GetUnitsSelectedAll
    - Function GetUnitsSelectedAll
      - param Variable PlayerArthas
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable UnitGroupSelection
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Preset Force03
- Action TriggerExecute
  - param Variable gg_trg_SylvanasActorSetup
- Action EnableTrigger
  - param Variable gg_trg_SylvanasCinematicEscape
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SylvanasCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_SylvanusCamera
  - param Variable PlayerArthas
  - param String 0.01
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SylvanasCinematicEscape
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
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SylvanasCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_SylvanasFacesArthas


## SylvanasActorSetup
- enabled: True
- category: [4] SylvanusCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ClearSelection
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Sylvanas
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable PlayerArthas
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitType
            - Function IsUnitType
              - param Function GetFilterUnit
                - Function GetFilterUnit
              - param Preset UnitTypeStructure
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ShowUnitShow
  - param Variable Arthas
- Action CommentString
  - param String Handle Arthas Positioning
- Action SetVariable
  - param Variable UnitAltar
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Variable PlayerArthas
          - param String uaod
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable UnitAltar
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action SetVariable
      - param Variable PointArthasRevivePosition
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SylvanasInitialArthas
  - param Function DoNothing
    - Action SetVariable
      - param Variable PointArthasRevivePosition
      - param Function OffsetLocation
        - Function OffsetLocation
          - param Function GetUnitLoc
            - Function GetUnitLoc
              - param Variable UnitAltar
          - param String 0
          - param String -128.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetVariable
      - param Variable ArthasInitialPosition
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable Arthas
  - param Function DoNothing
    - Action SetVariable
      - param Variable ArthasInitialPosition
      - param Variable PointArthasRevivePosition
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SylvanasInitialArthas
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SylvanasInitialArthas
      - param Preset ShowHideHide
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SylvanasInitialSylvanus
  - param String 0
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable Arthas
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable PlayerSylvanus
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitType
            - Function IsUnitType
              - param Function GetFilterUnit
                - Function GetFilterUnit
              - param Preset UnitTypeStructure
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_SylvanasBuildingFailsafe
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitType
            - Function IsUnitType
              - param Function GetFilterUnit
                - Function GetFilterUnit
              - param Preset UnitTypeStructure
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ShowUnitShow
  - param Variable Sylvanas
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Sylvanas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Sylvanas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SylvanasInitialSylvanus
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Sylvanas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SylvanasInitialSylvanus
      - param Preset ShowHideHide
- Action SetUnitFacingToFaceLocTimed
  - param Variable Sylvanas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SylvanasInitialArthas
  - param String 0
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable Sylvanas
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable Sylvanas
  - param Preset InvulnerabilityInvulnerable
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Arthas
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Sylvanas


## SylvanasFacesArthas
- enabled: True
- category: [4] SylvanusCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action VolumeGroupResetBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_048
  - param Variable gg_snd_U04AArthas19
  - param String TRIGSTR_049
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SylvanasCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Sylvanas
  - param String TRIGSTR_062
  - param Variable gg_snd_U04ASylvanas20
  - param String TRIGSTR_063
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SylvanasCinematicEscape
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
  - param Variable Sylvanas
  - param Preset InvulnerabilityVulnerable
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Sylvanas
- Action SetUnitLifeBJ
  - param Variable Sylvanas
  - param String 60.00
- Action IssueTargetOrder
  - param Variable Arthas
  - param Preset UnitOrderAttackUnit
  - param Variable Sylvanas
- Action IssueTargetOrder
  - param Variable Sylvanas
  - param Preset UnitOrderAttackUnit
  - param Variable Arthas
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_SylvanusFight
  - param Variable PlayerArthas
  - param String 3.00


## SylvanasFalls
- enabled: True
- category: [4] SylvanusCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable Sylvanas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable Arthas
- Action SetUnitAnimation
  - param Variable Arthas
  - param String stand
- Action SetUnitAnimation
  - param Variable Sylvanas
  - param String death
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SylvanasCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force03
  - param Variable Sylvanas
  - param String TRIGSTR_064
  - param Variable gg_snd_U04ASylvanas21
  - param String TRIGSTR_065
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SylvanasCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force03
  - param Variable Arthas
  - param String TRIGSTR_066
  - param Variable gg_snd_U04AArthas22
  - param String TRIGSTR_067
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SylvanasCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable Arthas
  - param String spell
- Action AddSpecialEffectLocBJ
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Sylvanas
  - param String Abilities\Spells\Undead\DarkSummoning\DarkSummonTarget.mdl
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_DarkSummoningTarget1
  - param Variable Sylvanas
- Action PlaySoundBJ
  - param Variable gg_snd_DarkSummoningTarget1
- Action SetVariable
  - param Variable EffectDarkSummoning
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force03
  - param Variable Sylvanas
  - param String TRIGSTR_068
  - param Variable gg_snd_U04ASylvanas23
  - param String TRIGSTR_069
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SylvanasCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DestroyEffectBJ
  - param Variable EffectDarkSummoning
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String uswb
  - param Variable PlayerArthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Sylvanas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SylvanasBansheeFacing
- Action SetVariable
  - param Variable SylvanasBanshee
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetVariable
  - param Variable SylvanasBansheeCreated
  - param String true
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player03
- Action SetUnitAnimation
  - param Variable SylvanasBanshee
  - param String spell
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_BansheeDeath
  - param Variable SylvanasBanshee
- Action PlaySoundBJ
  - param Variable gg_snd_BansheeDeath
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Variable gg_snd_BansheeDeath
      - param Preset OperatorSubtract
      - param String 1.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SylvanasCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ResetUnitAnimation
  - param Variable SylvanasBanshee
- Action TriggerExecute
  - param Variable gg_trg_SylvanasEnd
- Condition OperatorCompareBoolean
  - param Variable SylvanasCinematicRunning
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareUnit
  - param Function GetAttackedUnitBJ
    - Function GetAttackedUnitBJ
  - param Preset OperatorEqualENE
  - param Variable Sylvanas
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventAttacked


## SylvanasEnd
- enabled: True
- category: [4] SylvanusCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable SylvanasCinematicRunning
  - param String false
- Action DisableTrigger
  - param Variable gg_trg_SylvanasCinematicEscape
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
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOff
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOff
  - param Preset Player03
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PlayerArthas
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PlayerSylvanus
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Variable ArthasInitialPosition
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestFailed
        - Function IsQuestFailed
          - param Variable QuestRunners
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action CreateItemLoc
      - param String rag1
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SylvanasBansheeFacing
  - param Function DoNothing
    - Action CreateItemLoc
      - param String hcun
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SylvanasBansheeFacing
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action RemoveUnit
  - param Variable Sylvanas
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectGroupBJ
  - param Variable UnitGroupSelection
- Action ResetToGameCameraForPlayer
  - param Variable PlayerArthas
  - param String 0.00
- Action SetSkyModel
  - param Preset SkyModelNone
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function GetHeroLevel
        - Function GetHeroLevel
          - param Variable Arthas
      - param Preset OperatorLess
      - param String 6
  - param Function DoNothing
    - Action SuspendHeroXPBJ
      - param Preset EnableDisableEnable
      - param Variable Arthas
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Runner
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ShowUnitHide
      - param Variable Runner
  - param Function DoNothing
    - Action DoNothing
- Action QuestSetCompletedBJ
  - param Variable QuestSilvanus
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestReqSilvanus
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Preset Force03
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_080
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestFailed
        - Function IsQuestFailed
          - param Variable QuestRunners
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action TriggerExecute
      - param Variable gg_trg_MarkRunnerQuestCompleted
  - param Function DoNothing
    - Action DoNothing
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_SylvanusStart
- Action StartTimerBJ
  - param Variable TimerBansheeHint
  - param Preset PeriodicOptionOneTime
  - param String 21.00


## MarkRunnerQuestCompleted
- enabled: True
- category: [4] SylvanusCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QuestSetCompletedBJ
  - param Variable QuestRunners
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestReqRunners
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestReqNoAttackSilvermoon
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Preset Force03
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_167
- Action FlashQuestDialogButtonBJ
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest


## SylvanasCinematicEscape
- enabled: True
- category: [4] SylvanusCinematic
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
  - param Variable SylvanasCinematicEscape
  - param String true
- Action SetVariable
  - param Variable SylvanasCinematicRunning
  - param String false
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
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
- Action DestroyEffectBJ
  - param Variable EffectDarkSummoning
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PlayerArthas
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PlayerSylvanus
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Variable ArthasInitialPosition
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestFailed
        - Function IsQuestFailed
          - param Variable QuestRunners
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action CreateItemLoc
      - param String rag1
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SylvanasBansheeFacing
  - param Function DoNothing
    - Action CreateItemLoc
      - param String hcun
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SylvanasBansheeFacing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Sylvanas
      - param Preset OperatorNotEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action RemoveUnit
      - param Variable Sylvanas
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SylvanasBansheeCreated
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action CreateNUnitsAtLocFacingLocBJ
      - param String 1
      - param String uswb
      - param Variable PlayerArthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SylvanasInitialSylvanus
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SylvanasBansheeFacing
  - param Function DoNothing
    - Action ReturnAction
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SylvanasBansheeCreated
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action SetVariable
      - param Variable SylvanasBanshee
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
  - param Function DoNothing
    - Action DoNothing
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectGroupBJ
  - param Variable UnitGroupSelection
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityVulnerable
- Action ResetToGameCameraForPlayer
  - param Variable PlayerArthas
  - param String 0.00
- Action SetSkyModel
  - param Preset SkyModelNone
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function GetHeroLevel
        - Function GetHeroLevel
          - param Variable Arthas
      - param Preset OperatorLess
      - param String 6
  - param Function DoNothing
    - Action SuspendHeroXPBJ
      - param Preset EnableDisableEnable
      - param Variable Arthas
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Runner
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ShowUnitHide
      - param Variable Runner
  - param Function DoNothing
    - Action DoNothing
- Action QuestSetCompletedBJ
  - param Variable QuestSilvanus
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestReqSilvanus
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Preset Force03
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_100
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestFailed
        - Function IsQuestFailed
          - param Variable QuestRunners
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action TriggerExecute
      - param Variable gg_trg_MarkRunnerQuestCompleted
  - param Function DoNothing
    - Action DoNothing
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_SylvanusStart
- Action StartTimerBJ
  - param Variable TimerBansheeHint
  - param Preset PeriodicOptionOneTime
  - param String 5.00
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03


## BansheesBuildable
- enabled: True
- category: [10] BansheesAvailable
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_BansheesBuildableMessage
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerBansheeHint


## BansheesBuildableMessage
- enabled: True
- category: [10] BansheesAvailable
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action SetPlayerUnitAvailableBJ
  - param String uban
  - param Preset AvailabilityOptionAvailable
  - param Preset Player03
- Action SetPlayerTechMaxAllowedSwap
  - param String Ruba
  - param String 2
  - param Preset Player03
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_160
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## TriggerExitCinematic
- enabled: True
- category: [5] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_Level_Enabling
- Action SetVariable
  - param Variable ExitCinematicRunning
  - param String true
- Action TimerDialogDisplayBJ
  - param Preset ShowHideHide
  - param Variable TimerWindowRunner
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardRunner
- Action RemoveAllGuardPositions
  - param Preset Player02
- Action RemoveAllGuardPositions
  - param Preset Player11
- Action TriggerExecute
  - param Variable gg_trg_ExitInitialCamera


## ExitEnvironment
- enabled: True
- category: [5] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetSkyModel
  - param Preset SkyModelSky04
- Action UseTimeOfDayBJ
  - param Preset OnOffOff


## ExitCinematicMode
- enabled: True
- category: [5] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Preset Force03


## ExitInitialCamera
- enabled: True
- category: [5] ExitCinematic
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
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_ExitEnvironment
- Action TriggerExecute
  - param Variable gg_trg_ExitCinematicMode
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkVictory
- Action EnableTrigger
  - param Variable gg_trg_ExitCinematicEscape
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ExitInitialSunwell
  - param Variable PlayerArthas
  - param String 0
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_ExitActorSetup
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_ExitCeremony


## ExitActorSetup
- enabled: True
- category: [5] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerAllianceBJ
  - param Variable PlayerArthas
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Variable PlayerSylvanus
- Action SetPlayerAllianceBJ
  - param Variable PlayerArthas
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Variable PlayerSilvermoon
- Action SetPlayerAllianceBJ
  - param Variable PlayerArthas
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Variable PlayerSilvermoonBrown
- Action ClearSelection
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable PlayerArthas
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitType
            - Function IsUnitType
              - param Function GetFilterUnit
                - Function GetFilterUnit
              - param Preset UnitTypeStructure
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ShowUnitShow
  - param Variable Arthas
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SunwellCOP
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SunwellCOP
      - param Preset ShowHideHide
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_WeatherSunlight
  - param String 0
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable PlayerSylvanus
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitType
            - Function IsUnitType
              - param Function GetFilterUnit
                - Function GetFilterUnit
              - param Preset UnitTypeStructure
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable PlayerSilvermoon
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitType
            - Function IsUnitType
              - param Function GetFilterUnit
                - Function GetFilterUnit
              - param Preset UnitTypeStructure
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable PlayerSilvermoonBrown
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitType
            - Function IsUnitType
              - param Function GetFilterUnit
                - Function GetFilterUnit
              - param Preset UnitTypeStructure
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action SetUnitAnimationWithRarity
  - param Variable Arthas
  - param String stand
  - param Preset RarityControlFrequent
- Action RemoveUnit
  - param Variable gg_unit_ncp3_0202
- Action SetTimeOfDay
  - param String 12.00


## ExitCeremony
- enabled: True
- category: [5] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force03
  - param Variable Arthas
  - param String TRIGSTR_073
  - param Variable gg_snd_U05AArthas22
  - param String TRIGSTR_074
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_ExitDeathSceneA
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssueTargetOrder
  - param Variable UnitExitDeathSceneGhoul
  - param Preset UnitOrderAttackUnit
  - param Variable ExitDeathSceneAFarm02
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action TriggerExecute
  - param Variable gg_trg_ExitDeathSceneB
- Action TriggerSleepAction
  - param String 4.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.40
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.80
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player02
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.40
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ExitInitialSunwell
  - param Variable PlayerArthas
  - param String 0
- Action WaitForSoundBJ
  - param Variable gg_snd_U05AArthas22
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action EndThematicMusicBJ
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force03
  - param Variable Arthas
  - param String TRIGSTR_081
  - param Variable gg_snd_U05AArthas30
  - param String TRIGSTR_087
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitSpawnKelThuzadGhost
  - param String 0.30
- Action TriggerSleepAction
  - param String 0.40
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable Arthas
  - param String spell
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimationWithRarity
  - param Variable Arthas
  - param String stand
  - param Preset RarityControlFrequent
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String uktg
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitSpawnKelThuzadGhost
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_DarkRitualTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitSpawnKelThuzadGhost
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_DarkRitualTarget1
- Action SetVariable
  - param Variable ExitKelthuzadGhost
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable ExitKelthuzadGhost
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Variable gg_snd_U05AArthas30
      - param Preset OperatorSubtract
      - param String 1.40
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitPathing
  - param Variable ExitKelthuzadGhost
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable ExitKelthuzadGhost
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_WeatherSunlight
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action RemoveWeatherEffectBJ
  - param Variable WeatherSunbeams
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_AltarOfDarknessWhat
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FountainSound
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_AltarOfDarknessWhat
- Action SetDoodadAnimationRectBJ
  - param String stand second
  - param String YOsw
  - param Variable gg_rct_WeatherSunlight
- Action RemoveUnit
  - param Variable ExitKelthuzadGhost
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 4.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetDoodadAnimationRectBJ
  - param String stand third
  - param String YOsw
  - param Variable gg_rct_WeatherSunlight
- Action TriggerExecute
  - param Variable gg_trg_ExitLichRevive
- Action CreateNUnitsAtLoc
  - param String 1
  - param String Uktl
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitSpawnKelThuzadGhost
  - param String 180.00
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_DarkSummoningTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_FountainSound
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_DarkSummoningTarget1
- Action SetVariable
  - param Variable ExitKelthuzadLich
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable ExitKelthuzadLich
- Action SetUnitAnimationWithRarity
  - param Variable ExitKelthuzadLich
  - param String stand
  - param Preset RarityControlFrequent
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force03
  - param Variable ExitKelthuzadLich
  - param String TRIGSTR_088
  - param Variable gg_snd_U05AKelThuzad31
  - param String TRIGSTR_089
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force03
  - param Variable Arthas
  - param String TRIGSTR_090
  - param Variable gg_snd_U05AArthas32
  - param String TRIGSTR_091
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable ExitKelthuzadLich
  - param Variable Arthas
  - param String 0.40
- Action TriggerSleepAction
  - param String 0.40
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force03
  - param Variable ExitKelthuzadLich
  - param String TRIGSTR_092
  - param Variable gg_snd_U05AKelThuzad33
  - param String TRIGSTR_093
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_ExitCinematicEnd


## ExitLichRevive
- enabled: True
- category: [5] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitSpawnKelThuzadGhost
  - param String Abilities\Spells\Human\ReviveHuman\ReviveHuman.mdl
- Action SetVariable
  - param Variable EffectLichRes
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_ReviveHuman
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitSpawnKelThuzadGhost
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_ReviveHuman
  - param String 80.00
- Action PlaySoundBJ
  - param Variable gg_snd_ReviveHuman
- Action TriggerSleepAction
  - param String 2
- Action DestroyEffectBJ
  - param Variable EffectLichRes


## ExitDeathSceneA
- enabled: True
- category: [5] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerTechResearchedSwap
  - param String Ruac
  - param String 1
  - param Preset Player03
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.40
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.80
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ExitDeathSceneA
  - param Variable PlayerArthas
  - param String 0
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_ExitDeathSceneAClear
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nefm
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneAFarm01
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable ExitDeathSceneAFarm01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitLifeBJ
  - param Variable ExitDeathSceneAFarm01
  - param String 75.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nefm
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneAFarm02
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable ExitDeathSceneAFarm02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitLifeBJ
  - param Variable ExitDeathSceneAFarm02
  - param String 300.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hhes
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneAVillager
  - param String 225.00
- Action SetVariable
  - param Variable ExitDeathSceneAElf
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action RemoveGuardPosition
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitLifeBJ
  - param Variable ExitDeathSceneAElf
  - param String 5.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneAGhoul01
  - param String 0.00
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable ExitDeathSceneAFarm01
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneAGhoul02
  - param String 45.00
- Action SetUnitLifePercentBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 50.00
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable ExitDeathSceneAElf
- Action SetVariable
  - param Variable UnitExitDeathSceneGhoul
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssueTargetOrder
  - param Variable ExitDeathSceneAElf
  - param Preset UnitOrderAttackUnit
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneAGhoul03
  - param String 135.00
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable ExitDeathSceneAFarm02
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.40
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0


## ExitDeathSceneB
- enabled: True
- category: [5] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.40
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.80
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ExitDeathSceneB
  - param Variable PlayerArthas
  - param String 0
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_ExitDeathSceneBClear
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nefm
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneBFarm01
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable ExitDeathSceneBFarm01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitLifeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 50.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nefm
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneBFarm02
  - param Preset RealUnitFacing
- Action SetUnitLifeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 200.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nefm
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneBFarm03
  - param Preset RealUnitFacing
- Action SetUnitLifeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 500.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nefm
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneBFarm04
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable ExitDeathSceneBFarm04
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitLifeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 100.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nhea
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneBVillager01
  - param String 90.00
- Action SetUnitLifeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 5.00
- Action RemoveGuardPosition
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetVariable
  - param Variable ExitDeathSceneBElf01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hsor
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneBVillager03
  - param String 225.00
- Action SetUnitLifeBJ
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param String 5.00
- Action RemoveGuardPosition
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetVariable
  - param Variable ExitDeathSceneBElf03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String umtw
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneBMeatWagon01
  - param String 135.00
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable ExitDeathSceneBFarm01
- Action IssueTargetOrder
  - param Variable ExitDeathSceneBElf01
  - param Preset UnitOrderAttackUnit
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String umtw
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneBMeatWagon02
  - param String 135.00
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable ExitDeathSceneBElf01
- Action IssueTargetOrder
  - param Variable ExitDeathSceneBElf02
  - param Preset UnitOrderAttackUnit
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String umtw
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDeathSceneBMeatWagon03
  - param String 135.00
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable ExitDeathSceneBElf03
- Action IssueTargetOrder
  - param Variable ExitDeathSceneBElf03
  - param Preset UnitOrderAttackUnit
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.40
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0


## ExitCinematicEnd
- enabled: True
- category: [5] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_ExitCinematicEscape
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
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
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop09
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop10
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop11
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop12
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop13
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop14
- Action TriggerSleepAction
  - param String 2.00
- Action TriggerExecute
  - param Variable gg_trg_Level_Victory


## ExitCinematicEscape
- enabled: True
- category: [5] ExitCinematic
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable ExitCinematicEscape
  - param String true
- Action SetVariable
  - param Variable ExitCinematicRunning
  - param String false
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2.00
- Action TriggerExecute
  - param Variable gg_trg_Level_Victory


## Level Enabling
- enabled: True
- category: [16] Level Changing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetMissionAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset MissionIndexU08
- Action SetMissionAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset MissionIndexU09
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareItemCode
      - param Function GetItemTypeId
        - Function GetItemTypeId
          - param Function UnitItemInSlotBJ
            - Function UnitItemInSlotBJ
              - param Variable Arthas
              - param String 1
      - param Preset OperatorEqualENE
      - param String ktrm
  - param Function DoNothing
    - Action RemoveItem
      - param Function UnitItemInSlotBJ
        - Function UnitItemInSlotBJ
          - param Variable Arthas
          - param String 1
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareItemCode
      - param Function GetItemTypeId
        - Function GetItemTypeId
          - param Function UnitItemInSlotBJ
            - Function UnitItemInSlotBJ
              - param Variable Arthas
              - param String 2
      - param Preset OperatorEqualENE
      - param String ktrm
  - param Function DoNothing
    - Action RemoveItem
      - param Function UnitItemInSlotBJ
        - Function UnitItemInSlotBJ
          - param Variable Arthas
          - param String 2
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareItemCode
      - param Function GetItemTypeId
        - Function GetItemTypeId
          - param Function UnitItemInSlotBJ
            - Function UnitItemInSlotBJ
              - param Variable Arthas
              - param String 3
      - param Preset OperatorEqualENE
      - param String ktrm
  - param Function DoNothing
    - Action RemoveItem
      - param Function UnitItemInSlotBJ
        - Function UnitItemInSlotBJ
          - param Variable Arthas
          - param String 3
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareItemCode
      - param Function GetItemTypeId
        - Function GetItemTypeId
          - param Function UnitItemInSlotBJ
            - Function UnitItemInSlotBJ
              - param Variable Arthas
              - param String 4
      - param Preset OperatorEqualENE
      - param String ktrm
  - param Function DoNothing
    - Action RemoveItem
      - param Function UnitItemInSlotBJ
        - Function UnitItemInSlotBJ
          - param Variable Arthas
          - param String 4
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareItemCode
      - param Function GetItemTypeId
        - Function GetItemTypeId
          - param Function UnitItemInSlotBJ
            - Function UnitItemInSlotBJ
              - param Variable Arthas
              - param String 5
      - param Preset OperatorEqualENE
      - param String ktrm
  - param Function DoNothing
    - Action RemoveItem
      - param Function UnitItemInSlotBJ
        - Function UnitItemInSlotBJ
          - param Variable Arthas
          - param String 5
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareItemCode
      - param Function GetItemTypeId
        - Function GetItemTypeId
          - param Function UnitItemInSlotBJ
            - Function UnitItemInSlotBJ
              - param Variable Arthas
              - param String 6
      - param Preset OperatorEqualENE
      - param String ktrm
  - param Function DoNothing
    - Action RemoveItem
      - param Function UnitItemInSlotBJ
        - Function UnitItemInSlotBJ
          - param Variable Arthas
          - param String 6
  - param Function DoNothing
    - Action DoNothing
- Action StoreUnitBJ
  - param Variable Arthas
  - param String Arthas
  - param String Undead06
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SaveGameCacheBJ
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ


## Level Victory
- enabled: True
- category: [16] Level Changing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetNextLevelBJ
  - param String Maps\Campaign\Undead05Interlude.w3m
- Action CustomVictoryBJ
  - param Preset Player03
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse


## Level Defeat
- enabled: True
- category: [16] Level Changing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Preset Player03
  - param String TRIGSTR_085


## ArthasEntersCOP
- enabled: True
- category: [8] Victory
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable ArthasAtSunwell
  - param String true
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_SunwellCOP


## ArthasLeavesCOP
- enabled: True
- category: [8] Victory
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable ArthasAtSunwell
  - param String false
- Condition OperatorCompareUnit
  - param Function GetLeavingUnit
    - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_SunwellCOP


## ArthasDies
- enabled: True
- category: [8] Victory
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable ArthasAtSunwell
  - param String false
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## AllGuardiansDestroyed
- enabled: True
- category: [8] Victory
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable GuardiansDead
  - param String true
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_AllGuardiansDestroyedMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareInteger
  - param Function GetPlayerUnitCount
    - Function GetPlayerUnitCount
      - param Preset Player10
      - param Preset InclusionExclude
  - param Preset OperatorEqual
  - param String 0
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player10
  - param Preset PlayerUnitEventDeath


## AllGuardiansDestroyedMessage
- enabled: True
- category: [8] Victory
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
- Action QuestItemSetCompletedBJ
  - param Variable QuestReqSunwellGuardians
  - param Preset CompletionOptionCompleted
- Action CreateQuestItemBJ
  - param Variable QuestSunwell
  - param String TRIGSTR_161
- Action SetVariable
  - param Variable QuestReqSunwellArthas
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action QuestMessageBJ
  - param Preset Force03
  - param Preset QuestMessageTypeUpdated
  - param String TRIGSTR_162
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## BothRequirementsMet
- enabled: True
- category: [8] Victory
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
  - param Variable gg_trg_AllPlayerBuildingsDestroyed
- Action SetVariable
  - param Variable RunnerActive
  - param String false
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_BothRequirementsMetMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareBoolean
  - param Variable GuardiansDead
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable ArthasAtSunwell
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterTimerEventPeriodic
  - param String 1.00


## BothRequirementsMetMessage
- enabled: True
- category: [8] Victory
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
- Action QuestItemSetCompletedBJ
  - param Variable QuestReqSunwellArthas
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_163
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerClearBJ
- Action TriggerExecute
  - param Variable gg_trg_TriggerExitCinematic


## AllPlayerBuildingsDestroyed
- enabled: True
- category: [9] Defeat
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
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_BothRequirementsMet
- Action DisableTrigger
  - param Variable gg_trg_TriggerSylvanasCinematic
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_034
- Action QueuedTriggerClearBJ
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action TriggerExecute
  - param Variable gg_trg_Level_Defeat
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player03
      - param Preset InclusionExclude
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable GargoyleCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable SylvanasCinematicRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterTimerEventPeriodic
  - param String 1.00


## Victory Cheat
- enabled: True
- category: [11] Cheat Code Support
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_Level_Enabling
- Action TriggerExecute
  - param Variable gg_trg_Level_Victory
- Event TriggerRegisterPlayerEventVictory
  - param Preset Player03


## Defeat Cheat
- enabled: True
- category: [11] Cheat Code Support
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Level_Defeat
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player03


## debugelf
- enabled: False
- category: [20] DEBUGSylvanus
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_SylvanusStart
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterPlayerChatEvent
  - param Preset Player03
  - param String debugelf
  - param Preset ChatMatchTypeExact


## debugexitcinematic
- enabled: False
- category: [20] DEBUGSylvanus
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action KillUnit
  - param Variable gg_unit_nggr_0135
- Action KillUnit
  - param Variable gg_unit_nggr_0134
- Action KillUnit
  - param Variable gg_unit_nggr_0049
- Action KillUnit
  - param Variable gg_unit_nggr_0136
- Action KillUnit
  - param Variable gg_unit_negt_0067
- Action KillUnit
  - param Variable gg_unit_negt_0068
- Action KillUnit
  - param Variable gg_unit_negt_0069
- Action KillUnit
  - param Variable gg_unit_negt_0066
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SunwellCOP
- Event TriggerRegisterPlayerChatEvent
  - param Preset Player03
  - param String debugvictory
  - param Preset ChatMatchTypeExact

