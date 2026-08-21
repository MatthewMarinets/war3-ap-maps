version = ROC

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 0 | Starting | False |
| 5 | Money for the AI | False |
| 15 | Load Heroes | False |
| 12 | Hero Level Lock | False |
| 3 | Opening Cinematic | False |
| 4 | Escape Cinematic | False |
| 2 | Frosts Wyrms Reveal | False |
| 7 | Orcs Lines about Undead | False |
| 13 | Orc Hero Dies | False |
| 11 | Entering Red Orc Town | False |
| 1 | TriggerAIAttacks | False |
| 9 | End Cinematic | False |
| 10 | Ending Cancel | False |
| 14 | Building Defeat | False |
| 6 | Level Data | False |
| 16 | Victory Defeat Cheat | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| Farseer01 | unit | . | . |
| Blademaster01 | unit | . | . |
| Blademaster02 | unit | . | . |
| Farseer02 | unit | . | . |
| BlademasterBlackrock | unit | . | . |
| EvilArthas | unit | . | . |
| KelThuzad | unit | . | . |
| CryptFiend01 | unit | . | . |
| CryptFiend02 | unit | . | . |
| Ghoul01 | unit | . | . |
| Ghoul02 | unit | . | . |
| Acolyte01 | unit | . | . |
| Acolyte02 | unit | . | . |
| Acolyte03 | unit | . | UnitNull |
| Acolyte04 | unit | . | UnitNull |
| MeatWagon01 | unit | . | . |
| IntroCancel | boolean | . | false |
| Nercopolis | unit | . | . |
| Graveyard | unit | . | . |
| Goldmine | unit | . | . |
| TotalGhouls | integer | . | 1 |
| CryptFiends | group | . | . |
| Heros | group | . | . |
| EndCinematicCancel | boolean | . | false |
| RedTown01 | boolean | . | false |
| RedTown02 | boolean | . | false |
| RedTown03 | boolean | . | false |
| Archimonde | unit | . | . |
| QUESTDemonGate | quest | . | . |
| OrcWarlock | unit | . | . |
| Gargoyle01 | unit | . | . |
| Gargoyle02 | unit | . | . |
| Gargoyle03 | unit | . | . |
| Gargoyle04 | unit | . | . |
| MeatWagon02 | unit | . | . |
| Gargoyles | group | . | . |
| MeatWagons | group | . | . |
| DeadDragon | location | . | . |
| StopLineFromPlaying | boolean | . | false |
| DefeatOk | boolean | . | false |
| QUESTBlueHeroDead | questitem | . | . |
| QUESTBrownHeroDead | questitem | . | . |
| QUESTLightBlueHeroDead | questitem | . | . |
| QUESTOrangeHeroDead | questitem | . | . |
| QUESTOrcHeroes | quest | . | . |
| QUESTKillRedOrcs | questitem | . | . |
| TIMEROrange | timer | . | . |
| TIMERLightBlue | timer | . | . |
| Acolyte05 | unit | . | UnitNull |
| TIMERBrown | timer | . | . |
| DyingDragon | unit | . | . |
| BlueHero | leaderboard | . | . |
| OrangeHero | leaderboard | . | . |
| LightBlueHero | leaderboard | . | . |
| BrownHero | leaderboard | . | . |
| QUESTRedHeroDead | questitem | . | . |
| DiscoveredOrcHeroes | boolean | . | false |
| Blademaster03 | unit | . | . |
| TIMERSendTealWave | timer | . | . |
| TealGroup | group | . | . |
| FrostWyrm01 | unit | . | . |
| FrostWyrm02 | unit | . | . |
| GameOver | boolean | . | false |

# Triggers
## Map Initialization
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Cam4IntroFlybyStart
  - param Preset Player03
  - param String 0.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Easy
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Normal
- Action TriggerExecute
  - param Variable gg_trg_Give_Money_to_Player
- Action TriggerExecute
  - param Variable gg_trg_Make_Demon_Gate_Invulnerable
- Action TriggerExecute
  - param Variable gg_trg_Setup_Allies
- Action TriggerExecute
  - param Variable gg_trg_Setup_Variables
- Action TriggerExecute
  - param Variable gg_trg_Load_Heroes
- Action TriggerExecute
  - param Variable gg_trg_Setup_Blademaster01
- Action TriggerExecute
  - param Variable gg_trg_Setup_Blademaster02
- Action TriggerExecute
  - param Variable gg_trg_Setup_Blademaster03
- Action TriggerExecute
  - param Variable gg_trg_Setup_Farseer02
- Action TriggerExecute
  - param Variable gg_trg_Setup_Blademaster04
- Action TriggerExecute
  - param Variable gg_trg_Setup_Farseer01
- Action TriggerExecute
  - param Variable gg_trg_Setup_Scorescreen
- Action TriggerExecute
  - param Variable gg_trg_Make_Dragon_Camps_Red
- Action TriggerExecute
  - param Variable gg_trg_SetupAI
- Action TriggerExecute
  - param Variable gg_trg_Slow_Exp_Gain
- Action TriggerExecute
  - param Variable gg_trg_Opening_Cinematic
- Action SetCampaignMenuRaceBJ
  - param Preset CampaignIndexU
- Event MapInitializationEvent


## Easy
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Blue Town
- Action RemoveUnit
  - param Variable gg_unit_owtw_0046
- Action SetPlayerHandicapBJ
  - param Preset Player01
  - param Preset RealHandicapEasy
- Action CommentString
  - param String Orange Town
- Action RemoveUnit
  - param Variable gg_unit_ocat_0256
- Action RemoveUnit
  - param Variable gg_unit_nw2w_0132
- Action RemoveUnit
  - param Variable gg_unit_owtw_0085
- Action RemoveUnit
  - param Variable gg_unit_ohun_0117
- Action SetPlayerHandicapBJ
  - param Preset Player05
  - param Preset RealHandicapEasy
- Action CommentString
  - param String Brown Town
- Action RemoveUnit
  - param Variable gg_unit_owtw_0009
- Action RemoveUnit
  - param Variable gg_unit_ocat_0255
- Action RemoveUnit
  - param Variable gg_unit_nomg_0174
- Action RemoveUnit
  - param Variable gg_unit_ogru_0167
- Action RemoveUnit
  - param Variable gg_unit_ogru_0206
- Action SetPlayerHandicapBJ
  - param Preset Player11
  - param Preset RealHandicapEasy
- Action CommentString
  - param String Light Blue Town
- Action RemoveUnit
  - param Variable gg_unit_owtw_0058
- Action RemoveUnit
  - param Variable gg_unit_ngsp_0198
- Action RemoveUnit
  - param Variable gg_unit_ocat_0252
- Action RemoveUnit
  - param Variable gg_unit_ogru_0057
- Action RemoveUnit
  - param Variable gg_unit_orai_0226
- Action SetPlayerHandicapBJ
  - param Preset Player09
  - param Preset RealHandicapEasy
- Action CommentString
  - param String Red Town
- Action RemoveUnit
  - param Variable gg_unit_nrwm_0141
- Action RemoveUnit
  - param Variable gg_unit_nrwm_0083
- Action RemoveUnit
  - param Variable gg_unit_orai_0220
- Action RemoveUnit
  - param Variable gg_unit_ohun_0186
- Action RemoveUnit
  - param Variable gg_unit_ocat_0248
- Action RemoveUnit
  - param Variable gg_unit_ohun_0188
- Action SetPlayerHandicapBJ
  - param Preset Player00
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset PlayerNA
  - param Preset RealHandicapEasy
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyEasy


## Normal
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Blue Town
- Action RemoveUnit
  - param Variable gg_unit_owtw_0046
- Action CommentString
  - param String Orange Town
- Action RemoveUnit
  - param Variable gg_unit_ocat_0256
- Action RemoveUnit
  - param Variable gg_unit_nw2w_0132
- Action RemoveUnit
  - param Variable gg_unit_owtw_0085
- Action RemoveUnit
  - param Variable gg_unit_ohun_0117
- Action CommentString
  - param String Brown Town
- Action RemoveUnit
  - param Variable gg_unit_owtw_0009
- Action RemoveUnit
  - param Variable gg_unit_ocat_0255
- Action RemoveUnit
  - param Variable gg_unit_nomg_0174
- Action RemoveUnit
  - param Variable gg_unit_ogru_0167
- Action RemoveUnit
  - param Variable gg_unit_ogru_0206
- Action CommentString
  - param String Light Blue Town
- Action RemoveUnit
  - param Variable gg_unit_owtw_0058
- Action RemoveUnit
  - param Variable gg_unit_ngsp_0198
- Action RemoveUnit
  - param Variable gg_unit_ocat_0252
- Action RemoveUnit
  - param Variable gg_unit_ogru_0057
- Action RemoveUnit
  - param Variable gg_unit_orai_0226
- Action CommentString
  - param String Red Town
- Action RemoveUnit
  - param Variable gg_unit_nrwm_0141
- Action RemoveUnit
  - param Variable gg_unit_nrwm_0083
- Action RemoveUnit
  - param Variable gg_unit_orai_0220
- Action RemoveUnit
  - param Variable gg_unit_ohun_0186
- Action RemoveUnit
  - param Variable gg_unit_ocat_0248
- Action RemoveUnit
  - param Variable gg_unit_ohun_0188
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyNormal


## Give Money to Player
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions


## Make Demon Gate Invulnerable
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitInvulnerable
  - param Variable gg_unit_ndmg_0028
  - param Preset InvulnerabilityInvulnerable


## Setup Allies
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String RED AI
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player00
- Action SetPlayerAllianceBJ
  - param Preset Player00
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player00
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNP
- Action SetPlayerAllianceBJ
  - param Preset Player00
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Preset Player00
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player05
- Action SetPlayerAllianceBJ
  - param Preset Player00
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player09
- Action SetPlayerAllianceBJ
  - param Preset Player00
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action CommentString
  - param String BLUE AI
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNP
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player00
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player05
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player09
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action CommentString
  - param String ORANGE AI
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player05
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNP
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player00
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player09
- Action SetPlayerAllianceBJ
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action CommentString
  - param String LIGHT BLUE AI
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player09
- Action SetPlayerAllianceBJ
  - param Preset Player09
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player09
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNP
- Action SetPlayerAllianceBJ
  - param Preset Player09
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player00
- Action SetPlayerAllianceBJ
  - param Preset Player09
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Preset Player09
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player05
- Action SetPlayerAllianceBJ
  - param Preset Player09
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action CommentString
  - param String BROWN AI
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player11
- Action SetPlayerAllianceBJ
  - param Preset Player11
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player11
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNP
- Action SetPlayerAllianceBJ
  - param Preset Player11
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player00
- Action SetPlayerAllianceBJ
  - param Preset Player11
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Preset Player11
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player05
- Action SetPlayerAllianceBJ
  - param Preset Player11
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player09
- Action CommentString
  - param String TEAL AI
- Action SetPlayerAllianceStateBJ
  - param Preset Player02
  - param Preset Player03
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player02
  - param Preset AllianceSettingUnallied
- Action CommentString
  - param String DRAGONS
- Action SetPlayerAllianceStateBJ
  - param Preset Player07
  - param Preset Player03
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player07
  - param Preset AllianceSettingUnallied


## Setup Variables
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Player Units
- Action SetVariable
  - param Variable CryptFiend01
  - param Variable gg_unit_ucry_0035
- Action SetVariable
  - param Variable CryptFiend02
  - param Variable gg_unit_ucry_0034
- Action SetVariable
  - param Variable CryptFiends
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Crypt_Fiend_Starting
- Action SetVariable
  - param Variable Gargoyle01
  - param Variable gg_unit_ugar_0211
- Action SetVariable
  - param Variable Gargoyle02
  - param Variable gg_unit_ugar_0215
- Action SetVariable
  - param Variable Gargoyle03
  - param Variable gg_unit_ugar_0217
- Action SetVariable
  - param Variable Gargoyle04
  - param Variable gg_unit_ugar_0218
- Action SetVariable
  - param Variable Gargoyles
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Gargoyles_Starting
- Action SetVariable
  - param Variable MeatWagon01
  - param Variable gg_unit_umtw_0139
- Action SetVariable
  - param Variable MeatWagon02
  - param Variable gg_unit_umtw_0142
- Action SetVariable
  - param Variable MeatWagons
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Meat_Wagons_Starting
- Action SetVariable
  - param Variable Heros
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Heros_Group
- Action SetVariable
  - param Variable Goldmine
  - param Variable gg_unit_ngol_0029
- Action SetVariable
  - param Variable Acolyte01
  - param Variable gg_unit_uaco_0063
- Action SetVariable
  - param Variable Acolyte02
  - param Variable gg_unit_uaco_0073
- Action SetVariable
  - param Variable Ghoul01
  - param Variable gg_unit_ugho_0038
- Action SetVariable
  - param Variable Nercopolis
  - param Variable gg_unit_unpl_0036
- Action CommentString
  - param String Blue Town
- Action SetVariable
  - param Variable Blademaster01
  - param Variable gg_unit_OC00_0078
- Action CommentString
  - param String Brown Town
- Action SetVariable
  - param Variable Blademaster02
  - param Variable gg_unit_OC01_0088
- Action CommentString
  - param String Orange Town
- Action SetVariable
  - param Variable Farseer01
  - param Variable gg_unit_OC03_0109
- Action CommentString
  - param String Light Blue Town
- Action SetVariable
  - param Variable Farseer02
  - param Variable gg_unit_OC04_0115
- Action CommentString
  - param String Red Town
- Action SetVariable
  - param Variable BlademasterBlackrock
  - param Variable gg_unit_NC05_0140
- Action CommentString
  - param String Teal Group
- Action SetVariable
  - param Variable TealGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Variable gg_rct_Teal_Attack_Force
      - param Preset Player02
- Action SetVariable
  - param Variable OrcWarlock
  - param Variable gg_unit_nw2w_0014
- Action SetVariable
  - param Variable Blademaster03
  - param Variable gg_unit_OC02_0094


## Setup Blademaster01
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description
Blue Town
```
### Functions
- Action SetUnitManaBJ
  - param Variable Blademaster01
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable Blademaster01
- Action SetHeroLevel
  - param Variable Blademaster01
  - param String 4
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Blademaster01
  - param Preset HeroSkillCriticalStrike
- Action SelectHeroSkill
  - param Variable Blademaster01
  - param Preset HeroSkillMirrorImage
- Action SelectHeroSkill
  - param Variable Blademaster01
  - param Preset HeroSkillCriticalStrike
- Action SelectHeroSkill
  - param Variable Blademaster01
  - param Preset HeroSkillMirrorImage
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Function GetTriggerUnit
    - Function GetTriggerUnit


## Setup Blademaster02
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description
BrownTown
```
### Functions
- Action SetUnitManaBJ
  - param Variable Blademaster02
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable Blademaster02
- Action SetHeroLevel
  - param Variable Blademaster02
  - param String 4
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Blademaster02
  - param Preset HeroSkillMirrorImage
- Action SelectHeroSkill
  - param Variable Blademaster02
  - param Preset HeroSkillCriticalStrike
- Action SelectHeroSkill
  - param Variable Blademaster02
  - param Preset HeroSkillMirrorImage
- Action SelectHeroSkill
  - param Variable Blademaster02
  - param Preset HeroSkillCriticalStrike
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Function GetTriggerUnit
    - Function GetTriggerUnit


## Setup Blademaster03
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description
BrownTown
```
### Functions
- Action SetUnitManaBJ
  - param Variable Blademaster03
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable Blademaster03
- Action SetHeroLevel
  - param Variable Blademaster03
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Blademaster03
  - param Preset HeroSkillMirrorImage
- Action SelectHeroSkill
  - param Variable Blademaster03
  - param Preset HeroSkillCriticalStrike
- Action SelectHeroSkill
  - param Variable Blademaster03
  - param Preset HeroSkillMirrorImage
- Action SelectHeroSkill
  - param Variable Blademaster03
  - param Preset HeroSkillCriticalStrike
- Action SelectHeroSkill
  - param Variable Blademaster03
  - param Preset HeroSkillMirrorImage
- Action SelectHeroSkill
  - param Variable Blademaster03
  - param Preset HeroSkillCriticalStrike
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Function GetTriggerUnit
    - Function GetTriggerUnit


## Setup Farseer02
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description
Light Blue Town
```
### Functions
- Action SetUnitManaBJ
  - param Variable Farseer02
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable Farseer02
- Action SetHeroLevel
  - param Variable Farseer02
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Farseer02
  - param Preset HeroSkillSpiritWolf
- Action SelectHeroSkill
  - param Variable Farseer02
  - param Preset HeroSkillChainLightning
- Action SelectHeroSkill
  - param Variable Farseer02
  - param Preset HeroSkillFarSight
- Action SelectHeroSkill
  - param Variable Farseer02
  - param Preset HeroSkillSpiritWolf
- Action SelectHeroSkill
  - param Variable Farseer02
  - param Preset HeroSkillChainLightning
- Action SelectHeroSkill
  - param Variable Farseer02
  - param Preset HeroSkillEarthquake
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Function GetTriggerUnit
    - Function GetTriggerUnit


## Setup Blademaster04
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description
Red Town
```
### Functions
- Action SetUnitManaBJ
  - param Variable BlademasterBlackrock
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable BlademasterBlackrock
- Action SetHeroLevel
  - param Variable BlademasterBlackrock
  - param String 8
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable BlademasterBlackrock
  - param Preset HeroSkillMirrorImage
- Action SelectHeroSkill
  - param Variable BlademasterBlackrock
  - param Preset HeroSkillCriticalStrike
- Action SelectHeroSkill
  - param Variable BlademasterBlackrock
  - param Preset HeroSkillMirrorImage
- Action SelectHeroSkill
  - param Variable BlademasterBlackrock
  - param Preset HeroSkillCriticalStrike
- Action SelectHeroSkill
  - param Variable BlademasterBlackrock
  - param Preset HeroSkillMirrorImage
- Action SelectHeroSkill
  - param Variable BlademasterBlackrock
  - param Preset HeroSkillCriticalStrike
- Action SelectHeroSkill
  - param Variable BlademasterBlackrock
  - param Preset HeroSkillWhirlwind
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Function GetTriggerUnit
    - Function GetTriggerUnit


## Setup Farseer01
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description
Orange Town
```
### Functions
- Action SetUnitManaBJ
  - param Variable Farseer01
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable Farseer01
- Action SetHeroLevel
  - param Variable Farseer01
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Farseer01
  - param Preset HeroSkillSpiritWolf
- Action SelectHeroSkill
  - param Variable Farseer01
  - param Preset HeroSkillChainLightning
- Action SelectHeroSkill
  - param Variable Farseer01
  - param Preset HeroSkillSpiritWolf
- Action SelectHeroSkill
  - param Variable Farseer01
  - param Preset HeroSkillChainLightning
- Action SelectHeroSkill
  - param Variable Farseer01
  - param Preset HeroSkillFarSight
- Action SelectHeroSkill
  - param Variable Farseer01
  - param Preset HeroSkillEarthquake
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Function GetTriggerUnit
    - Function GetTriggerUnit


## Setup Scorescreen
- enabled: True
- category: [0] Starting
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
  - param Preset Player04
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player07


## Make Dragon Camps Red
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerColorBJ
  - param Preset Player07
  - param Preset Color00
  - param Preset PlayerChangeColorChange
- Action SetUnitOwner
  - param Variable gg_unit_ndmg_0028
  - param Preset Player04
  - param Preset ChangeColorTrue


## SetupAI
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StartCampaignAI
  - param Preset Player00
  - param String u06_red.ai
- Action StartCampaignAI
  - param Preset Player01
  - param String u06_blue.ai
- Action StartCampaignAI
  - param Preset Player05
  - param String u06_orange.ai
- Action StartCampaignAI
  - param Preset Player09
  - param String u06_light_blue.ai
- Action StartCampaignAI
  - param Preset Player11
  - param String u06_brown.ai


## Cage Dies
- enabled: True
- category: [0] Starting
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CreateItemLoc
  - param String sman
  - param Function GetDestructableLoc
    - Function GetDestructableLoc
      - param Variable gg_dest_LOcg_0401
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LOcg_0401


## Blue Town Gold
- enabled: True
- category: [5] Money for the AI
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
  - param Preset LimitOpLessThanOrEqual
  - param String 1000


## Orange Town Gold
- enabled: True
- category: [5] Money for the AI
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
  - param String 1000


## Light Blue Town Gold
- enabled: True
- category: [5] Money for the AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player09
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player09
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThanOrEqual
  - param String 1000


## Brown Town Gold
- enabled: True
- category: [5] Money for the AI
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
  - param Preset LimitOpLessThanOrEqual
  - param String 1000


## Red Town Gold
- enabled: True
- category: [5] Money for the AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player00
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player00
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThanOrEqual
  - param String 1000


## Blue Town Lumber
- enabled: True
- category: [5] Money for the AI
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
  - param String 1000


## Orange Town Lumber
- enabled: True
- category: [5] Money for the AI
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
  - param String 1000


## Light Blue Town Lumber
- enabled: True
- category: [5] Money for the AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player09
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player09
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThanOrEqual
  - param String 1000


## Brown Town Lumber
- enabled: True
- category: [5] Money for the AI
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
  - param Preset LimitOpLessThanOrEqual
  - param String 1000


## Red Town Lumber
- enabled: True
- category: [5] Money for the AI
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
  - param String 1000


## Load Heroes
- enabled: True
- category: [15] Load Heroes
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
- Action InitGameCacheBJ
  - param String Campaigns.w3v
- Action CommentString
  - param String Load each hero
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Load_Arthas
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Load_Kel_Thuzad


## Load Arthas
- enabled: True
- category: [15] Load Heroes
- starts off: False
- is custom text: False
- run on map init: False
```description
Attempt to load the hero.
Upon failure, create a default version of the hero.
```
### Functions
- Action CommentString
  - param String Load the hero data
- Action RestoreUnitLocFacingAngleBJ
  - param String Arthas
  - param String Undead06
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas
  - param String 202.67
- Action SetVariable
  - param Variable EvilArthas
  - param Function GetLastRestoredUnitBJ
    - Function GetLastRestoredUnitBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable EvilArthas
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
      - param Variable gg_rct_Arthas
  - param String 202.67
- Action SetVariable
  - param Variable EvilArthas
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetHeroLevel
  - param Variable EvilArthas
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable EvilArthas
  - param Preset HeroSkillDeathCoil
- Action SelectHeroSkill
  - param Variable EvilArthas
  - param Preset HeroSkillDeathPact
- Action SelectHeroSkill
  - param Variable EvilArthas
  - param Preset HeroSkillUnholyAura
- Action SelectHeroSkill
  - param Variable EvilArthas
  - param Preset HeroSkillDeathCoil
- Action SelectHeroSkill
  - param Variable EvilArthas
  - param Preset HeroSkillUnholyAura
- Action SelectHeroSkill
  - param Variable EvilArthas
  - param Preset HeroSkillAnimateDead


## Load Kel Thuzad
- enabled: True
- category: [15] Load Heroes
- starts off: False
- is custom text: False
- run on map init: False
```description
Attempt to load the hero.
Upon failure, create a default version of the hero.
```
### Functions
- Action CommentString
  - param String Load the hero data
- Action RestoreUnitLocFacingAngleBJ
  - param String KelThuzad
  - param String Undead06
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Kel_Thuzad
  - param String 9.19
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
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Kel_Thuzad
  - param String 9.19
- Action SetVariable
  - param Variable KelThuzad
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetHeroLevel
  - param Variable KelThuzad
  - param String 5
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable KelThuzad
  - param Preset HeroSkillFrostNova
- Action SelectHeroSkill
  - param Variable KelThuzad
  - param Preset HeroSkillFrostArmor
- Action SelectHeroSkill
  - param Variable KelThuzad
  - param Preset HeroSkillDarkRitual
- Action SelectHeroSkill
  - param Variable KelThuzad
  - param Preset HeroSkillFrostNova
- Action SelectHeroSkill
  - param Variable KelThuzad
  - param Preset HeroSkillFrostArmor


## Arthas Lock Levels
- enabled: True
- category: [12] Hero Level Lock
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Function GetHeroLevel
    - Function GetHeroLevel
      - param Function GetLevelingUnit
        - Function GetLevelingUnit
  - param Preset OperatorGreaterEq
  - param String 7
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetLevelingUnit
        - Function GetLevelingUnit
  - param Preset OperatorEqualENE
  - param String Uear
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Function GetLevelingUnit
    - Function GetLevelingUnit
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventHero_Level


## KelThuzad Lock Levels
- enabled: True
- category: [12] Hero Level Lock
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Function GetHeroLevel
    - Function GetHeroLevel
      - param Function GetLevelingUnit
        - Function GetLevelingUnit
  - param Preset OperatorGreaterEq
  - param String 7
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetLevelingUnit
        - Function GetLevelingUnit
  - param Preset OperatorEqualENE
  - param String Uktl
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Function GetLevelingUnit
    - Function GetLevelingUnit
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventHero_Level


## Slow Exp Gain
- enabled: True
- category: [12] Hero Level Lock
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerHandicapXPBJ
  - param Preset Player03
  - param String 25.00


## Opening Cinematic
- enabled: True
- category: [3] Opening Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

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
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ClearMapMusicBJ
- Action TriggerSleepAction
  - param String 0.01
- Action SetMapMusicIndexedBJ
  - param Preset MusicFileMusic
  - param String 2
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action TriggerSleepAction
  - param String 0.40
- Action EnableDawnDusk
  - param Preset EnableDisableDisable
- Action SetTerrainFogExBJ
  - param String 0
  - param String 500.00
  - param String 3500.00
  - param String 0
  - param String 0.00
  - param String 10.00
  - param String 30.00
- Action AddWeatherEffectSaveLast
  - param Function GetPlayableMapRect
    - Function GetPlayableMapRect
  - param Preset WeatherNorthrendLightSnow
- Action EnableWeatherEffect
  - param Function GetLastCreatedWeatherEffect
    - Function GetLastCreatedWeatherEffect
  - param Preset OnOffOn
- Action SetSkyModel
  - param Preset SkyModelSky05
- Action VolumeGroupSetVolumeBJ
  - param Preset VolumeGroupUnitSounds
  - param String 0.00
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
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop02
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Cam4IntroFlybyStart
  - param Preset Player03
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Cam4IntroFlybyEnd
  - param Preset Player03
  - param String 7.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 1.00
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_Escape
- Action TriggerSleepAction
  - param String 5.50
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
  - param String 0.40
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.40
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Cam2IntroPanStart
  - param Preset Player03
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Cam3IntroPanEnd
  - param Preset Player03
  - param String 3.50
- Action TriggerSleepAction
  - param String 3.25
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
- Action CameraSetSmoothingFactorBJ
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable EvilArthas
  - param String TRIGSTR_072
  - param Variable gg_snd_U06Arthas01
  - param String TRIGSTR_073
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 4.50
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
  - param Variable gg_cam_Arthas_and_Kel_Talking
  - param Preset Player03
  - param String 0.00
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Necropolis
  - param String 2048.00
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
- Action IssueBuildOrderByIdLocBJ
  - param Variable Acolyte01
  - param String ugol
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Goldmine
- Action IssueBuildOrderByIdLocBJ
  - param Variable Acolyte02
  - param String ugrv
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Graveyard
- Action TriggerSleepAction
  - param String 0.10
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
- Action SetVariable
  - param Variable Graveyard
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsInRectAll
        - Function GetUnitsInRectAll
          - param Variable gg_rct_Create_Graveyard
- Action IssueBuildOrderByIdLocBJ
  - param Variable Acolyte02
  - param String uzig
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ziggurat_03
- Action IssueBuildOrderByIdLocBJ
  - param Variable Acolyte01
  - param String uzig
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ziggurat_01
- Action WaitForSoundBJ
  - param Variable gg_snd_U06Arthas01
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
  - param Variable KelThuzad
  - param String TRIGSTR_074
  - param Variable gg_snd_U06KelThuzad02
  - param String TRIGSTR_075
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 5.00
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
- Action IssueBuildOrderByIdLocBJ
  - param Variable Acolyte01
  - param String uzig
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ziggurat_02
- Action IssueBuildOrderByIdLocBJ
  - param Variable Acolyte02
  - param String uzig
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ziggurat_04
- Action IssuePointOrderLoc
  - param Variable Ghoul01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ghouls_Group
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Cam4KelCloseup
  - param Preset Player00
  - param String 0
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
- Action CommentString
  - param String Need Trigger that allows me to order the Ghouls to be created from crypt
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String ugho
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ghoul
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action SetVariable
  - param Variable Ghoul02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetVariable
  - param Variable TotalGhouls
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable TotalGhouls
      - param Preset OperatorAdd
      - param String 1
- Action IssuePointOrderLoc
  - param Variable Ghoul02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Ghouls_Group
- Action TriggerSleepAction
  - param String 3.50
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
  - param Variable gg_snd_U06KelThuzad02
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
  - param Variable gg_cam_Cam1ArthasKelCounterShot
  - param Preset Player00
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable EvilArthas
  - param String TRIGSTR_076
  - param Variable gg_snd_U06Arthas03
  - param String TRIGSTR_077
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action GroupPointOrderLoc
  - param Variable CryptFiends
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Unit_Forces_Divide
- Action GroupPointOrderLoc
  - param Variable Gargoyles
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Unit_Forces_Divide
- Action GroupPointOrderLoc
  - param Variable MeatWagons
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Unit_Forces_Divide
- Action TriggerSleepAction
  - param String 4.50
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
  - param Variable gg_snd_U06Arthas03
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
  - param Variable KelThuzad
  - param String TRIGSTR_078
  - param Variable gg_snd_U06KelThuzad04
  - param String TRIGSTR_079
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Arthas
  - param Preset Player00
  - param String 0
- Action IssuePointOrderLoc
  - param Variable CryptFiend01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Crypt_Fiend_01a
- Action IssuePointOrderLoc
  - param Variable CryptFiend02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Crypt_Fiend_02a
- Action IssuePointOrderLoc
  - param Variable Gargoyle01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle_01a
- Action IssuePointOrderLoc
  - param Variable Gargoyle02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle_02a
- Action IssuePointOrderLoc
  - param Variable Gargoyle03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle_03a
- Action IssuePointOrderLoc
  - param Variable Gargoyle04
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle_04a
- Action IssuePointOrderLoc
  - param Variable MeatWagon01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Meat_Wagon_01a
- Action IssuePointOrderLoc
  - param Variable MeatWagon02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Meat_Wagon_02a
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Preset Player03
  - param Function Location
    - Function Location
      - param String -2456.00
      - param String -1056.00
  - param String 0.00
- Action SetVariable
  - param Variable Acolyte03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action TriggerSleepAction
  - param String 5.00
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
  - param Variable gg_cam_Follow_Arthas
  - param Preset Player03
  - param String 0.00
- Action IssuePointOrderLoc
  - param Variable KelThuzad
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad01c
- Action TriggerSleepAction
  - param String 0.75
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
  - param Variable gg_snd_U06KelThuzad04
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
  - param Variable EvilArthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas01c
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop1
  - param Variable EvilArthas
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop1
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable EvilArthas
  - param String TRIGSTR_080
  - param Variable gg_snd_U06Arthas05
  - param String TRIGSTR_081
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
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
  - param Variable gg_snd_U06Arthas05
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
  - param Variable KelThuzad
  - param String TRIGSTR_082
  - param Variable gg_snd_U06KelThuzad06
  - param String TRIGSTR_083
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Cam5BlackrockOrcTown
  - param Preset Player03
  - param String 0.00
- Action TriggerSleepAction
  - param String 5.00
- Action SetSoundVolumeBJ
  - param Variable gg_snd_CityScapeMagicRunesLoop1
  - param String 100.00
- Action PlaySoundBJ
  - param Variable gg_snd_CityScapeMagicRunesLoop1
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
  - param Variable gg_cam_CamPortalPanStart
  - param Preset Player03
  - param String 0.00
- Action TriggerSleepAction
  - param String 5.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.30
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.40
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Town
  - param Preset Player03
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
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Preset Player03
  - param Function Location
    - Function Location
      - param String -2456.00
      - param String -1056.00
  - param String 0.00
- Action SetVariable
  - param Variable Acolyte04
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Preset Player03
  - param Function Location
    - Function Location
      - param String -2456.00
      - param String -1056.00
  - param String 0.00
- Action SetVariable
  - param Variable Acolyte05
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action StopSoundBJ
  - param Variable gg_snd_CityScapeMagicRunesLoop1
  - param Preset FadeDontFade
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Create_Ziggurat_01
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Create_Ziggurat_02
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Create_Ziggurat_03
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Create_Ziggurat_04
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAndTypeId
    - Function GetUnitsOfPlayerAndTypeId
      - param Preset Player03
      - param String ugrv
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAndTypeId
    - Function GetUnitsOfPlayerAndTypeId
      - param Preset Player03
      - param String ugol
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Variable gg_rct_Haunt_Goldmine
      - param Preset PlayerNP
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ngol
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Haunt_Goldmine
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable Goldmine
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action BlightGoldMineForPlayer
  - param Variable Goldmine
  - param Preset Player03
- Action SetVariable
  - param Variable Goldmine
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player03
          - param String ugol
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uzig
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ziggurat_01
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uzig
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ziggurat_02
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uzig
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ziggurat_03
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uzig
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ziggurat_04
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugrv
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Graveyard
  - param Preset RealUnitFacing
- Action TriggerSleepAction
  - param String 0.10
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
  - param Variable gg_snd_U06KelThuzad06
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
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_Escape
- Action TriggerSleepAction
  - param String 0.30
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CameraResetSmoothingFactorBJ
- Action ResetToGameCameraForPlayer
  - param Preset Player03
  - param String 2.00
- Action SetSkyModel
  - param Preset SkyModelNone
- Action SelectUnitSingle
  - param Variable EvilArthas
- Action SetResourceAmount
  - param Variable Goldmine
  - param String 18000
- Action IssueTargetOrder
  - param Variable Acolyte01
  - param Preset UnitOrderHarvest
  - param Variable Goldmine
- Action IssueTargetOrder
  - param Variable Acolyte02
  - param Preset UnitOrderHarvest
  - param Variable Goldmine
- Action IssueTargetOrder
  - param Variable Acolyte03
  - param Preset UnitOrderHarvest
  - param Variable Goldmine
- Action IssueTargetOrder
  - param Variable Acolyte04
  - param Preset UnitOrderHarvest
  - param Variable Goldmine
- Action IssueTargetOrder
  - param Variable Acolyte05
  - param Preset UnitOrderHarvest
  - param Variable Goldmine
- Action IssueTargetDestructableOrder
  - param Variable Ghoul01
  - param Preset UnitOrderHarvestDestructible
  - param Variable gg_dest_WTtw_2058
- Action IssueTargetDestructableOrder
  - param Variable Ghoul02
  - param Preset UnitOrderHarvestDestructible
  - param Variable gg_dest_WTtw_2056
- Action VolumeGroupResetBJ
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Demon_Gate
  - param String 512.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action DisableTrigger
  - param Variable gg_trg_Escape
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.70
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateGold
  - param String 1000
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateLumber
  - param String 500
- Action RemoveWeatherEffectBJ
  - param Function GetLastCreatedWeatherEffect
    - Function GetLastCreatedWeatherEffect
- Action ResetTerrainFogBJ
- Action CreateQuestBJ
  - param Preset QuestTypeReqDiscovered
  - param String TRIGSTR_092
  - param String TRIGSTR_093
  - param String ReplaceableTextures\CommandButtons\BTNDemonGate.tga
- Action SetVariable
  - param Variable QUESTDemonGate
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QUESTDemonGate
  - param String TRIGSTR_304
- Action SetVariable
  - param Variable QUESTKillRedOrcs
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestBJ
  - param Preset QuestTypeOptUndiscovered
  - param String TRIGSTR_008
  - param String TRIGSTR_009
  - param String ReplaceableTextures\CommandButtons\BTNHEROBlademaster.tga
- Action SetVariable
  - param Variable QUESTOrcHeroes
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_025
- Action EnableDawnDusk
  - param Preset EnableDisableEnable
- Action StartTimerBJ
  - param Variable TIMERSendTealWave
  - param Preset PeriodicOptionOneTime
  - param String 45.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_They_come_in


## Escape
- enabled: True
- category: [4] Escape Cinematic
- starts off: True
- is custom text: False
- run on map init: False
```description
Acolytes being told to harvest gold does not seem to work.
```
### Functions
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable IntroCancel
  - param String true
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.50
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 0.60
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CameraResetSmoothingFactorBJ
- Action SetSkyModel
  - param Preset SkyModelNone
- Action SelectUnitSingle
  - param Variable EvilArthas
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Starting_Town
  - param Preset Player03
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.10
- Action ResetToGameCameraForPlayer
  - param Preset Player03
  - param String 0.00
- Action GroupImmediateOrder
  - param Function GetUnitsOfTypeIdAll
    - Function GetUnitsOfTypeIdAll
      - param String uaco
  - param Preset UnitOrderStop
- Action ForGroup
  - param Function GetUnitsOfTypeIdAll
    - Function GetUnitsOfTypeIdAll
      - param String ugol
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfTypeIdAll
    - Function GetUnitsOfTypeIdAll
      - param String ugrv
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Create_Ziggurat_01
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Create_Ziggurat_02
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Create_Ziggurat_03
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Create_Ziggurat_04
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Variable gg_rct_Haunt_Goldmine
      - param Preset PlayerNP
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable TotalGhouls
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String ugho
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Create_Ghoul
      - param String 0.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable TotalGhouls
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action SetVariable
      - param Variable Ghoul02
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Acolyte03
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Acolyte04
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Acolyte05
- Action SetUnitMoveSpeed
  - param Variable EvilArthas
  - param Function GetUnitDefaultMoveSpeed
    - Function GetUnitDefaultMoveSpeed
      - param Variable EvilArthas
- Action SetUnitMoveSpeed
  - param Variable KelThuzad
  - param Function GetUnitDefaultMoveSpeed
    - Function GetUnitDefaultMoveSpeed
      - param Variable KelThuzad
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uzig
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ziggurat_01
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uzig
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ziggurat_02
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uzig
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ziggurat_03
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uzig
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Ziggurat_04
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ngol
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Haunt_Goldmine
  - param Preset RealUnitFacing
- Action BlightGoldMineForPlayer
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset Player03
- Action SetVariable
  - param Variable Goldmine
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetVariable
  - param Variable Goldmine
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player03
          - param String ugol
- Action SetResourceAmount
  - param Variable Goldmine
  - param String 18000
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugrv
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Graveyard
  - param Preset RealUnitFacing
- Action SetUnitPositionLoc
  - param Variable CryptFiend01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Crypt_Fiend_01a
- Action SetUnitPositionLoc
  - param Variable CryptFiend02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Crypt_Fiend_02a
- Action SetUnitPositionLoc
  - param Variable Gargoyle01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle_01a
- Action SetUnitPositionLoc
  - param Variable Gargoyle02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle_02a
- Action SetUnitPositionLoc
  - param Variable Gargoyle03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle_03a
- Action SetUnitPositionLoc
  - param Variable Gargoyle04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gargoyle_04a
- Action SetUnitPositionLoc
  - param Variable MeatWagon01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Meat_Wagon_01a
- Action SetUnitPositionLoc
  - param Variable MeatWagon02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Meat_Wagon_02a
- Action SetUnitPositionLoc
  - param Variable EvilArthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas01c
- Action SetUnitPositionLoc
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad01c
- Action IssueTargetOrder
  - param Variable Acolyte01
  - param Preset UnitOrderHarvest
  - param Variable Goldmine
- Action IssueTargetOrder
  - param Variable Acolyte02
  - param Preset UnitOrderHarvest
  - param Variable Goldmine
- Action IssueTargetOrder
  - param Variable Acolyte03
  - param Preset UnitOrderHarvest
  - param Variable Goldmine
- Action IssueTargetOrder
  - param Variable Acolyte04
  - param Preset UnitOrderHarvest
  - param Variable Goldmine
- Action IssueTargetOrder
  - param Variable Acolyte05
  - param Preset UnitOrderHarvest
  - param Variable Goldmine
- Action IssueTargetDestructableOrder
  - param Variable Ghoul01
  - param Preset UnitOrderHarvestDestructible
  - param Variable gg_dest_WTtw_2058
- Action IssueTargetDestructableOrder
  - param Variable Ghoul02
  - param Preset UnitOrderHarvestDestructible
  - param Variable gg_dest_WTtw_2056
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Demon_Gate
  - param String 512.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Reveal
  - param String 512.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Reveal_02
  - param String 512.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action RemoveWeatherEffectBJ
  - param Function GetLastCreatedWeatherEffect
    - Function GetLastCreatedWeatherEffect
- Action ResetTerrainFogBJ
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateGold
  - param String 1000
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateLumber
  - param String 500
- Action CreateQuestBJ
  - param Preset QuestTypeReqDiscovered
  - param String TRIGSTR_027
  - param String TRIGSTR_029
  - param String ReplaceableTextures\CommandButtons\BTNDemonGate.tga
- Action SetVariable
  - param Variable QUESTDemonGate
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QUESTDemonGate
  - param String TRIGSTR_030
- Action SetVariable
  - param Variable QUESTKillRedOrcs
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestBJ
  - param Preset QuestTypeOptUndiscovered
  - param String TRIGSTR_032
  - param String TRIGSTR_037
  - param String ReplaceableTextures\CommandButtons\BTNHEROBlademaster.tga
- Action SetVariable
  - param Variable QUESTOrcHeroes
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_036
- Action EnableDawnDusk
  - param Preset EnableDisableEnable
- Action StartTimerBJ
  - param Variable TIMERSendTealWave
  - param Preset PeriodicOptionOneTime
  - param String 45.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_They_come_in


## Acolyte03
- enabled: True
- category: [4] Escape Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Acolyte
  - param String 0.00
- Action SetVariable
  - param Variable Acolyte03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Condition OperatorCompareUnit
  - param Variable Acolyte03
  - param Preset OperatorEqualENE
  - param Preset UnitNull


## Acolyte04
- enabled: True
- category: [4] Escape Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Acolyte
  - param String 0.00
- Action SetVariable
  - param Variable Acolyte04
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Condition OperatorCompareUnit
  - param Variable Acolyte04
  - param Preset OperatorEqualENE
  - param Preset UnitNull


## Acolyte05
- enabled: True
- category: [4] Escape Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Create_Acolyte
  - param String 0.00
- Action SetVariable
  - param Variable Acolyte05
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Condition OperatorCompareUnit
  - param Variable Acolyte05
  - param Preset OperatorEqualENE
  - param Preset UnitNull


## They come in
- enabled: True
- category: [2] Frosts Wyrms Reveal
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
  - param String 12.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ufro
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Frost_Wyrm_01
  - param String 90.00
- Action SetVariable
  - param Variable FrostWyrm01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable FrostWyrm01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Frost_Wyrm_01_Move_Spot
- Action SmartCameraPanBJ
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Frost_Wyrm_01_Pan
  - param String 0.5
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_937
  - param Variable gg_snd_U06KelThuzad17
  - param String TRIGSTR_938
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeUnitAvailable
  - param String TRIGSTR_939


## Orc Enters Trigger Next line
- enabled: True
- category: [7] Orcs Lines about Undead
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
  - param Variable gg_trg_Orc_Lines_Play
  - param Preset CheckingIgnoringIgnoring
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player02
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Orc_Line_about_Undead


## Orc Lines Play
- enabled: True
- category: [7] Orcs Lines about Undead
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
          - param Variable OrcWarlock
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable OrcWarlock
      - param String TRIGSTR_041
      - param Variable gg_snd_U06OrcWarlock07
      - param String TRIGSTR_042
      - param Preset AddSetToAdd
      - param String 0.00
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Blademaster03
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Blademaster03
      - param String TRIGSTR_003
      - param Variable gg_snd_U06Blademaster08
      - param String TRIGSTR_004
      - param Preset AddSetToAdd
      - param String 0.00
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
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
      - param String TRIGSTR_993
      - param Variable gg_snd_U06KelThuzad09
      - param String TRIGSTR_994
      - param Preset AddSetToAdd
      - param String 0.00
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Teal Hero Takes Damage
- enabled: True
- category: [13] Orc Hero Dies
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
  - param Variable Blademaster03
  - param Preset UnitOrderMirrorImage
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_OC02_0094
  - param Preset UnitEventDamaged


## Send Attack to Player
- enabled: True
- category: [13] Orc Hero Dies
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
  - param Variable TealGroup
  - param Function DoNothing
    - Action GroupPointOrderLoc
      - param Variable TealGroup
      - param Preset UnitOrderAttack
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Player_Town
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TIMERSendTealWave


## Event Hero Dies Discovered Quest
- enabled: True
- category: [13] Orc Hero Dies
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Logicals
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareBoolean
  - param Function IsQuestDiscovered
    - Function IsQuestDiscovered
      - param Variable QUESTOrcHeroes
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_OC00_0078
  - param Preset UnitEventDeath
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_OC01_0088
  - param Preset UnitEventDeath
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_OC03_0109
  - param Preset UnitEventDeath
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_OC04_0115
  - param Preset UnitEventDeath
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_NC05_0140
  - param Preset UnitEventDeath


## First Hero
- enabled: True
- category: [13] Orc Hero Dies
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
          - param Preset Player02
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
- Event TriggerRegisterTimerEventPeriodic
  - param String 1.00
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_First_Hero_Queue
  - param Preset CheckingIgnoringChecking


## First Hero Queue
- enabled: True
- category: [13] Orc Hero Dies
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
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Variable KelThuzad
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Variable EvilArthas
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable EvilArthas
      - param String TRIGSTR_049
      - param Variable gg_snd_U06Arthas10
      - param String TRIGSTR_050
      - param Preset AddSetToAdd
      - param String 0.00
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Variable KelThuzad
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Variable EvilArthas
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable KelThuzad
      - param String TRIGSTR_055
      - param Variable gg_snd_U06KelThuzad11
      - param String TRIGSTR_056
      - param Preset AddSetToAdd
      - param String 0.00
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Variable KelThuzad
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Variable EvilArthas
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable EvilArthas
      - param String TRIGSTR_038
      - param Variable gg_snd_U06Arthas12
      - param String TRIGSTR_040
      - param Preset AddSetToAdd
      - param String 0.00
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Variable KelThuzad
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Variable EvilArthas
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable KelThuzad
      - param String TRIGSTR_059
      - param Variable gg_snd_U06KelThuzad13
      - param String TRIGSTR_060
      - param Preset AddSetToAdd
      - param String 0.00
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 5.00
- Action QuestSetDiscoveredBJ
  - param Variable QUESTOrcHeroes
  - param Preset DiscoveredOptionDiscovered
- Action CreateLeaderboardBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param String TRIGSTR_649
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
- Action LeaderboardAddItemBJ
  - param Preset Player05
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param Function GetUnitName
    - Function GetUnitName
      - param Variable Farseer01
  - param String 1
- Action LeaderboardAddItemBJ
  - param Preset Player09
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param Function GetUnitName
    - Function GetUnitName
      - param Variable Farseer02
  - param String 1
- Action LeaderboardAddItemBJ
  - param Preset Player01
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param Function GetUnitName
    - Function GetUnitName
      - param Variable Blademaster01
  - param String 1
- Action LeaderboardAddItemBJ
  - param Preset Player11
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param Function GetUnitName
    - Function GetUnitName
      - param Variable Blademaster02
  - param String 1
- Action LeaderboardAddItemBJ
  - param Preset Player00
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param Function GetUnitName
    - Function GetUnitName
      - param Variable BlademasterBlackrock
  - param String 1
- Action LeaderboardSetStyleBJ
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param Preset ShowHideShow
  - param Preset ShowHideShow
  - param Preset ShowHideHide
  - param Preset ShowHideHide
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_940
- Action SetVariable
  - param Variable QUESTOrangeHeroDead
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_941
- Action SetVariable
  - param Variable QUESTLightBlueHeroDead
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_942
- Action SetVariable
  - param Variable QUESTBlueHeroDead
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_943
- Action SetVariable
  - param Variable QUESTBrownHeroDead
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_944
- Action SetVariable
  - param Variable QUESTRedHeroDead
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Logicals
  - param Preset CheckingIgnoringChecking
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerExecute
  - param Variable gg_trg_TriggerOrangeAIHarass
- Action TriggerExecute
  - param Variable gg_trg_TriggerLightBlueAIHarass
- Action TriggerExecute
  - param Variable gg_trg_TriggerBrownAIHarass
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Orange
- enabled: True
- category: [13] Orc Hero Dies
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Farseer01
  - param Preset OperatorEqualENE
  - param String true
- Action QuestItemSetCompletedBJ
  - param Variable QUESTOrangeHeroDead
  - param Preset CompletionOptionCompleted
- Action LeaderboardRemovePlayerItemBJ
  - param Preset Player05
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard


## Light Blue
- enabled: True
- category: [13] Orc Hero Dies
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Farseer02
  - param Preset OperatorEqualENE
  - param String true
- Action QuestItemSetCompletedBJ
  - param Variable QUESTLightBlueHeroDead
  - param Preset CompletionOptionCompleted
- Action LeaderboardRemovePlayerItemBJ
  - param Preset Player09
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard


## Blue
- enabled: True
- category: [13] Orc Hero Dies
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Blademaster01
  - param Preset OperatorEqualENE
  - param String true
- Action QuestItemSetCompletedBJ
  - param Variable QUESTBlueHeroDead
  - param Preset CompletionOptionCompleted
- Action LeaderboardRemovePlayerItemBJ
  - param Preset Player01
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard


## Brown
- enabled: True
- category: [13] Orc Hero Dies
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Blademaster02
  - param Preset OperatorEqualENE
  - param String true
- Action QuestItemSetCompletedBJ
  - param Variable QUESTBrownHeroDead
  - param Preset CompletionOptionCompleted
- Action LeaderboardRemovePlayerItemBJ
  - param Preset Player11
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard


## Red
- enabled: True
- category: [13] Orc Hero Dies
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable BlademasterBlackrock
  - param Preset OperatorEqualENE
  - param String true
- Action QuestItemSetCompletedBJ
  - param Variable QUESTRedHeroDead
  - param Preset CompletionOptionCompleted
- Action LeaderboardRemovePlayerItemBJ
  - param Preset Player00
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard


## Logicals
- enabled: True
- category: [13] Orc Hero Dies
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable DiscoveredOrcHeroes
  - param String true
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Display_Quest_Message
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Orange
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Light_Blue
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Blue
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Brown
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Red
- Action ConditionalTriggerExecute
  - param Variable gg_trg_All_Dead
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Display Quest Message
- enabled: True
- category: [13] Orc Hero Dies
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsTriggerEnabled
    - Function IsTriggerEnabled
      - param Variable gg_trg_Display_Quest_Message
  - param Preset OperatorEqualENE
  - param String true
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
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_933


## All Dead
- enabled: True
- category: [13] Orc Hero Dies
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QuestSetCompletedBJ
  - param Variable QUESTOrcHeroes
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_821
- Action DestroyLeaderboardBJ
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Blademaster01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Blademaster02
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Farseer01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable Farseer02
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsUnitDeadBJ
    - Function IsUnitDeadBJ
      - param Variable BlademasterBlackrock
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false


## Final Town Area
- enabled: True
- category: [11] Entering Red Orc Town
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
  - param Variable gg_trg_Final_Town_Area_Lines
  - param Preset CheckingIgnoringIgnoring
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String Uktl
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Final_Town_01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Final_Town_02
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Final_Town_03


## Final Town Area Lines
- enabled: True
- category: [11] Entering Red Orc Town
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
  - param Variable KelThuzad
  - param String TRIGSTR_131
  - param Variable gg_snd_U06KelThuzad18
  - param String TRIGSTR_132
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable EvilArthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitTypeWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset Player03
      - param String Uear
      - param String TRIGSTR_065
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable EvilArthas
      - param Variable gg_snd_U06Arthas19
      - param String TRIGSTR_066
      - param Preset AddSetToAdd
      - param String 0.00
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## TriggerBlueAIHarass
- enabled: True
- category: [1] TriggerAIAttacks
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


## TriggerBrownAIHarass
- enabled: True
- category: [1] TriggerAIAttacks
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
  - param Preset Player11
  - param String 0
  - param String 0


## TriggerOrangeAIHarass
- enabled: True
- category: [1] TriggerAIAttacks
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
  - param Preset Player05
  - param String 0
  - param String 0


## TriggerLightBlueAIHarass
- enabled: True
- category: [1] TriggerAIAttacks
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
  - param Preset Player09
  - param String 0
  - param String 0


## TriggerRedAIHarassOrangeDead
- enabled: True
- category: [1] TriggerAIAttacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player05
          - param String ogre
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player05
          - param String ostr
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player05
          - param String ofrt
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player05
          - param String obar
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player05
          - param String osld
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player05
          - param String obea
  - param Preset OperatorEqual
  - param String 0
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_TriggerRedAIHarassLightBlueDead
- Action DisableTrigger
  - param Variable gg_trg_TriggerRedAIHarassBrownDead
- Action CommandAI
  - param Preset Player00
  - param String 0
  - param String 0
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player05
  - param Preset PlayerUnitEventDeath


## TriggerRedAIHarassLightBlueDead
- enabled: True
- category: [1] TriggerAIAttacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player09
          - param String ogre
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player09
          - param String ostr
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player09
          - param String ofrt
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player09
          - param String obar
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player09
          - param String obea
  - param Preset OperatorEqual
  - param String 0
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_TriggerRedAIHarassOrangeDead
- Action DisableTrigger
  - param Variable gg_trg_TriggerRedAIHarassBrownDead
- Action CommandAI
  - param Preset Player00
  - param String 0
  - param String 0
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player09
  - param Preset PlayerUnitEventDeath


## TriggerRedAIHarassBrownDead
- enabled: True
- category: [1] TriggerAIAttacks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player11
          - param String ogre
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player11
          - param String ostr
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player11
          - param String ofrt
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player11
          - param String obar
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player11
          - param String obea
  - param Preset OperatorEqual
  - param String 0
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_TriggerRedAIHarassOrangeDead
- Action DisableTrigger
  - param Variable gg_trg_TriggerRedAIHarassLightBlueDead
- Action CommandAI
  - param Preset Player00
  - param String 0
  - param String 0
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player11
  - param Preset PlayerUnitEventDeath


## Red Town Dead
- enabled: True
- category: [9] End Cinematic
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
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_No_More_Buildings
- Action DisableTrigger
  - param Variable gg_trg_Final_Town_Area
- Action DisableTrigger
  - param Variable gg_trg_Final_Town_Area_Lines
- Action DisableTrigger
  - param Variable gg_trg_First_Hero
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_189
- Action QuestSetCompletedBJ
  - param Variable QUESTDemonGate
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QUESTKillRedOrcs
  - param Preset CompletionOptionCompleted
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function RectContainsUnit
            - Function RectContainsUnit
              - param Variable gg_rct_Weather01
              - param Variable EvilArthas
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Variable EvilArthas
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitTypeWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset Player03
      - param String Uear
      - param String TRIGSTR_097
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable EvilArthas
      - param Variable gg_snd_U06Arthas20
      - param String TRIGSTR_098
      - param Preset AddSetToAdd
      - param String 0.00
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function RectContainsUnit
            - Function RectContainsUnit
              - param Variable gg_rct_Final_Town_03
              - param Variable EvilArthas
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Variable EvilArthas
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitTypeWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset Player03
      - param String Uear
      - param String TRIGSTR_107
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable EvilArthas
      - param Variable gg_snd_U06Arthas20
      - param String TRIGSTR_108
      - param Preset AddSetToAdd
      - param String 0.00
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
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
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop02
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
- Action SetVariable
  - param Variable DefeatOk
  - param String false
- Action TriggerExecute
  - param Variable gg_trg_Start_Ending
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player00
  - param Preset PlayerUnitEventDeath


## Start Ending
- enabled: True
- category: [9] End Cinematic
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Prep
- Action DestroyLeaderboardBJ
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player01
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
      - param Preset Player09
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player11
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
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
      - param Preset Player02
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action EnableDawnDusk
  - param Preset EnableDisableDisable
- Action CommentString
  - param String CINEMATIC CANCELLABLE NOW
- Action EnableTrigger
  - param Variable gg_trg_Ending_Cancel
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Start_Ending
  - param Preset Player03
  - param String 0.00
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_End_Cinematic
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ndmg
  - param Preset PlayerNP
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Demon_Gate_Spot
  - param Preset RealUnitFacing
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_CityScapeMagicRunesLoop1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Demon_Gate_Spot
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_CityScapeMagicRunesLoop1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_CityScapeMagicRunesLoop1
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset Player03
- Action SetUnitPositionLoc
  - param Variable EvilArthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas01end
- Action SetUnitPositionLoc
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad01end
- Action ShowUnitShow
  - param Variable EvilArthas
- Action ShowUnitShow
  - param Variable KelThuzad
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable EvilArthas
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable KelThuzad
- Action ReviveHeroLoc
  - param Variable EvilArthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas01end
  - param Preset ShowHideHide
- Action ReviveHeroLoc
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad01end
  - param Preset ShowHideHide
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String Uwar
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable KelThuzad
- Action SetVariable
  - param Variable Archimonde
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitInvulnerable
  - param Variable Archimonde
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable EvilArthas
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable KelThuzad
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitPathing
  - param Variable Archimonde
  - param Preset PathingOff
- Action TriggerSleepAction
  - param String 1.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetCameraTargetControllerNoZForPlayer
  - param Preset Player03
  - param Variable KelThuzad
  - param String 0.00
  - param String 0.00
  - param Preset CameraOrientationNormal
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_CityScapeMagicRunesLoop1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Demon_Gate_Spot
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_CityScapeMagicRunesLoop1
- Action IssuePointOrderLoc
  - param Variable EvilArthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas01end02
- Action IssuePointOrderLoc
  - param Variable KelThuzad
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Demon_Gate
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop3
  - param Variable EvilArthas
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop3
- Action TriggerSleepAction
  - param String 7.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable KelThuzad
  - param String stand channel
- Action SetUnitFacingToFaceLocTimed
  - param Variable KelThuzad
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable KelThuzad
  - param String TRIGSTR_010
  - param Variable gg_snd_U06KelThuzad21
  - param String TRIGSTR_011
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ResetUnitAnimation
  - param Variable KelThuzad
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Variable gg_rct_Archimonde_Move_to
- Action PlaySoundBJ
  - param Variable gg_snd_UndeadMiningWhat1
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_DarkSummoningTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Demon_Gate_Spot
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_DarkSummoningTarget1
- Action AddSpecialEffectTargetUnitBJ
  - param String origin
  - param Variable Archimonde
  - param String Abilities\Spells\undead\animatedead\animatedeadtarget.mdl
- Action SetUnitVertexColorBJ
  - param Variable Archimonde
  - param String 100
  - param String 100
  - param String 100
  - param String 45.00
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDoom
- Action SetUnitPositionLoc
  - param Variable Archimonde
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Archimonde_Move_to
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicCancel
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
  - param String TRIGSTR_012
  - param Variable gg_snd_U06Archimonde22
  - param String TRIGSTR_013
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicCancel
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
  - param String TRIGSTR_014
  - param Variable gg_snd_U06KelThuzad23
  - param String TRIGSTR_017
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_StartEnding2
  - param Preset Player03
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Archimonde
  - param String TRIGSTR_018
  - param Variable gg_snd_U06Archimonde24
  - param String TRIGSTR_019
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicCancel
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
  - param String TRIGSTR_020
  - param Variable gg_snd_U06KelThuzad25
  - param String TRIGSTR_021
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicCancel
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
  - param String TRIGSTR_022
  - param Variable gg_snd_U06Archimonde26
  - param String TRIGSTR_023
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action DestroyEffectBJ
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action StopSoundBJ
  - param Variable gg_snd_CityScapeMagicRunesLoop1
  - param Preset FadeDontFade
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable EndCinematicCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetVariable
  - param Variable EndCinematicCancel
  - param String true
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
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run


## Save Heroes
- enabled: True
- category: [9] End Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions


## Ending Cancel
- enabled: True
- category: [10] Ending Cancel
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
- Action DisableTrigger
  - param Variable gg_trg_No_More_Buildings
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontDont
- Action SetVariable
  - param Variable EndCinematicCancel
  - param String true
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
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run
- Condition OperatorCompareBoolean
  - param Variable EndCinematicCancel
  - param Preset OperatorEqualENE
  - param String false


## No More Buildings
- enabled: True
- category: [14] Building Defeat
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
  - param Variable gg_trg_Start_Ending
- Action DisableTrigger
  - param Variable gg_trg_Ending_Cancel
- Action DisableTrigger
  - param Variable gg_trg_Red_Town_Dead
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeMissionFailed
  - param String TRIGSTR_934
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
- Action CustomDefeatBJ
  - param Preset Player03
  - param String TRIGSTR_935
- Condition OperatorCompareBoolean
  - param Variable DefeatOk
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player03
      - param Preset InclusionInclude
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Next Level Prep
- enabled: True
- category: [6] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StoreUnitBJ
  - param Variable EvilArthas
  - param String Arthas
  - param String Undead07
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action StoreUnitBJ
  - param Variable KelThuzad
  - param String KelThuzad
  - param String Undead07
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SaveGameCacheBJ
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SetMissionAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset MissionIndexU10


## Next Level Run
- enabled: True
- category: [6] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetNextLevelBJ
  - param String Maps\Campaign\Undead07.w3m
- Action CustomVictoryBJ
  - param Preset Player03
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse


## Defeat Cheat
- enabled: True
- category: [16] Victory Defeat Cheat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Preset Player03
  - param String TRIGSTR_039
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player03


## Victory Cheat
- enabled: True
- category: [16] Victory Defeat Cheat
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
  - param Preset Player03

