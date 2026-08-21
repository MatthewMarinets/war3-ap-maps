version = ROC

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 0 | Set Up | False |
| 7 | Opening Cinematic | False |
| 1 | Mission Start | False |
| 13 | Sylvanas Intro | False |
| 19 | Hidden Tree Entrance | False |
| 11 | Gnoll Camp | False |
| 2 | xxxxxx AI xxxxxxx | False |
| 18 | Orange Town | False |
| 3 | Teal Town | False |
| 8 | Yellow Town | False |
| 10 | Blue Town Elfgate | False |
| 5 | Hints | False |
| 9 | xxxxxx ENDING xxxxxxx | False |
| 4 | Ending Cinematic Elfgate | False |
| 15 | Victory Defeat | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| Arthas | unit | . | . |
| StartingUnits | group | . | . |
| Sylvanas | unit | . | . |
| SylvanasPoint | location | . | . |
| Acolyte01 | unit | . | . |
| Acolyte02 | unit | . | . |
| Acolyte03 | unit | . | . |
| Acolyte04 | unit | . | . |
| Ghoul01 | unit | . | . |
| Ghoul02 | unit | . | . |
| Ghoul03 | unit | . | . |
| Ghoul04 | unit | . | . |
| MeatWagon01 | unit | . | . |
| MeatWagon02 | unit | . | . |
| MeatWagon03 | unit | . | . |
| Necromancer01 | unit | . | . |
| IntroCancel | boolean | . | false |
| Prisoner | unit | . | UnitNull |
| Elfgate | quest | . | . |
| SylvanasTimer | timer | . | . |
| SylvanasAttackGroup | group | . | . |
| ArthasPoint | location | . | . |
| Acolyte05 | unit | . | . |
| Ghoul05 | unit | . | . |
| ElfgateCancel | boolean | . | false |
| GnollCampVis01 | fogmodifier | . | . |
| ElfGateVis | fogmodifier | . | . |
| ElfgateReq01 | questitem | . | . |
| Orange | integer | . | 0 |
| OrangeElf01 | group | . | . |
| OrangeElf02 | group | . | . |
| TealElf01 | group | . | . |
| TealElf02 | group | . | . |
| YellowElf01 | group | . | . |
| YellowElf02 | group | . | . |
| OrangeReveal | fogmodifier | . | . |
| PinkReveal | fogmodifier | . | . |
| PurpleReveal | fogmodifier | . | . |
| HINT | integer | . | 0 |
| Creep | integer | . | 0 |
| Teal | integer | . | 0 |
| CreepReveal01 | fogmodifier | . | . |
| CreepReveal02 | fogmodifier | . | . |
| NecroTimer | timer | . | . |
| GoldMine | integer | . | 0 |
| GolemPoint | location | . | . |
| Golem03 | unit | . | . |
| Golem02 | unit | . | . |
| Golem01 | unit | . | . |
| Necromancer02 | unit | . | . |
| StartAI | integer | . | 0 |
| InCombat | boolean | . | false |
| InCombatDelay | real | . | 4.00 |
| InCombatTimer | timer | . | . |
| RetreatUnit01 | unit | . | . |
| RetreatUnit02 | unit | . | . |
| GAMEOVER | boolean | . | false |
| ElfBaseDestroyed | boolean | . | false |

# Triggers
## Map Initilization
- enabled: True
- category: [0] Set Up
- starts off: False
- is custom text: False
- run on map init: False
```description
MASTER SWITCH

Runs all starting Triggers
```
### Functions
- Action SetCampaignMenuRaceBJ
  - param Preset CampaignIndexU
- Action FogMaskEnableOn
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Load_Hero
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Sylvanas
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_AI_Alliance
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Undead
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Quest
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_AI_Ignore_Unit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Undead_Units_Dead
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_All_Players
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Elf_Group
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Difficulty
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SetupBridge
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Easy_Diff
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Setup_Sounds
- Action CommentString
  - param String ----------
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Cinematic_Dialogue_A
- Event MapInitializationEvent


## Load Hero
- enabled: True
- category: [0] Set Up
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


## Load Arthas
- enabled: True
- category: [0] Set Up
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RestoreUnitLocFacingAngleBJ
  - param String Arthas
  - param String Undead03
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_A_Start
  - param String 95.00
- Action SetVariable
  - param Variable Arthas
  - param Function GetLastRestoredUnitBJ
    - Function GetLastRestoredUnitBJ
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable StartingUnits
- Action SetUnitManaBJ
  - param Variable Arthas
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable Arthas
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
  - param String -----------------------Create Evil Arthas-------------------------
- Action CreateNUnitsAtLoc
  - param String 1
  - param String Uear
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_A_Start
  - param String 95.00
- Action SetVariable
  - param Variable Arthas
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable StartingUnits
- Action SetHeroLevel
  - param Variable Arthas
  - param String 3
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDeathCoil
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDeathPact
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillUnholyAura
- Action UnitAddItemByIdSwapped
  - param String ktrm
  - param Variable Arthas
- Action SetItemDroppableBJ
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Preset DropNoDropOptionNoDrop


## Setup Sylvanas
- enabled: True
- category: [0] Set Up
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Sylvanas
  - param Variable gg_unit_Hvwd_0090
- Action SetUnitManaBJ
  - param Variable Sylvanas
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable Sylvanas
- Action SetHeroLevel
  - param Variable Sylvanas
  - param String 4
  - param Preset ShowHideHide
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Sylvanas
- Action CommentString
  - param String ----------
- Action SelectHeroSkill
  - param Variable Sylvanas
  - param Preset HeroSkillColdArrows
- Action SelectHeroSkill
  - param Variable Sylvanas
  - param Preset HeroSkillTrueshotAura
- Action SelectHeroSkill
  - param Variable Sylvanas
  - param Preset HeroSkillColdArrows
- Action SelectHeroSkill
  - param Variable Sylvanas
  - param Preset HeroSkillTrueshotAura
- Action CommentString
  - param String ----------
- Action GroupAddUnitSimple
  - param Variable Sylvanas
  - param Variable SylvanasAttackGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_hhes_0093
  - param Variable SylvanasAttackGroup
- Action GroupAddUnitSimple
  - param Variable gg_unit_hhes_0157
  - param Variable SylvanasAttackGroup


## Setup AI Alliance
- enabled: True
- category: [0] Set Up
- starts off: False
- is custom text: False
- run on map init: False
```description
Alliance settings for the AI


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
  - param Preset Player05
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player10
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action CommentString
  - param String ----------
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
  - param Preset Player05
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player07
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player10
- Action CommentString
  - param String ----------
- Action SetPlayerColorBJ
  - param Preset Player04
  - param Preset Color02
  - param Preset PlayerChangeColorChange
- Action SetPlayerColorBJ
  - param Preset Player05
  - param Preset Color02
  - param Preset PlayerChangeColorChange
- Action SetPlayerColorBJ
  - param Preset Player07
  - param Preset Color02
  - param Preset PlayerChangeColorChange
- Action SetPlayerColorBJ
  - param Preset Player10
  - param Preset Color02
  - param Preset PlayerChangeColorChange
- Action CommentString
  - param String -----Users Alliacnce Settings-----
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player02
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player07
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player03
- Action SetPlayerAllianceBJ
  - param Preset Player02
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player03
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player06
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset Player06
- Action CommentString
  - param String resources
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateGold
  - param String 5000
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateLumber
  - param String 5000
- Action CommentString
  - param String -
- Action SetPlayerState
  - param Preset Player02
  - param Preset PlayerStateGold
  - param String 5000
- Action SetPlayerState
  - param Preset Player02
  - param Preset PlayerStateLumber
  - param String 5000
- Action CommentString
  - param String -
- Action SetPlayerState
  - param Preset Player04
  - param Preset PlayerStateGold
  - param String 5000
- Action SetPlayerState
  - param Preset Player04
  - param Preset PlayerStateLumber
  - param String 5000


## Setup AI Ignore Unit
- enabled: True
- category: [0] Set Up
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String -----Blue Units-----
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0183
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0205
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0224
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0223
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0219
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0221
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0220
- Action RemoveGuardPosition
  - param Variable gg_unit_hhes_0157
- Action RemoveGuardPosition
  - param Variable gg_unit_hhes_0093
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0217
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0218
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0191
- Action CommentString
  - param String -----Hidden Units-----
- Action RemoveGuardPosition
  - param Variable gg_unit_ebal_0061
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0062
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0063


## Setup Undead
- enabled: True
- category: [0] Set Up
- starts off: False
- is custom text: False
- run on map init: False
```description
Set units, sound, and alliances
```
### Functions
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateGold
  - param String 1500
- Action SetPlayerState
  - param Preset Player03
  - param Preset PlayerStateLumber
  - param String 550
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Escort_03_A
  - param String 512
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CommentString
  - param String -----High Elf Villagers-----
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player10
- Action CommentString
  - param String -----Set Acolyte-----
- Action SetVariable
  - param Variable Acolyte01
  - param Variable gg_unit_uaco_0149
- Action GroupAddUnitSimple
  - param Variable Acolyte01
  - param Variable StartingUnits
- Action SetVariable
  - param Variable Acolyte02
  - param Variable gg_unit_uaco_0150
- Action GroupAddUnitSimple
  - param Variable Acolyte02
  - param Variable StartingUnits
- Action SetVariable
  - param Variable Acolyte03
  - param Variable gg_unit_uaco_0151
- Action GroupAddUnitSimple
  - param Variable Acolyte03
  - param Variable StartingUnits
- Action SetVariable
  - param Variable Acolyte04
  - param Variable gg_unit_uaco_0047
- Action GroupAddUnitSimple
  - param Variable Acolyte04
  - param Variable StartingUnits
- Action SetVariable
  - param Variable Acolyte05
  - param Variable gg_unit_uaco_0022
- Action GroupAddUnitSimple
  - param Variable Acolyte05
  - param Variable StartingUnits
- Action CommentString
  - param String -----Set Ghoul-----
- Action SetVariable
  - param Variable Ghoul01
  - param Variable gg_unit_ugho_0005
- Action GroupAddUnitSimple
  - param Variable Ghoul01
  - param Variable StartingUnits
- Action SetVariable
  - param Variable Ghoul02
  - param Variable gg_unit_ugho_0006
- Action GroupAddUnitSimple
  - param Variable Ghoul02
  - param Variable StartingUnits
- Action SetVariable
  - param Variable Ghoul03
  - param Variable gg_unit_ugho_0007
- Action GroupAddUnitSimple
  - param Variable Ghoul03
  - param Variable StartingUnits
- Action SetVariable
  - param Variable Ghoul04
  - param Variable gg_unit_ugho_0152
- Action GroupAddUnitSimple
  - param Variable Ghoul04
  - param Variable StartingUnits
- Action SetVariable
  - param Variable Ghoul05
  - param Variable gg_unit_ugho_0231
- Action GroupAddUnitSimple
  - param Variable Ghoul05
  - param Variable StartingUnits
- Action CommentString
  - param String -----Set Necromancer----
- Action SetVariable
  - param Variable Necromancer01
  - param Variable gg_unit_unec_0153
- Action GroupAddUnitSimple
  - param Variable Necromancer01
  - param Variable StartingUnits
- Action SetUnitManaPercentBJ
  - param Variable Necromancer01
  - param String 100
- Action SetVariable
  - param Variable Necromancer02
  - param Variable gg_unit_unec_0117
- Action SetUnitManaPercentBJ
  - param Variable Necromancer02
  - param String 100
- Action GroupAddUnitSimple
  - param Variable Necromancer02
  - param Variable StartingUnits
- Action CommentString
  - param String -----Set Meat Wagon-----
- Action SetVariable
  - param Variable MeatWagon01
  - param Variable gg_unit_umtw_0225
- Action GroupAddUnitSimple
  - param Variable MeatWagon01
  - param Variable StartingUnits
- Action SetVariable
  - param Variable MeatWagon02
  - param Variable gg_unit_umtw_0166
- Action GroupAddUnitSimple
  - param Variable MeatWagon02
  - param Variable StartingUnits
- Action SetVariable
  - param Variable MeatWagon03
  - param Variable gg_unit_umtw_0138
- Action GroupAddUnitSimple
  - param Variable MeatWagon03
  - param Variable StartingUnits


## Setup Quest
- enabled: True
- category: [0] Set Up
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateQuestBJ
  - param Preset QuestTypeReqDiscovered
  - param String TRIGSTR_024
  - param String TRIGSTR_025
  - param String ReplaceableTextures\CommandButtons\BTNLament.tga
- Action SetVariable
  - param Variable Elfgate
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable Elfgate
  - param String TRIGSTR_089
- Action SetVariable
  - param Variable ElfgateReq01
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ


## Setup All Players
- enabled: True
- category: [0] Set Up
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset PlayerNA
  - param Function DoNothing
    - Action UnitSetCanSleepBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset SleepWakeOptionWake
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player02
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player05
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player06
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player04
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player07
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player10


## Setup Elf Group
- enabled: True
- category: [0] Set Up
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Orange_Elf_Group_01
  - param Variable OrangeElf01
- Action GroupAddGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Orange_Elf_Group_02
  - param Variable OrangeElf02
- Action GroupAddUnitSimple
  - param Variable gg_unit_nhef_0094
  - param Variable OrangeElf01
- Action GroupAddUnitSimple
  - param Variable gg_unit_nhef_0095
  - param Variable OrangeElf02
- Action CommentString
  - param String ----------
- Action GroupAddGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Teal_Elf_Group_01
  - param Variable TealElf01
- Action GroupAddGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Teal_Elf_Group_02
  - param Variable TealElf02
- Action GroupAddUnitSimple
  - param Variable gg_unit_nhef_0229
  - param Variable TealElf01
- Action GroupAddUnitSimple
  - param Variable gg_unit_nhef_0104
  - param Variable TealElf01
- Action CommentString
  - param String ----------
- Action GroupAddGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Yellow_Elf_Group_01
  - param Variable YellowElf01
- Action GroupAddGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Yellow_Elf_Group_02
  - param Variable YellowElf02
- Action GroupAddUnitSimple
  - param Variable gg_unit_nhef_0257
  - param Variable YellowElf01
- Action CommentString
  - param String -----Elf Gate Vis-----
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Elfgate_Vis
  - param String 750.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier


## Setup Difficulty
- enabled: True
- category: [0] Set Up
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyNormal
- Action RemoveUnit
  - param Variable gg_unit_nhea_0075
- Action RemoveUnit
  - param Variable gg_unit_nhea_0074
- Action RemoveUnit
  - param Variable gg_unit_hsor_0102
- Action RemoveUnit
  - param Variable gg_unit_nheb_0106
- Action CommentString
  - param String ----------


## Setup Easy Diff
- enabled: True
- category: [0] Set Up
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
  - param Preset Player05
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player07
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset PlayerNA
  - param Preset RealHandicapEasy


## SetupBridge
- enabled: True
- category: [0] Set Up
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetDestructableInvulnerableBJ
  - param Variable gg_dest_LT05_0717
  - param Preset InvulnerabilityInvulnerable
- Action SetDestructableInvulnerableBJ
  - param Variable gg_dest_LT05_0685
  - param Preset InvulnerabilityInvulnerable


## Setup Sounds
- enabled: True
- category: [0] Set Up
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterWaterFallLoop1
  - param Variable gg_rct_StreamLoop05
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WaterWaterFallLoop1
  - param String 70.00
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
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WaterStreamLoop1
  - param String 10.00
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


## Intro Cancel
- enabled: True
- category: [7] Opening Cinematic
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
- Event TriggerRegisterPlayerEventEndCinematic
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
  - param String 0.60
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ResetToGameCameraForPlayer
  - param Preset Player03
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Skipped
  - param Preset Player03
  - param String 0.00
- Action SetSkyModel
  - param Preset SkyModelNone
- Action SetTerrainFogExBJ
  - param String 0
  - param String 800.00
  - param String 3000.00
  - param String 0.00
  - param String 20.00
  - param String 40.00
  - param String 55.00
- Action CommentString
  - param String ----Move Units-----
- Action SetUnitPositionLocFacingBJ
  - param Variable Acolyte01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Acolyte_01_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Acolyte02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Acolyte_02_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Acolyte03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Acolyte_03_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Acolyte04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Acolyte_04_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Acolyte05
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Acolyte_05_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Ghoul01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Ghoul_01_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Ghoul02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Ghoul_02_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Ghoul03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Ghoul_03_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Ghoul04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Ghoul_04_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Ghoul05
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Ghoul_05_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable MeatWagon01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Meat_Wagon_01_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable MeatWagon02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Meat_Wagon_02_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable MeatWagon03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Meat_Wagon_03_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Necromancer01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Necromancer_01_C
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Necromancer02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Necromancer_02_B
  - param String 0.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_E
  - param String 0.00
- Action RemoveUnit
  - param Variable gg_unit_uktg_0081
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_Kill_Trees_Starting_Town
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action CommentString
  - param String ----------
- Action SelectUnitSingle
  - param Variable Arthas
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CommentString
  - param String -----Start Mission-----
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0068
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Discovered
- Action ConditionalTriggerExecute
  - param Variable gg_trg_High_Elf_Retreat
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Mission_Start


## Cinematic Dialogue A
- enabled: True
- category: [7] Opening Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
Arthas outside Quel'Thalas
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetSkyModel
  - param Preset SkyModelSky03
- Action SetTerrainFogExBJ
  - param String 0
  - param String 800.00
  - param String 6000.00
  - param String 0.00
  - param String 20.00
  - param String 40.00
  - param String 55.00
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_A_Start
- Action SetUnitFacingTimed
  - param Variable Arthas
  - param String 290.00
  - param String 0.00
- Action CommentString
  - param String ----------
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_01
  - param Preset Player03
  - param String 0.00
- Action CommentString
  - param String Music Theme
- Action ClearMapMusicBJ
- Action TriggerSleepAction
  - param String 0.01
- Action SetMapMusicIndexedBJ
  - param Preset MusicFileMusic
  - param String 0
- Action PlayThematicMusicBJ
  - param Preset MusicThemeSadMystery
- Action CommentString
  - param String -----------
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_Intro_Cancel
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_01
  - param Preset Player03
  - param String 0.00
- Action SetUnitFacingTimed
  - param Variable Arthas
  - param String 310.00
  - param String 0.40
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_022
  - param Variable gg_snd_U03AArthas01
  - param String TRIGSTR_023
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
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
  - param String ----------
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_01
  - param Preset Player03
  - param String 0.00
- Action SetUnitFacingTimed
  - param Variable Arthas
  - param String 200.00
  - param String 0.50
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset Player03
  - param String uktg
  - param String TRIGSTR_027
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Variable gg_snd_U03AKelThuzad02
  - param String TRIGSTR_031
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
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
  - param String ----------
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_032
  - param Variable gg_snd_U03AArthas03
  - param String TRIGSTR_033
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
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
- Action SetUnitFacingTimed
  - param Variable Arthas
  - param String 290.00
  - param String 0.50
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
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_A
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetTerrainFogExBJ
  - param String 0
  - param String 800.00
  - param String 4200.00
  - param String 0.00
  - param String 20.00
  - param String 40.00
  - param String 55.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_02
  - param Preset Player03
  - param String 0.00
- Action SetCameraTargetControllerNoZForPlayer
  - param Preset Player03
  - param Variable Arthas
  - param String 0
  - param String 0
  - param Preset CameraOrientationNormal
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_B
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop3
  - param Variable Arthas
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop3
- Action IssuePointOrderLoc
  - param Variable Ghoul04
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Escort_02_A
- Action IssuePointOrderLoc
  - param Variable Ghoul03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Escort_01_A
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
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset Player03
  - param String uktg
  - param String TRIGSTR_034
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Variable gg_snd_U03AKelThuzad04
  - param String TRIGSTR_035
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
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
  - param Variable Necromancer01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Necromancer_01_A
- Action CommentString
  - param String ----------
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_03
  - param Preset Player03
  - param String 0.00
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
- Action SetUnitFacingTimed
  - param Variable Necromancer01
  - param Preset RealUnitFacing
  - param String 80.00
- Action SetUnitFacingTimed
  - param Variable Arthas
  - param Preset RealUnitFacing
  - param String 310.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_037
  - param Variable gg_snd_U03AArthas05
  - param String TRIGSTR_036
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
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
  - param String ----------
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_03
  - param Preset Player03
  - param String 0.00
- Action IssuePointOrderLoc
  - param Variable Necromancer01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Escort_03_A
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nemi
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Priest_01_A
  - param String 0.00
- Action SetVariable
  - param Variable Prisoner
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action RemoveGuardPosition
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action RemoveUnit
  - param Variable gg_unit_uktg_0081
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Cinematic_Dialogue_B


## Cinematic Dialogue B
- enabled: True
- category: [7] Opening Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
Bring forth the Prisoner
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CommentString
  - param String -----Prisoner-----
- Condition OperatorCompareBoolean
  - param Variable IntroCancel
  - param Preset OperatorEqualENE
  - param String false
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_03
  - param Preset Player03
  - param String 0.00
- Action IssuePointOrderLoc
  - param Variable Necromancer01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Escort_03_B
- Action TriggerSleepAction
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
- Action IssuePointOrderLoc
  - param Variable Prisoner
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Priest_01_B
- Action IssuePointOrderLoc
  - param Variable Ghoul04
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Escort_02_B
- Action IssuePointOrderLoc
  - param Variable Ghoul03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Escort_01_B
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_C


## Cinematic Dialogue C
- enabled: True
- category: [7] Opening Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
Bring forth the Meat Wagons
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CommentString
  - param String ----------
- Condition OperatorCompareBoolean
  - param Variable IntroCancel
  - param Preset OperatorEqualENE
  - param String false
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Necromancer01
  - param Variable Arthas
  - param String 0.25
- Action CommentString
  - param String ----------
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_03
  - param Preset Player03
  - param String 0.00
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_GhoulWarcry1
  - param Variable Ghoul03
- Action SetSoundVolumeBJ
  - param Variable gg_snd_GhoulWarcry1
  - param String 40.00
- Action PlaySoundBJ
  - param Variable gg_snd_GhoulWarcry1
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_038
  - param Variable gg_snd_U03AArthas06
  - param String TRIGSTR_039
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
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
      - param Variable IntroCancel
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
  - param Variable gg_cam_Elfgate_01
  - param Preset Player03
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Elfgate_02
  - param Preset Player03
  - param String 9.00
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset Player03
  - param String nemi
  - param String TRIGSTR_040
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Variable gg_snd_U03BPriest07
  - param String TRIGSTR_041
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
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
  - param String ----------
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Prisoner
  - param String 0.20
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
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
  - param Variable gg_cam_Intro_Cinematic_04
  - param Preset Player03
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_043
  - param Variable gg_snd_U03BArthas08
  - param String TRIGSTR_042
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
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
- Action CommentString
  - param String ----------
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
- Action SetUnitPositionLoc
  - param Variable Prisoner
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Priest_01_A
- Action IssuePointOrderLoc
  - param Variable Necromancer01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Necromancer_01_B
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Cinematic_Dialogue_D
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable Prisoner
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Priest_01_B


## Cinematic Dialogue D
- enabled: True
- category: [7] Opening Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
Create and Introduce Meat Wagon
```
### Functions
- Condition OperatorCompareBoolean
  - param Variable IntroCancel
  - param Preset OperatorEqualENE
  - param String false
- Action CommentString
  - param String -----Ghouls-----
- Action SetUnitPositionLoc
  - param Variable Ghoul01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Ghoul_01_B
- Action SetUnitFacingTimed
  - param Variable Ghoul01
  - param String 0.00
  - param String 0
- Action SetUnitPositionLoc
  - param Variable Ghoul02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Ghoul_02_B
- Action SetUnitFacingTimed
  - param Variable Ghoul02
  - param String 0.00
  - param String 0
- Action SetUnitPositionLoc
  - param Variable Ghoul03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Ghoul_03_B
- Action SetUnitFacingTimed
  - param Variable Ghoul03
  - param String 0.00
  - param String 0
- Action SetUnitPositionLoc
  - param Variable Ghoul04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Ghoul_04_B
- Action SetUnitFacingTimed
  - param Variable Ghoul04
  - param String 0.00
  - param String 0
- Action SetUnitPositionLoc
  - param Variable Ghoul05
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Ghoul_05_B
- Action SetUnitFacingTimed
  - param Variable Ghoul05
  - param String 0.00
  - param String 0
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_D
- Action RemoveUnit
  - param Variable Prisoner
- Action CommentString
  - param String ----------
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.40
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_05
  - param Preset Player03
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_06
  - param Preset Player03
  - param String 5.00
- Action CommentString
  - param String -----Meat Wagon-----
- Action IssuePointOrderLoc
  - param Variable MeatWagon01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Meat_Wagon_01_A
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonYes1
  - param Variable MeatWagon01
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonYes1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MeatWagonYes1
- Action TriggerSleepAction
  - param String 1.20
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
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable MeatWagon02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Meat_Wagon_02_A
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonYes2
  - param Variable MeatWagon02
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonYes2
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MeatWagonYes2
- Action TriggerSleepAction
  - param String 1.20
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
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable MeatWagon03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Meat_Wagon_03_A
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonYes3
  - param Variable MeatWagon03
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonYes3
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MeatWagonYes3
- Action TriggerSleepAction
  - param String 1.20
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
  - param Preset CineFilterTextureWhite
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
- Action CommentString
  - param String -----Acolyte-----
- Action SetUnitPositionLoc
  - param Variable Necromancer01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Necromancer_01_B
- Action SetUnitPositionLoc
  - param Variable Necromancer02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Necromancer_02_A
- Action SetUnitPositionLoc
  - param Variable Acolyte01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Acolyte_01_B
- Action SetUnitPositionLoc
  - param Variable Acolyte02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Acolyte_02_B
- Action SetUnitPositionLoc
  - param Variable Acolyte03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Acolyte_03_B
- Action SetUnitPositionLoc
  - param Variable Acolyte04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Acolyte_04_B
- Action SetUnitPositionLoc
  - param Variable Acolyte05
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Acolyte_05_B
- Action CommentString
  - param String ----------
- Action SetUnitPositionLocFacingBJ
  - param Variable MeatWagon01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Meat_Wagon_01_B
  - param String 305.00
- Action SetUnitPositionLocFacingBJ
  - param Variable MeatWagon02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Meat_Wagon_02_B
  - param String 305.00
- Action SetUnitPositionLocFacingBJ
  - param Variable MeatWagon03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Meat_Wagon_03_B
  - param String 305.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Cinematic_Dialogue_E


## Cinematic Dialogue E
- enabled: True
- category: [7] Opening Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
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
  - param String 0.40
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_07
  - param Preset Player03
  - param String 0.00
- Action VolumeGroupResetBJ
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
- Condition OperatorCompareBoolean
  - param Variable IntroCancel
  - param Preset OperatorEqualENE
  - param String false
- Action CommentString
  - param String ----------
- Action IssueTargetDestructableOrder
  - param Variable MeatWagon01
  - param Preset UnitOrderAttackDestructible
  - param Variable gg_dest_LTlt_0209
- Action IssueTargetDestructableOrder
  - param Variable MeatWagon02
  - param Preset UnitOrderAttackDestructible
  - param Variable gg_dest_LTlt_0203
- Action IssueTargetDestructableOrder
  - param Variable MeatWagon03
  - param Preset UnitOrderAttackDestructible
  - param Variable gg_dest_LTlt_0213
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
- Action CommentString
  - param String ----------
- Action TriggerSleepAction
  - param String 1.00
- Action SetSpeechVolumeGroupsBJ
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
  - param Variable Ghoul01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Ghoul_01_C
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_GhoulWarcry1
  - param Variable Ghoul01
- Action SetSoundVolumeBJ
  - param Variable gg_snd_GhoulWarcry1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_GhoulWarcry1
- Action IssuePointOrderLoc
  - param Variable Ghoul02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Ghoul_02_C
- Action IssuePointOrderLoc
  - param Variable Ghoul03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Ghoul_03_C
- Action IssuePointOrderLoc
  - param Variable Ghoul04
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Ghoul_04_C
- Action IssuePointOrderLoc
  - param Variable Ghoul05
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Ghoul_05_C
- Action CommentString
  - param String ----------
- Action TriggerSleepAction
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
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Arthas_E
- Action IssuePointOrderLoc
  - param Variable Necromancer01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Necromancer_01_C
- Action IssuePointOrderLoc
  - param Variable Necromancer02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Necromancer_02_B
- Action CommentString
  - param String ----------
- Action TriggerSleepAction
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
- Action IssuePointOrderLoc
  - param Variable MeatWagon01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Meat_Wagon_01_C
- Action IssuePointOrderLoc
  - param Variable MeatWagon02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Meat_Wagon_02_C
- Action IssuePointOrderLoc
  - param Variable MeatWagon03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Meat_Wagon_03_C
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable Acolyte01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Acolyte_01_C
- Action IssuePointOrderLoc
  - param Variable Acolyte02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Acolyte_02_C
- Action IssuePointOrderLoc
  - param Variable Acolyte03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Acolyte_03_C
- Action IssuePointOrderLoc
  - param Variable Acolyte04
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Acolyte_04_C
- Action IssuePointOrderLoc
  - param Variable Acolyte05
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Acolyte_05_C
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Cinematic_Dialogue_F


## Cinematic Dialogue F
- enabled: True
- category: [7] Opening Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description
This trigger is fired when player comes into view of High Elf Village after the opening cinematic is either played or cancelled.
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetTerrainFogExBJ
  - param String 0
  - param String 1000.00
  - param String 4200.00
  - param String 0.00
  - param String 20.00
  - param String 40.00
  - param String 55.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_08
  - param Preset Player03
  - param String 0.00
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset Player03
  - param String uktg
  - param String TRIGSTR_081
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
  - param Variable gg_snd_U03AKelThuzad09
  - param String TRIGSTR_082
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WaterStreamLoop1
  - param String 100.00
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WaterWaterFallLoop1
  - param String 100.00
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWaterFallLoop1
  - param Variable gg_rct_StreamLoop05
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_GhoulWhat1
  - param Variable Ghoul05
- Action SetSoundVolumeBJ
  - param Variable gg_snd_GhoulWhat1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_GhoulWhat1
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
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset Player03
  - param String Uear
  - param String TRIGSTR_087
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
  - param Variable gg_snd_U03AArthas10
  - param String TRIGSTR_088
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
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
- Action SetTerrainFogExBJ
  - param String 0
  - param String 1500.00
  - param String 3000.00
  - param String 0.00
  - param String 20.00
  - param String 40.00
  - param String 55.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Cinematic_09
  - param Preset Player03
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nhea_0003
  - param String TRIGSTR_090
  - param Variable gg_snd_U03AElfArcher11
  - param String TRIGSTR_091
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
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
  - param Variable gg_trg_Intro_Cancel
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0068
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Discovered
- Action ConditionalTriggerExecute
  - param Variable gg_trg_High_Elf_Retreat
- Action CommentString
  - param String -----Resume Game Play-----
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ResetToGameCameraForPlayer
  - param Preset Player03
  - param String 1.50
- Action CommentString
  - param String -----Mission Start-----
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Mission_Start
- Condition OperatorCompareBoolean
  - param Variable IntroCancel
  - param Preset OperatorEqualENE
  - param String false


## Move Meat Wagon
- enabled: True
- category: [7] Opening Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable MeatWagon01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Meat_Wagon_01_B
- Action IssuePointOrderLoc
  - param Variable MeatWagon02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Meat_Wagon_02_B
- Action IssuePointOrderLoc
  - param Variable MeatWagon03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Meat_Wagon_03_B
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable MeatWagon02
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_01Meat_Wagon_02_A


## Trees Destroyed
- enabled: True
- category: [7] Opening Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action KillDestructable
  - param Variable gg_dest_LTlt_1318
- Action KillDestructable
  - param Variable gg_dest_LTlt_1331
- Action KillDestructable
  - param Variable gg_dest_LTlt_0197
- Action KillDestructable
  - param Variable gg_dest_LTlt_1321
- Action KillDestructable
  - param Variable gg_dest_LTlt_1319
- Action KillDestructable
  - param Variable gg_dest_LTlt_2077
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTlt_0203


## Mission Start
- enabled: True
- category: [1] Mission Start
- starts off: False
- is custom text: False
- run on map init: False
```description
This trigger is fired when player comes into view of High Elf Village after the opening cinematic is either played or cancelled.
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetPlayerHandicapXPBJ
  - param Preset Player03
  - param String 40.00
- Action CommentString
  - param String ----------
- Action SetSkyModel
  - param Preset SkyModelNone
- Action SetTerrainFogExBJ
  - param String 0
  - param String 1500.00
  - param String 3000.00
  - param String 0.00
  - param String 20.00
  - param String 40.00
  - param String 55.00
- Action CommentString
  - param String ------Alliance Off-----
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player07
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player07
  - param Preset Player03
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player02
  - param Preset Player03
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player02
  - param Preset AllianceSettingUnallied
- Action CommentString
  - param String -
- Action IssuePointOrderLoc
  - param Variable Ghoul01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Starting_Town
- Action IssuePointOrderLoc
  - param Variable Ghoul02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Starting_Town
- Action IssuePointOrderLoc
  - param Variable Ghoul03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Starting_Town
- Action IssuePointOrderLoc
  - param Variable Ghoul04
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Starting_Town
- Action IssuePointOrderLoc
  - param Variable Ghoul05
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_02Starting_Town
- Action IssueBuildOrderByIdLocBJ
  - param Variable Acolyte01
  - param String ugol
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_ngol_0146
- Action CommentString
  - param String ----------
- Action StartCampaignAI
  - param Preset Player04
  - param String u03_Yellow.ai
- Action StartCampaignAI
  - param Preset Player01
  - param String u03_Blue.ai
- Action StartCampaignAI
  - param Preset Player02
  - param String u03_Teal.ai
- Action CommentString
  - param String Invulnerable Elf Gate
- Action SetDestructableInvulnerableBJ
  - param Variable gg_dest_LTe4_0021
  - param Preset InvulnerabilityInvulnerable
- Action CommentString
  - param String ----------
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Elfgate_Vis
  - param String 4.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Elfgate_Vis
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_044


## Start AI 01
- enabled: True
- category: [1] Mission Start
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Start_AI_01
- Condition OperatorCompareInteger
  - param Variable StartAI
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable StartAI
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable StartAI
      - param Preset OperatorAdd
      - param String 1
- Action CommandAI
  - param Preset Player01
  - param String 0
  - param String 0


## Start AI 02
- enabled: True
- category: [1] Mission Start
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Start_AI_02
- Condition OperatorCompareInteger
  - param Variable StartAI
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable StartAI
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable StartAI
      - param Preset OperatorAdd
      - param String 1
- Action CommandAI
  - param Preset Player01
  - param String 0
  - param String 0


## Start AI 03
- enabled: True
- category: [1] Mission Start
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Start_AI_03
- Condition OperatorCompareInteger
  - param Variable StartAI
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable StartAI
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable StartAI
      - param Preset OperatorAdd
      - param String 1
- Action CommandAI
  - param Preset Player01
  - param String 0
  - param String 0


## Arthas Exp 
- enabled: True
- category: [1] Mission Start
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Arthas
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
  - param String 4
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventHero_Level


## High Elf Retreat
- enabled: True
- category: [1] Mission Start
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0067
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Discovered
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0092
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Discovered
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0008
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Discovered


## High Efl Hide
- enabled: True
- category: [1] Mission Start
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player10
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Orange_Discovered


## Start the Timer
- enabled: True
- category: [13] Sylvanas Intro
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player07
      - param Preset InclusionInclude
  - param Preset OperatorLessEq
  - param String 0
- Action StartTimerBJ
  - param Variable SylvanasTimer
  - param Preset PeriodicOptionOneTime
  - param String 15.00
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player07
  - param Preset PlayerUnitEventDeath


## Timer Safety
- enabled: True
- category: [13] Sylvanas Intro
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
  - param Variable gg_trg_Timer_Safety
- Action StartTimerBJ
  - param Variable SylvanasTimer
  - param Preset PeriodicOptionOneTime
  - param String 15.00
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Safety_Sylvanas01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Safety_Sylvanas02
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Safety_Sylvanas03


## Region Follow Arthas
- enabled: True
- category: [13] Sylvanas Intro
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action MoveRectToLoc
  - param Variable gg_rct_Arthas_Region_Follow
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action ForGroup
  - param Variable SylvanasAttackGroup
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAttack
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Arthas_Region_Follow
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
- Action MoveRectToLoc
  - param Variable gg_rct_Arthas_Region_Follow
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GroupPickRandomUnit
        - Function GroupPickRandomUnit
          - param Function GetUnitsOfPlayerMatching
            - Function GetUnitsOfPlayerMatching
              - param Preset Player03
              - param Function 
                - Condition OperatorCompareBoolean
                  - param Function IsUnitAliveBJ
                    - Function IsUnitAliveBJ
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param String true
- Action ForGroup
  - param Variable SylvanasAttackGroup
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAttack
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Arthas_Region_Follow
- Event TriggerRegisterTimerEventPeriodic
  - param String 2


## Timer Expires Sylvanas
- enabled: True
- category: [13] Sylvanas Intro
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action EnableTrigger
  - param Variable gg_trg_Region_Follow_Arthas
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable SylvanasTimer


## Sylvanas Dialogue QUE
- enabled: True
- category: [13] Sylvanas Intro
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
  - param Variable gg_trg_Sylvanas_Dialogue
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
  - param String 900.00
  - param Variable gg_unit_Hvwd_0090


## Sylvanas Dialogue
- enabled: True
- category: [13] Sylvanas Intro
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
- Action SetVariable
  - param Variable SylvanasPoint
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Sylvanas
- Action SmartCameraPanBJ
  - param Preset Player03
  - param Variable SylvanasPoint
  - param String 0.5
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Variable SylvanasPoint
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Sylvanas
  - param String TRIGSTR_132
  - param Variable gg_snd_U03ASylvanas12
  - param String TRIGSTR_133
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
      - param String TRIGSTR_179
      - param Variable gg_snd_U03AArthas13
      - param String TRIGSTR_180
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
          - param Variable Sylvanas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Sylvanas
      - param String TRIGSTR_229
      - param Variable gg_snd_U03BSylvanas14
      - param String TRIGSTR_230
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 10.00
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Sylvanas Dead
- enabled: True
- category: [13] Sylvanas Intro
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable SylvanasAttackGroup
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable SylvanasAttackGroup
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_NecroTimer
  - param Function DoNothing
    - Action DoNothing
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetDyingUnit
        - Function GetDyingUnit
      - param Variable SylvanasAttackGroup
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## Sylvanas Killed
- enabled: True
- category: [13] Sylvanas Intro
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
  - param Variable Sylvanas
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Sylvanas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action StopSoundBJ
      - param Variable gg_snd_U03ASylvanas12
      - param Preset FadeDontDont
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Sylvanas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action StopSoundBJ
      - param Variable gg_snd_U03BSylvanas14
      - param Preset FadeDontDont
  - param Function DoNothing
    - Action DoNothing
- Action DisableTrigger
  - param Variable gg_trg_Region_Follow_Arthas


## NecroTimer
- enabled: True
- category: [13] Sylvanas Intro
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StartTimerBJ
  - param Variable NecroTimer
  - param Preset PeriodicOptionOneTime
  - param String 10.00


## Orange Reveal
- enabled: True
- category: [19] Hidden Tree Entrance
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Orange_Discovered
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action EnableTrigger
  - param Variable gg_trg_Orange_Blacken
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Town_Vis
  - param String 650.00
- Action SetVariable
  - param Variable OrangeReveal
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_06_Gnoll_Camp_01_Vis
  - param String 400.00
- Action SetVariable
  - param Variable GnollCampVis01
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action DestroyFogModifier
  - param Variable GnollCampVis01
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Town_Vis
  - param String 4.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Town_Vis
- Action CommentString
  - param String ----------
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action CreateFogModifierRadiusLocBJ
      - param Preset EnabledDisabledEnabled
      - param Preset Player03
      - param Preset FogStateVisible
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Purple_Vis
      - param String 650.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action DestroyFogModifier
      - param Function GetLastCreatedFogModifier
        - Function GetLastCreatedFogModifier
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Purple_Vis
      - param String 4.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Purple_Vis
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String -
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action CreateFogModifierRadiusLocBJ
      - param Preset EnabledDisabledEnabled
      - param Preset Player03
      - param Preset FogStateVisible
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Pink_Vis
      - param String 650.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action DestroyFogModifier
      - param Function GetLastCreatedFogModifier
        - Function GetLastCreatedFogModifier
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Pink_Vis
      - param String 4.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Pink_Vis
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String ----------
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_HINT
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Preset UnitTypeGround
  - param Preset OperatorEqualENE
  - param String true


## Orange Blacken
- enabled: True
- category: [19] Hidden Tree Entrance
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_Orange_Discovered
- Action DestroyFogModifier
  - param Variable OrangeReveal
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectMatching
        - Function GetUnitsInRectMatching
          - param Variable gg_rct_Orange_Discovered
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
                  - param Preset Player03
  - param Preset OperatorLessEq
  - param String 0
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_Orange_Discovered
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Purple Reveal
- enabled: True
- category: [19] Hidden Tree Entrance
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action EnableTrigger
  - param Variable gg_trg_Purple_Blacken
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Purple_Vis
  - param String 650.00
- Action SetVariable
  - param Variable PurpleReveal
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Purple_Vis
  - param String 4.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Purple_Vis
- Action CommentString
  - param String ----------
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action CreateFogModifierRadiusLocBJ
      - param Preset EnabledDisabledEnabled
      - param Preset Player03
      - param Preset FogStateVisible
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Orange_Town_Vis
      - param String 650.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action DestroyFogModifier
      - param Function GetLastCreatedFogModifier
        - Function GetLastCreatedFogModifier
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Orange_Town_Vis
      - param String 4.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Orange_Town_Vis
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String -
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action CreateFogModifierRadiusLocBJ
      - param Preset EnabledDisabledEnabled
      - param Preset Player03
      - param Preset FogStateVisible
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Pink_Vis
      - param String 650.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action DestroyFogModifier
      - param Function GetLastCreatedFogModifier
        - Function GetLastCreatedFogModifier
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Pink_Vis
      - param String 4.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Pink_Vis
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String ----------
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_HINT
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Preset UnitTypeGround
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Purple_Discovered


## Purple Blacken
- enabled: True
- category: [19] Hidden Tree Entrance
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectMatching
        - Function GetUnitsInRectMatching
          - param Variable gg_rct_Purple_Discovered
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
                  - param Preset Player03
  - param Preset OperatorLessEq
  - param String 0
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_Purple_Discovered
- Action DestroyFogModifier
  - param Variable PurpleReveal
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_Purple_Discovered
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Pink Reveal
- enabled: True
- category: [19] Hidden Tree Entrance
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action EnableTrigger
  - param Variable gg_trg_Pink_Blacken
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Pink_Vis
  - param String 600.00
- Action SetVariable
  - param Variable PinkReveal
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Pink_Vis
  - param String 2.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Pink_Vis
- Action CommentString
  - param String ----------
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action CreateFogModifierRadiusLocBJ
      - param Preset EnabledDisabledEnabled
      - param Preset Player03
      - param Preset FogStateVisible
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Orange_Town_Vis
      - param String 650.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action DestroyFogModifier
      - param Function GetLastCreatedFogModifier
        - Function GetLastCreatedFogModifier
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Orange_Town_Vis
      - param String 4.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Orange_Town_Vis
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String -
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action CreateFogModifierRadiusLocBJ
      - param Preset EnabledDisabledEnabled
      - param Preset Player03
      - param Preset FogStateVisible
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Purple_Vis
      - param String 650.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action DestroyFogModifier
      - param Function GetLastCreatedFogModifier
        - Function GetLastCreatedFogModifier
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Purple_Vis
      - param String 4.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable HINT
      - param Preset OperatorEqual
      - param String 0
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Preset Player03
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Purple_Vis
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String ----------
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_HINT
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Preset UnitTypeGround
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Pink_Discovered


## Pink Blacken
- enabled: True
- category: [19] Hidden Tree Entrance
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectMatching
        - Function GetUnitsInRectMatching
          - param Variable gg_rct_Pink_Discovered
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
                  - param Preset Player03
  - param Preset OperatorLessEq
  - param String 0
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_Pink_Discovered
- Action DestroyFogModifier
  - param Variable PinkReveal
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_Pink_Discovered
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Creep Reveal 01
- enabled: True
- category: [19] Hidden Tree Entrance
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Creep_Discovered_01
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Creep_Vis_01
  - param String 600.00
- Action SetVariable
  - param Variable CreepReveal01
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PlaySoundBJ
  - param Variable gg_snd_SecretFound
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Creep_Vis_01
  - param String 2.00
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Preset UnitTypeGround
  - param Preset OperatorEqualENE
  - param String true


## Creep Blacken 01
- enabled: True
- category: [19] Hidden Tree Entrance
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectMatching
        - Function GetUnitsInRectMatching
          - param Variable gg_rct_Creep_Discovered_01
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
                  - param Preset Player03
  - param Preset OperatorLessEq
  - param String 0
- Action DestroyFogModifier
  - param Variable CreepReveal01
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_Creep_Discovered_01
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_Creep_Discovered_01
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Creep Reveal 02
- enabled: True
- category: [19] Hidden Tree Entrance
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Creep_Discovered_02
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Creep_Vis_02
  - param String 600.00
- Action SetVariable
  - param Variable CreepReveal02
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PlaySoundBJ
  - param Variable gg_snd_SecretFound
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Creep_Vis_02
  - param String 2.00
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Preset UnitTypeGround
  - param Preset OperatorEqualENE
  - param String true


## Creep Blacken 02
- enabled: True
- category: [19] Hidden Tree Entrance
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DestroyFogModifier
  - param Variable CreepReveal02
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_Creep_Discovered_02
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectMatching
        - Function GetUnitsInRectMatching
          - param Variable gg_rct_Creep_Discovered_02
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
                  - param Preset Player03
  - param Preset OperatorLessEq
  - param String 0
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_Creep_Discovered_02
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## HINT
- enabled: True
- category: [19] Hidden Tree Entrance
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
  - param Variable HINT
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable HINT
      - param Preset OperatorAdd
      - param String 1
- Action TriggerSleepAction
  - param String 0.50
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeAlwaysHint
  - param String TRIGSTR_045
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Condition OperatorCompareInteger
  - param Variable HINT
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false


## No Sleep
- enabled: True
- category: [11] Gnoll Camp
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String ----------------------------------------------------------------------------------------------------------------
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_ngnv_0193
  - param Preset SleepWakeOptionWake
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_ngna_0200
  - param Preset SleepWakeOptionWake
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_ngna_0199
  - param Preset SleepWakeOptionWake
- Event MapInitializationEvent


## Gnoll Camp 01 QUE
- enabled: True
- category: [11] Gnoll Camp
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Creep
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable Creep
      - param Preset OperatorAdd
      - param String 1
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Gnoll_Camp_01
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareInteger
  - param Variable Creep
  - param Preset OperatorEqual
  - param String 0
- Event TriggerRegisterUnitInRangeSimple
  - param String 500.00
  - param Variable gg_unit_ngnv_0193


## Gnoll Camp 01
- enabled: True
- category: [11] Gnoll Camp
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
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_06_Gnoll_Camp_01_Vis
  - param String 512
- Action SetVariable
  - param Variable GnollCampVis01
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Necromancer01
  - param String TRIGSTR_000
  - param Variable gg_snd_U03ANecromancer31
  - param String TRIGSTR_001
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action DestroyFogModifier
  - param Variable GnollCampVis01
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngnv_0193
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_06_Gnoll_Camp_01_Attack
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngna_0200
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_06_Gnoll_Camp_01_Attack
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngna_0199
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_06_Gnoll_Camp_01_Attack
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Gnoll Camp 02 QUE
- enabled: True
- category: [11] Gnoll Camp
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Creep
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable Creep
      - param Preset OperatorAdd
      - param String 1
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Gnoll_Camp_02
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareInteger
  - param Variable Creep
  - param Preset OperatorEqual
  - param String 0
- Event TriggerRegisterUnitInRangeSimple
  - param String 500.00
  - param Variable gg_unit_ngnv_0210


## Gnoll Camp 02
- enabled: True
- category: [11] Gnoll Camp
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
  - param Variable Necromancer01
  - param String TRIGSTR_002
  - param Variable gg_snd_U03ANecromancer31
  - param String TRIGSTR_003
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Gnoll Camp 03 QUE
- enabled: True
- category: [11] Gnoll Camp
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Creep
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable Creep
      - param Preset OperatorAdd
      - param String 1
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Gnoll_Camp_03
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareInteger
  - param Variable Creep
  - param Preset OperatorEqual
  - param String 0
- Event TriggerRegisterUnitInRangeSimple
  - param String 500.00
  - param Variable gg_unit_ngnv_0192


## Gnoll Camp 03
- enabled: True
- category: [11] Gnoll Camp
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
  - param Variable Necromancer01
  - param String TRIGSTR_012
  - param Variable gg_snd_U03ANecromancer31
  - param String TRIGSTR_013
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Gnoll Camp 04 QUE
- enabled: True
- category: [11] Gnoll Camp
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Creep
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable Creep
      - param Preset OperatorAdd
      - param String 1
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Gnoll_Camp_04
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareInteger
  - param Variable Creep
  - param Preset OperatorEqual
  - param String 0
- Event TriggerRegisterUnitInRangeSimple
  - param String 500.00
  - param Variable gg_unit_ngnv_0213


## Gnoll Camp 04
- enabled: True
- category: [11] Gnoll Camp
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
  - param Variable Necromancer01
  - param String TRIGSTR_018
  - param Variable gg_snd_U03ANecromancer31
  - param String TRIGSTR_046
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Discover Orange 01 QUE
- enabled: True
- category: [18] Orange Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitInRangeSimple
  - param String 650.00
  - param Variable gg_unit_nhef_0094
- Action SetVariable
  - param Variable Orange
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable Orange
      - param Preset OperatorAdd
      - param String 1
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Discover_Orange_01
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareInteger
  - param Variable Orange
  - param Preset OperatorEqual
  - param String 0


## Discover Orange 01
- enabled: True
- category: [18] Orange Town
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
- Action CommentString
  - param String ----------
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nhef_0094
  - param String TRIGSTR_142
  - param Variable gg_snd_U03BHighElfVillager31
  - param String TRIGSTR_143
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0094
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0135
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0134
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0099
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_01
- Action CommentString
  - param String ---------
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_01
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_02
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_02_A
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_03
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_04
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_04_A
- Action CommentString
  - param String ---------
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0030
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0095
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0098
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0100
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_02
- Action CommentString
  - param String ---------
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Discover Orange 02 QUE
- enabled: True
- category: [18] Orange Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable Orange
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable Orange
      - param Preset OperatorAdd
      - param String 1
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Discover_Orange_02
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareInteger
  - param Variable Orange
  - param Preset OperatorEqual
  - param String 0
- Event TriggerRegisterUnitInRangeSimple
  - param String 650.00
  - param Variable gg_unit_nhef_0095


## Discover Orange 02
- enabled: True
- category: [18] Orange Town
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
- Action CommentString
  - param String ----------
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nhef_0094
  - param String TRIGSTR_144
  - param Variable gg_snd_U03BHighElfVillager31
  - param String TRIGSTR_145
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0094
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0135
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0134
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0099
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_01
- Action CommentString
  - param String ---------
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0030
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0095
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0098
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0100
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Orange_Elf_Hide_02
- Action CommentString
  - param String ---------
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_01
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_02
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_02_A
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_03
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_04
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_04_A
- Action CommentString
  - param String ---------
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Orange Town Wander 01
- enabled: True
- category: [18] Orange Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0135
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Orange_Town_Wander_01
- Event TriggerRegisterTimerEventPeriodic
  - param String 7.00


## Orange Town Wander 02
- enabled: True
- category: [18] Orange Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0134
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Orange_Town_Wander_02
- Event TriggerRegisterTimerEventPeriodic
  - param String 15.00


## Orange Town Wander 02 A
- enabled: True
- category: [18] Orange Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0099
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Orange_Town_Wander_02
- Event TriggerRegisterTimerEventPeriodic
  - param String 22.00


## Orange Town Wander 03
- enabled: True
- category: [18] Orange Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0030
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Orange_Town_Wander_03
- Event TriggerRegisterTimerEventPeriodic
  - param String 9.00


## Orange Town Wander 04
- enabled: True
- category: [18] Orange Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0098
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Orange_Town_Wander_04
- Event TriggerRegisterTimerEventPeriodic
  - param String 9.00


## Orange Town Wander 04 A
- enabled: True
- category: [18] Orange Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0098
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Orange_Town_Wander_04
- Event TriggerRegisterTimerEventPeriodic
  - param String 19.00


## Orange Town Hide 01
- enabled: True
- category: [18] Orange Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action CommentString
  - param String ----------
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_01
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_02
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_02_A
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Variable OrangeElf01
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Orange_Elf_Hide_01


## Orange Town Hide 02
- enabled: True
- category: [18] Orange Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action CommentString
  - param String ----------
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_03
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_04
- Action DisableTrigger
  - param Variable gg_trg_Orange_Town_Wander_04_A
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Variable OrangeElf02
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Orange_Elf_Hide_02


## Discover Teal 01 QUE
- enabled: True
- category: [3] Teal Town
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
  - param Variable Teal
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable Teal
      - param Preset OperatorAdd
      - param String 1
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Discover_Teal_01
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Preset OperatorEqualENE
      - param Variable Arthas
  - param Function DoNothing
    - Action QueuedTriggerAddBJ
      - param Variable gg_trg_Discover_Teal_Arthas
      - param Preset CheckingIgnoringChecking
  - param Function DoNothing
    - Action DoNothing
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareInteger
  - param Variable Teal
  - param Preset OperatorEqual
  - param String 0
- Event TriggerRegisterUnitInRangeSimple
  - param String 650.00
  - param Variable gg_unit_nhef_0229


## Discover Teal 01
- enabled: True
- category: [3] Teal Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0082
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Teal_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0103
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Teal_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0229
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Teal_Elf_Hide_02
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0228
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Teal_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0104
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Teal_Elf_Hide_02
- Action CommentString
  - param String ----------
- Action DisableTrigger
  - param Variable gg_trg_Teal_Town_Wander_01
- Action DisableTrigger
  - param Variable gg_trg_Teal_Town_Wander_01_A
- Action DisableTrigger
  - param Variable gg_trg_Teal_Town_Wander_02


## Discover Teal 02 QUE
- enabled: True
- category: [3] Teal Town
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
  - param Variable Teal
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable Teal
      - param Preset OperatorAdd
      - param String 1
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Discover_Teal_02
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Preset OperatorEqualENE
      - param Variable Arthas
  - param Function DoNothing
    - Action QueuedTriggerAddBJ
      - param Variable gg_trg_Discover_Teal_Arthas
      - param Preset CheckingIgnoringChecking
  - param Function DoNothing
    - Action DoNothing
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareInteger
  - param Variable Teal
  - param Preset OperatorEqual
  - param String 0
- Event TriggerRegisterUnitInRangeSimple
  - param String 650.00
  - param Variable gg_unit_nhef_0104


## Discover Teal 02
- enabled: True
- category: [3] Teal Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0082
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Teal_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0103
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Teal_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0229
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Teal_Elf_Hide_02
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0228
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Teal_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0104
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Teal_Elf_Hide_02
- Action CommentString
  - param String ----------
- Action DisableTrigger
  - param Variable gg_trg_Teal_Town_Wander_01
- Action DisableTrigger
  - param Variable gg_trg_Teal_Town_Wander_01_A
- Action DisableTrigger
  - param Variable gg_trg_Teal_Town_Wander_02


## Discover Teal Arthas
- enabled: True
- category: [3] Teal Town
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
- Action CommentString
  - param String ----------
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nhef_0104
  - param String TRIGSTR_148
  - param Variable gg_snd_U03BHighElfVillager32
  - param String TRIGSTR_149
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action CommentString
  - param String ----------
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Teal Town Wander 01
- enabled: True
- category: [3] Teal Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0082
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Teal_Town_Wander_01
- Event TriggerRegisterTimerEventPeriodic
  - param String 7.00


## Teal Town Wander 01 A
- enabled: True
- category: [3] Teal Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0103
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Teal_Town_Wander_01
- Event TriggerRegisterTimerEventPeriodic
  - param String 16.00


## Teal Town Wander 02
- enabled: True
- category: [3] Teal Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0228
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Teal_Town_Wander_02
- Event TriggerRegisterTimerEventPeriodic
  - param String 11.00


## Teal Town Hide 01
- enabled: True
- category: [3] Teal Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Variable TealElf01
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Teal_Elf_Hide_02


## Teal Town Hide 02
- enabled: True
- category: [3] Teal Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Variable TealElf02
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Teal_Elf_Hide_02


## Teal Lumber
- enabled: True
- category: [3] Teal Town
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
  - param String 500.00


## Teal Gold
- enabled: True
- category: [3] Teal Town
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
  - param Preset LimitOpLessThanOrEqual
  - param String 500.00


## Discover Yellow 01 QUE
- enabled: True
- category: [8] Yellow Town
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
  - param String ----------
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Preset OperatorEqualENE
      - param Variable Arthas
  - param Function DoNothing
    - Action QueuedTriggerAddBJ
      - param Variable gg_trg_Discover_Yellow_Arthas
      - param Preset CheckingIgnoringChecking
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0122
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Yellow_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0125
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Yellow_Elf_Hide_02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0123
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Yellow_Elf_Hide_02
- Action CommentString
  - param String ----------
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0244
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Yellow_Elf_Hide_01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0242
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Yellow_Elf_Hide_01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0243
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Yellow_Elf_Hide_01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0257
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Yellow_Elf_Hide_01
- Action CommentString
  - param String ----------
- Action DisableTrigger
  - param Variable gg_trg_Yellow_Town_Wander_01
- Action DisableTrigger
  - param Variable gg_trg_Yellow_Town_Wander_01_A
- Action DisableTrigger
  - param Variable gg_trg_Yellow_Town_Wander_01_B
- Action DisableTrigger
  - param Variable gg_trg_Yellow_Town_Wander_02
- Action DisableTrigger
  - param Variable gg_trg_Yellow_Town_Wander_02_A
- Action DisableTrigger
  - param Variable gg_trg_Yellow_Town_Wander_03
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterUnitInRangeSimple
  - param String 600.00
  - param Variable gg_unit_nhef_0257


## Discover Yellow Arthas
- enabled: True
- category: [8] Yellow Town
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
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nhef_0257
  - param String TRIGSTR_138
  - param Variable gg_snd_U03BHighElfVillager32
  - param String TRIGSTR_139
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Yellow Town Wander 01
- enabled: True
- category: [8] Yellow Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0243
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Yellow_Town_Wander_01
- Event TriggerRegisterTimerEventPeriodic
  - param String 7.00


## Yellow Town Wander 01 A
- enabled: True
- category: [8] Yellow Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0242
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Yellow_Town_Wander_01
- Event TriggerRegisterTimerEventPeriodic
  - param String 16.00


## Yellow Town Wander 01 B
- enabled: True
- category: [8] Yellow Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0244
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Yellow_Town_Wander_01
- Event TriggerRegisterTimerEventPeriodic
  - param String 21.00


## Yellow Town Wander 02
- enabled: True
- category: [8] Yellow Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0122
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Yellow_Town_Wander_02
- Event TriggerRegisterTimerEventPeriodic
  - param String 11.00


## Yellow Town Wander 02 A
- enabled: True
- category: [8] Yellow Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhem_0125
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Yellow_Town_Wander_02
- Event TriggerRegisterTimerEventPeriodic
  - param String 16.00


## Yellow Town Wander 03
- enabled: True
- category: [8] Yellow Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nhef_0123
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Yellow_Town_Wander_03
- Event TriggerRegisterTimerEventPeriodic
  - param String 9.00


## Yellow Town Hide 01
- enabled: True
- category: [8] Yellow Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Variable YellowElf01
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Yellow_Elf_Hide_01


## Yellow Town Hide 02
- enabled: True
- category: [8] Yellow Town
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Variable YellowElf02
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Yellow_Elf_Hide_02


## Yellow Lumber
- enabled: True
- category: [8] Yellow Town
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
  - param String 500.00


## Yellow Gold
- enabled: True
- category: [8] Yellow Town
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
  - param String 500.00


## Night Elf Base Destroyed
- enabled: True
- category: [10] Blue Town Elfgate
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable ElfBaseDestroyed
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Elfgate_Cinematic
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
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
                  - param String hcas
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
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
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
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
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
                  - param String nheb
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
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
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
                  - param String hars
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
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## Gate Objective QUE
- enabled: True
- category: [10] Blue Town Elfgate
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
  - param Preset Player03
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Preset UnitTypeGround
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable ElfBaseDestroyed
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Gate_Objective
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Elfgate_Check


## Gate Objective
- enabled: True
- category: [10] Blue Town Elfgate
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
  - param Preset QuestMessageTypeAlwaysHint
  - param String TRIGSTR_231
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Discover the Gate QUE
- enabled: True
- category: [10] Blue Town Elfgate
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
  - param Variable gg_trg_Discover_the_Gate
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Elfgate_Discovered_01


## Discover the Gate
- enabled: True
- category: [10] Blue Town Elfgate
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
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player03
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Elfgate_Vis
  - param String 800.00
- Action SetVariable
  - param Variable ElfGateVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action DestroyFogModifier
  - param Variable ElfGateVis
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
      - param String TRIGSTR_199
      - param Variable gg_snd_U03BArthas16
      - param String TRIGSTR_200
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
          - param Variable Sylvanas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Sylvanas
      - param String TRIGSTR_219
      - param Variable gg_snd_U03BSylvanas17
      - param String TRIGSTR_220
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Elfgate_Vis
  - param String 4.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_01Elfgate_Vis
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CommentString
  - param String -----Guard Entrance-----
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hhes
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Reinforcement_01_A
  - param String 10.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Discovered_01
- Action TriggerSleepAction
  - param String 0.50
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hhes
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Reinforcement_01_A
  - param String 10.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Discovered_01
- Action TriggerSleepAction
  - param String 0.50
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nhea
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Reinforcement_02_A
  - param String 10.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Discovered_01
- Action TriggerSleepAction
  - param String 0.50
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nhea
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Reinforcement_02_A
  - param String 10.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Discovered_01


## Blue Lumber
- enabled: True
- category: [10] Blue Town Elfgate
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
  - param String 500.00


## Blue Gold
- enabled: True
- category: [10] Blue Town Elfgate
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
  - param String 500.00


## Necromancer QUE
- enabled: True
- category: [5] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable NecroTimer
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Necromancer_Hint
  - param Preset CheckingIgnoringChecking


## Necromancer Hint
- enabled: True
- category: [5] Hints
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
  - param Preset QuestMessageTypeUnitAvailable
  - param String TRIGSTR_067
- Action TriggerSleepAction
  - param String 10.00
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Unsummon QUE
- enabled: True
- category: [5] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 2
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Unsummon_Hint
  - param Preset CheckingIgnoringChecking
- Condition GetBooleanAnd
  - param Function 
    - Condition OperatorCompareInteger
      - param Function GetPlayerState
        - Function GetPlayerState
          - param Preset Player03
          - param Preset PlayerStateGold
      - param Preset OperatorLessEq
      - param String 299
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Preset Player03
              - param String ugol
      - param Preset OperatorLessEq
      - param String 0


## Unsummon Hint
- enabled: True
- category: [5] Hints
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
  - param String TRIGSTR_068
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Expansion QUE
- enabled: True
- category: [5] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventPeriodic
  - param String 2
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player03
          - param String ugol
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareInteger
  - param Variable GoldMine
  - param Preset OperatorEqual
  - param String 1
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Expansion_Hint
  - param Preset CheckingIgnoringChecking


## Expansion Hint
- enabled: True
- category: [5] Hints
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
  - param String TRIGSTR_069
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Expansion Check
- enabled: True
- category: [5] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable GoldMine
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable GoldMine
      - param Preset OperatorAdd
      - param String 1
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructingStructure
        - Function GetConstructingStructure
  - param Preset OperatorEqualENE
  - param String ugol
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Start


## Combat Start
- enabled: True
- category: [5] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StartTimerBJ
  - param Variable InCombatTimer
  - param Preset PeriodicOptionOneTime
  - param Variable InCombatDelay
- Action SetVariable
  - param Variable InCombat
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventAttacked
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player02
  - param Preset PlayerUnitEventAttacked
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player04
  - param Preset PlayerUnitEventAttacked
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player05
  - param Preset PlayerUnitEventAttacked
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNA
  - param Preset PlayerUnitEventAttacked


## Combat Over
- enabled: True
- category: [5] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable InCombat
  - param String false
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable InCombatTimer


## Meat Wagon Dies
- enabled: True
- category: [5] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action EnableTrigger
  - param Variable gg_trg_Repair_QUE
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetDyingUnit
        - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param String umtw
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Repair QUE
- enabled: True
- category: [5] Hints
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Repair
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareBoolean
  - param Variable InCombat
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterTimerEventPeriodic
  - param String 1.00


## Repair
- enabled: True
- category: [5] Hints
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
  - param Variable gg_trg_Meat_Wagon_Dies
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_028
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Elfgate Cinematic Cancel
- enabled: True
- category: [4] Ending Cinematic Elfgate
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
  - param Variable ElfgateCancel
  - param String true
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Undead_03_Save
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
  - param String -----Start Next Mission-----
- Action TriggerExecute
  - param Variable gg_trg_Victory


## Elfgate Cinematic
- enabled: True
- category: [4] Ending Cinematic Elfgate
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
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Undead_03_Save
- Action SetSkyModel
  - param Preset SkyModelSky04
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action ClearSelection
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action CommentString
  - param String ---------
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
- Action CommentString
  - param String ---------
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_183
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2.50
- Action CommentString
  - param String Music Theme
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action KillDestructable
  - param Variable gg_dest_LTe4_0021
- Action CommentString
  - param String HIDING
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
      - param Preset Player02
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
      - param Preset Player04
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
      - param Preset Player10
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset PlayerNA
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action CommentString
  - param String ----------
- Action SetPlayerAllianceStateBJ
  - param Preset Player01
  - param Preset Player03
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Preset Player03
  - param Preset AllianceSettingAlliedVision
- Action CommentString
  - param String ----------
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset PlayerNA
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset Player03
  - param Preset Player01
  - param Preset AllianceSettingAlliedVision
- Action CommentString
  - param String ----------
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player03
  - param Function DoNothing
    - Action UnitRemoveBuffsBJ
      - param Preset BuffTypeAll
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player01
  - param Function DoNothing
    - Action UnitRemoveBuffsBJ
      - param Preset BuffTypeAll
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_Elfgate_Cinematic_Cancel
- Action CommentString
  - param String -----Sylvanas-----
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Sylvanas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Sylvanas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_03Sylvanas_A
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action SetUnitPositionLocFacingBJ
      - param Variable Sylvanas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_03Sylvanas_A
      - param String 190.00
- Action ShowUnitShow
  - param Variable Sylvanas
- Action RemoveGuardPosition
  - param Variable Sylvanas
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nhea
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Reinforcement_01_A
  - param String 45.00
- Action SetVariable
  - param Variable RetreatUnit01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action RemoveGuardPosition
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hhes
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Reinforcement_02_A
  - param String 45.00
- Action SetVariable
  - param Variable RetreatUnit02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action RemoveGuardPosition
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CommentString
  - param String -----Arthas-----
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
          - param Variable gg_rct_Arthas_Ending_A
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action SetUnitPositionLocFacingBJ
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Arthas_Ending_A
      - param String 80.00
- Action SetUnitFacingTimed
  - param Variable Arthas
  - param String 80.00
  - param String 0.00
- Action ShowUnitShow
  - param Variable Arthas
- Action CommentString
  - param String PAUSING
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action CommentString
  - param String -----Camera-----
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Elfgate_03
  - param Preset Player03
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Sylvanas
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ElfgateCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Sylvanas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Sylvanas_B
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ElfgateCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingTimed
  - param Variable Sylvanas
  - param String 270.00
  - param String 0.30
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Elfgate_04
  - param Preset Player03
  - param String 8.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Sylvanas
  - param String TRIGSTR_029
  - param Variable gg_snd_U03BSylvanas18
  - param String TRIGSTR_051
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 3.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ElfgateCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable RetreatUnit01
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable RetreatUnit02
- Action IssuePointOrderLoc
  - param Variable RetreatUnit01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Reinforcement_01_B
- Action IssuePointOrderLoc
  - param Variable RetreatUnit02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Reinforcement_02_B
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ElfgateCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Sylvanas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_03Sylvanas_C
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Ending_A_Copy
- Action WaitForSoundBJ
  - param Variable gg_snd_U03BSylvanas18
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ElfgateCancel
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
  - param String TRIGSTR_064
  - param Variable gg_snd_U03BArthas19
  - param String TRIGSTR_065
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ElfgateCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable Arthas
  - param String Spell - 1
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ElfgateCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Reinforcement_01_A
  - param String 45.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Reinforcement_01_B
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Preset Player03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Reinforcement_01_A
  - param String 45.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Elfgate_Reinforcement_01_B
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ElfgateCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_U03BArthas19
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ElfgateCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DisableTrigger
  - param Variable gg_trg_Elfgate_Cinematic_Cancel
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 2
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ElfgateCancel
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String -----Start Next Mission-----
- Action TriggerExecute
  - param Variable gg_trg_Victory


## Elf Stopper 01
- enabled: True
- category: [4] Ending Cinematic Elfgate
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssueImmediateOrder
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset UnitOrderHoldPosition
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Elfgate_Reinforcement_01_B


## Elf Stopper 02
- enabled: True
- category: [4] Ending Cinematic Elfgate
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssueImmediateOrder
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset UnitOrderHoldPosition
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Elfgate_Reinforcement_02_B


## Elf Stopper 03
- enabled: True
- category: [4] Ending Cinematic Elfgate
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssueImmediateOrder
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset UnitOrderHoldPosition
- Action SetUnitFacingTimed
  - param Variable gg_unit_Hvwd_0090
  - param String 220.00
  - param String 0.30
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Sylvanas
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_03Sylvanas_A


## Change Defeat conditions
- enabled: True
- category: [15] Victory Defeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Finish
- Action CommentString
  - param String -----Enable Defeat Conditions------
- Action EnableTrigger
  - param Variable gg_trg_Undead_Base_Dead
- Action DisableTrigger
  - param Variable gg_trg_Undead_Units_Dead


## Undead Base Dead
- enabled: True
- category: [15] Victory Defeat
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
  - param Variable GAMEOVER
  - param String true
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_181
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CustomDefeatBJ
  - param Preset Player03
  - param String TRIGSTR_049
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player03
      - param Preset InclusionInclude
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Undead Units Dead
- enabled: True
- category: [15] Victory Defeat
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
  - param Variable GAMEOVER
  - param String true
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_156
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CustomDefeatBJ
  - param Preset Player03
  - param String TRIGSTR_030
- Condition OperatorCompareInteger
  - param Function GetPlayerUnitCount
    - Function GetPlayerUnitCount
      - param Preset Player03
      - param Preset InclusionInclude
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable GAMEOVER
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Victory Cheat
- enabled: True
- category: [15] Victory Defeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Undead_03_Save
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Victory
- Event TriggerRegisterPlayerEventVictory
  - param Preset Player03


## Defeat Cheat
- enabled: True
- category: [15] Victory Defeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Preset Player03
  - param String TRIGSTR_182
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player03


## Undead 03 Save
- enabled: True
- category: [15] Victory Defeat
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
  - param String Store hero data for the next level(s)
- Action StoreUnitBJ
  - param Variable Arthas
  - param String Arthas
  - param String Undead04
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SaveGameCacheBJ
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action CommentString
  - param String Enable the next level in the glue screens
- Action SetMissionAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset MissionIndexU05


## Victory
- enabled: True
- category: [15] Victory Defeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String -----Start Next Mission-----
- Action SetNextLevelBJ
  - param String Maps\Campaign\Undead04.w3m
- Action CustomVictoryBJ
  - param Preset Player03
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse

