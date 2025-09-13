version = TFT

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 14 | Archipelago | False |
| 3 | Start Game | False |
| 1 | Intro Cinematic | False |
| 12 | EstablishBaseQuest | False |
| 7 | Blademaster Cinematic | False |
| 13 | AI Resources | False |
| 10 | Uther | False |
| 11 | Crates | False |
| 4 | Dwarves | False |
| 9 | Searinox | False |
| 8 | TriggerMurlocs | False |
| 6 | Blade Master | False |
| 0 | General Triggers | False |
| 5 | VictoryDefeat | False |
| 2 | Level Data | False |
| 15 | Orc Base | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| Arthas | unit | . | . |
| Uther | unit | . | . |
| Knight01 | unit | . | . |
| Horse01 | unit | . | . |
| Horse02 | unit | . | . |
| Dwarves | group | . | . |
| StartingBase01 | group | . | . |
| DragonVision | fogmodifier | . | . |
| IntroSkipped | boolean | . | false |
| IntroHorse01Removed | boolean | . | false |
| Blademaster | unit | . | . |
| DwarvenScout | unit | . | . |
| IntroHorse02Removed | boolean | . | false |
| VisibilityModifier01 | fogmodifier | . | . |
| VisibilityModifier02 | fogmodifier | . | . |
| Warlock | unit | . | . |
| Villagers | group | . | . |
| UnluckyFootman | unit | . | . |
| RandomVillager | unit | . | . |
| Searinox | unit | . | . |
| HeartofSearinox | item | . | . |
| UthersPosition | integer | . | . |
| UtherIsDefending | boolean | . | false |
| UtherTarget | unit | . | UnitNull |
| IntroCinematicDone | boolean | . | false |
| QuestSearinox | quest | . | . |
| QuestBlademaster | quest | . | . |
| QuestBase | quest | . | . |
| DwarvenBlacksmith | unit | . | . |
| QuestSearinoxRequirementSlay | questitem | . | . |
| QuestSearinoxRequirementReturn | questitem | . | . |
| MirrorImage | unit | . | . |
| BlademasterAudio | sound | . | . |
| Handler | unit | . | . |
| IntroHandlerRemoved | boolean | . | true |
| Crate01 | destructable | . | . |
| Crate02 | destructable | . | . |
| HasRedAIBegun | boolean | . | false |
| Lumber01 | unit | . | . |
| Lumber02 | unit | . | . |
| Gold01 | unit | . | UnitNull |
| Gold02 | unit | . | . |
| Gold03 | unit | . | . |
| Nightsound | sound | . | . |
| DaySound | sound | . | . |
| MirrorImageVision | fogmodifier | . | . |
| FeranorSteeltoe | unit | . | . |
| Skeleton01 | unit | . | . |
| Skeleton02 | unit | . | . |
| Skeleton03 | unit | . | . |
| Skeleton04 | unit | . | . |
| DwarfVision | fogmodifier | . | . |
| LocationOfGold01 | location | . | . |
| LocationOfGold02 | location | . | . |
| LocationOfGold03 | location | . | . |
| UnfortunateMan | unit | . | . |
| UnfortunateWoman | unit | . | . |
| Net01 | effect | . | . |
| Net02 | effect | . | . |
| Net03 | effect | . | . |
| StartingFootman01 | unit | . | . |
| StartingFootman02 | unit | . | . |
| StartingFootman03 | unit | . | . |
| TalkFeranor | effect | . | . |
| QuestBaseRequirementBarracks | questitem | . | . |
| QuestBaseRequirementFootmen | questitem | . | . |
| QuestBaseRequirementFarms | questitem | . | . |
| AAAP_Arthas | player | . | Player01 |
| AAAPG_Arthas | force | . | Force01 |
| BaseRequirement01 | boolean | . | false |
| BaseRequirement02 | boolean | . | false |
| BaseRequirement03 | boolean | . | false |
| P_Blackrock | player | . | Player00 |
| P_Blademaster | player | . | Player04 |
| TempBlademaster | unit | . | . |
| TempMirrorImage | unit | . | . |
| NumberOfFarms | integer | . | 0 |
| P_Blackrock2 | player | . | Player03 |
| P_Uther | player | . | Player09 |
| P_Dwarves | player | . | Player02 |
| P_Villagers | player | . | Player08 |
| FootmenLeaderboard | leaderboard | . | . |
| FootmenTrained | integer | . | 0 |
| InCinematic | boolean | . | false |
| VictoryCondition01 | boolean | . | false |
| VictoryCondition02 | boolean | . | false |
| BlademasterSkipped | boolean | . | false |
| BladeImageRemoved | boolean | . | true |
| VictorySkipped | boolean | . | false |
| QuestBladeRequirementSlay | questitem | . | . |
| BlademasterQuestRecieved | boolean | . | false |
| BlademasterHasBeenSlain | boolean | . | false |
| SearinoxQuestFailed | boolean | . | false |
| BuildingsUnderConstruction | group | . | . |
| Sacrifice01 | boolean | . | false |
| Sacrifice02 | boolean | . | false |
| Sacrifice03 | boolean | . | false |
| Net01Removed | boolean | . | false |
| Net02Removed | boolean | . | false |
| Net03Removed | boolean | . | false |
| SelectionGroup | group | . | . |
| GameOver | boolean | . | false |
| HideUnitsGroup | group | . | . |
| BlademasterToRemove | unit | . | . |
| CameraPosition | location | . | . |
| BlacksmithDestroyed | boolean | . | false |
| AltarHintTimer | timer | . | . |
| orc_buildings_killed | integer | . | . |
| footmen_trained_unit_name | string | . | Footmen |

# Triggers
## fileio
- enabled: True
- category: [14] Archipelago
- starts off: False
- is custom text: True
- run on map init: True
```description

```
### Functions


## map_config
- enabled: True
- category: [14] Archipelago
- starts off: False
- is custom text: True
- run on map init: True
```description

```
### Functions


## status
- enabled: True
- category: [14] Archipelago
- starts off: False
- is custom text: True
- run on map init: True
```description

```
### Functions


## heroes
- enabled: True
- category: [14] Archipelago
- starts off: False
- is custom text: True
- run on map init: True
```description

```
### Functions


## item_locations
- enabled: True
- category: [14] Archipelago
- starts off: False
- is custom text: True
- run on map init: True
```description

```
### Functions


## debug
- enabled: True
- category: [14] Archipelago
- starts off: False
- is custom text: True
- run on map init: True
```description

```
### Functions


## zoom
- enabled: True
- category: [14] Archipelago
- starts off: False
- is custom text: True
- run on map init: True
```description

```
### Functions


## AP Load Arthas
- enabled: True
- category: [14] Archipelago
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
- Action CreateNUnitsAtLoc
  - param String 1
  - param String Hart
  - param Preset Player01
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
  - param String 2
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillHolyBolt
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDevotionAura
- Action CustomScriptCode
  - param String set hero_abil_1[0] = 'AHhb'
- Action CustomScriptCode
  - param String set hero_abil_2[0] = 'AHds'
- Action CustomScriptCode
  - param String set hero_abil_3[0] = 'AHad'
- Action CustomScriptCode
  - param String set hero_abil_4[0] = 'AHre'


## Map Initialization
- enabled: True
- category: [3] Start Game
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetCampaignMenuRaceBJ
  - param Preset CampaignIndexH
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro01
  - param Preset Player01
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 3.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CommentString
  - param String Set Variables
- Action SetVariable
  - param Variable FeranorSteeltoe
  - param Variable gg_unit_hC02_0049
- Action SetUnitInvulnerable
  - param Variable FeranorSteeltoe
  - param Preset InvulnerabilityInvulnerable
- Action SetVariable
  - param Variable DwarvenBlacksmith
  - param Variable gg_unit_hbla_0012
- Action SetVariable
  - param Variable Dwarves
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Dwarves
- Action GroupRemoveUnitSimple
  - param Variable FeranorSteeltoe
  - param Variable Dwarves
- Action SetVariable
  - param Variable DwarvenScout
  - param Variable gg_unit_hrif_0017
- Action SetVariable
  - param Variable Uther
  - param Variable gg_unit_Huth_0002
- Action SetVariable
  - param Variable Blademaster
  - param Variable gg_unit_Obla_0071
- Action SetVariable
  - param Variable StartingBase01
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Starting_Base_01
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_nshe_0026
  - param Variable StartingBase01
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_nshe_0027
  - param Variable StartingBase01
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_ngol_0009
  - param Variable StartingBase01
- Action GroupRemoveUnitSimple
  - param Variable Uther
  - param Variable StartingBase01
- Action SetVariable
  - param Variable Villagers
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Villagers
- Action SetVariable
  - param Variable UnluckyFootman
  - param Variable gg_unit_hfoo_0096
- Action SetVariable
  - param Variable UnfortunateMan
  - param Variable gg_unit_nvil_0080
- Action SetVariable
  - param Variable UnfortunateWoman
  - param Variable gg_unit_nvlw_0054
- Action SetVariable
  - param Variable Searinox
  - param Variable gg_unit_nser_0048
- Action SetVariable
  - param Variable UthersPosition
  - param String 1
- Action SetVariable
  - param Variable Crate01
  - param Variable gg_dest_LTcr_2866
- Action SetVariable
  - param Variable Crate02
  - param Variable gg_dest_LTcr_2868
- Action SetVariable
  - param Variable Lumber01
  - param Variable gg_unit_hpea_0045
- Action SetVariable
  - param Variable Lumber02
  - param Variable gg_unit_hpea_0044
- Action SetVariable
  - param Variable Gold01
  - param Variable gg_unit_hpea_0020
- Action CommentString
  - param String Uther's Inventory
- Action UnitAddItemByIdSwapped
  - param String rde4
  - param Variable Uther
- Action SetItemDroppableBJ
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Preset DropNoDropOptionNoDrop
- Action UnitAddItemByIdSwapped
  - param String ratf
  - param Variable Uther
- Action SetItemDroppableBJ
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Preset DropNoDropOptionNoDrop
- Action UnitAddItemByIdSwapped
  - param String rlif
  - param Variable Uther
- Action SetItemDroppableBJ
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Preset DropNoDropOptionNoDrop
- Action UnitAddItemByIdSwapped
  - param String rwiz
  - param Variable Uther
- Action SetItemDroppableBJ
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Preset DropNoDropOptionNoDrop
- Action UnitAddItemByIdSwapped
  - param String prvt
  - param Variable Uther
- Action SetItemDroppableBJ
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Preset DropNoDropOptionNoDrop
- Action UnitAddItemByIdSwapped
  - param String ckng
  - param Variable Uther
- Action SetItemDroppableBJ
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Preset DropNoDropOptionNoDrop
- Action CommentString
  - param String Player Settings
- Action SetPlayerState
  - param Variable P_Blackrock
  - param Preset PlayerStateGold
  - param String 5000
- Action SetPlayerState
  - param Variable P_Blackrock
  - param Preset PlayerStateLumber
  - param String 800
- Action SetPlayerState
  - param Variable AAAP_Arthas
  - param Preset PlayerStateGold
  - param String 0
- Action SetPlayerState
  - param Variable AAAP_Arthas
  - param Preset PlayerStateLumber
  - param String 0
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock
  - param Variable AAAP_Arthas
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock
  - param Variable P_Uther
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock
  - param Variable P_Blackrock2
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock
  - param Variable P_Blademaster
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock
  - param Variable P_Dwarves
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock
  - param Variable P_Villagers
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock2
  - param Variable AAAP_Arthas
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock2
  - param Variable P_Uther
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock2
  - param Variable P_Blackrock
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock2
  - param Variable P_Blademaster
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock2
  - param Variable P_Dwarves
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock2
  - param Variable P_Villagers
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blackrock2
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blademaster
  - param Variable AAAP_Arthas
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blademaster
  - param Variable P_Uther
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blademaster
  - param Variable P_Blackrock
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blademaster
  - param Variable P_Blackrock2
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blademaster
  - param Variable P_Dwarves
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blademaster
  - param Variable P_Villagers
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Blademaster
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable AAAP_Arthas
  - param Variable P_Uther
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Variable AAAP_Arthas
  - param Variable P_Dwarves
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable AAAP_Arthas
  - param Variable P_Villagers
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable AAAP_Arthas
  - param Variable P_Blackrock
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable AAAP_Arthas
  - param Variable P_Blackrock2
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable AAAP_Arthas
  - param Variable P_Blademaster
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceBJ
  - param Variable AAAP_Arthas
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Variable P_Dwarves
- Action SetPlayerAllianceStateBJ
  - param Variable P_Uther
  - param Variable AAAP_Arthas
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Variable P_Uther
  - param Variable P_Dwarves
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Uther
  - param Variable P_Villagers
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Uther
  - param Variable P_Blackrock
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Uther
  - param Variable P_Blackrock2
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Uther
  - param Variable P_Blademaster
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceBJ
  - param Variable P_Uther
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Variable P_Dwarves
- Action SetPlayerAllianceStateBJ
  - param Variable P_Dwarves
  - param Variable AAAP_Arthas
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Dwarves
  - param Variable P_Uther
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Dwarves
  - param Variable P_Villagers
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Dwarves
  - param Variable P_Blackrock
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Dwarves
  - param Variable P_Blackrock2
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Dwarves
  - param Variable P_Blademaster
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Villagers
  - param Variable AAAP_Arthas
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Villagers
  - param Variable P_Uther
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Villagers
  - param Variable P_Dwarves
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Villagers
  - param Variable P_Blackrock
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Villagers
  - param Variable P_Blackrock2
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Villagers
  - param Variable P_Blademaster
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_Villagers
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable P_Blackrock
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable P_Blackrock2
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable P_Blademaster
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable P_Villagers
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable AAAP_Arthas
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable P_Uther
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable P_Dwarves
  - param Preset AllianceSettingUnallied
- Action SetPlayerColorBJ
  - param Variable P_Blackrock2
  - param Preset Color00
  - param Preset PlayerChangeColorChange
- Action SetPlayerColorBJ
  - param Variable P_Blademaster
  - param Preset Color00
  - param Preset PlayerChangeColorChange
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player02
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player03
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player04
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player08
- Action CommentString
  - param String Difficulty Settings
- Action SetPlayerHandicapXPBJ
  - param Variable AAAP_Arthas
  - param String 60.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Hard_Difficulty
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Unit Settings
- Action IssueImmediateOrder
  - param Variable UnluckyFootman
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable UnfortunateMan
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable UnfortunateWoman
  - param Preset UnitOrderHoldPosition
- Action IssuePointOrderLoc
  - param Variable Uther
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Uther_Destination
- Action ForGroup
  - param Variable Villagers
  - param Function DoNothing
    - Action IssueImmediateOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable Lumber01
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable Lumber02
  - param Preset UnitOrderAutoHarvestLumber
- Action AddSpecialEffectTargetUnitBJ
  - param String overhead
  - param Variable FeranorSteeltoe
  - param String Abilities\Spells\Other\TalkToMe\TalkToMe.mdl
- Action SetVariable
  - param Variable TalkFeranor
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Blademaster
- Action CommentString
  - param String Quest Settings
- Action CreateQuestBJ
  - param Preset QuestTypeOptUndiscovered
  - param String TRIGSTR_077
  - param String TRIGSTR_078
  - param String ReplaceableTextures\CommandButtons\BTNBlackDragon.tga
- Action SetVariable
  - param Variable QuestSearinox
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestSearinox
  - param String TRIGSTR_079
- Action SetVariable
  - param Variable QuestSearinoxRequirementSlay
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Variable QuestSearinox
  - param String TRIGSTR_183
- Action SetVariable
  - param Variable QuestSearinoxRequirementReturn
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestBJ
  - param Preset QuestTypeReqDiscovered
  - param String TRIGSTR_081
  - param String TRIGSTR_082
  - param String ReplaceableTextures\CommandButtons\BTNHumanBarracks.tga
- Action SetVariable
  - param Variable QuestBase
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestBase
  - param String TRIGSTR_114
- Action SetVariable
  - param Variable QuestBaseRequirementBarracks
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Variable QuestBase
  - param String TRIGSTR_115
- Action SetVariable
  - param Variable QuestBaseRequirementFarms
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Variable QuestBase
  - param String TRIGSTR_116
- Action SetVariable
  - param Variable QuestBaseRequirementFootmen
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestBJ
  - param Preset QuestTypeReqUndiscovered
  - param String TRIGSTR_109
  - param String TRIGSTR_110
  - param String ReplaceableTextures\CommandButtons\BTNHeroBlademaster.tga
- Action SetVariable
  - param Variable QuestBlademaster
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestBlademaster
  - param String TRIGSTR_118
- Action SetVariable
  - param Variable QuestBladeRequirementSlay
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CommentString
  - param String Map Settings
- Action SetSkyModel
  - param Preset SkyModelSky04
- Action SetTerrainFogExBJ
  - param String 0
  - param String 4000.00
  - param String 8000
  - param String 0.00
  - param String 100
  - param String 100
  - param String 100
- Action SetTimeOfDay
  - param String 6.50
- Action CommentString
  - param String Run Triggers
- Action InitGameCacheBJ
  - param String Campaigns.w3v
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AP_Load_Arthas
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Intro_Cinematic
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Handicap
- Event MapInitializationEvent


## Delayed Special FX
- enabled: True
- category: [3] Start Game
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AddSpecialEffectTargetUnitBJ
  - param String origin
  - param Variable UnfortunateMan
  - param String Abilities\Spells\Orc\Ensnare\ensnareTarget.mdl
- Action SetVariable
  - param Variable Net02
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AddSpecialEffectTargetUnitBJ
  - param String origin
  - param Variable UnfortunateWoman
  - param String Abilities\Spells\Orc\Ensnare\ensnareTarget.mdl
- Action SetVariable
  - param Variable Net03
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AddSpecialEffectTargetUnitBJ
  - param String origin
  - param Variable UnluckyFootman
  - param String Abilities\Spells\Orc\Ensnare\ensnareTarget.mdl
- Action SetVariable
  - param Variable Net01
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ


## Hard Difficulty
- enabled: True
- category: [3] Start Game
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
- Action SuspendHeroXPBJ
  - param Preset EnableDisableEnable
  - param Variable Blademaster
- Action SetHeroLevel
  - param Variable Blademaster
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Blademaster
  - param Preset HeroSkillWhirlwind
- Action SelectHeroSkill
  - param Variable Blademaster
  - param Preset HeroSkillCriticalStrike
- Action SelectHeroSkill
  - param Variable Blademaster
  - param Preset HeroSkillMirrorImage
- Action SelectHeroSkill
  - param Variable Blademaster
  - param Preset HeroSkillMirrorImage
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Blademaster


## Handicap
- enabled: True
- category: [3] Start Game
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerHandicapBJ
  - param Variable P_Blackrock
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Variable P_Blackrock2
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Variable P_Blademaster
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset PlayerNA
  - param Preset RealHandicapEasy
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyEasy


## Intro Cinematic
- enabled: True
- category: [1] Intro Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Variable AAAPG_Arthas
- Action CameraSetSmoothingFactorBJ
  - param String 0.01
- Action SetUnitMoveSpeed
  - param Variable Arthas
  - param String 300.00
- Action SetTerrainFogExBJ
  - param String 0
  - param String 800.00
  - param String 3500.00
  - param String 0
  - param String 20.00
  - param String 30.00
  - param String 40.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.10
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro01
  - param Variable AAAP_Arthas
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro02
  - param Variable AAAP_Arthas
  - param String 7.00
- Action CommentString
  - param String Sound Settings
- Action ClearMapMusicBJ
- Action TriggerSleepAction
  - param String 0.01
- Action PlayThematicMusicBJ
  - param Preset MusicThemeComradeship
- Action SetMapMusicIndexedBJ
  - param Preset MusicFileMusic
  - param String 1
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop01
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterLakeLoop1
  - param Variable gg_rct_LakeLoop02
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_Intro_Cinematic_Cancel
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
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
      - param Variable gg_rct_Arthas_Destination
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
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
      - param Variable gg_rct_Uther_Destination
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssueImmediateOrder
  - param Variable Uther
  - param Preset UnitOrderStop
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Uther
  - param Variable Arthas
  - param String 0.20
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro04
  - param Variable AAAP_Arthas
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
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
  - param Variable Arthas
  - param Variable Uther
  - param String 0.20
- Action StartCampaignAI
  - param Variable P_Blackrock
  - param String h02_red.ai
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Red_AI_Settings
- Action SetVariable
  - param Variable HasRedAIBegun
  - param String true
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Uther
  - param String TRIGSTR_035
  - param Variable gg_snd_H02Uther01
  - param String TRIGSTR_036
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hhdl
  - param Variable P_Uther
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Horse_1
  - param String 0.00
- Action SetVariable
  - param Variable Horse01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hhdl
  - param Variable P_Uther
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Horse_2
  - param String 0.00
- Action SetVariable
  - param Variable Horse02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Uther
  - param Variable Knight01
  - param String 0.30
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Knight01
  - param String 0.30
- Action IssuePointOrderLoc
  - param Variable Horse02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Horse_2_Destination
- Action IssuePointOrderLoc
  - param Variable Horse01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Horse_1_Destination
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop3
  - param Variable Horse01
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop3
- Action CameraSetSmoothingFactorBJ
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro05
  - param Variable AAAP_Arthas
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro06
  - param Variable AAAP_Arthas
  - param String 5.00
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Function GetLastPlayedSound
            - Function GetLastPlayedSound
      - param Preset OperatorSubtract
      - param String 0.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_KnightNoRiderWhat2
  - param Variable Horse02
- Action PlaySoundBJ
  - param Variable gg_snd_KnightNoRiderWhat2
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Function GetLastPlayedSound
            - Function GetLastPlayedSound
      - param Preset OperatorSubtract
      - param String 0.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
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
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro07
  - param Preset Player01
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Uther
  - param String TRIGSTR_037
  - param Variable gg_snd_H02Uther02
  - param String TRIGSTR_038
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Uther
  - param String 0.20
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Arthas
  - param String TRIGSTR_056
  - param Variable gg_snd_H02Arthas03
  - param String TRIGSTR_058
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
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
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Uther
  - param Variable Arthas
  - param String 0.20
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro08
  - param Variable AAAP_Arthas
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Uther
  - param String TRIGSTR_059
  - param Variable gg_snd_H02Uther04
  - param String TRIGSTR_064
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
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
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable Horse01
  - param String stand victory
- Action QueueUnitAnimationBJ
  - param Variable Horse01
  - param String stand
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_KnightNoRiderWarcry1
  - param Variable Horse01
- Action PlaySoundBJ
  - param Variable gg_snd_KnightNoRiderWarcry1
- Action TriggerSleepAction
  - param String 1.30
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 7.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hkni
  - param Variable P_Uther
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_HandlerStart
  - param String 0.00
- Action SetVariable
  - param Variable Handler
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action RemoveGuardPosition
  - param Variable Handler
- Action SetVariable
  - param Variable IntroHandlerRemoved
  - param String false
- Action IssuePointOrderLoc
  - param Variable Handler
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_HandlerDestination
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop1
  - param Variable Handler
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop1
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Handler
  - param Variable Uther
  - param String 0.30
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_H02Uther04
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Arthas
  - param String TRIGSTR_065
  - param Variable gg_snd_H02Arthas05
  - param String TRIGSTR_066
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Horses_Leave
- Action PlaySoundBJ
  - param Variable gg_snd_KnightNoRiderWhat2
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop1
- Action TriggerSleepAction
  - param String 0.10
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop3
  - param Variable Handler
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop3
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_KnightNoRiderWhat3
  - param Variable Horse01
- Action PlaySoundBJ
  - param Variable gg_snd_KnightNoRiderWhat3
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro09
  - param Variable AAAP_Arthas
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Uther
  - param String TRIGSTR_067
  - param Variable gg_snd_H02Uther06
  - param String TRIGSTR_068
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Arthas
  - param String TRIGSTR_069
  - param Variable gg_snd_H02Arthas07
  - param String TRIGSTR_070
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
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
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Uther
  - param String TRIGSTR_071
  - param Variable gg_snd_H02Uther08
  - param String TRIGSTR_072
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro10
  - param Variable AAAP_Arthas
  - param String 0.00
- Action SetTerrainFogExBJ
  - param String 0
  - param String 2200.00
  - param String 6000.00
  - param String 0
  - param String 20.00
  - param String 30.00
  - param String 40.00
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Arthas
  - param String TRIGSTR_073
  - param Variable gg_snd_H02Arthas09
  - param String TRIGSTR_074
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 0.30
- Action CameraResetSmoothingFactorBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Uther
  - param String TRIGSTR_075
  - param Variable gg_snd_H02Uther10
  - param String TRIGSTR_076
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Variable AAAPG_Arthas
- Action ResetToGameCameraForPlayer
  - param Variable AAAP_Arthas
  - param String 2.00
- Action SelectUnitSingle
  - param Variable Arthas
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ForGroup
  - param Variable StartingBase01
  - param Function DoNothing
    - Action SetUnitOwner
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable AAAP_Arthas
      - param Preset ChangeColorTrue
- Action SetUnitOwner
  - param Variable Gold01
  - param Variable AAAP_Arthas
  - param Preset ChangeColorTrue
- Action SetUnitOwner
  - param Variable Gold02
  - param Variable AAAP_Arthas
  - param Preset ChangeColorTrue
- Action SetUnitOwner
  - param Variable Gold03
  - param Variable AAAP_Arthas
  - param Preset ChangeColorTrue
- Action TriggerSleepAction
  - param String 0.05
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssueImmediateOrder
  - param Variable Lumber02
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable Lumber01
  - param Preset UnitOrderAutoHarvestLumber
- Action SetPlayerState
  - param Variable AAAP_Arthas
  - param Preset PlayerStateGold
  - param String 300
- Action SetPlayerState
  - param Variable AAAP_Arthas
  - param Preset PlayerStateLumber
  - param String 50
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Uther_Patrol_to_01
- Action SetVariable
  - param Variable UtherIsDefending
  - param String false
- Action SetVariable
  - param Variable IntroCinematicDone
  - param String true
- Action SetSkyModel
  - param Preset SkyModelNone
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_Create_Gold_Peasants
- Action RemoveUnit
  - param Variable gg_unit_hpea_0020
- Action TriggerSleepAction
  - param String 0.01
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_Intro_Cinematic_Cancel
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Delayed_Special_FX
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_018
- Action FlashQuestDialogButtonBJ
- Action ResetTerrainFogBJ
- Action StartTimerBJ
  - param Variable AltarHintTimer
  - param Preset PeriodicOptionOneTime
  - param String 30


## Intro Cinematic Cancel
- enabled: True
- category: [1] Intro Cinematic
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
  - param Variable IntroSkipped
  - param String true
- Action SetVariable
  - param Variable IntroCinematicDone
  - param String true
- Action SetSkyModel
  - param Preset SkyModelNone
- Action ResetTerrainFogBJ
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01
- Action ResetToGameCameraForPlayer
  - param Variable AAAP_Arthas
  - param String 0.00
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Variable AAAPG_Arthas
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas_Destination
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Delayed_Special_FX
- Action PanCameraToTimedLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
  - param String 0.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroHorse01Removed
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action RemoveUnit
      - param Variable Horse01
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroHorse02Removed
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action RemoveUnit
      - param Variable Horse02
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroHandlerRemoved
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action RemoveUnit
      - param Variable Handler
  - param Function DoNothing
    - Action DoNothing
- Action ResetUnitLookAt
  - param Variable Arthas
- Action ResetUnitLookAt
  - param Variable Uther
- Action SelectUnitSingle
  - param Variable Arthas
- Action ForGroup
  - param Variable StartingBase01
  - param Function DoNothing
    - Action SetUnitOwner
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable AAAP_Arthas
      - param Preset ChangeColorTrue
- Action SetPlayerState
  - param Variable AAAP_Arthas
  - param Preset PlayerStateGold
  - param String 300
- Action SetPlayerState
  - param Variable AAAP_Arthas
  - param Preset PlayerStateLumber
  - param String 50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable HasRedAIBegun
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action DoNothing
  - param Function DoNothing
    - Action StartCampaignAI
      - param Variable P_Blackrock
      - param String h02_red.ai
- Action SetVariable
  - param Variable HasRedAIBegun
  - param String true
- Action TriggerExecute
  - param Variable gg_trg_Uther_Patrol_to_01
- Action SetVariable
  - param Variable UtherIsDefending
  - param String false
- Action SetVariable
  - param Variable IntroCinematicDone
  - param String true
- Action TriggerExecute
  - param Variable gg_trg_Create_Gold_Peasants
- Action RemoveUnit
  - param Variable gg_unit_hpea_0020
- Action TriggerSleepAction
  - param String 1.00
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_017
- Action FlashQuestDialogButtonBJ
- Action IssueImmediateOrder
  - param Variable Lumber01
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable Lumber02
  - param Preset UnitOrderAutoHarvestLumber
- Action TriggerSleepAction
  - param String 0.01
- Action StartTimerBJ
  - param Variable AltarHintTimer
  - param Preset PeriodicOptionOneTime
  - param String 30


## Create Gold Peasants
- enabled: True
- category: [1] Intro Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomScriptCode
  - param String set udg_Gold01 = CreateUnit(udg_AAAP_Arthas, 'hpea', -4276.2, -3938.2, 241.047)
- Action CustomScriptCode
  - param String set udg_Gold02 = CreateUnit(udg_AAAP_Arthas, 'hpea', -4147.5, -3873.2, 255.484)
- Action CustomScriptCode
  - param String set udg_Gold03 = CreateUnit(udg_AAAP_Arthas, 'hpea', -4067.4, -3981.1, 343.377)
- Action IssueTargetOrder
  - param Variable Gold01
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0009
- Action IssueTargetOrder
  - param Variable Gold02
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0009
- Action IssueTargetOrder
  - param Variable Gold03
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0009


## PeasantFakeHarvest
- enabled: True
- category: [1] Intro Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String The original map had allied peasants harvesting gold that were replaced with player ones
- Action CommentString
  - param String If the replacement happened while a peasant was in the mine, the player peasants would not properly start mining
- Action CommentString
  - param String So, we fake it with some animations. This rough setup is based on the one in H7
- Action AddUnitAnimationPropertiesBJ
  - param Preset AddRemoveAdd
  - param String gold
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Action IssueTargetOrder
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_htow_0003
- Action SetUnitMoveSpeed
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param String 8.00
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hpea_0020
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Gold_Turnaround


## PeasantFakeReturn
- enabled: True
- category: [1] Intro Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AddUnitAnimationPropertiesBJ
  - param Preset AddRemoveRemove
  - param String gold
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
- Action IssuePointOrderLoc
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gold_Turnaround
- Action SetUnitMoveSpeed
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Function GetUnitDefaultMoveSpeed
    - Function GetUnitDefaultMoveSpeed
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Condition OperatorCompareUnit
  - param Function GetTriggerUnit
    - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hpea_0020
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Gold_Dropoff


##   Red AI Settings
- enabled: True
- category: [1] Intro Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveGuardPosition
  - param Variable gg_unit_ogru_0090
- Action RemoveGuardPosition
  - param Variable gg_unit_ohun_0065
- Action RemoveGuardPosition
  - param Variable gg_unit_ohun_0063


##   Horses Leave
- enabled: True
- category: [1] Intro Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable Handler
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Remove_Horses
- Action TriggerSleepAction
  - param String 0.15
- Action IssuePointOrderLoc
  - param Variable Horse02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Remove_Horses
- Action TriggerSleepAction
  - param String 0.30
- Action ResetUnitAnimation
  - param Variable Horse01
- Action IssuePointOrderLoc
  - param Variable Horse01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Remove_Horses
- Condition OperatorCompareBoolean
  - param Variable IntroSkipped
  - param Preset OperatorEqualENE
  - param String false


## Delete Horse01
- enabled: True
- category: [1] Intro Cinematic
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
  - param Variable Horse01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Remove_Horses
- Action RemoveUnit
  - param Variable Horse01
- Action SetVariable
  - param Variable IntroHorse01Removed
  - param String true
- Condition OperatorCompareBoolean
  - param Variable IntroSkipped
  - param Preset OperatorEqualENE
  - param String false


## Delete Horse02
- enabled: True
- category: [1] Intro Cinematic
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
  - param Variable Horse02
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Remove_Horses
- Action RemoveUnit
  - param Variable Horse02
- Action SetVariable
  - param Variable IntroHorse01Removed
  - param String false
- Condition OperatorCompareBoolean
  - param Variable IntroSkipped
  - param Preset OperatorEqualENE
  - param String false


## Delete Handler
- enabled: True
- category: [1] Intro Cinematic
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
  - param Variable Handler
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Remove_Horses
- Action RemoveUnit
  - param Variable Handler
- Action SetVariable
  - param Variable IntroHandlerRemoved
  - param String true
- Condition OperatorCompareBoolean
  - param Variable IntroSkipped
  - param Preset OperatorEqualENE
  - param String false


## BarracksConstructed
- enabled: True
- category: [12] EstablishBaseQuest
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Preset UnitTypeStructure
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_BarracksConstructed_Queue
  - param Preset CheckingIgnoringChecking
- Condition OrMultiple
  - Condition OperatorCompareUnitCode
    - param Function GetUnitTypeId
      - Function GetUnitTypeId
        - param Function GetTriggerUnit
          - Function GetTriggerUnit
    - param Preset OperatorEqualENE
    - param String hbar
  - Condition OperatorCompareUnitCode
    - param Function GetUnitTypeId
      - Function GetUnitTypeId
        - param Function GetTriggerUnit
          - Function GetTriggerUnit
    - param Preset OperatorEqualENE
    - param String harm
  - Condition OperatorCompareUnitCode
    - param Function GetUnitTypeId
      - Function GetUnitTypeId
        - param Function GetTriggerUnit
          - Function GetTriggerUnit
    - param Preset OperatorEqualENE
    - param String hars
  - Condition OperatorCompareUnitCode
    - param Function GetUnitTypeId
      - Function GetUnitTypeId
        - param Function GetTriggerUnit
          - Function GetTriggerUnit
    - param Preset OperatorEqualENE
    - param String hgra
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventConstruct_Finish


## BarracksConstructed Queue
- enabled: True
- category: [12] EstablishBaseQuest
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
  - param Variable BaseRequirement01
  - param String true
- Action QuestItemSetCompletedBJ
  - param Variable QuestBaseRequirementBarracks
  - param Preset CompletionOptionCompleted
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetConstructedStructure
        - Function GetConstructedStructure
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetConstructedStructure
        - Function GetConstructedStructure
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement02
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement03
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_535
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement02
          - param Preset OperatorEqualENE
          - param String false
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement03
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_540
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 2
- Action CreateLeaderboardBJ
  - param Variable AAAPG_Arthas
  - param String TRIGSTR_201
- Action SetVariable
  - param Variable FootmenLeaderboard
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
- Action LeaderboardAddItemBJ
  - param Variable AAAP_Arthas
  - param Variable FootmenLeaderboard
  - param String TRIGSTR_202
  - param String 0
- Action LeaderboardSetStyleBJ
  - param Variable FootmenLeaderboard
  - param Preset ShowHideHide
  - param Preset ShowHideShow
  - param Preset ShowHideHide
  - param Preset ShowHideHide
- Action LeaderboardSetValueColorBJ
  - param Variable FootmenLeaderboard
  - param String 100
  - param String 100
  - param String 100
  - param String 0
- Action LeaderboardSetLabelColorBJ
  - param Variable FootmenLeaderboard
  - param String 100
  - param String 80.00
  - param String 0.00
  - param String 0
- Action CustomScriptCode
  - param String call LeaderboardSetPlayerItemLabelBJ(udg_AAAP_Arthas, udg_FootmenLeaderboard, udg_footmen_trained_unit_name + " Trained |cffffffff" + I2S(udg_FootmenTrained) + "/6|r")
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## FarmsConstructed
- enabled: True
- category: [12] EstablishBaseQuest
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Variable NumberOfFarms
  - param Preset OperatorEqual
  - param String 2
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_FarmsConstructed_Queue
  - param Preset CheckingIgnoringChecking


## FarmsConstructed Queue
- enabled: True
- category: [12] EstablishBaseQuest
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
  - param Variable gg_trg___FarmCompletes
- Action DisableTrigger
  - param Variable gg_trg___FarmDestroyed
- Action SetVariable
  - param Variable BaseRequirement02
  - param String true
- Action QuestItemSetCompletedBJ
  - param Variable QuestBaseRequirementFarms
  - param Preset CompletionOptionCompleted
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetConstructedStructure
        - Function GetConstructedStructure
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetConstructedStructure
        - Function GetConstructedStructure
- Action ConditionalTriggerExecute
  - param Variable gg_trg_BaseQuestCompleted
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement01
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement03
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_525
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement01
          - param Preset OperatorEqualENE
          - param String false
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement03
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_530
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BaseRequirement03
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action TriggerSleepAction
      - param Preset RealQueueDelayQuest
  - param Function DoNothing
    - Action DoNothing
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


##   FarmCompletes
- enabled: True
- category: [12] EstablishBaseQuest
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable NumberOfFarms
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable NumberOfFarms
      - param Preset OperatorAdd
      - param String 1
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FarmsConstructed
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructedStructure
        - Function GetConstructedStructure
  - param Preset OperatorEqualENE
  - param String hhou
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventConstruct_Finish


##   FarmCancelled
- enabled: True
- category: [12] EstablishBaseQuest
- starts off: False
- is custom text: False
- run on map init: False
```description
If a building is cancelled, add to the counter to balance out the fact that we subtract from it for the death event.
```
### Functions
- Action SetVariable
  - param Variable NumberOfFarms
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable NumberOfFarms
      - param Preset OperatorAdd
      - param String 1
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetCancelledStructure
        - Function GetCancelledStructure
  - param Preset OperatorEqualENE
  - param String hhou
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventConstruct_Cancel


##   FarmDestroyed
- enabled: True
- category: [12] EstablishBaseQuest
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable NumberOfFarms
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable NumberOfFarms
      - param Preset OperatorSubtract
      - param String 1
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetDyingUnit
        - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param String hhou
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## FootmenTrained
- enabled: True
- category: [12] EstablishBaseQuest
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Variable FootmenTrained
  - param Preset OperatorEqual
  - param String 6
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_FootmenTrained_Queue
  - param Preset CheckingIgnoringChecking


## FootmenTrained Queue
- enabled: True
- category: [12] EstablishBaseQuest
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
- Action CustomScriptCode
  - param String call status_check_location(21)
- Action DisableTrigger
  - param Variable gg_trg___FootmanPopsOut
- Action SetVariable
  - param Variable BaseRequirement03
  - param String true
- Action QuestItemSetCompletedBJ
  - param Variable QuestBaseRequirementFootmen
  - param Preset CompletionOptionCompleted
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTrainedUnit
        - Function GetTrainedUnit
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTrainedUnit
        - Function GetTrainedUnit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_BaseQuestCompleted
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Disable_Leaderboard
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement01
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement02
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
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement01
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement02
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement01
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable BaseRequirement02
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_564
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


##   FootmanPopsOut
- enabled: True
- category: [12] EstablishBaseQuest
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTrainedUnit
        - Function GetTrainedUnit
  - param Preset OperatorNotEqualENE
  - param String hpea
- Action SetVariable
  - param Variable FootmenTrained
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable FootmenTrained
      - param Preset OperatorAdd
      - param String 1
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnitCode
      - param Function GetUnitTypeId
        - Function GetUnitTypeId
          - param Function GetTriggerUnit
            - Function GetTriggerUnit
      - param Preset OperatorNotEqualENE
      - param String hfoo
  - param Function DoNothing
    - Action SetVariable
      - param Variable footmen_trained_unit_name
      - param String (wo)men
  - param Function DoNothing
    - Action DoNothing
- Action CustomScriptCode
  - param String call LeaderboardSetPlayerItemLabelBJ(udg_AAAP_Arthas, udg_FootmenLeaderboard, udg_footmen_trained_unit_name + " Trained |cffffffff" + I2S(udg_FootmenTrained) + "/6|r")
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FootmenTrained
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventTrain_Finish


##   Disable Leaderboard
- enabled: True
- category: [12] EstablishBaseQuest
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
- Action DestroyLeaderboardBJ
  - param Variable FootmenLeaderboard


## BaseQuestCompleted
- enabled: True
- category: [12] EstablishBaseQuest
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable BaseRequirement01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable BaseRequirement02
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable BaseRequirement03
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_BaseQuestCompleted_Queue
  - param Preset CheckingIgnoringChecking


## BaseQuestCompleted Queue
- enabled: True
- category: [12] EstablishBaseQuest
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
  - param Variable VictoryCondition01
  - param String true
- Action TriggerSleepAction
  - param String 1.00
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Starting_Base_01
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Starting_Base_01
- Action QuestSetCompletedBJ
  - param Variable QuestBase
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_015
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCondition02
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Victory_Cinematic
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCondition02
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 10.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Blademaster_Cinematic


## Blademaster Cinematic
- enabled: True
- category: [7] Blademaster Cinematic
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
  - param Variable BlademasterHasBeenSlain
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Function IsTriggerEnabled
    - Function IsTriggerEnabled
      - param Function GetTriggeringTrigger
        - Function GetTriggeringTrigger
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_Blademaster_Cinematic_Failsafe
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Blademaster_Cinematic_Queue
  - param Preset CheckingIgnoringChecking


## Blademaster Cinematic Failsafe
- enabled: True
- category: [7] Blademaster Cinematic
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
  - param Variable BlademasterQuestRecieved
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Arthas
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_Blademaster_Cinematic
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Blademaster_Cinematic_Queue
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterUnitInRangeSimple
  - param String 1536.00
  - param Variable gg_unit_Obla_0071


## Blademaster Cinematic Queue
- enabled: True
- category: [7] Blademaster Cinematic
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
  - param Variable CameraPosition
  - param Function GetCameraTargetPositionLoc
    - Function GetCameraTargetPositionLoc
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterHasBeenSlain
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
      - param Variable BlademasterHasBeenSlain
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DisableTrigger
  - param Variable gg_trg_Uther_Patrol_to_01
- Action DisableTrigger
  - param Variable gg_trg_Uther_Patrol_to_02
- Action DisableTrigger
  - param Variable gg_trg_Uther_Reaches_01
- Action DisableTrigger
  - param Variable gg_trg_Uther_Reaches_02
- Action DisableTrigger
  - param Variable gg_trg_Base_Is_Attacked
- Action DisableTrigger
  - param Variable gg_trg_UtherTargetDies
- Action DisableTrigger
  - param Variable gg_trg_Look_for_enemies
- Action DisableTrigger
  - param Variable gg_trg_Blademaster_Cinematic_Failsafe
- Action CommentString
  - param String Uther and Mirror Image
- Action SetVariable
  - param Variable InCinematic
  - param String true
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
  - param Variable AAAPG_Arthas
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDoom
- Action SetVariable
  - param Variable SelectionGroup
  - param Function GetUnitsSelectedAll
    - Function GetUnitsSelectedAll
      - param Variable AAAP_Arthas
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable AAAP_Arthas
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
            - Condition GetBooleanAnd
              - param Function 
                - Condition OperatorCompareBoolean
                  - param Function RectContainsUnit
                    - Function RectContainsUnit
                      - param Variable gg_rct_BM_Cinematic_Hide_Player_Units_Here
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param String true
              - param Function 
                - Condition OperatorCompareBoolean
                  - param Function IsUnitHiddenBJ
                    - Function IsUnitHiddenBJ
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param String false
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable HideUnitsGroup
- Action ForGroup
  - param Variable HideUnitsGroup
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ClearSelection
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable FootmenLeaderboard
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Blademaster01A
  - param Variable AAAP_Arthas
  - param String 0
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_CinematicHide01
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_CinematicHide02
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityInvulnerable
- Action ShowUnitShow
  - param Variable Uther
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Uther
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Uther
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Uther01
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitInvulnerable
  - param Variable Uther
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitPositionLoc
  - param Variable Uther
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Uther01
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Uther
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Blademaster
- Action IssueImmediateOrder
  - param Variable Uther
  - param Preset UnitOrderStop
- Action TriggerExecute
  - param Variable gg_trg___SpawnMirrorImage
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_Blademaster_Cancel
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
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
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
      - param Variable gg_rct_Uther02
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Blademaster01B
  - param Variable AAAP_Arthas
  - param String 12.00
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable gg_unit_Obla_0071
  - param String TRIGSTR_222
  - param Variable gg_snd_H02Blademaster11
  - param String TRIGSTR_223
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg___UtherAnimation
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Uther
  - param String TRIGSTR_224
  - param Variable gg_snd_H02Uther12
  - param String TRIGSTR_225
  - param Preset AddSetToSub
  - param String 1.80
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Blademaster01C
  - param Variable AAAP_Arthas
  - param String 0
- Action SetUnitInvulnerable
  - param Variable Uther
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable TempMirrorImage
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_hwtw_0008
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_hwtw_0142
  - param Preset InvulnerabilityVulnerable
- Action IssueTargetOrder
  - param Variable Uther
  - param Preset UnitOrderAttackUnit
  - param Variable TempMirrorImage
- Action ResetUnitAnimation
  - param Variable TempMirrorImage
- Action IssueTargetOrder
  - param Variable TempMirrorImage
  - param Preset UnitOrderAttackUnit
  - param Variable Uther
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetVariable
  - param Variable BladeImageRemoved
  - param String true
- Action KillUnit
  - param Variable TempMirrorImage
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Uther
  - param String TRIGSTR_226
  - param Variable gg_snd_H02Uther13
  - param String TRIGSTR_227
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
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
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Real Blademaster
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Blademaster02A
  - param Variable AAAP_Arthas
  - param String 0
- Action ShowUnitShow
  - param Variable UnfortunateMan
- Action ShowUnitShow
  - param Variable UnfortunateWoman
- Action ShowUnitShow
  - param Variable UnluckyFootman
- Action ShowUnitShow
  - param Variable Blademaster
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
  - param Variable gg_cam_Blademaster02B
  - param Variable AAAP_Arthas
  - param String 8.00
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Blademaster
  - param Variable UnluckyFootman
  - param String 0.20
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Blademaster
  - param String TRIGSTR_228
  - param Variable gg_snd_H02Warlock22
  - param String TRIGSTR_229
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Blademaster03A
  - param Variable AAAP_Arthas
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Blademaster03B
  - param Variable AAAP_Arthas
  - param String 8.00
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable UnluckyFootman
  - param String TRIGSTR_230
  - param Variable gg_snd_H02Footman23
  - param String TRIGSTR_231
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action CommentString
  - param String Execute Villagers
- Action TriggerSleepAction
  - param String 2.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Blademaster
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Blademaster00
- Action TriggerSleepAction
  - param String 0.40
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable Blademaster
  - param String Attack
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action KillUnit
  - param Variable UnluckyFootman
- Action StopSoundBJ
  - param Variable gg_snd_H02Footman23
  - param Preset FadeDontFade
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_FootmanDeath
  - param Variable UnluckyFootman
- Action PlaySoundBJ
  - param Variable gg_snd_FootmanDeath
- Action SetVariable
  - param Variable Sacrifice01
  - param String true
- Action TriggerSleepAction
  - param String 0.05
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action AddSpecialEffectTargetUnitBJ
  - param String origin
  - param Variable gg_unit_hfoo_0096
  - param String Abilities\Spells\Undead\AnimateDead\AnimateDeadTarget.mdl
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_RaiseSkeleton
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Blademaster00
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_RaiseSkeleton
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_RaiseSkeleton
- Action DestroyEffectBJ
  - param Variable Net01
- Action SetVariable
  - param Variable Net01Removed
  - param String true
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Blademaster
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Blademaster01
- Action TriggerSleepAction
  - param String 0.40
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable Blademaster
  - param String Attack
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action KillUnit
  - param Variable UnfortunateMan
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_VillagerMaleDeath1
  - param Variable UnfortunateMan
- Action PlaySoundBJ
  - param Variable gg_snd_VillagerMaleDeath1
- Action SetVariable
  - param Variable Sacrifice02
  - param String true
- Action TriggerSleepAction
  - param String 0.05
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action AddSpecialEffectTargetUnitBJ
  - param String origin
  - param Variable gg_unit_nvil_0080
  - param String Abilities\Spells\Undead\AnimateDead\AnimateDeadTarget.mdl
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_RaiseSkeleton
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Blademaster01
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_RaiseSkeleton
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_RaiseSkeleton
- Action DestroyEffectBJ
  - param Variable Net02
- Action SetVariable
  - param Variable Net02Removed
  - param String true
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable Blademaster
  - param String Attack Slam
- Action TriggerSleepAction
  - param String 0.25
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action KillUnit
  - param Variable UnfortunateWoman
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_SorceressDeath
  - param Variable UnfortunateWoman
- Action PlaySoundBJ
  - param Variable gg_snd_SorceressDeath
- Action SetVariable
  - param Variable Sacrifice03
  - param String true
- Action TriggerSleepAction
  - param String 0.05
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DestroyEffectBJ
  - param Variable Net03
- Action SetVariable
  - param Variable Net03Removed
  - param String true
- Action AddSpecialEffectTargetUnitBJ
  - param String origin
  - param Variable gg_unit_nvlw_0054
  - param String Abilities\Spells\Undead\AnimateDead\AnimateDeadTarget.mdl
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_RaiseSkeleton
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Blademaster02
  - param String 0
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
      - param Variable BlademasterSkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Blademaster
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Blademaster02
- Action DestroyEffectBJ
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action ResetUnitAnimation
  - param Variable Blademaster
- Action CommentString
  - param String End Cinematic
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_Blademaster_Cancel
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
  - param Preset ShowHideShow
  - param Variable FootmenLeaderboard
- Action RemoveUnit
  - param Variable TempBlademaster
- Action ForGroup
  - param Variable HideUnitsGroup
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable AAAP_Arthas
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable P_Uther
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable P_Blademaster
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable P_Blackrock
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable P_Blackrock2
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable P_Dwarves
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable P_Villagers
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset PlayerNA
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset PlayerNP
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityVulnerable
- Action ResetToGameCameraForPlayer
  - param Variable AAAP_Arthas
  - param String 0
- Action PanCameraToTimedLocForPlayer
  - param Variable AAAP_Arthas
  - param Variable CameraPosition
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Variable AAAPG_Arthas
- Action SelectGroupBJ
  - param Variable SelectionGroup
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
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
      - param String TRIGSTR_398
      - param Variable gg_snd_H02Arthas24
      - param String TRIGSTR_399
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action SetVariable
  - param Variable BlademasterQuestRecieved
  - param String true
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_012
- Action FlashQuestDialogButtonBJ
- Action QuestSetDiscoveredBJ
  - param Variable QuestBlademaster
  - param Preset DiscoveredOptionDiscovered
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Arthas
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Blademaster
  - param String 1024.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Blademaster
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Blademaster
- Action SetVariable
  - param Variable InCinematic
  - param String false
- Action EnableTrigger
  - param Variable gg_trg_Base_Is_Attacked
- Action EnableTrigger
  - param Variable gg_trg_UtherTargetDies
- Action EnableTrigger
  - param Variable gg_trg_Look_for_enemies
- Action TriggerExecute
  - param Variable gg_trg_UtherTargetDies
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Blademaster Animation
- enabled: True
- category: [7] Blademaster Cinematic
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
- Action SetUnitAnimationWithRarity
  - param Variable TempMirrorImage
  - param String stand
  - param Preset RarityControlFrequent
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable TempMirrorImage
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_MirrorImage02


##   UtherAnimation
- enabled: True
- category: [7] Blademaster Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetUnitAnimation
  - param Variable Uther
  - param String stand victory
- Action TriggerSleepAction
  - param String 0.50
- Action ResetUnitAnimation
  - param Variable Uther


##   SpawnMirrorImage
- enabled: True
- category: [7] Blademaster Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String Obla
  - param Variable P_Blademaster
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SpawnMirrorImage
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Uther
- Action SetVariable
  - param Variable TempBlademaster
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetHeroLevel
  - param Variable TempBlademaster
  - param String 2
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable TempBlademaster
  - param Preset HeroSkillMirrorImage
- Action SetUnitManaBJ
  - param Variable TempBlademaster
  - param Function GetUnitStateSwap
    - Function GetUnitStateSwap
      - param Preset UnitStateMaxMana
      - param Variable TempBlademaster
- Action EnableTrigger
  - param Variable gg_trg_____SetMirrorImage
- Action IssueImmediateOrder
  - param Variable TempBlademaster
  - param Preset UnitOrderMirrorImage


##     SetMirrorImage
- enabled: True
- category: [7] Blademaster Cinematic
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
  - param Variable TempMirrorImage
  - param Function GetSummonedUnit
    - Function GetSummonedUnit
- Action SetVariable
  - param Variable BladeImageRemoved
  - param String false
- Action TriggerSleepAction
  - param String 0.50
- Action SetUnitInvulnerable
  - param Variable TempMirrorImage
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitPositionLoc
  - param Variable TempMirrorImage
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MirrorImage01
- Action SetUnitFacingToFaceUnitTimed
  - param Variable TempMirrorImage
  - param Variable Uther
  - param String 0
- Action TriggerSleepAction
  - param String 0.50
- Action IssuePointOrderLoc
  - param Variable TempMirrorImage
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MirrorImage02
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player04
  - param Preset PlayerUnitEventSummoned


## Blademaster Cancel
- enabled: True
- category: [7] Blademaster Cinematic
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
  - param Variable BlademasterSkipped
  - param String true
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetSkyModel
  - param Preset SkyModelNone
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Variable AAAPG_Arthas
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Variable FootmenLeaderboard
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01
- Action ResetToGameCameraForPlayer
  - param Variable AAAP_Arthas
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Variable AAAP_Arthas
  - param Variable CameraPosition
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BladeImageRemoved
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action RemoveUnit
      - param Variable TempMirrorImage
  - param Function DoNothing
    - Action DoNothing
- Action ForGroup
  - param Variable HideUnitsGroup
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable AAAP_Arthas
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable P_Uther
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable P_Blademaster
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable P_Blackrock
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable P_Blackrock2
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable P_Dwarves
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable P_Villagers
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset PlayerNA
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset PlayerNP
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityVulnerable
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action SelectGroupBJ
  - param Variable SelectionGroup
- Action SetUnitPositionLoc
  - param Variable Uther
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Uther01
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Sacrifice01
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action KillUnit
      - param Variable UnluckyFootman
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Net01Removed
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action DestroyEffectBJ
      - param Variable Net01
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Sacrifice02
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action KillUnit
      - param Variable UnfortunateMan
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Net02Removed
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action DestroyEffectBJ
      - param Variable Net02
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Sacrifice03
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action KillUnit
      - param Variable UnfortunateWoman
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Net03Removed
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action DestroyEffectBJ
      - param Variable Net03
  - param Function DoNothing
    - Action DoNothing
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Arthas
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Blademaster
  - param String 1024.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action ResetUnitAnimation
  - param Variable Blademaster
- Action SetUnitInvulnerable
  - param Variable Uther
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_hwtw_0008
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_hwtw_0142
  - param Preset InvulnerabilityVulnerable
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action SetVariable
  - param Variable InCinematic
  - param String false
- Action EnableTrigger
  - param Variable gg_trg_Base_Is_Attacked
- Action EnableTrigger
  - param Variable gg_trg_UtherTargetDies
- Action EnableTrigger
  - param Variable gg_trg_Look_for_enemies
- Action TriggerExecute
  - param Variable gg_trg_UtherTargetDies
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterQuestRecieved
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Variable gg_trg_Blademaster_Cinematic
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable BlademasterQuestRecieved
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 1.00
- Action KillUnit
  - param Variable TempMirrorImage
- Action RemoveUnit
  - param Variable TempBlademaster
- Action SetVariable
  - param Variable BlademasterQuestRecieved
  - param String true
- Action DisableTrigger
  - param Variable gg_trg_Blademaster_Cinematic_Failsafe
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_011
- Action FlashQuestDialogButtonBJ
- Action QuestSetDiscoveredBJ
  - param Variable QuestBlademaster
  - param Preset DiscoveredOptionDiscovered
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Blademaster
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Blademaster
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_Blademaster_Cinematic_Queue


## AI Gold
- enabled: True
- category: [13] AI Resources
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
  - param Preset LimitOpLessThan
  - param String 1000


## AI Lumber
- enabled: True
- category: [13] AI Resources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 300
  - param Preset Player00
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player00
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThan
  - param String 300.00


## Uther Patrol to 01
- enabled: True
- category: [10] Uther
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable UtherIsDefending
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable IntroCinematicDone
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
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
- Action EnableTrigger
  - param Variable gg_trg_Uther_Reaches_01
- Action IssuePointOrderLoc
  - param Variable Uther
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Uther_Patrol_01
- Action SetVariable
  - param Variable UthersPosition
  - param String 1


## Uther Reaches 01
- enabled: True
- category: [10] Uther
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable UtherIsDefending
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 12.00
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
      - param Variable InCinematic
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action EnableTrigger
  - param Variable gg_trg_Uther_Reaches_02
- Action EnableTrigger
  - param Variable gg_trg_Uther_Patrol_to_02
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Uther_Patrol_to_02
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Uther
- Condition OperatorCompareBoolean
  - param Variable IntroCinematicDone
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Uther_Patrol_01


## Uther Patrol to 02
- enabled: True
- category: [10] Uther
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable UtherIsDefending
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable IntroCinematicDone
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
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
- Action EnableTrigger
  - param Variable gg_trg_Uther_Reaches_02
- Action IssuePointOrderLoc
  - param Variable Uther
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Uther_Patrol_02
- Action SetVariable
  - param Variable UthersPosition
  - param String 2


## Uther Reaches 02
- enabled: True
- category: [10] Uther
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable UtherIsDefending
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable IntroCinematicDone
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action TriggerSleepAction
  - param String 12.00
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
      - param Variable InCinematic
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action EnableTrigger
  - param Variable gg_trg_Uther_Reaches_01
- Action EnableTrigger
  - param Variable gg_trg_Uther_Patrol_to_01
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Uther_Patrol_to_01
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Uther
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Uther_Patrol_02


## Base Is Attacked
- enabled: True
- category: [10] Uther
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
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DisableTrigger
  - param Variable gg_trg_Uther_Patrol_to_01
- Action DisableTrigger
  - param Variable gg_trg_Uther_Patrol_to_02
- Action DisableTrigger
  - param Variable gg_trg_Uther_Reaches_01
- Action DisableTrigger
  - param Variable gg_trg_Uther_Reaches_02
- Action SetVariable
  - param Variable UtherIsDefending
  - param String true
- Action SetVariable
  - param Variable UtherTarget
  - param Function GetAttacker
    - Function GetAttacker
- Action EnableTrigger
  - param Variable gg_trg_UtherTargetDies
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_Starting_Base_01
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetAttacker
        - Function GetAttacker
  - param Preset OperatorNotEqualENE
  - param Preset Player01
- Condition OperatorCompareBoolean
  - param Variable IntroCinematicDone
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventAttacked


## UtherTargetDies
- enabled: True
- category: [10] Uther
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
    - Condition OperatorCompareBoolean
      - param Variable GameOver
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action EnableTrigger
  - param Variable gg_trg_Uther_Patrol_to_01
- Action EnableTrigger
  - param Variable gg_trg_Uther_Patrol_to_02
- Action EnableTrigger
  - param Variable gg_trg_Base_Is_Attacked
- Action SetVariable
  - param Variable UtherTarget
  - param Preset UnitNull
- Action SetVariable
  - param Variable UtherIsDefending
  - param String false
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable UtherTarget
- Condition OperatorCompareBoolean
  - param Variable IntroCinematicDone
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player00
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player04
  - param Preset PlayerUnitEventDeath
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNA
  - param Preset PlayerUnitEventDeath


## Look for enemies
- enabled: True
- category: [10] Uther
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
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
- Condition OperatorCompareBoolean
  - param Variable IntroCinematicDone
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterTimerEventPeriodic
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable UtherIsDefending
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable Uther
      - param Preset UnitOrderAttack
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable UtherTarget
  - param Function DoNothing
    - Action IfThenElse
      - param Function 
        - Condition OperatorCompareInteger
          - param Variable UthersPosition
          - param Preset OperatorEqual
          - param String 1
      - param Function DoNothing
        - Action ConditionalTriggerExecute
          - param Variable gg_trg_Uther_Patrol_to_01
      - param Function DoNothing
        - Action ConditionalTriggerExecute
          - param Variable gg_trg_Uther_Patrol_to_02


## Crate01 Is Destroyed
- enabled: True
- category: [11] Crates
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateItemLoc
  - param String I016
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Crate01
- Action PlaySoundBJ
  - param Variable gg_snd_HeroDropItem1
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_2866


## Crate02 Is Destroyed
- enabled: True
- category: [11] Crates
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateItemLoc
  - param String I017
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Crate02
- Action PlaySoundBJ
  - param Variable gg_snd_HeroDropItem1
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_2868


## Trigger Dwarves
- enabled: True
- category: [4] Dwarves
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
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 640.00
  - param Variable gg_unit_hC02_0049
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_Trigger_Dwarves_Failsafe
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Dwarves_Queue
  - param Preset CheckingIgnoringChecking


## Trigger Dwarves Failsafe
- enabled: True
- category: [4] Dwarves
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
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_TriggerDwarves
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_Trigger_Dwarves
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Dwarves_Queue
  - param Preset CheckingIgnoringChecking


## Dwarves Queue
- enabled: True
- category: [4] Dwarves
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
- Action CustomScriptCode
  - param String call status_check_location(22)
- Action DestroyEffectBJ
  - param Variable TalkFeranor
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable FeranorSteeltoe
  - param String 512
- Action SetVariable
  - param Variable DwarfVision
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetCameraTargetPositionLoc
    - Function GetCameraTargetPositionLoc
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarf_Pan_Point
  - param String 1.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarf_Pan_Point
- Action PingMinimapLocForForce
  - param Preset Force01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarf_Pan_Point
  - param String 4.00
- Action TriggerSleepAction
  - param String 1.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable FeranorSteeltoe
  - param String TRIGSTR_235
  - param Variable gg_snd_H02DwarfHunter17
  - param String TRIGSTR_236
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
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
      - param String TRIGSTR_424
      - param Variable gg_snd_H02Arthas15
      - param String TRIGSTR_425
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable FeranorSteeltoe
  - param String TRIGSTR_239
  - param Variable gg_snd_H02DwarfScout16
  - param String TRIGSTR_240
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
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
      - param String TRIGSTR_444
      - param Variable gg_snd_H02Arthas18
      - param String TRIGSTR_445
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable FeranorSteeltoe
  - param String TRIGSTR_243
  - param Variable gg_snd_H02DwarfHunter18A
  - param String TRIGSTR_244
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ForGroup
  - param Variable Dwarves
  - param Function DoNothing
    - Action RescueUnitBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable AAAP_Arthas
      - param Preset ChangeColorTrue
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_019
- Action QuestSetDiscoveredBJ
  - param Variable QuestSearinox
  - param Preset DiscoveredOptionDiscovered
- Action FlashQuestDialogButtonBJ
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Arthas
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dragon_001
  - param String 768.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dragon_001
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dragon_001
  - param String 3.00
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable Searinox
  - param Variable AAAP_Arthas
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable Searinox
  - param Variable AAAP_Arthas
- Action TriggerSleepAction
  - param String 5.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_020
- Action # SetPlayerUnitAvailableBJ
  - param String hrif
  - param Preset AvailabilityOptionAvailable
  - param Variable AAAP_Arthas
- Action # SetPlayerUnitAvailableBJ
  - param String hbla
  - param Preset AvailabilityOptionAvailable
  - param Variable AAAP_Arthas
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Heart Cinematic
- enabled: True
- category: [4] Dwarves
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
- Condition OperatorCompareInteger
  - param Function GetPlayerTechMaxAllowedSwap
    - Function GetPlayerTechMaxAllowedSwap
      - param String I01b
      - param Variable AAAP_Arthas
  - param Preset OperatorGreaterEq
  - param String 1
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Dwarves
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Heart_Cinematic_Queue
  - param Preset CheckingIgnoringChecking


## Heart Cinematic Queue
- enabled: True
- category: [4] Dwarves
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
- Action DisableTrigger
  - param Variable gg_trg_Fail_Searinox_Quest_01
- Action DestroyEffectBJ
  - param Variable TalkFeranor
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarves
  - param String 1.00
- Action PingMinimapLocForForce
  - param Preset Force01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarves
  - param String 5.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarf_Pan_Point
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Variable gg_trg_Heart_Cinematic_Queue
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force01
  - param Variable FeranorSteeltoe
  - param String TRIGSTR_247
  - param Variable gg_snd_H02Dwarf21
  - param String TRIGSTR_248
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Variable gg_trg_Heart_Cinematic_Queue
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
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
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Variable gg_trg_Heart_Cinematic_Queue
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Is Blacksmith Destroyed or Not?
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Heart_Cinematic_Queue_B
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Heart_Cinematic_Queue_C


## Heart Cinematic Queue B
- enabled: True
- category: [4] Dwarves
- starts off: False
- is custom text: False
- run on map init: False
```description
Feranor is no longer made invulnerable and vulnerable on the fly, as he is now invulnerable from the start of the mission.
```
### Functions
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable BlacksmithDestroyed
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CommentString
  - param String Blacksmith is Alive
- Action SetUnitPathing
  - param Variable FeranorSteeltoe
  - param Preset PathingOff
- Action # SetUnitInvulnerable
  - param Variable FeranorSteeltoe
  - param Preset InvulnerabilityInvulnerable
- Action IssuePointOrderLoc
  - param Variable FeranorSteeltoe
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Feranor_Destination
- Action TriggerSleepAction
  - param String 1.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Variable gg_trg_Heart_Cinematic_Queue
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable FeranorSteeltoe
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_BlacksmithWhat1
  - param Variable DwarvenBlacksmith
- Action PlaySoundBJ
  - param Variable gg_snd_BlacksmithWhat1
- Action TriggerSleepAction
  - param String 2.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Variable gg_trg_Heart_Cinematic_Queue
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable FeranorSteeltoe
- Action IssuePointOrderLoc
  - param Variable FeranorSteeltoe
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarf_Pan_Point
- Action TriggerSleepAction
  - param String 1.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Variable gg_trg_Heart_Cinematic_Queue
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action # SetUnitInvulnerable
  - param Variable FeranorSteeltoe
  - param Preset InvulnerabilityVulnerable
- Action CommentString
  - param String Give Orb
- Action CustomScriptCode
  - param String call status_check_location(12)
- Action UnitAddItemSwapped
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Variable Arthas
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeItemAcquired
  - param String TRIGSTR_543
- Action TriggerSleepAction
  - param String 5.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Variable gg_trg_Heart_Cinematic_Queue
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_544
- Action QuestSetCompletedBJ
  - param Variable QuestSearinox
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestSearinoxRequirementReturn
  - param Preset CompletionOptionCompleted
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_Heart_Cinematic_Queue


## Heart Cinematic Queue C
- enabled: True
- category: [4] Dwarves
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
  - param Variable BlacksmithDestroyed
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CommentString
  - param String Blacksmith is Destroyed
- Action CommentString
  - param String Give Orb
- Action CustomScriptCode
  - param String call status_check_location(12)
- Action UnitAddItemSwapped
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Variable Arthas
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeItemAcquired
  - param String TRIGSTR_547
- Action TriggerSleepAction
  - param String 5.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QueuedTriggerRemoveBJ
      - param Variable gg_trg_Heart_Cinematic_Queue
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_548
- Action QuestSetCompletedBJ
  - param Variable QuestSearinox
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestSearinoxRequirementReturn
  - param Preset CompletionOptionCompleted
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_Heart_Cinematic_Queue


## Fail Searinox Quest 01
- enabled: True
- category: [4] Dwarves
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
  - param Variable gg_trg_Fail_Searinox_Quest_02
- Action DisableTrigger
  - param Variable gg_trg_Heart_Cinematic
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action SetVariable
  - param Variable SearinoxQuestFailed
  - param String true
- Action QuestSetDiscoveredBJ
  - param Variable QuestSearinox
  - param Preset DiscoveredOptionDiscovered
- Action QuestSetFailedBJ
  - param Variable QuestSearinox
  - param Preset FailureOptionFailed
- Action FlashQuestDialogButtonBJ
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_021
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarf_Pan_Point
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarves
  - param String 7.00
- Action DestroyEffectBJ
  - param Variable TalkFeranor
- Action TriggerSleepAction
  - param String 0.20
- Action VolumeGroupResetBJ
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable FeranorSteeltoe
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player02
  - param Preset PlayerUnitEventDeath


## Fail Searinox Quest 02
- enabled: True
- category: [4] Dwarves
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
  - param Variable gg_trg_Fail_Searinox_Quest_01
- Action DisableTrigger
  - param Variable gg_trg_Heart_Cinematic
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action SetVariable
  - param Variable SearinoxQuestFailed
  - param String true
- Action QuestSetDiscoveredBJ
  - param Variable QuestSearinox
  - param Preset DiscoveredOptionDiscovered
- Action QuestSetFailedBJ
  - param Variable QuestSearinox
  - param Preset FailureOptionFailed
- Action FlashQuestDialogButtonBJ
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_022
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarf_Pan_Point
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarves
  - param String 7.00
- Action DestroyEffectBJ
  - param Variable TalkFeranor
- Action TriggerSleepAction
  - param String 0.20
- Action VolumeGroupResetBJ
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable DwarvenBlacksmith
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player02
  - param Preset PlayerUnitEventDeath


## Blacksmith Dies
- enabled: True
- category: [4] Dwarves
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
  - param Variable BlacksmithDestroyed
  - param String true
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_hbla_0012
  - param Preset UnitEventDeath


## Dragon Intro
- enabled: True
- category: [9] Searinox
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
  - param Variable gg_trg_Dragon_Intro_Queue
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
  - param Variable gg_rct_DragonAttack01


## Dragon Intro Queue
- enabled: True
- category: [9] Searinox
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ResetToGameCameraForPlayer
  - param Variable AAAP_Arthas
  - param String 0.00
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_nser_0048
  - param Variable AAAP_Arthas
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Arthas
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dragon_001
  - param String 512.00
- Action SetVariable
  - param Variable DragonVision
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SmartCameraPanBJ
  - param Variable AAAP_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Searinox
  - param String 0.5
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Searinox
  - param String 5.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Searinox
- Action TriggerSleepAction
  - param String 0.15
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Searinox
  - param String TRIGSTR_251
  - param Variable gg_snd_H02Searinox19
  - param String TRIGSTR_252
  - param Preset AddSetToSub
  - param String 2.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action FogModifierStop
  - param Variable DragonVision
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Spawn Skeletons
- enabled: True
- category: [9] Searinox
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
  - param Variable gg_snd_GraveYardWhat1
  - param Variable Searinox
- Action PlaySoundBJ
  - param Variable gg_snd_GraveYardWhat1
- Action TriggerSleepAction
  - param String 0.50
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nska
  - param Preset PlayerNA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Skeleton01
  - param String 270.00
- Action SetVariable
  - param Variable Skeleton01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitAnimation
  - param Variable Skeleton01
  - param String birth
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_SkeletonYesAttack1
  - param Variable Skeleton01
- Action PlaySoundBJ
  - param Variable gg_snd_SkeletonYesAttack1
- Action TriggerSleepAction
  - param Function GetRandomReal
    - Function GetRandomReal
      - param String 0.01
      - param String 0.03
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nska
  - param Preset PlayerNA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Skeleton04
  - param String 270.00
- Action SetVariable
  - param Variable Skeleton04
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitAnimation
  - param Variable Skeleton04
  - param String birth
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_SkeletonYesAttack2
  - param Variable Skeleton04
- Action PlaySoundBJ
  - param Variable gg_snd_SkeletonYesAttack2
- Action TriggerSleepAction
  - param Function GetRandomReal
    - Function GetRandomReal
      - param String 0.01
      - param String 0.03
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nska
  - param Preset PlayerNA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Skeleton02
  - param String 270.00
- Action SetVariable
  - param Variable Skeleton02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitAnimation
  - param Variable Skeleton02
  - param String birth
- Action PlaySoundBJ
  - param Variable gg_snd_SkeletonYesAttack1
- Action TriggerSleepAction
  - param Function GetRandomReal
    - Function GetRandomReal
      - param String 0.01
      - param String 0.03
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nska
  - param Preset PlayerNA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Skeleton03
  - param String 270.00
- Action SetVariable
  - param Variable Skeleton03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitAnimation
  - param Variable Skeleton03
  - param String birth
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_SkeletonYesAttack3
  - param Variable Skeleton03
- Action PlaySoundBJ
  - param Variable gg_snd_SkeletonYesAttack3
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nser_0048


## Drop Heart of Searinox
- enabled: True
- category: [9] Searinox
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
- Action CreateItemLoc
  - param String I01b
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nser_0048
- Action SetVariable
  - param Variable HeartofSearinox
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
- Action TriggerSleepAction
  - param String 1.00
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Heart_of_Searinox_Queue
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nser_0048
  - param Preset UnitEventDeath


## Heart of Searinox Queue
- enabled: True
- category: [9] Searinox
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
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
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable Arthas
  - param String TRIGSTR_253
  - param Variable gg_snd_H02Arthas20
  - param String TRIGSTR_254
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
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
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeUpdated
  - param String TRIGSTR_016
- Action QuestItemSetCompletedBJ
  - param Variable QuestSearinoxRequirementSlay
  - param Preset CompletionOptionCompleted
- Action FlashQuestDialogButtonBJ
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarves
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Dwarves
  - param String 4.00
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Player Gets the Heart of Searinox
- enabled: True
- category: [9] Searinox
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SearinoxQuestFailed
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action AddSpecialEffectTargetUnitBJ
  - param String overhead
  - param Variable FeranorSteeltoe
  - param String Abilities\Spells\Other\TalkToMe\TalkToMe.mdl
- Action SetVariable
  - param Variable TalkFeranor
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Condition OperatorCompareItem
  - param Function GetManipulatedItem
    - Function GetManipulatedItem
  - param Preset OperatorEqualENE
  - param Variable HeartofSearinox
- Condition OperatorCompareBoolean
  - param Variable SearinoxQuestFailed
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventHeroPickUpItem


## Murlocs
- enabled: True
- category: [8] TriggerMurlocs
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
  - param Variable gg_trg_Murlocs_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Arthas
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_TriggerMurlocs


## Murlocs Queue
- enabled: True
- category: [8] TriggerMurlocs
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
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TriggerMurlocs
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TriggerMurlocs
  - param String 7.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Variable AAAP_Arthas
              - param String hfoo
      - param Preset OperatorGreater
      - param String 0
  - param Function DoNothing
    - Action SetSpeechVolumeGroupsBJ
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfPlayerAndTypeId
            - Function GetUnitsOfPlayerAndTypeId
              - param Variable AAAP_Arthas
              - param String hfoo
      - param Preset OperatorGreater
      - param String 0
  - param Function DoNothing
    - Action TransmissionFromUnitTypeWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable AAAP_Arthas
      - param String hfoo
      - param String TRIGSTR_556
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_TriggerMurlocs
      - param Variable gg_snd_H02VillagerM39
      - param String TRIGSTR_557
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## BlademasterDies
- enabled: True
- category: [6] Blade Master
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
- Action CustomScriptCode
  - param String call status_check_location(20)
- Action SetVariable
  - param Variable VictoryCondition02
  - param String true
- Action SetVariable
  - param Variable BlademasterHasBeenSlain
  - param String true
- Action DisableTrigger
  - param Variable gg_trg_Blademaster_Cinematic
- Action DisableTrigger
  - param Variable gg_trg_Blademaster_Cinematic_Failsafe
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_HeroBladeMasterDeath
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Blademaster
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_HeroBladeMasterDeath
- Action QuestSetCompletedBJ
  - param Variable QuestBlademaster
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestBladeRequirementSlay
  - param Preset CompletionOptionCompleted
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Blademaster
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Blademaster
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_515
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Victory_Cinematic
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Obla_0071
  - param Preset UnitEventDeath


## HINTAltar
- enabled: True
- category: [0] General Triggers
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
  - param Variable gg_trg_HINTAltar_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable AltarHintTimer


## HINTAltar Queue
- enabled: True
- category: [0] General Triggers
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
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_549
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable AAAP_Arthas
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
      - param Variable AAAPG_Arthas
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Function GetEnumUnit
            - Function GetEnumUnit
      - param String 7.00
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable AAAP_Arthas
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
      - param Variable AAAP_Arthas
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Function GetEnumUnit
            - Function GetEnumUnit
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## HINTArthasDies
- enabled: True
- category: [0] General Triggers
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
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_HINTArthasDies_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## HINTArthasDies Queue
- enabled: True
- category: [0] General Triggers
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
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_025
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable AAAP_Arthas
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
      - param Variable AAAPG_Arthas
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Function GetEnumUnit
            - Function GetEnumUnit
      - param String 7.00
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable AAAP_Arthas
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
      - param Variable AAAP_Arthas
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Function GetEnumUnit
            - Function GetEnumUnit
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## HINTUpgradeTowers
- enabled: True
- category: [0] General Triggers
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
  - param Variable gg_trg_HINTUpgradeTowers_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param String hwtw
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerSelectionEventBJ
  - param Preset Player01
  - param Preset SelDeselOptionSel


## HINTUpgradeTowers Queue
- enabled: True
- category: [0] General Triggers
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
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_028
- Action ForGroup
  - param Function GetUnitsOfPlayerAndTypeId
    - Function GetUnitsOfPlayerAndTypeId
      - param Variable AAAP_Arthas
      - param String hwtw
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Variable AAAPG_Arthas
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Function GetEnumUnit
            - Function GetEnumUnit
      - param String 7.00
- Action ForGroup
  - param Function GetUnitsOfPlayerAndTypeId
    - Function GetUnitsOfPlayerAndTypeId
      - param Variable AAAP_Arthas
      - param String hwtw
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Variable AAAP_Arthas
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Function GetEnumUnit
            - Function GetEnumUnit
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## HINTMultiple Builders
- enabled: True
- category: [0] General Triggers
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
  - param Variable gg_trg_HINTMultiple_Builders_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareBoolean
  - param Function IsUnitInGroup
    - Function IsUnitInGroup
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Variable BuildingsUnderConstruction
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerSelectionEventBJ
  - param Preset Player01
  - param Preset SelDeselOptionSel


## HINTMultiple Builders Queue
- enabled: True
- category: [0] General Triggers
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
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_027
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action PingMinimapLocForForce
  - param Variable AAAPG_Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 7.00
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## HINTMilitia
- enabled: True
- category: [0] General Triggers
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
  - param Variable gg_trg_HINTMilitia_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetAttackedUnitBJ
        - Function GetAttackedUnitBJ
  - param Preset OperatorEqualENE
  - param String hpea
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetAttacker
        - Function GetAttacker
  - param Preset OperatorNotEqualENE
  - param Variable AAAP_Arthas
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventAttacked


## HINTMilitia Queue
- enabled: True
- category: [0] General Triggers
- starts off: True
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
- Action TransmissionFromUnitTypeWithNameBJ
  - param Variable AAAPG_Arthas
  - param Variable AAAP_Arthas
  - param String hfoo
  - param String TRIGSTR_261
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_ngol_0009
  - param Variable gg_snd_H02Footman38
  - param String TRIGSTR_262
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_026
- Action ForGroup
  - param Function GetUnitsOfPlayerAndTypeId
    - Function GetUnitsOfPlayerAndTypeId
      - param Variable AAAP_Arthas
      - param String htow
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Variable AAAPG_Arthas
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Function GetEnumUnit
            - Function GetEnumUnit
      - param String 7.00
- Action ForGroup
  - param Function GetUnitsOfPlayerAndTypeId
    - Function GetUnitsOfPlayerAndTypeId
      - param Variable AAAP_Arthas
      - param String htow
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Variable AAAP_Arthas
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Function GetEnumUnit
            - Function GetEnumUnit
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## BuildingUnderConstruction
- enabled: True
- category: [0] General Triggers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupAddUnitSimple
  - param Function GetConstructingStructure
    - Function GetConstructingStructure
  - param Variable BuildingsUnderConstruction
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventConstruct_Start


## BuildingCompletesConstruction
- enabled: True
- category: [0] General Triggers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetConstructedStructure
    - Function GetConstructedStructure
  - param Variable BuildingsUnderConstruction
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventConstruct_Finish


## BuildingCancelled
- enabled: True
- category: [0] General Triggers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetCancelledStructure
    - Function GetCancelledStructure
  - param Variable BuildingsUnderConstruction
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventConstruct_Cancel


## Nightfall
- enabled: True
- category: [0] General Triggers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Turn on Firepit doodads
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String NOfp
  - param Variable gg_rct_Firepit01
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String NOfp
  - param Variable gg_rct_Firepit02
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String NOfg
  - param Variable gg_rct_Firepit03
- Event TriggerRegisterGameStateEventTimeOfDay
  - param Preset LimitOpEqual
  - param String 18.00


## Daybreak
- enabled: True
- category: [0] General Triggers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Turn off Firepit doodads
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String NOfp
  - param Variable gg_rct_Firepit01
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String NOfp
  - param Variable gg_rct_Firepit02
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String NOfg
  - param Variable gg_rct_Firepit03
- Event TriggerRegisterGameStateEventTimeOfDay
  - param Preset LimitOpEqual
  - param String 6.00


## Disable Arthas Experience
- enabled: True
- category: [0] General Triggers
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Function GetHeroLevel
    - Function GetHeroLevel
      - param Variable Arthas
  - param Preset OperatorGreaterEq
  - param String 3
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Arthas
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventHero_Level


## Victory Cinematic
- enabled: True
- category: [5] VictoryDefeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable VictoryCondition01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable VictoryCondition02
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_All_Buildings_Destroyed
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable Uther
  - param Preset InvulnerabilityInvulnerable
- Action TriggerSleepAction
  - param String 1.00
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Victory_Queue
  - param Preset CheckingIgnoringIgnoring


## Victory Queue
- enabled: True
- category: [5] VictoryDefeat
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
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Variable AAAPG_Arthas
- Action TriggerSleepAction
  - param String 1.00
- Action CommentString
  - param String Now Skippable
- Action EnableTrigger
  - param Variable gg_trg_Victory_Cinematic_Cancel
- Action ClearSelection
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End01
  - param Variable AAAP_Arthas
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End02
  - param Variable AAAP_Arthas
  - param String 15.00
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Function DoNothing
    - Action IssueImmediateOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderStop
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ShowUnitShow
  - param Variable Arthas
- Action ShowUnitShow
  - param Variable Uther
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Uther
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
          - param Variable gg_rct_ArthasFinal
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasFinal
- Action SetUnitPositionLoc
  - param Variable Uther
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_UtherFinal
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Uther
  - param String 0
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Uther
  - param Variable Arthas
  - param String 0
- Action IssueImmediateOrder
  - param Variable Arthas
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable Uther
  - param Preset UnitOrderHoldPosition
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
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictorySkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PlayThematicMusicBJ
  - param Preset MusicThemeHeroicVictory
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End01
  - param Preset Player01
  - param String 15.00
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force01
  - param Variable Uther
  - param String TRIGSTR_507
  - param Variable gg_snd_H02Uther25
  - param String TRIGSTR_508
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H02Uther25
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictorySkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force01
  - param Variable Arthas
  - param String TRIGSTR_509
  - param Variable gg_snd_H02Arthas26
  - param String TRIGSTR_510
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H02Arthas26
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictorySkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force01
  - param Variable Uther
  - param String TRIGSTR_511
  - param Variable gg_snd_H02Uther27
  - param String TRIGSTR_512
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_H02Uther27
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictorySkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 0.25
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictorySkipped
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
- Action CommentString
  - param String No Longer Skippable
- Action DisableTrigger
  - param Variable gg_trg_Victory_Cinematic_Cancel
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
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictorySkipped
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Change Mission
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run


## Victory Cinematic Cancel
- enabled: True
- category: [5] VictoryDefeat
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
  - param Variable VictorySkipped
  - param String true
- Action ClearSelection
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Function DoNothing
    - Action IssueImmediateOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderStop
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ShowUnitShow
  - param Variable Arthas
- Action ShowUnitShow
  - param Variable Uther
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Uther
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
          - param Variable gg_rct_ArthasFinal
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasFinal
- Action SetUnitPositionLoc
  - param Variable Uther
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_UtherFinal
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Uther
  - param String 0
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Uther
  - param Variable Arthas
  - param String 0
- Action IssueImmediateOrder
  - param Variable Arthas
  - param Preset UnitOrderHoldPosition
- Action IssueImmediateOrder
  - param Variable Uther
  - param Preset UnitOrderHoldPosition
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
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## All Buildings Destroyed
- enabled: True
- category: [5] VictoryDefeat
- starts off: False
- is custom text: False
- run on map init: False
```description
DefeatHappened should stop all possible cinematics and text messages. If it doesn't, add a condition to whatever is displaying upon defeat that "DefeatHappened = False."
```
### Functions
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_Victory_Cinematic
- Action TriggerExecute
  - param Variable gg_trg_Stop_Scripted_Events
- Action QuestMessageBJ
  - param Variable AAAPG_Arthas
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_007
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player01
      - param Preset InclusionInclude
  - param Preset OperatorEqual
  - param String 0
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CustomDefeatBJ
  - param Variable AAAP_Arthas
  - param String TRIGSTR_029
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## Stop Scripted Events
- enabled: True
- category: [5] VictoryDefeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable SearinoxQuestFailed
  - param String true


## Next Level Run
- enabled: True
- category: [2] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Run next level
- Action SetNextLevelBJ
  - param String Maps\AP_Campaign\Human03.w3x
- Action CustomVictoryBJ
  - param Variable AAAP_Arthas
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse


## Victory Cheat
- enabled: True
- category: [2] Level Data
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


## Defeat Cheat
- enabled: True
- category: [2] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Variable AAAP_Arthas
  - param String TRIGSTR_658
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player01


## Orc Base Dies
- enabled: True
- category: [15] Orc Base
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable orc_buildings_killed
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable orc_buildings_killed
      - param Preset OperatorAdd
      - param String 1
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable orc_buildings_killed
      - param Preset OperatorGreaterEq
      - param String 3
  - param Function DoNothing
    - Action CustomScriptCode
      - param String call status_check_location(25)
  - param Function DoNothing
    - Action DoNothing
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_obea_0117
  - param Preset UnitEventDeath
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_obar_0118
  - param Preset UnitEventDeath
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_ofor_0059
  - param Preset UnitEventDeath

