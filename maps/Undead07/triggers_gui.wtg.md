version = ROC

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 0 | Initialization | False |
| 19 | Leaderboards | False |
| 16 | ComputerResources | False |
| 12 | LevelCaps | False |
| 25 | ArchmageLeash | False |
| 18 | Level Data | False |
| 27 | IZZZZZZZZI  AI  IZZZZZZZZZZI | False |
| 7 | StartAI | False |
| 13 | IZZZZZZI CINEMATICS IZZZZZZI | False |
| 3 | OpeningCinematic | False |
| 17 | EndingCinematic | False |
| 14 | IZZZZZZZZZZZZZZZZZZZZZZZI | False |
| 8 | ExoticBeastiary | False |
| 21 | Gate | False |
| 15 | GyroForce | False |
| 9 | VaultOfEnchantments | False |
| 1 | ArchmageShieldSupporters | False |
| 10 | AntonidasArea | False |
| 29 | Crates | False |
| 2 | Shield01 | False |
| 4 | Shield02 | False |
| 6 | Shield03 | False |
| 28 | IZZZZZZZZZZZZZZZZZZZZZZZI | False |
| 5 | VictoryDefeat | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| Shield01Group | group | . | . |
| Archmage01 | unit | . | . |
| Arthas | unit | . | . |
| Antonidas | unit | . | . |
| OpeningGhoulGroup01 | group | . | . |
| OpeningGhoulGroup02 | group | . | . |
| KelThuzad | unit | . | . |
| Archmage01Visibility | fogmodifier | . | . |
| OpeningCancelled | boolean | . | false |
| OpeningKnight01 | unit | . | . |
| OpeningKnight02 | unit | . | . |
| OpeningVisibility | fogmodifier | . | . |
| Archmage02 | unit | . | . |
| Shield02Group | group | . | . |
| Archmage02Visibility | fogmodifier | . | . |
| Shield03Group | group | . | . |
| Archmage03 | unit | . | . |
| Archmage03Visibility | fogmodifier | . | . |
| MeatWagon | sound | . | . |
| PurpleArchmage | unit | . | . |
| YellowArchmage | unit | . | . |
| OrangeArchmage | unit | . | . |
| QuestReqArchmage01 | questitem | . | . |
| QuestReqArchmage02 | questitem | . | . |
| QuestReqArchmage03 | questitem | . | . |
| QuestThreeArchmages | quest | . | . |
| Shield02Switch | boolean | . | true |
| Shield03Switch | boolean | . | true |
| GyroForce | group | . | . |
| Shield02FrostWyrmGroup | group | . | . |
| Shield03FrostWyrmGroup | group | . | . |
| FlyingSheep01 | unit | . | . |
| FlyingSheep02 | unit | . | . |
| Golem01 | unit | . | . |
| Golem02 | unit | . | . |
| LeaderboardArchmage | leaderboard | . | . |
| Player | player | . | . |
| Archmages | integer | . | . |
| ArchmageCount | integer | . | . |
| EndingCancelled | boolean | . | false |
| ArchmageYellow | unit | . | . |
| ArchmageHermit | unit | . | . |
| EndingRemove | group | . | . |
| Shield01Switch | boolean | . | true |
| GAMEOVER | boolean | . | false |
| CinematicGroup | group | . | . |

# Triggers
## Melee Initialization
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
- Action CommentString
  - param String ***********************
- Action SetTimeOfDay
  - param String 6.01
- Action SetSkyModel
  - param Preset SkyModelSky02
- Action SetDoodadAnimationRectBJ
  - param String Death
  - param String YZef
  - param Variable gg_rct_Shield01
- Action SetDoodadAnimationRectBJ
  - param String Death
  - param String YZef
  - param Variable gg_rct_Shield02
- Action SetDoodadAnimationRectBJ
  - param String Death
  - param String YZef
  - param Variable gg_rct_Shield03
- Action CommentString
  - param String ***********************
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Load_Heroes
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupComputerPlayers
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupComputerAlliances
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupPlayerAlliances
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupPlayerResources
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupArchmage01
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupArchmage02
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupArchmage03
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupArchmageYellow
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupArchmageHermit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupAntonidas
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupOpeningKnights
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupGhoulGroup
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupQuests
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupShields
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupGyroForce
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupArthas
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupKelThuzad
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupBookOfSummoning
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupArchmageCount
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupScoreScreen
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupArchmageExtra
- Action CommentString
  - param String Start Initial Cinematic
- Action ConditionalTriggerExecute
  - param Variable gg_trg_OpeningSetup
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening01
- Action CommentString
  - param String Difficulty
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Easy
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Normal
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Hard
- Action CommentString
  - param String Set Experience Rate
- Action SetVariable
  - param Variable Player
  - param Preset Player06
- Action SetPlayerHandicapXPBJ
  - param Variable Player
  - param String 25.00
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
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyEasy
- Action CommentString
  - param String Handicap
- Action SetPlayerHandicapBJ
  - param Preset Player01
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player03
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player04
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player05
  - param Preset RealHandicapEasy
- Action CommentString
  - param String Main Gate Area
- Action RemoveUnit
  - param Variable gg_unit_hsor_0178
- Action RemoveUnit
  - param Variable gg_unit_hmpr_0176
- Action RemoveUnit
  - param Variable gg_unit_hrif_0199
- Action RemoveUnit
  - param Variable gg_unit_hrif_0196
- Action RemoveUnit
  - param Variable gg_unit_hrif_0198
- Action CommentString
  - param String Second Archmage Area
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0221
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0115
- Action RemoveUnit
  - param Variable gg_unit_hsor_0222
- Action RemoveUnit
  - param Variable gg_unit_hctw_0151
- Action CommentString
  - param String Third Archmage Area
- Action RemoveUnit
  - param Variable gg_unit_hmtm_0214
- Action RemoveUnit
  - param Variable gg_unit_hsor_0218


## Difficulty Normal
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Main Gate Area
- Action RemoveUnit
  - param Variable gg_unit_hsor_0178
- Action RemoveUnit
  - param Variable gg_unit_hmpr_0176
- Action RemoveUnit
  - param Variable gg_unit_hrif_0199
- Action RemoveUnit
  - param Variable gg_unit_hrif_0196
- Action RemoveUnit
  - param Variable gg_unit_hrif_0198
- Action CommentString
  - param String Second Archmage Area
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0221
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0115
- Action RemoveUnit
  - param Variable gg_unit_hsor_0222
- Action RemoveUnit
  - param Variable gg_unit_hctw_0151
- Action CommentString
  - param String Third Archmage Area
- Action RemoveUnit
  - param Variable gg_unit_hmtm_0214
- Action RemoveUnit
  - param Variable gg_unit_hsor_0218
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
- Action CommentString
  - param String Archmage Summoning Level
- Action TriggerSleepAction
  - param String 0.10
- Action SuspendHeroXPBJ
  - param Preset EnableDisableEnable
  - param Variable Archmage01
- Action SuspendHeroXPBJ
  - param Preset EnableDisableEnable
  - param Variable Archmage02
- Action SuspendHeroXPBJ
  - param Preset EnableDisableEnable
  - param Variable Archmage03
- Action SetHeroLevel
  - param Variable Archmage01
  - param String 5
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Archmage01
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable Archmage01
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable Archmage01
  - param Preset HeroSkillBrillianceAura
- Action SetHeroLevel
  - param Variable Archmage02
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Archmage02
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable Archmage02
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable Archmage02
  - param Preset HeroSkillBrillianceAura
- Action SetHeroLevel
  - param Variable Archmage03
  - param String 10
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Archmage03
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable Archmage03
  - param Preset HeroSkillBrillianceAura
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Archmage01
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Archmage02
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Archmage03
- Action CommentString
  - param String Archmage Yellow Level
- Action SuspendHeroXPBJ
  - param Preset EnableDisableEnable
  - param Variable ArchmageYellow
- Action SetHeroLevel
  - param Variable ArchmageYellow
  - param String 8
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable ArchmageYellow
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable ArchmageYellow
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable ArchmageYellow
  - param Preset HeroSkillWaterElemental
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable ArchmageYellow
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard


## SetupComputerPlayers
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Purple
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateGold
  - param String 2000
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateLumber
  - param String 2000
- Action SetPlayerColorBJ
  - param Preset Player03
  - param Preset Color09
  - param Preset PlayerChangeColorChange
- Action CommentString
  - param String Yellow
- Action SetPlayerState
  - param Preset Player04
  - param Preset PlayerStateGold
  - param String 2000
- Action SetPlayerState
  - param Preset Player04
  - param Preset PlayerStateLumber
  - param String 2000
- Action SetPlayerColorBJ
  - param Preset Player04
  - param Preset Color01
  - param Preset PlayerChangeColorChange
- Action CommentString
  - param String Orange
- Action SetPlayerState
  - param Preset Player05
  - param Preset PlayerStateGold
  - param String 2000
- Action SetPlayerState
  - param Preset Player05
  - param Preset PlayerStateLumber
  - param String 2000
- Action SetPlayerColorBJ
  - param Preset Player05
  - param Preset Color08
  - param Preset PlayerChangeColorChange
- Action CommentString
  - param String ***********************
- Action CommentString
  - param String Blue (Pre-placed non-town player)
- Action SetPlayerColorBJ
  - param Preset Player01
  - param Preset Color08
  - param Preset PlayerChangeColorChange
- Action CommentString
  - param String ***********************
- Action SetUnitColor
  - param Variable gg_unit_Hant_0172
  - param Preset Color08
- Action CommentString
  - param String ***********************
- Action SetUnitColor
  - param Variable gg_unit_Hamg_0122
  - param Preset Color09
- Action CommentString
  - param String ***********************
- Action SetUnitColor
  - param Variable gg_unit_Hamg_0019
  - param Preset Color01


## StartCampaignAI
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description
Run from 'Opening04' and 'OpeningCancelled'
```
### Functions
- Action StartCampaignAI
  - param Preset Player03
  - param String u07_purple.ai
- Action StartCampaignAI
  - param Preset Player04
  - param String u07_yellow.ai
- Action StartCampaignAI
  - param Preset Player05
  - param String u07_orange.ai
- Action CommandAI
  - param Preset Player03
  - param String 0
  - param String 0


## SetupComputerAlliances
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description
All computer players shall be allied with each other
```
### Functions
- Action CommentString
  - param String Red
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player01
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player03
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player04
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player00
  - param Preset Player05
  - param Preset AllianceSettingAlliedVision
- Action CommentString
  - param String Blue
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player00
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player03
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player04
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player05
  - param Preset AllianceSettingAlliedVision
- Action CommentString
  - param String Purple
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player00
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player01
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player04
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player05
  - param Preset AllianceSettingAlliedVision
- Action CommentString
  - param String Yellow
- Action SetPlayerAllianceStateBJ
  - param Preset Player04
  - param Preset Player00
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player04
  - param Preset Player01
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player04
  - param Preset Player03
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player04
  - param Preset Player05
  - param Preset AllianceSettingAlliedVision
- Action CommentString
  - param String Orange
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset Player00
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset Player01
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset Player03
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset Player04
  - param Preset AllianceSettingAlliedVision


## SetupPlayerAlliances
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player07
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player07
  - param Preset Player06
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerColorBJ
  - param Preset Player07
  - param Preset Color11
  - param Preset PlayerChangeColorChange


## SetupPlayerResources
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
  - param Preset PlayerStateLumber
  - param String 550
- Action SetPlayerState
  - param Preset Player06
  - param Preset PlayerStateGold
  - param String 1500
- Action SetPlayerColorBJ
  - param Preset Player06
  - param Preset Color03
  - param Preset PlayerChangeColorChange


## SetupArthas
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


## SetupKelThuzad
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action EnableTrigger
  - param Variable gg_trg_KelThuzadLevelUp


## SetupArchmage01
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Archmage01
  - param Variable gg_unit_Hamg_0122
- Action SetHeroLevel
  - param Variable Archmage01
  - param String 2
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Archmage01
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable Archmage01
  - param Preset HeroSkillBrillianceAura
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Archmage01


## SetupArchmage02
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Archmage02
  - param Variable gg_unit_Hamg_0019
- Action SetHeroLevel
  - param Variable Archmage02
  - param String 3
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Archmage02
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable Archmage02
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable Archmage02
  - param Preset HeroSkillWaterElemental
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Archmage02


## SetupArchmage03
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Archmage03
  - param Variable gg_unit_Hant_0172
- Action SetHeroLevel
  - param Variable Archmage03
  - param String 7
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Archmage03
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable Archmage03
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable Archmage03
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable Archmage03
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable Archmage03
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable Archmage03
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable Archmage03
  - param Preset HeroSkillBrillianceAura
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Archmage03


## SetupArchmageExtra
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SelectHeroSkill
  - param Variable gg_unit_Hamg_0070
  - param Preset HeroSkillWaterElemental
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Hamg_0070


## SetupArchmageHermit
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable ArchmageHermit
  - param Variable gg_unit_Hamg_0014
- Action SetHeroLevel
  - param Variable ArchmageHermit
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable ArchmageHermit
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable ArchmageHermit
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable ArchmageHermit
  - param Preset HeroSkillWaterElemental
- Action SelectHeroSkill
  - param Variable ArchmageHermit
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable ArchmageHermit
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable ArchmageHermit
  - param Preset HeroSkillMassTeleport
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable ArchmageHermit


## SetupArchmageYellow
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable ArchmageYellow
  - param Variable gg_unit_Hamg_0010
- Action SetHeroLevel
  - param Variable ArchmageYellow
  - param String 5
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable ArchmageYellow
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable ArchmageYellow
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable ArchmageYellow
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable ArchmageYellow
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable ArchmageYellow
  - param Preset HeroSkillWaterElemental
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable ArchmageYellow


## SetupAntonidas
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Antonidas
  - param Variable gg_unit_Hant_0123
- Action SetHeroLevel
  - param Variable Antonidas
  - param String 7
  - param Preset ShowHideHide
- Action SetUnitManaPercentBJ
  - param Variable Antonidas
  - param String 100.00
- Action SelectHeroSkill
  - param Variable Antonidas
  - param Preset HeroSkillMassTeleport
- Action SelectHeroSkill
  - param Variable Antonidas
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable Antonidas
  - param Preset HeroSkillBlizzard
- Action SelectHeroSkill
  - param Variable Antonidas
  - param Preset HeroSkillBrillianceAura
- Action SelectHeroSkill
  - param Variable Antonidas
  - param Preset HeroSkillBrillianceAura


## SetupOpeningKnights
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable OpeningKnight01
  - param Variable gg_unit_hkni_0058
- Action SetVariable
  - param Variable OpeningKnight02
  - param Variable gg_unit_hkni_0059


## SetupGhoulGroup
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable OpeningGhoulGroup01
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_OpeningGhoulAttack01
- Action SetVariable
  - param Variable OpeningGhoulGroup02
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_OpeningGhoulAttack02


## SetupGyroForce
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable GyroForce
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_GyroForce


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
  - param String ***********************
- Action CreateQuestBJ
  - param Preset QuestTypeReqUndiscovered
  - param String TRIGSTR_027
  - param String TRIGSTR_028
  - param String ReplaceableTextures\CommandButtons\BTNHeroArchMage.tga
- Action SetVariable
  - param Variable QuestThreeArchmages
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CommentString
  - param String ***********************
- Action CreateQuestItemBJ
  - param Variable QuestThreeArchmages
  - param String TRIGSTR_051
- Action SetVariable
  - param Variable QuestReqArchmage01
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CommentString
  - param String ***********************
- Action CreateQuestItemBJ
  - param Variable QuestThreeArchmages
  - param String TRIGSTR_060
- Action SetVariable
  - param Variable QuestReqArchmage02
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CommentString
  - param String ***********************
- Action CreateQuestItemBJ
  - param Variable QuestThreeArchmages
  - param String TRIGSTR_059
- Action SetVariable
  - param Variable QuestReqArchmage03
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CommentString
  - param String ***********************


## SetupShields
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetDoodadAnimationRectBJ
  - param String Death
  - param String YZef
  - param Variable gg_rct_Shield01
- Action SetDoodadAnimationRectBJ
  - param String Death
  - param String YZef
  - param Variable gg_rct_Shield02
- Action SetDoodadAnimationRectBJ
  - param String Death
  - param String YZef
  - param Variable gg_rct_Shield03


## SetupBookOfSummoning
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitInvulnerable
  - param Variable gg_unit_nbsm_0251
  - param Preset InvulnerabilityInvulnerable


## SetupArchmageCount
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable ArchmageCount
  - param String 3


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
  - param Preset Player01
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player07


## Leaderboard Create
- enabled: True
- category: [19] Leaderboards
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateLeaderboardBJ
  - param Preset Force06
  - param String TRIGSTR_022
- Action SetVariable
  - param Variable LeaderboardArchmage
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
- Action LeaderboardAddItemBJ
  - param Preset Player00
  - param Variable LeaderboardArchmage
  - param String TRIGSTR_024
  - param String 3
- Action LeaderboardSetPlayerItemLabelColorBJ
  - param Preset Player00
  - param Variable LeaderboardArchmage
  - param String 100
  - param String 100.00
  - param String 100.00
  - param String 0
- Action LeaderboardSetPlayerItemValueColorBJ
  - param Preset Player00
  - param Variable LeaderboardArchmage
  - param String 100
  - param String 100.00
  - param String 100.00
  - param String 0


## Leaderboard Update
- enabled: True
- category: [19] Leaderboards
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable ArchmageCount
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable ArchmageCount
      - param Preset OperatorSubtract
      - param String 1
- Action LeaderboardSetPlayerItemValueBJ
  - param Preset Player00
  - param Variable LeaderboardArchmage
  - param Variable ArchmageCount


## PurpleGold
- enabled: True
- category: [16] ComputerResources
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
  - param String 1000.00


## YellowGold
- enabled: True
- category: [16] ComputerResources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player04
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player04
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThanOrEqual
  - param String 1000.00


## OrangeGold
- enabled: True
- category: [16] ComputerResources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player05
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player05
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThanOrEqual
  - param String 1000.00


## PurpleLumber
- enabled: True
- category: [16] ComputerResources
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
  - param String 1000.00


## YellowLumber
- enabled: True
- category: [16] ComputerResources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player04
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player04
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThanOrEqual
  - param String 1000.00


## OrangeLumber
- enabled: True
- category: [16] ComputerResources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player05
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player05
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThanOrEqual
  - param String 1000.00


## ArthasLevelUp
- enabled: True
- category: [12] LevelCaps
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnit
  - param Function GetLevelingUnit
    - Function GetLevelingUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Condition OperatorCompareInteger
  - param Function GetHeroLevel
    - Function GetHeroLevel
      - param Variable Arthas
  - param Preset OperatorGreaterEq
  - param String 8
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventHero_Level
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Arthas


## KelThuzadLevelUp
- enabled: True
- category: [12] LevelCaps
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnit
  - param Function GetLevelingUnit
    - Function GetLevelingUnit
  - param Preset OperatorEqualENE
  - param Variable KelThuzad
- Condition OperatorCompareInteger
  - param Function GetHeroLevel
    - Function GetHeroLevel
      - param Variable KelThuzad
  - param Preset OperatorGreaterEq
  - param String 8
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventHero_Level
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable KelThuzad


## Archmage01Leash
- enabled: True
- category: [25] ArchmageLeash
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable Archmage01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archmage01LeashArea
- Condition OperatorCompareReal
  - param Function DistanceBetweenPoints
    - Function DistanceBetweenPoints
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable Archmage01
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Archmage01LeashArea
  - param Preset OperatorGreaterEq
  - param String 300.00
- Event TriggerRegisterTimerEventPeriodic
  - param String 0.50


## Archmage02Leash
- enabled: True
- category: [25] ArchmageLeash
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable Archmage02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archmage02LeashArea
- Condition OperatorCompareReal
  - param Function DistanceBetweenPoints
    - Function DistanceBetweenPoints
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable Archmage02
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Archmage02LeashArea
  - param Preset OperatorGreaterEq
  - param String 300.00
- Event TriggerRegisterTimerEventPeriodic
  - param String 0.50


## Archmage03Leash
- enabled: True
- category: [25] ArchmageLeash
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable Archmage03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archmage03LeashArea
- Condition OperatorCompareReal
  - param Function DistanceBetweenPoints
    - Function DistanceBetweenPoints
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable Archmage03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Archmage03LeashArea
  - param Preset OperatorGreaterEq
  - param String 300.00
- Event TriggerRegisterTimerEventPeriodic
  - param String 0.50


## Load Heroes
- enabled: True
- category: [18] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description
Run from Map Init
```
### Functions
- Action InitGameCacheBJ
  - param String Campaigns.w3v
- Action TriggerExecute
  - param Variable gg_trg_Load_Arthas
- Action TriggerExecute
  - param Variable gg_trg_Load_KelThuzad


## Load Arthas
- enabled: True
- category: [18] Level Data
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
  - param String Undead07
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Preset Player06
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
  - param Preset Player06
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
  - param String 7
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
  - param Preset HeroSkillUnholyAura
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillUnholyAura
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDeathPact
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillAnimateDead


## Load KelThuzad
- enabled: True
- category: [18] Level Data
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
  - param String Undead07
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
  - param String 6
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


## Next Level Prep
- enabled: True
- category: [18] Level Data
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
  - param String Undead08
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action StoreUnitBJ
  - param Variable KelThuzad
  - param String KelThuzad
  - param String Undead08
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SaveGameCacheBJ
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action CommentString
  - param String Enable the next level in the glue screens
- Action SetMissionAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset MissionIndexU11


## Next Level Run
- enabled: True
- category: [18] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Run the next level
- Action SetNextLevelBJ
  - param String Maps\Campaign\Undead08.w3m
- Action CustomVictoryBJ
  - param Preset Player06
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse


## Victory Cheat
- enabled: True
- category: [18] Level Data
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
  - param Preset Player06


## DefeatCheat
- enabled: True
- category: [18] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Preset Player06
  - param String TRIGSTR_133
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player06


## StartAIYellow
- enabled: True
- category: [7] StartAI
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
  - param Preset Player04
  - param String 0
  - param String 0
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Hamg_0122
  - param Preset UnitEventDeath


## StartAIOrange
- enabled: True
- category: [7] StartAI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Hamg_0019
  - param Preset UnitEventDeath
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CommandAI
  - param Preset Player05
  - param String 0
  - param String 0


## OpeningSetup
- enabled: True
- category: [3] OpeningCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player06
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player03
  - param Preset AllianceSettingNeutral


## OpeningCatapultMove
- enabled: True
- category: [3] OpeningCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_umtw_0079
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CatapultMoveFinal
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_hwtw_0048
  - param Preset UnitEventDeath


## OpeningCancelled
- enabled: True
- category: [3] OpeningCinematic
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
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectUnitSingle
  - param Variable Arthas
- Action SetSkyModel
  - param Preset SkyModelNone
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player06
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archmage01Revealer
  - param String 450.00
- Action SetVariable
  - param Variable Archmage01Visibility
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetUnitAnimation
  - param Variable gg_unit_uslh_0045
  - param String stand
- Action SetDoodadAnimationRectBJ
  - param String Stand
  - param String YZef
  - param Variable gg_rct_Shield01
- Action SetUnitPositionLoc
  - param Variable gg_unit_umtw_0256
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MeatWagonDest02
- Action SetUnitPositionLoc
  - param Variable gg_unit_umtw_0042
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MeatWagonDest01
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player03
  - param Preset AllianceSettingUnallied
- Action RemoveUnit
  - param Variable Antonidas
- Action SetVariable
  - param Variable Antonidas
  - param Variable gg_unit_Hant_0172
- Action RemoveUnit
  - param Variable OpeningKnight01
- Action RemoveUnit
  - param Variable OpeningKnight02
- Action SetUnitPositionLoc
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningKelThuzadDest
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningArthasDest
- Action SetUnitPositionLoc
  - param Variable gg_unit_uabo_0041
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abom01
- Action SetUnitPositionLoc
  - param Variable gg_unit_uabo_0138
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abom02
- Action SetUnitPositionLoc
  - param Variable gg_unit_umtw_0079
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CatapultMoveFinal
- Action IssueImmediateOrder
  - param Variable gg_unit_umtw_0079
  - param Preset UnitOrderStop
- Action KillUnit
  - param Variable gg_unit_hwtw_0048
- Action KillUnit
  - param Variable gg_unit_hhou_0033
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_HarvestGold
  - param Function DoNothing
    - Action GroupTargetOrder
      - param Function GetUnitsInRectAll
        - Function GetUnitsInRectAll
          - param Variable gg_rct_HarvestGold
      - param Preset UnitOrderHarvest
      - param Variable gg_unit_ugol_0201
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_HarvestTrees
  - param Function DoNothing
    - Action GroupTargetDestructableOrder
      - param Function GetUnitsInRectAll
        - Function GetUnitsInRectAll
          - param Variable gg_rct_HarvestTrees
      - param Preset UnitOrderHarvestDestructible
      - param Variable gg_dest_LTlt_0892
- Action ResetToGameCameraForPlayer
  - param Preset Player06
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Preset Player06
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
  - param String 0
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Leaderboard_Create
- Action ConditionalTriggerExecute
  - param Variable gg_trg_StartCampaignAI
- Action ResetTerrainFogBJ
- Action TriggerSleepAction
  - param String 1.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_061
- Action QuestSetDiscoveredBJ
  - param Variable QuestThreeArchmages
  - param Preset DiscoveredOptionDiscovered
- Action TriggerSleepAction
  - param String 15.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_232
- Action TriggerSleepAction
  - param String 15.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_234
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player06


## Opening01
- enabled: True
- category: [3] OpeningCinematic
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
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetTerrainFogExBJ
  - param String 0
  - param String 1000
  - param String 6000.00
  - param String 0
  - param String 60.00
  - param String 40.00
  - param String 30.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MeatWagon01
  - param Preset Player06
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MeatWagon02
  - param Preset Player06
  - param String 6.00
- Action TriggerSleepAction
  - param String 1.00
- Action CommentString
  - param String ***********************
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
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_OpeningCancelled
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
- Action SetUnitAnimation
  - param Variable gg_unit_uslh_0045
  - param String stand work
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_SlaughterHouseWhat1
  - param Variable gg_unit_uslh_0045
- Action PlaySoundBJ
  - param Variable gg_snd_SlaughterHouseWhat1
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
- Action IssueTargetOrder
  - param Variable gg_unit_umtw_0079
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hhou_0033
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
  - param Variable gg_cam_MeatWagon03
  - param Preset Player06
  - param String 7.00
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonWhat101
  - param Variable gg_unit_umtw_0042
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonWhat101
  - param String 80.00
- Action PlaySoundBJ
  - param Variable gg_snd_MeatWagonWhat101
- Action IssuePointOrderLoc
  - param Variable gg_unit_umtw_0256
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MeatWagonDest01
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
  - param Variable gg_unit_umtw_0042
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MeatWagonDest02
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonYesAttack2
  - param Variable gg_unit_umtw_0256
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonYesAttack2
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MeatWagonYesAttack2
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
  - param Variable gg_snd_MeatWagonWhat101
  - param Variable gg_unit_umtw_0042
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonWhat101
  - param String 80.00
- Action PlaySoundBJ
  - param Variable gg_snd_MeatWagonWhat101
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
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonWhat2
  - param Variable gg_unit_umtw_0256
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonWhat2
  - param String 80.00
- Action PlaySoundBJ
  - param Variable gg_snd_MeatWagonWhat2
- Action IssuePointOrderLoc
  - param Variable gg_unit_umtw_0079
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningCatapultMove
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
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonYes3
  - param Variable gg_unit_umtw_0256
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonYes3
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MeatWagonYes3
- Action CommentString
  - param String ***********************
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening02


## Opening02
- enabled: True
- category: [3] OpeningCinematic
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
  - param String ***********************
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Opening01
  - param Preset Player06
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Opening02
  - param Preset Player06
  - param String 10.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_uabo_0041
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abom01
- Action IssuePointOrderLoc
  - param Variable gg_unit_uabo_0138
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Abom02
- Action TriggerSleepAction
  - param String 6.00
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
      - param Variable gg_rct_OpeningArthasDest
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop1
  - param Variable Arthas
- Action SetSoundVolumeBJ
  - param Variable gg_snd_HorseLoop1
  - param String 60.00
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop1
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
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_034
  - param Variable gg_snd_U07Arthas01
  - param String TRIGSTR_035
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
  - param Variable gg_cam_Opening03
  - param Preset Player06
  - param String 4.00
- Action IssuePointOrderLoc
  - param Variable Antonidas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AntonidasTeleportOpening
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop3
  - param Variable Antonidas
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop3
- Action TriggerSleepAction
  - param String 0.75
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
  - param Variable gg_unit_hkni_0059
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Knight01Post
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop2
  - param Variable gg_unit_hkni_0059
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop2
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0058
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Knight02Post
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop1
  - param Variable gg_unit_hkni_0058
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop1
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
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Antonidas
  - param String TRIGSTR_036
  - param Variable gg_snd_U07Antonidas02
  - param String TRIGSTR_037
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
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_038
  - param Variable gg_snd_U07Arthas03
  - param String TRIGSTR_039
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
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Antonidas
  - param String TRIGSTR_044
  - param Variable gg_snd_U07Antonidas04
  - param String TRIGSTR_045
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
- Action SetUnitAnimation
  - param Variable Antonidas
  - param String spell
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_RejuvenationTarget1
  - param Variable Antonidas
- Action SetSoundVolumeBJ
  - param Variable gg_snd_RejuvenationTarget1
  - param String 80.00
- Action PlaySoundBJ
  - param Variable gg_snd_RejuvenationTarget1
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_DivineShield
  - param Variable Antonidas
- Action SetSoundVolumeBJ
  - param Variable gg_snd_DivineShield
  - param String 80.00
- Action PlaySoundBJ
  - param Variable gg_snd_DivineShield
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
- Action SetDoodadAnimationRectBJ
  - param String Stand
  - param String YZef
  - param Variable gg_rct_Shield01
- Action TriggerSleepAction
  - param String 1.25
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
  - param Variable gg_cam_Opening_3a
  - param Preset Player06
  - param String 12.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_046
  - param Variable gg_snd_U07Arthas05
  - param String TRIGSTR_047
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
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Opening03


## Opening03
- enabled: True
- category: [3] OpeningCinematic
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
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Antonidas
  - param String TRIGSTR_048
  - param Variable gg_snd_U07Antonidas06
  - param String TRIGSTR_049
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
- Action IssueTargetOrder
  - param Variable Antonidas
  - param Preset UnitOrderMassTeleport
  - param Variable gg_unit_hsor_0188
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MassTeleportTarget
  - param Variable Antonidas
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MassTeleportTarget
  - param String 80.00
- Action PlaySoundBJ
  - param Variable gg_snd_MassTeleportTarget
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
- Action IssuePointOrderLoc
  - param Variable KelThuzad
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_OpeningKelThuzadDest
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Opening04
  - param Preset Player06
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
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_052
  - param Variable gg_snd_U07KelThuzad07
  - param String TRIGSTR_053
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
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_OpeningCancelled
- Action RemoveUnit
  - param Variable Antonidas
- Action SetVariable
  - param Variable Antonidas
  - param Variable gg_unit_Hant_0172
- Action RemoveUnit
  - param Variable OpeningKnight01
- Action RemoveUnit
  - param Variable OpeningKnight02
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player06
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archmage01Revealer
  - param String 450.00
- Action SetVariable
  - param Variable Archmage01Visibility
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player06
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player01
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player03
  - param Preset AllianceSettingUnallied
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_HarvestGold
  - param Function DoNothing
    - Action GroupTargetOrder
      - param Function GetUnitsInRectAll
        - Function GetUnitsInRectAll
          - param Variable gg_rct_HarvestGold
      - param Preset UnitOrderHarvest
      - param Variable gg_unit_ugol_0201
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_HarvestTrees
  - param Function DoNothing
    - Action GroupTargetDestructableOrder
      - param Function GetUnitsInRectAll
        - Function GetUnitsInRectAll
          - param Variable gg_rct_HarvestTrees
      - param Preset UnitOrderHarvestDestructible
      - param Variable gg_dest_LTlt_0892
- Action CommentString
  - param String ***********************
- Action SetSkyModel
  - param Preset SkyModelNone
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
- Action SelectUnitSingle
  - param Variable Arthas
- Action ResetToGameCameraForPlayer
  - param Preset Player06
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Preset Player06
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
  - param String 0
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archmage01Revealer
  - param String 5.00
- Action ResetUnitAnimation
  - param Variable gg_unit_uslh_0045
- Action ConditionalTriggerExecute
  - param Variable gg_trg_StartCampaignAI
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Leaderboard_Create
- Action TriggerSleepAction
  - param String 1.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_057
- Action QuestSetDiscoveredBJ
  - param Variable QuestThreeArchmages
  - param Preset DiscoveredOptionDiscovered
- Action TriggerSleepAction
  - param String 15.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_129
- Action TriggerSleepAction
  - param String 15.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_118


## EndingCancelled
- enabled: True
- category: [17] EndingCinematic
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable EndingCancelled
  - param String true
- Action ShowUnitShow
  - param Variable gg_unit_nbsm_0251
- Action SetUnitAnimation
  - param Variable gg_unit_nbsm_0251
  - param String stand second
- Action TriggerSleepAction
  - param String 1.00
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
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Victory
- Condition OperatorCompareBoolean
  - param Variable EndingCancelled
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player06


## Ending01
- enabled: True
- category: [17] EndingCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsTriggerEnabled
    - Function IsTriggerEnabled
      - param Variable gg_trg_Ending01
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Prep
- Action CommentString
  - param String Music
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action CommentString
  - param String ***********************
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action DisableTrigger
  - param Variable gg_trg_Defeat
- Action DisableTrigger
  - param Variable gg_trg_Shield01Enter
- Action DisableTrigger
  - param Variable gg_trg_Shield02Enter
- Action DisableTrigger
  - param Variable gg_trg_Shield03Enter
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Shield01Down
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Shield02Down
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Shield03Down
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
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_DoodadDeathArea03
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOcs
  - param Variable gg_rct_DoodadDeathArea03
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_LightningShieldTarget
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_DoodadDeathArea03
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_LightningShieldTarget
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_RejuvenationTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_DoodadDeathArea03
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_RejuvenationTarget1
- Action DisableTrigger
  - param Variable gg_trg_Archmage03
- Action CommentString
  - param String Hide shuffle to leave player units in area around Antonidas area
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable CinematicGroup
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Variable CinematicGroup
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_EndingPlayerGroupArea
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action CommentString
  - param String ********
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
          - param Variable gg_rct_Arthas_Confronts_Antonidas
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action SetUnitPositionLocFacingLocBJ
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Arthas_Confronts_Antonidas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Archmage03LeashArea
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable KelThuzad
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable KelThuzad
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_KelThuzad
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action SetUnitPositionLocFacingLocBJ
      - param Variable KelThuzad
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_KelThuzad
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Archmage03LeashArea
- Action ShowUnitShow
  - param Variable Arthas
- Action ShowUnitShow
  - param Variable KelThuzad
- Action ShowUnitShow
  - param Variable gg_unit_nbsm_0251
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action ConditionalTriggerExecute
  - param Variable gg_trg_EndingAlly
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action TriggerSleepAction
  - param String 0.50
- Action RemoveUnit
  - param Variable Antonidas
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String Hant
  - param Preset Player05
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archmage03LeashArea
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action SetVariable
  - param Variable Antonidas
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable Antonidas
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Antonidas
  - param Variable Arthas
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Ending01
  - param Preset Player06
  - param String 0.00
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_EndingCancelled
- Action TriggerSleepAction
  - param String 1.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
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
  - param Variable Antonidas
  - param String TRIGSTR_009
  - param Variable gg_snd_U07Antonidas13
  - param String TRIGSTR_010
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
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_016
  - param Variable gg_snd_U07Arthas14
  - param String TRIGSTR_019
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
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Kill_Antonidas
- Action EnableTrigger
  - param Variable gg_trg_Arthas_Kill_Antonidas


## Ending02
- enabled: True
- category: [17] EndingCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable KelThuzad
  - param Preset InvulnerabilityInvulnerable
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Ending02a
  - param Preset Player06
  - param String 0
- Action TriggerSleepAction
  - param String 0.25
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
  - param Variable gg_cam_Ending02
  - param Preset Player06
  - param String 6.00
- Action ReviveHeroLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasStart
  - param Preset ShowHideHide
- Action ReviveHeroLoc
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadStart
  - param Preset ShowHideHide
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndingArthasStart
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndingArthasDest
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop1
  - param Variable Arthas
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop1
- Action SetUnitPositionLoc
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndingKelThuzadStart
- Action IssuePointOrderLoc
  - param Variable KelThuzad
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndingKelThuzadEnd
- Action SetUnitVertexColorBJ
  - param Variable Arthas
  - param String 100.00
  - param String 100.00
  - param String 100.00
  - param String 0.00
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100.00
  - param String 100.00
  - param String 100.00
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
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_026
  - param Variable gg_snd_U07Arthas15
  - param String TRIGSTR_029
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
  - param Variable KelThuzad
  - param String TRIGSTR_030
  - param Variable gg_snd_U07KelThuzad16
  - param String TRIGSTR_031
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_U07KelThuzad16
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
  - param Variable gg_unit_nbsm_0251
  - param String stand second
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_QuestActivateWhat1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndingKelThuzadEnd
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_QuestActivateWhat1
  - param String 40.00
- Action PlaySoundBJ
  - param Variable gg_snd_QuestActivateWhat1
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
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Victory


## EndingAlly
- enabled: True
- category: [17] EndingCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player06
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player04
  - param Preset Player06
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player05
  - param Preset Player06
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player03
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player04
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player05
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player08
  - param Preset Player06
  - param Preset AllianceSettingNeutral
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player08
  - param Preset AllianceSettingNeutral


## Arthas Kill Antonidas
- enabled: True
- category: [17] EndingCinematic
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Arthas_Kill_Antonidas
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssueImmediateOrder
  - param Variable Arthas
  - param Preset UnitOrderStop
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Antonidas
  - param String 0
- Action SetUnitAnimation
  - param Variable Arthas
  - param String attack
- Action TriggerSleepAction
  - param String 0.25
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
  - param Variable gg_snd_MetalMediumSliceFlesh1
- Action TriggerSleepAction
  - param String 0.25
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
  - param Variable Antonidas
  - param String death
- Action ResetUnitAnimation
  - param Variable Arthas
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_HeroArchMageDeath
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archmage03LeashArea
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_HeroArchMageDeath
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
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2.00
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
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
  - param Variable gg_trg_Ending02


## ExoticBeastiaryQ
- enabled: True
- category: [8] ExoticBeastiary
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
  - param Variable KelThuzad
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_ExoticBeastiary
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_ExoticBeastiary


## ExoticBeastiary
- enabled: True
- category: [8] ExoticBeastiary
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
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_120
  - param Variable gg_snd_U07KelThuzad09
  - param String TRIGSTR_121
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_122
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Cage01
- enabled: True
- category: [8] ExoticBeastiary
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_ExoticBeastiaryQ
- Action TriggerSleepAction
  - param String 0.10
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ngst
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cage01
  - param String 80.00
- Action SetVariable
  - param Variable Golem01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nwc1_0165
  - param Preset UnitEventDeath


## Cage02
- enabled: True
- category: [8] ExoticBeastiary
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_ExoticBeastiaryQ
- Action TriggerSleepAction
  - param String 0.10
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ngst
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cage02
  - param String 80.00
- Action SetVariable
  - param Variable Golem02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nwc1_0168
  - param Preset UnitEventDeath


## Cage03
- enabled: True
- category: [8] ExoticBeastiary
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.10
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nwc1_0209
  - param Preset UnitEventDeath
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nomg
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cage03
  - param String 150.00


## Cage04
- enabled: True
- category: [8] ExoticBeastiary
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
  - param String nspb
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cage04
  - param String 230.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Cage04
- Action TriggerSleepAction
  - param String 0.10
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nspb
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cage04
  - param String 150.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Cage04
- Action TriggerSleepAction
  - param String 0.10
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nspb
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cage04
  - param String 75.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Cage04
- Action TriggerSleepAction
  - param String 0.10
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nspb
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cage04
  - param String 300.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Cage04
- Action TriggerSleepAction
  - param String 0.10
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nspb
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cage04
  - param String 2.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Cage04
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nwc1_0203
  - param Preset UnitEventDeath


## Cage05
- enabled: True
- category: [8] ExoticBeastiary
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nshf
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cage05
  - param String 230.00
- Action SetVariable
  - param Variable FlyingSheep01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action TriggerSleepAction
  - param String 0.10
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nshf
  - param Preset Player06
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Cage05
  - param String 300.00
- Action SetVariable
  - param Variable FlyingSheep02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action TriggerSleepAction
  - param String 2.00
- Action ReplaceUnitBJ
  - param Variable FlyingSheep01
  - param String nadk
  - param Preset UnitStateMethodDefaults
- Action TriggerSleepAction
  - param String 0.50
- Action ReplaceUnitBJ
  - param Variable FlyingSheep02
  - param String nadk
  - param Preset UnitStateMethodDefaults
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nwc1_0183
  - param Preset UnitEventDeath


## GateDown
- enabled: True
- category: [21] Gate
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ModifyGateBJ
  - param Preset GateOperationOpen
  - param Variable gg_dest_LTg1_0013
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTrainedUnit
        - Function GetTrainedUnit
  - param Preset OperatorEqualENE
  - param String hrif
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventTrain_Finish


## GyroShield02
- enabled: True
- category: [15] GyroForce
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Variable GyroForce
  - param Function DoNothing
    - Action IssueTargetOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAttackUnit
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String ufro
- Condition OperatorCompareBoolean
  - param Variable Shield02Switch
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Shield02


## GyroShield02WyrmGroupAdd
- enabled: True
- category: [15] GyroForce
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Variable Shield02FrostWyrmGroup
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String ufro
- Condition OperatorCompareBoolean
  - param Variable Shield02Switch
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Shield02


## GyroShield02WyrmGroupSubtract
- enabled: True
- category: [15] GyroForce
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetLeavingUnit
    - Function GetLeavingUnit
  - param Variable Shield02FrostWyrmGroup
- Action ConditionalTriggerExecute
  - param Variable gg_trg_GyroShield02Done
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param String ufro
- Condition OperatorCompareBoolean
  - param Variable Shield02Switch
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_Shield02


## GyroShield02WyrmGroupSubtractDies
- enabled: True
- category: [15] GyroForce
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable Shield02FrostWyrmGroup
- Action ConditionalTriggerExecute
  - param Variable gg_trg_GyroShield02Done
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetDyingUnit
        - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param String ufro
- Condition OperatorCompareBoolean
  - param Variable Shield02Switch
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath


## GyroShield02Done
- enabled: True
- category: [15] GyroForce
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
          - param Variable Shield02FrostWyrmGroup
      - param Preset OperatorLessEq
      - param String 0
  - param Function DoNothing
    - Action GroupPointOrderLoc
      - param Variable GyroForce
      - param Preset UnitOrderMove
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_GyroForce
  - param Function DoNothing
    - Action DoNothing


## IZZZZZZZI
- enabled: True
- category: [15] GyroForce
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions


## GyroShield03
- enabled: True
- category: [15] GyroForce
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Variable GyroForce
  - param Function DoNothing
    - Action IssueTargetOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAttackUnit
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String ufro
- Condition OperatorCompareBoolean
  - param Variable Shield03Switch
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Shield03


## GyroShield03WyrmGroupAdd
- enabled: True
- category: [15] GyroForce
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Variable Shield03FrostWyrmGroup
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String ufro
- Condition OperatorCompareBoolean
  - param Variable Shield03Switch
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Shield03


## GyroShield03WyrmGroupSubtract
- enabled: True
- category: [15] GyroForce
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetLeavingUnit
    - Function GetLeavingUnit
  - param Variable Shield03FrostWyrmGroup
- Action ConditionalTriggerExecute
  - param Variable gg_trg_GyroShield03Done
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param String ufro
- Condition OperatorCompareBoolean
  - param Variable Shield03Switch
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_Shield03


## GyroShield03WyrmGroupSubtractDies
- enabled: True
- category: [15] GyroForce
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable Shield03FrostWyrmGroup
- Action ConditionalTriggerExecute
  - param Variable gg_trg_GyroShield03Done
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetDyingUnit
        - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param String ufro
- Condition OperatorCompareBoolean
  - param Variable Shield03Switch
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath


## GyroShield03Done
- enabled: True
- category: [15] GyroForce
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
          - param Variable Shield03FrostWyrmGroup
      - param Preset OperatorLessEq
      - param String 0
  - param Function DoNothing
    - Action GroupPointOrderLoc
      - param Variable GyroForce
      - param Preset UnitOrderMove
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_GyroForce
  - param Function DoNothing
    - Action DoNothing


## VaultOfEnchantments
- enabled: True
- category: [9] VaultOfEnchantments
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
  - param Variable KelThuzad
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
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
          - param Variable KelThuzad
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable KelThuzad
      - param String TRIGSTR_230
      - param Variable gg_snd_U07KelThuzad12
      - param String TRIGSTR_231
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VaultOfEnchantmentsArea


## Vault01
- enabled: True
- category: [9] VaultOfEnchantments
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_VaultOfEnchantments
- Action TriggerSleepAction
  - param String 0.10
- Action CreateItemLoc
  - param String kpin
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Vault01
- Action CreateItemLoc
  - param String tint
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Vault01
- Action CreateItemLoc
  - param String pmna
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Vault01
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nmgv_0157
  - param Preset UnitEventDeath


## Archmage01
- enabled: True
- category: [1] ArchmageShieldSupporters
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 2.70
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Archmage01
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerAddBJ
      - param Variable gg_trg_Archmage01Dead
      - param Preset CheckingIgnoringChecking
  - param Function DoNothing
    - Action SetUnitAnimation
      - param Variable Archmage01
      - param String spell


## Archmage01Dead
- enabled: True
- category: [1] ArchmageShieldSupporters
- starts off: False
- is custom text: False
- run on map init: False
```description
Run from 'Archmage01'
```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsTriggerEnabled
    - Function IsTriggerEnabled
      - param Variable gg_trg_Archmage01Dead
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_DoodadDeathArea01
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOcs
  - param Variable gg_rct_DoodadDeathArea01
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_LightningShieldTarget
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_DoodadDeathArea01
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_LightningShieldTarget
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_RejuvenationTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_DoodadDeathArea01
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_RejuvenationTarget1
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Leaderboard_Update
- Action TriggerSleepAction
  - param String 2.00
- Action DestroyFogModifier
  - param Variable Archmage01Visibility
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player06
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archmage02Revealer
  - param String 512.00
- Action SetVariable
  - param Variable Archmage02Visibility
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable KelThuzad
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable KelThuzad
      - param String TRIGSTR_160
      - param Variable gg_snd_U07KelThuzad08
      - param String TRIGSTR_161
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 1.00
- Action QuestItemSetCompletedBJ
  - param Variable QuestReqArchmage01
  - param Preset CompletionOptionCompleted
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsQuestItemCompleted
            - Function IsQuestItemCompleted
              - param Variable QuestReqArchmage01
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsQuestItemCompleted
            - Function IsQuestItemCompleted
              - param Variable QuestReqArchmage02
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_166
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsQuestItemCompleted
            - Function IsQuestItemCompleted
              - param Variable QuestReqArchmage01
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsQuestItemCompleted
            - Function IsQuestItemCompleted
              - param Variable QuestReqArchmage02
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_175
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Archmage02
- enabled: True
- category: [1] ArchmageShieldSupporters
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 2.70
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Archmage02
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerAddBJ
      - param Variable gg_trg_Archmage02Dead
      - param Preset CheckingIgnoringChecking
  - param Function DoNothing
    - Action SetUnitAnimation
      - param Variable Archmage02
      - param String spell


## Archmage02Dead
- enabled: True
- category: [1] ArchmageShieldSupporters
- starts off: False
- is custom text: False
- run on map init: False
```description
Run from 'Archmage02'
```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsTriggerEnabled
    - Function IsTriggerEnabled
      - param Variable gg_trg_Archmage02Dead
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Leaderboard_Update
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_DoodadDeathArea02
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOcs
  - param Variable gg_rct_DoodadDeathArea02
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_LightningShieldTarget
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_DoodadDeathArea02
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_LightningShieldTarget
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_RejuvenationTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_DoodadDeathArea02
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_RejuvenationTarget1
- Action TriggerSleepAction
  - param String 2.00
- Action DestroyFogModifier
  - param Variable Archmage02Visibility
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player06
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archmage03Revealer
  - param String 512.00
- Action SetVariable
  - param Variable Archmage03Visibility
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable KelThuzad
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable KelThuzad
      - param String TRIGSTR_206
      - param Variable gg_snd_U07KelThuzad11
      - param String TRIGSTR_207
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 1.00
- Action QuestItemSetCompletedBJ
  - param Variable QuestReqArchmage02
  - param Preset CompletionOptionCompleted
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsQuestItemCompleted
            - Function IsQuestItemCompleted
              - param Variable QuestReqArchmage01
          - param Preset OperatorEqualENE
          - param String false
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsQuestItemCompleted
            - Function IsQuestItemCompleted
              - param Variable QuestReqArchmage02
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_186
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsQuestItemCompleted
            - Function IsQuestItemCompleted
              - param Variable QuestReqArchmage01
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsQuestItemCompleted
            - Function IsQuestItemCompleted
              - param Variable QuestReqArchmage02
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_192
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Archmage03
- enabled: True
- category: [1] ArchmageShieldSupporters
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 2.70
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Archmage03
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action DoNothing
  - param Function DoNothing
    - Action SetUnitAnimation
      - param Variable Archmage03
      - param String spell


## Archmage03Dead
- enabled: True
- category: [1] ArchmageShieldSupporters
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
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Hant_0172
  - param Preset UnitEventDeath
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_Archmage03
- Action ReplaceUnitBJ
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param String Hant
  - param Preset UnitStateMethodDefaults
- Action SetVariable
  - param Variable Antonidas
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
- Action SetUnitInvulnerable
  - param Variable Antonidas
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitLifePercentBJ
  - param Variable Antonidas
  - param String 1.00
- Action IssueImmediateOrder
  - param Variable Antonidas
  - param Preset UnitOrderHoldPosition
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Leaderboard_Update
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_DoodadDeathArea03
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOcs
  - param Variable gg_rct_DoodadDeathArea03
- Action DestroyFogModifier
  - param Variable Archmage03Visibility
- Action QuestItemSetCompletedBJ
  - param Variable QuestReqArchmage01
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeUpdated
  - param String TRIGSTR_136
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action DestroyLeaderboardBJ
  - param Variable LeaderboardArchmage
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Ending01


## ContainmentArea
- enabled: True
- category: [10] AntonidasArea
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnit
  - param Function GetLeavingUnit
    - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param Variable Antonidas
- Action IssuePointOrderLoc
  - param Variable Antonidas
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_AntonidasContainmentArea
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_AntonidasContainmentArea


## CratesDeadTown
- enabled: True
- category: [29] Crates
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.10
- Action CreateItemLoc
  - param String sman
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CratesDeadTown
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_0767


## Shield01Enter AnimateDead
- enabled: True
- category: [2] Shield01
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Shield01
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
      - param Preset UnitTypeUndead
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Archmage01
  - param Preset OperatorEqualENE
  - param String false
- Action GroupAddUnitSimple
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Variable Shield01Group
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventSummoned


## Shield01Enter
- enabled: True
- category: [2] Shield01
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Variable Shield01Group
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player06
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Archmage01
  - param Preset OperatorEqualENE
  - param String false
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareRace
      - param Preset RaceUndead
      - param Preset OperatorEqualENE
      - param Function GetUnitRace
        - Function GetUnitRace
          - param Function GetEnteringUnit
            - Function GetEnteringUnit
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitType
        - Function IsUnitType
          - param Function GetEnteringUnit
            - Function GetEnteringUnit
          - param Preset UnitTypeUndead
      - param Preset OperatorEqualENE
      - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Shield01


## Shield01Exit
- enabled: True
- category: [2] Shield01
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetLeavingUnit
    - Function GetLeavingUnit
  - param Variable Shield01Group
- Action IfThenElse
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitInGroup
            - Function IsUnitInGroup
              - param Function GetLeavingUnit
                - Function GetLeavingUnit
              - param Variable Shield03Group
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition GetBooleanOr
          - param Function 
            - Condition OperatorCompareBoolean
              - param Function IsUnitInGroup
                - Function IsUnitInGroup
                  - param Function GetTriggerUnit
                    - Function GetTriggerUnit
                  - param Variable Shield02Group
              - param Preset OperatorEqualENE
              - param String true
          - param Function 
            - Condition OperatorCompareBoolean
              - param Function IsUnitInGroup
                - Function IsUnitInGroup
                  - param Function GetLeavingUnit
                    - Function GetLeavingUnit
                  - param Variable Shield01Group
              - param Preset OperatorEqualENE
              - param String true
  - param Function DoNothing
    - Action DoNothing
  - param Function DoNothing
    - Action SetUnitVertexColorBJ
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
      - param String 100.00
      - param String 100
      - param String 100
      - param String 0
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param Preset Player06
- Condition OperatorCompareRace
  - param Function GetUnitRace
    - Function GetUnitRace
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param Preset RaceUndead
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_Shield01


## Shield01Down
- enabled: True
- category: [2] Shield01
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Variable Shield01Group
  - param Function DoNothing
    - Action SetUnitVertexColorBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String 100.00
      - param String 100.00
      - param String 100.00
      - param String 0.00
- Action GroupClear
  - param Variable Shield01Group
- Action SetVariable
  - param Variable Shield01Switch
  - param String false
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YZef
  - param Variable gg_rct_Shield_01_DOODAD_KILL
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Shield02Switch
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action SetDoodadAnimationRectBJ
      - param String death
      - param String YZef
      - param Variable gg_rct_Shield_02_DOODAD_KILL
  - param Function DoNothing
    - Action DoNothing
- Event TriggerRegisterUnitLifeEvent
  - param Variable gg_unit_Hamg_0122
  - param Preset LimitOpLessThanOrEqual
  - param String 0.00


## Shield01Damage
- enabled: True
- category: [2] Shield01
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Variable Shield01Group
  - param Function DoNothing
    - Action IfThenElse
      - param Function 
        - Condition OperatorCompareReal
          - param Function GetUnitStateSwap
            - Function GetUnitStateSwap
              - param Preset UnitStateLife
              - param Function GetEnumUnit
                - Function GetEnumUnit
          - param Preset OperatorGreater
          - param String 0.00
      - param Function DoNothing
        - Action SetUnitLifeBJ
          - param Function GetEnumUnit
            - Function GetEnumUnit
          - param Function OperatorReal
            - Function OperatorReal
              - param Function GetUnitStateSwap
                - Function GetUnitStateSwap
                  - param Preset UnitStateLife
                  - param Function GetEnumUnit
                    - Function GetEnumUnit
              - param Preset OperatorSubtract
              - param String 10.00
      - param Function DoNothing
        - Action DoNothing
- Action ForGroup
  - param Variable Shield01Group
  - param Function DoNothing
    - Action SetUnitVertexColorBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String 50.00
      - param String 0.00
      - param String 50.00
      - param String 0
- Event TriggerRegisterTimerEventPeriodic
  - param String 1.00


## Shield02Enter AnimateDead
- enabled: True
- category: [4] Shield02
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Shield02
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
      - param Preset UnitTypeUndead
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Archmage02
  - param Preset OperatorEqualENE
  - param String false
- Action GroupAddUnitSimple
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Variable Shield02Group
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventSummoned


## Shield02Activate
- enabled: True
- category: [4] Shield02
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetDoodadAnimationRectBJ
  - param String Stand
  - param String YZef
  - param Variable gg_rct_Shield02
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player06
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Shield02Activate


## Shield02Enter
- enabled: True
- category: [4] Shield02
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Variable Shield02Group
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player06
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Archmage02
  - param Preset OperatorEqualENE
  - param String false
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareRace
      - param Preset RaceUndead
      - param Preset OperatorEqualENE
      - param Function GetUnitRace
        - Function GetUnitRace
          - param Function GetEnteringUnit
            - Function GetEnteringUnit
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitType
        - Function IsUnitType
          - param Function GetEnteringUnit
            - Function GetEnteringUnit
          - param Preset UnitTypeUndead
      - param Preset OperatorEqualENE
      - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Shield02


## Shield02Exit
- enabled: True
- category: [4] Shield02
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetLeavingUnit
    - Function GetLeavingUnit
  - param Variable Shield02Group
- Action IfThenElse
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitInGroup
            - Function IsUnitInGroup
              - param Function GetLeavingUnit
                - Function GetLeavingUnit
              - param Variable Shield03Group
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition GetBooleanOr
          - param Function 
            - Condition OperatorCompareBoolean
              - param Function IsUnitInGroup
                - Function IsUnitInGroup
                  - param Function GetTriggerUnit
                    - Function GetTriggerUnit
                  - param Variable Shield02Group
              - param Preset OperatorEqualENE
              - param String true
          - param Function 
            - Condition OperatorCompareBoolean
              - param Function IsUnitInGroup
                - Function IsUnitInGroup
                  - param Function GetLeavingUnit
                    - Function GetLeavingUnit
                  - param Variable Shield01Group
              - param Preset OperatorEqualENE
              - param String true
  - param Function DoNothing
    - Action DoNothing
  - param Function DoNothing
    - Action SetUnitVertexColorBJ
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
      - param String 100.00
      - param String 100
      - param String 100
      - param String 0
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param Preset Player06
- Condition OperatorCompareRace
  - param Function GetUnitRace
    - Function GetUnitRace
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param Preset RaceUndead
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_Shield02


## Shield02Down
- enabled: True
- category: [4] Shield02
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Variable Shield02Group
  - param Function DoNothing
    - Action SetUnitVertexColorBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String 100.00
      - param String 100.00
      - param String 100.00
      - param String 0.00
- Action GroupClear
  - param Variable Shield02Group
- Action SetVariable
  - param Variable Shield02Switch
  - param String false
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Shield01Switch
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action SetDoodadAnimationRectBJ
      - param String death
      - param String YZef
      - param Variable gg_rct_Shield_02_DOODAD_KILL
  - param Function DoNothing
    - Action DoNothing
- Event TriggerRegisterUnitLifeEvent
  - param Variable gg_unit_Hamg_0019
  - param Preset LimitOpLessThanOrEqual
  - param String 0.00


## Shield02Damage
- enabled: True
- category: [4] Shield02
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Variable Shield02Group
  - param Function DoNothing
    - Action IfThenElse
      - param Function 
        - Condition OperatorCompareReal
          - param Function GetUnitStateSwap
            - Function GetUnitStateSwap
              - param Preset UnitStateLife
              - param Function GetEnumUnit
                - Function GetEnumUnit
          - param Preset OperatorGreater
          - param String 0.00
      - param Function DoNothing
        - Action SetUnitLifeBJ
          - param Function GetEnumUnit
            - Function GetEnumUnit
          - param Function OperatorReal
            - Function OperatorReal
              - param Function GetUnitStateSwap
                - Function GetUnitStateSwap
                  - param Preset UnitStateLife
                  - param Function GetEnumUnit
                    - Function GetEnumUnit
              - param Preset OperatorSubtract
              - param String 10.00
      - param Function DoNothing
        - Action DoNothing
- Action ForGroup
  - param Variable Shield02Group
  - param Function DoNothing
    - Action SetUnitVertexColorBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String 50.00
      - param String 0.00
      - param String 50.00
      - param String 0
- Event TriggerRegisterTimerEventPeriodic
  - param String 1.00


## Shield03Enter AnimateDead
- enabled: True
- category: [6] Shield03
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Shield03
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetSummonedUnit
        - Function GetSummonedUnit
      - param Preset UnitTypeUndead
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Archmage03
  - param Preset OperatorEqualENE
  - param String false
- Action GroupAddUnitSimple
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
  - param Variable Shield03Group
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventSummoned


## Shield03Activate
- enabled: True
- category: [6] Shield03
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetDoodadAnimationRectBJ
  - param String Stand
  - param String YZef
  - param Variable gg_rct_Shield03
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player06
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Shield03Activate


## Shield03Enter
- enabled: True
- category: [6] Shield03
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Variable Shield03Group
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player06
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Archmage03
  - param Preset OperatorEqualENE
  - param String false
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareRace
      - param Preset RaceUndead
      - param Preset OperatorEqualENE
      - param Function GetUnitRace
        - Function GetUnitRace
          - param Function GetEnteringUnit
            - Function GetEnteringUnit
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitType
        - Function IsUnitType
          - param Function GetEnteringUnit
            - Function GetEnteringUnit
          - param Preset UnitTypeUndead
      - param Preset OperatorEqualENE
      - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Shield03


## Shield03Exit
- enabled: True
- category: [6] Shield03
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetLeavingUnit
    - Function GetLeavingUnit
  - param Variable Shield03Group
- Action IfThenElse
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitInGroup
            - Function IsUnitInGroup
              - param Function GetLeavingUnit
                - Function GetLeavingUnit
              - param Variable Shield03Group
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition GetBooleanOr
          - param Function 
            - Condition OperatorCompareBoolean
              - param Function IsUnitInGroup
                - Function IsUnitInGroup
                  - param Function GetTriggerUnit
                    - Function GetTriggerUnit
                  - param Variable Shield02Group
              - param Preset OperatorEqualENE
              - param String true
          - param Function 
            - Condition OperatorCompareBoolean
              - param Function IsUnitInGroup
                - Function IsUnitInGroup
                  - param Function GetLeavingUnit
                    - Function GetLeavingUnit
                  - param Variable Shield01Group
              - param Preset OperatorEqualENE
              - param String true
  - param Function DoNothing
    - Action DoNothing
  - param Function DoNothing
    - Action SetUnitVertexColorBJ
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
      - param String 100.00
      - param String 100
      - param String 100
      - param String 0
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param Preset Player06
- Condition OperatorCompareRace
  - param Function GetUnitRace
    - Function GetUnitRace
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param Preset RaceUndead
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_Shield03


## Shield03Down
- enabled: True
- category: [6] Shield03
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Variable Shield03Group
  - param Function DoNothing
    - Action SetUnitVertexColorBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String 100.00
      - param String 100.00
      - param String 100.00
      - param String 0.00
- Action GroupClear
  - param Variable Shield03Group
- Action SetVariable
  - param Variable Shield03Switch
  - param String false
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable Shield01Switch
          - param Preset OperatorEqualENE
          - param String false
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable Shield02Switch
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action SetDoodadAnimationRectBJ
      - param String death
      - param String YZef
      - param Variable gg_rct_Shield_03_DOODAD_KILL
  - param Function DoNothing
    - Action DoNothing
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Hant_0172
  - param Preset UnitEventDeath


## Shield03Damage
- enabled: True
- category: [6] Shield03
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Variable Shield03Group
  - param Function DoNothing
    - Action IfThenElse
      - param Function 
        - Condition OperatorCompareReal
          - param Function GetUnitStateSwap
            - Function GetUnitStateSwap
              - param Preset UnitStateLife
              - param Function GetEnumUnit
                - Function GetEnumUnit
          - param Preset OperatorGreater
          - param String 0.00
      - param Function DoNothing
        - Action SetUnitLifeBJ
          - param Function GetEnumUnit
            - Function GetEnumUnit
          - param Function OperatorReal
            - Function OperatorReal
              - param Function GetUnitStateSwap
                - Function GetUnitStateSwap
                  - param Preset UnitStateLife
                  - param Function GetEnumUnit
                    - Function GetEnumUnit
              - param Preset OperatorSubtract
              - param String 10.00
      - param Function DoNothing
        - Action DoNothing
- Action ForGroup
  - param Variable Shield03Group
  - param Function DoNothing
    - Action SetUnitVertexColorBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String 50.00
      - param String 0.00
      - param String 50.00
      - param String 0
- Event TriggerRegisterTimerEventPeriodic
  - param String 1.00


## Victory
- enabled: True
- category: [5] VictoryDefeat
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
- Action TriggerSleepAction
  - param String 2
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run


## Defeat
- enabled: True
- category: [5] VictoryDefeat
- starts off: False
- is custom text: False
- run on map init: False
```description
Player 7 is Purple when game starts.
```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_Victory
- Action DisableTrigger
  - param Variable gg_trg_Ending01
- Action SetVariable
  - param Variable GAMEOVER
  - param String true
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_123
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CustomDefeatBJ
  - param Preset Player06
  - param String TRIGSTR_124
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerMatching
        - Function GetUnitsOfPlayerMatching
          - param Preset Player06
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
                  - param Function IsUnitType
                    - Function IsUnitType
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                      - param Preset UnitTypeStructure
                  - param Preset OperatorEqualENE
                  - param String true
  - param Preset OperatorLessEq
  - param String 0
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath

