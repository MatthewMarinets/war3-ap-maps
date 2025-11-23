version = TFT

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 24 | Archipelago | False |
| 0 | Initialization | False |
| 10 | Difficulty | False |
| 1 | LoadHeroes | False |
| 2 | LimitHeroXP | False |
| 3 | IntroCinematic | False |
| 17 | BoatSetup | False |
| 14 | LightBlueHarvest | False |
| 15 | Mission Displays | False |
| 16 | ShipsDie | False |
| 18 | WoodChopping | False |
| 8 | VoiceOver MustUseMercenaries | False |
| 9 | VoiceOver DamnUther | False |
| 12 | VoiceOver BurnShip1 | False |
| 13 | VoiceOver BurnShip2 | False |
| 11 | Hints | False |
| 23 | GauntletCinematic | False |
| 4 | ExitCinematicVictory | False |
| 7 | ExitCinematicDefeat | False |
| 21 | Level Changing | False |
| 5 | VictoryConditionChecks | False |
| 6 | DefeatConditionChecks | False |
| 20 | Cheat Code Support | False |
| 19 | DEBUG | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| Arthas | unit | . | . |
| Muradin | unit | . | . |
| IntroCinematicRunning | boolean | . | . |
| IntroCinematicEscape | boolean | . | . |
| ExitCinematicVictoryRunning | boolean | . | . |
| ExitCinematicVictoryEscape | boolean | . | . |
| ExitCinematicDefeatEscape | boolean | . | . |
| ExitCinematicDefeatRunning | boolean | . | . |
| Emissary | unit | . | . |
| EmissaryGuard00 | unit | . | . |
| EmissaryGuard01 | unit | . | . |
| Captain | unit | . | . |
| HumanTraitorousScum | group | . | . |
| ShipsRemaining | leaderboard | . | . |
| PeasantsChoppingTimer | timer | . | . |
| CountdownTimerWindow | timerdialog | . | . |
| NumberShipsRemaining | integer | . | 5 |
| Ship1 | destructable | . | . |
| Peasant01 | unit | . | . |
| Peasant02 | unit | . | . |
| QuestDestroyShips | quest | . | . |
| VisibilityBoat01 | fogmodifier | . | . |
| VisibilityBoat02 | fogmodifier | . | . |
| VisibilityBoat03 | fogmodifier | . | . |
| VisibilityBoat04 | fogmodifier | . | . |
| VisibilityBoat05 | fogmodifier | . | . |
| WoodTimer01 | timer | . | . |
| WoodTimer02 | timer | . | . |
| WoodTimer03 | timer | . | . |
| WoodTimer04 | timer | . | . |
| WoodTimer05 | timer | . | . |
| WoodTimer06 | timer | . | . |
| WoodTimer07 | timer | . | . |
| ExitVictoryKnight01 | unit | . | . |
| ExitVictoryKnight02 | unit | . | . |
| ExitVictoryMerc01 | unit | . | . |
| ExitVictoryMerc02 | unit | . | . |
| ExitVictoryMerc03 | unit | . | . |
| ExitVictoryPeasant01 | unit | . | . |
| ExitVictoryPeasant02 | unit | . | . |
| ExitVictoryPeasant03 | unit | . | . |
| ExitVictoryPeasant04 | unit | . | . |
| DogTimer01 | timer | . | . |
| DogTimer02 | timer | . | . |
| DogTimer03 | timer | . | . |
| DogTimer04 | timer | . | . |
| VisibilityTrees | fogmodifier | . | . |
| DifficultyTimerFactor | real | . | . |
| QuestReqShips | questitem | . | . |
| QuestReqTimer | questitem | . | . |
| UnitGroupBlueDragon | group | . | . |
| GauntletCinematicRunning | boolean | . | . |
| GauntletCinematicEscape | boolean | . | . |
| GameOver | boolean | . | false |

# Triggers
## fileio
- enabled: True
- category: [24] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## map_config
- enabled: True
- category: [24] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## status
- enabled: True
- category: [24] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## heroes
- enabled: True
- category: [24] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## item_locations
- enabled: True
- category: [24] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## debug
- enabled: True
- category: [24] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## zoom
- enabled: True
- category: [24] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## irregulars
- enabled: True
- category: [24] Archipelago
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
  - param Preset CampaignIndexH
- Action TriggerExecute
  - param Variable gg_trg_InitializeVariables
- Action TriggerExecute
  - param Variable gg_trg_StartingResources
- Action TriggerExecute
  - param Variable gg_trg_InitializeAlliances
- Action TriggerExecute
  - param Variable gg_trg_StartingEnvironment
- Action TriggerExecute
  - param Variable gg_trg_StartingQuest
- Action TriggerExecute
  - param Variable gg_trg_LoadHeroes
- Action TriggerExecute
  - param Variable gg_trg_StartingMusic
- Action TriggerExecute
  - param Variable gg_trg_SetupScorescreen
- Action TriggerExecute
  - param Variable gg_trg_TriggerIntroCinematic
- Event MapInitializationEvent


## InitializeAlliances
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
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Preset Player06
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset Player06
  - param Preset Player04
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Preset Player04
  - param Preset AllianceSettingAllied


## InitializeVariables
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
  - param Variable gg_unit_hcth_0026
- Action SetVariable
  - param Variable Peasant01
  - param Variable gg_unit_hpea_0035
- Action SetVariable
  - param Variable Peasant02
  - param Variable gg_unit_hpea_0032
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_UnitGroupBlueDragon
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable UnitGroupBlueDragon
- Action CommentString
  - param String DIFFICULTY FACTOR FOR TIMERS
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyEasy
  - param Function 
    - Action SetVariable
      - param Variable DifficultyTimerFactor
      - param String 5.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyNormal
  - param Function 
    - Action SetVariable
      - param Variable DifficultyTimerFactor
      - param String 5.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function 
    - Action SetVariable
      - param Variable DifficultyTimerFactor
      - param String 3.00
  - param Function DoNothing
    - Action DoNothing


## StartingResources
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
  - param String 1000
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateGoldGathered
  - param String 1000
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateLumber
  - param String 500
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateLumberGathered
  - param String 500


## StartingEnvironment
- enabled: True
- category: [0] Initialization
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
- Action SetTimeOfDay
  - param String 7.00
- Action UseTimeOfDayBJ
  - param Preset OnOffOff


## StartingQuest
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
  - param String TRIGSTR_034
  - param String TRIGSTR_035
  - param String ReplaceableTextures\CommandButtons\BTNFire.tga
- Action SetVariable
  - param Variable QuestDestroyShips
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestDestroyShips
  - param String TRIGSTR_064
- Action SetVariable
  - param Variable QuestReqShips
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Variable QuestDestroyShips
  - param String TRIGSTR_065
- Action SetVariable
  - param Variable QuestReqTimer
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ


## StartingMusic
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
  - param Preset MusicThemeTragicConfrontation
- Action SetMapMusicIndexedBJ
  - param Preset MusicFileMusic
  - param String 1


## SetupScorescreen
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
  - param Preset Player04
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player08
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player09


## Easy
- enabled: True
- category: [10] Difficulty
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerHandicapBJ
  - param Preset Player04
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player06
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset PlayerNA
  - param Preset RealHandicapEasy
- Action CommentString
  - param String FINAL FIGHT
- Action RemoveUnit
  - param Variable gg_unit_unec_0123
- Action RemoveUnit
  - param Variable gg_unit_uabo_0117
- Action CommentString
  - param String GRAVEYARD SKELETONS
- Action RemoveUnit
  - param Variable gg_unit_uske_0140
- Action RemoveUnit
  - param Variable gg_unit_uske_0139
- Action RemoveUnit
  - param Variable gg_unit_uske_0138
- Action RemoveUnit
  - param Variable gg_unit_uske_0137
- Action RemoveUnit
  - param Variable gg_unit_uske_0125
- Action RemoveUnit
  - param Variable gg_unit_uske_0124
- Action CommentString
  - param String MURLOCS
- Action RemoveUnit
  - param Variable gg_unit_nmrr_0149
- Action RemoveUnit
  - param Variable gg_unit_nmrm_0145
- Action RemoveUnit
  - param Variable gg_unit_nmrr_0144
- Action CommentString
  - param String NERUBIANS
- Action RemoveUnit
  - param Variable gg_unit_nnws_0141
- Action RemoveUnit
  - param Variable gg_unit_nnwa_0146
- Action CommentString
  - param String INTRO UNDEAD
- Action RemoveUnit
  - param Variable gg_unit_unec_0142
- Action RemoveUnit
  - param Variable gg_unit_unec_0143
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyEasy
- Event MapInitializationEvent


## Normal
- enabled: True
- category: [10] Difficulty
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String FINAL FIGHT
- Action RemoveUnit
  - param Variable gg_unit_unec_0123
- Action RemoveUnit
  - param Variable gg_unit_uabo_0117
- Action CommentString
  - param String GRAVEYARD SKELETONS
- Action RemoveUnit
  - param Variable gg_unit_uske_0140
- Action RemoveUnit
  - param Variable gg_unit_uske_0139
- Action RemoveUnit
  - param Variable gg_unit_uske_0138
- Action RemoveUnit
  - param Variable gg_unit_uske_0137
- Action RemoveUnit
  - param Variable gg_unit_uske_0125
- Action RemoveUnit
  - param Variable gg_unit_uske_0124
- Action CommentString
  - param String MURLOCS
- Action RemoveUnit
  - param Variable gg_unit_nmrr_0149
- Action RemoveUnit
  - param Variable gg_unit_nmrm_0145
- Action RemoveUnit
  - param Variable gg_unit_nmrr_0144
- Action CommentString
  - param String NERUBIANS
- Action RemoveUnit
  - param Variable gg_unit_nnws_0141
- Action RemoveUnit
  - param Variable gg_unit_nnwa_0146
- Action CommentString
  - param String INTRO UNDEAD
- Action RemoveUnit
  - param Variable gg_unit_unec_0142
- Action RemoveUnit
  - param Variable gg_unit_unec_0143
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyNormal
- Event MapInitializationEvent


## Hard
- enabled: True
- category: [10] Difficulty
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String SUPPLY
- Action RemoveUnit
  - param Variable gg_unit_hhou_0020
- Action RemoveUnit
  - param Variable gg_unit_hhou_0127
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard
- Event MapInitializationEvent


## LoadHeroes
- enabled: True
- category: [1] LoadHeroes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action InitGameCacheBJ
  - param String Campaigns.w3v
- Action TriggerExecute
  - param Variable gg_trg_LoadArthas
- Action TriggerExecute
  - param Variable gg_trg_LoadMuradin


## LoadArthas
- enabled: True
- category: [1] LoadHeroes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RestoreUnitLocFacingAngleBJ
  - param String Arthas
  - param String Human08
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroInitialArthas
  - param String 0.00
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
  - param String Hart
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroInitialArthas
  - param String 0.00
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
  - param Preset HeroSkillHolyBolt
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
  - param Preset HeroSkillDevotionAura
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDivineShield
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillDivineShield
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillResurrection


## LoadMuradin
- enabled: True
- category: [1] LoadHeroes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RestoreUnitLocFacingAngleBJ
  - param String Muradin
  - param String Human08
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroInitialMuradin
  - param String 0.00
- Action SetVariable
  - param Variable Muradin
  - param Function GetLastRestoredUnitBJ
    - Function GetLastRestoredUnitBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Muradin
      - param Preset OperatorNotEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String Hmbr
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroInitialMuradin
  - param String 0.00
- Action SetVariable
  - param Variable Muradin
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetHeroLevel
  - param Variable Muradin
  - param String 6
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Muradin
  - param Preset HeroSkillStormBolt
- Action SelectHeroSkill
  - param Variable Muradin
  - param Preset HeroSkillStormBolt
- Action SelectHeroSkill
  - param Variable Muradin
  - param Preset HeroSkillThunderClap
- Action SelectHeroSkill
  - param Variable Muradin
  - param Preset HeroSkillBash
- Action SelectHeroSkill
  - param Variable Muradin
  - param Preset HeroSkillBash
- Action SelectHeroSkill
  - param Variable Muradin
  - param Preset HeroSkillAvatar


## LimitArthas
- enabled: True
- category: [2] LimitHeroXP
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
  - param String 9
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventHero_Level


## LimitMuradin
- enabled: True
- category: [2] LimitHeroXP
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Muradin
- Condition OperatorCompareUnit
  - param Function GetLevelingUnit
    - Function GetLevelingUnit
  - param Preset OperatorEqualENE
  - param Variable Muradin
- Condition OperatorCompareInteger
  - param Function GetHeroLevel
    - Function GetHeroLevel
      - param Variable Muradin
  - param Preset OperatorGreaterEq
  - param String 8
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventHero_Level


## TriggerIntroCinematic
- enabled: True
- category: [3] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable IntroCinematicRunning
  - param String true
- Action EnableTrigger
  - param Variable gg_trg_IntroCinematicEscape
- Action TriggerExecute
  - param Variable gg_trg_IntroCinematicMode
- Action TriggerExecute
  - param Variable gg_trg_IntroActorSetup
- Action TriggerExecute
  - param Variable gg_trg_IntroInitialCamera
- Action TriggerExecute
  - param Variable gg_trg_IntroZeppelinMoves


## IntroCinematicMode
- enabled: True
- category: [3] IntroCinematic
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
- Action SetSkyModel
  - param Preset SkyModelSky05
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean01
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean02
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean03
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean04
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean05
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_OCean06
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_OCean07
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_OCean08
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_OCean09


## IntroInitialCamera
- enabled: True
- category: [3] IntroCinematic
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
  - param Variable gg_cam_IntroInitialZeppelinCamera
  - param Preset Player01
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
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroZeppelinUnloads
  - param Preset Player01
  - param String 6.00


## IntroActorSetup
- enabled: True
- category: [3] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssueImmediateOrder
  - param Variable Peasant01
  - param Preset UnitOrderAutoHarvestGold
- Action IssueImmediateOrder
  - param Variable Peasant02
  - param Preset UnitOrderAutoHarvestGold


## IntroZeppelinMoves
- enabled: True
- category: [3] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nzep_0031
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroZeppelinTarget


## IntroZeppelinUnloads
- enabled: True
- category: [3] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable IntroCinematicEscape
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_EmissaryCaptainCloseup
  - param Preset Player01
  - param String 3.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nemi
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroZeppelinTarget
  - param String 180.00
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_Loading
  - param Variable gg_unit_nzep_0031
- Action PlaySoundBJ
  - param Variable gg_snd_Loading
- Action SetVariable
  - param Variable Emissary
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable Emissary
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroEmissaryMoveTo
- Action SetUnitFacingToFaceLocTimed
  - param Variable gg_unit_hcth_0026
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroEmissaryMoveTo
  - param String 0.50
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
- Action SetUnitFacingToFaceLocTimed
  - param Variable gg_unit_hfoo_0027
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroEmissaryMoveTo
  - param String 0.50
- Action SetUnitFacingToFaceLocTimed
  - param Variable gg_unit_hfoo_0030
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroEmissaryMoveTo
  - param String 0.50
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
- Action SetUnitFacingToFaceLocTimed
  - param Variable gg_unit_hfoo_0028
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroEmissaryMoveTo
  - param String 0.50
- Action SetUnitFacingToFaceLocTimed
  - param Variable gg_unit_hfoo_0029
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroEmissaryMoveTo
  - param String 0.50
- Action TriggerSleepAction
  - param String 0.60
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
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroZeppelinTarget
  - param String 180.00
- Action PlaySoundBJ
  - param Variable gg_snd_Loading
- Action SetVariable
  - param Variable EmissaryGuard00
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable EmissaryGuard00
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroEmissaryFlankA
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
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hfoo
  - param Preset Player09
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroZeppelinTarget
  - param String 180.00
- Action PlaySoundBJ
  - param Variable gg_snd_Loading
- Action SetVariable
  - param Variable EmissaryGuard01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable EmissaryGuard01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroEmissaryFlankB
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
- Action TriggerExecute
  - param Variable gg_trg_IntroEmissarySpeaks
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_IntroZeppelinTarget


## IntroEmissarySpeaks
- enabled: True
- category: [3] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Captain
  - param String TRIGSTR_010
  - param Variable gg_snd_H08Captain01
  - param String TRIGSTR_011
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
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Emissary
  - param String TRIGSTR_012
  - param Variable gg_snd_H08Emissary02
  - param String TRIGSTR_013
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
- Action IssuePointOrderLoc
  - param Variable Emissary
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroEmissaryReturn
- Action IssuePointOrderLoc
  - param Variable EmissaryGuard00
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroEmissaryFlankBReturn
- Action IssuePointOrderLoc
  - param Variable EmissaryGuard01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroEmissaryFlankAReturn
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Captain
  - param String TRIGSTR_014
  - param Variable gg_snd_H08Captain03
  - param String TRIGSTR_015
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
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Emissary
  - param Variable Captain
  - param String 0.50
- Action SetUnitFacingToFaceUnitTimed
  - param Variable EmissaryGuard00
  - param Variable Captain
  - param String 0.50
- Action SetUnitFacingToFaceUnitTimed
  - param Variable EmissaryGuard01
  - param Variable Captain
  - param String 0.50
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Emissary
  - param String TRIGSTR_016
  - param Variable gg_snd_H08Emissary04
  - param String TRIGSTR_017
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
  - param Variable gg_cam_IntroCaptainAddressesMen
  - param Preset Player01
  - param String 2.00
- Action IssuePointOrderLoc
  - param Variable Emissary
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroZeppelinTarget
- Action IssuePointOrderLoc
  - param Variable EmissaryGuard00
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroZeppelinTarget
- Action IssuePointOrderLoc
  - param Variable EmissaryGuard01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroZeppelinTarget
- Action TriggerSleepAction
  - param String 1.50
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
- Action SetUnitFacingTimed
  - param Variable Captain
  - param String 180.00
  - param String 0.50
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
- Action ShowUnitHide
  - param Variable gg_unit_nzep_0031
- Action ShowUnitHide
  - param Variable Emissary
- Action ShowUnitHide
  - param Variable EmissaryGuard00
- Action ShowUnitHide
  - param Variable EmissaryGuard01
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Captain
  - param String TRIGSTR_006
  - param Variable gg_snd_H08Captain05
  - param String TRIGSTR_009
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
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
- Action SetUnitAnimation
  - param Variable Captain
  - param String stand victory
- Action WaitForSoundBJ
  - param Variable gg_snd_H08Captain05
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
- Action SetUnitAnimation
  - param Variable Captain
  - param String stand
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroSeaView
  - param Preset Player01
  - param String 6.00
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0041
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0043
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0040
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0042
  - param Preset UnitOrderAutoHarvestLumber
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0028
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFootman01Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0029
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFootman02Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0030
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFootman03Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0027
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFootman04Target
- Action TriggerSleepAction
  - param String 5.00
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
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 1.50
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
  - param Variable gg_trg_IntroArthasApproaches


## IntroArthasApproaches
- enabled: True
- category: [3] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroArthasApproaches
  - param Preset Player01
  - param String 0
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroArthasTarget
- Action IssuePointOrderLoc
  - param Variable Muradin
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroMuradinTarget
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
  - param String TRIGSTR_018
  - param Variable gg_snd_H08Arthas06
  - param String TRIGSTR_019
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
  - param Variable gg_cam_IntroCaptainBadNews
  - param Preset Player01
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Captain
  - param String TRIGSTR_020
  - param Variable gg_snd_H08Captain07
  - param String TRIGSTR_021
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
  - param Variable gg_cam_IntroArthasApproaches
  - param Preset Player01
  - param String 0
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroArthasPissed
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_022
  - param Variable gg_snd_H08Arthas08
  - param String TRIGSTR_023
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Function GetLastPlayedSound
            - Function GetLastPlayedSound
      - param Preset OperatorMultiply
      - param String 0.70
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
  - param Variable Captain
  - param String 0.50
- Action WaitForSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
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
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Muradin
  - param Variable Arthas
  - param String 0.50
- Action IssuePointOrderLoc
  - param Variable gg_unit_hmtm_0038
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroMortar01
- Action IssuePointOrderLoc
  - param Variable gg_unit_hmtm_0039
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroMortar02
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Muradin
  - param String TRIGSTR_024
  - param Variable gg_snd_H08Muradin09
  - param String TRIGSTR_025
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
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Muradin
  - param String 0.50
- Action SetUnitAnimation
  - param Variable Arthas
  - param String stand victory
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_026
  - param Variable gg_snd_H08Arthas10
  - param String TRIGSTR_027
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Function GetLastPlayedSound
            - Function GetLastPlayedSound
      - param Preset OperatorMultiply
      - param String 0.40
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
- Action SetUnitAnimation
  - param Variable Arthas
  - param String stand
- Action WaitForSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
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
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 1.50
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
- category: [3] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_IntroCinematicEscape
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateGold
  - param String 1000
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateLumber
  - param String 500
- Action SetResourceAmount
  - param Variable gg_unit_ngol_0004
  - param String 20000
- Action EndThematicMusicBJ
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetSkyModel
  - param Preset SkyModelNone
- Action TriggerExecute
  - param Variable gg_trg_CreateBoatVisibility
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroEnd
  - param Preset Player01
  - param String 0.01
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetUnitPositionLocFacingBJ
  - param Variable gg_unit_hmtm_0038
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFinalMortarA
  - param String 270.00
- Action SetUnitPositionLocFacingBJ
  - param Variable gg_unit_hmtm_0039
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFinalMortarB
  - param String 270.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFinalArthas
  - param String 225.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Muradin
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFinalMuradin
  - param String 225.00
- Action TriggerSleepAction
  - param String 0.01
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player01
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable Arthas
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable Muradin
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hmtm_0038
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hmtm_0039
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0020
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0019
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0021
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0044
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0010
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0011
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0127
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hgtw_0034
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_halt_0017
  - param Variable HumanTraitorousScum
- Action ForGroup
  - param Variable HumanTraitorousScum
  - param Function DoNothing
    - Action SetUnitOwner
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset Player08
      - param Preset ChangeColorTrue
- Action ForGroup
  - param Variable HumanTraitorousScum
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityInvulnerable
- Action IssuePointOrderLoc
  - param Variable Captain
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroCaptainTarget
- Action TriggerExecute
  - param Variable gg_trg_IntroCinematicHarvest
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilityWood
  - param String 1024.00
- Action SetVariable
  - param Variable VisibilityTrees
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action EnableTrigger
  - param Variable gg_trg_HarvestLoop
- Action EnableTrigger
  - param Variable gg_trg_KeepHarvestersChopping
- Action TriggerExecute
  - param Variable gg_trg_StartWoodTimer
- Action TriggerExecute
  - param Variable gg_trg_ShipScoreboard
- Action TriggerExecute
  - param Variable gg_trg_Countdown_Timer
- Action SelectUnitSingle
  - param Variable Arthas
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_036


## IntroCinematicHarvest
- enabled: True
- category: [3] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 2
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0041
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0043
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0040
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0042
  - param Preset UnitOrderAutoHarvestLumber
- Action TriggerExecute
  - param Variable gg_trg_PeasantsMine


## PeasantsMine
- enabled: True
- category: [3] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssueImmediateOrder
  - param Variable Peasant01
  - param Preset UnitOrderReturnResources
- Action IssueImmediateOrder
  - param Variable Peasant02
  - param Preset UnitOrderReturnResources
- Action TriggerSleepAction
  - param String 2
- Action IssueImmediateOrder
  - param Variable Peasant01
  - param Preset UnitOrderAutoHarvestGold
- Action IssueImmediateOrder
  - param Variable Peasant02
  - param Preset UnitOrderAutoHarvestGold


## IntroCinematicEscape
- enabled: True
- category: [3] IntroCinematic
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
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateGold
  - param String 1000
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateLumber
  - param String 500
- Action SetResourceAmount
  - param Variable gg_unit_ngol_0004
  - param String 20000
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
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
  - param Variable gg_cam_IntroEnd
  - param Preset Player01
  - param String 0
- Action TriggerExecute
  - param Variable gg_trg_IntroCinematicEscapeMoveUnits
- Action TriggerSleepAction
  - param String 0.01
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetSkyModel
  - param Preset SkyModelNone
- Action TriggerExecute
  - param Variable gg_trg_CreateBoatVisibility
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action EndThematicMusicBJ
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player01
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable Arthas
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable Muradin
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hmtm_0038
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hmtm_0039
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0020
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0019
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0021
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0044
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0010
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0011
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hhou_0127
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_hgtw_0034
  - param Variable HumanTraitorousScum
- Action GroupRemoveUnitSimple
  - param Variable gg_unit_halt_0017
  - param Variable HumanTraitorousScum
- Action ForGroup
  - param Variable HumanTraitorousScum
  - param Function DoNothing
    - Action SetUnitOwner
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset Player08
      - param Preset ChangeColorTrue
- Action ForGroup
  - param Variable HumanTraitorousScum
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityInvulnerable
- Action IssuePointOrderLoc
  - param Variable Captain
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroCaptainTarget
- Action ResetUnitAnimation
  - param Variable Captain
- Action TriggerExecute
  - param Variable gg_trg_IntroCinematicHarvest
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilityWood
  - param String 1024.00
- Action SetVariable
  - param Variable VisibilityTrees
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action EnableTrigger
  - param Variable gg_trg_HarvestLoop
- Action EnableTrigger
  - param Variable gg_trg_KeepHarvestersChopping
- Action TriggerExecute
  - param Variable gg_trg_StartWoodTimer
- Action TriggerExecute
  - param Variable gg_trg_ShipScoreboard
- Action TriggerExecute
  - param Variable gg_trg_Countdown_Timer
- Action SelectUnitSingle
  - param Variable Arthas
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_038
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## IntroCinematicEscapeMoveUnits
- enabled: True
- category: [3] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitPositionLocFacingBJ
  - param Variable gg_unit_hmtm_0038
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFinalMortarA
  - param String 270.00
- Action SetUnitPositionLocFacingBJ
  - param Variable gg_unit_hmtm_0039
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFinalMortarB
  - param String 270.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFinalArthas
  - param String 225.00
- Action SetUnitPositionLocFacingBJ
  - param Variable Muradin
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFinalMuradin
  - param String 225.00
- Action SetUnitFacingTimed
  - param Variable Captain
  - param String 180.00
  - param String 0
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0028
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFootman01Target
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0029
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFootman02Target
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0030
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFootman03Target
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0027
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroFootman04Target
- Action SetUnitFacingTimed
  - param Variable gg_unit_hfoo_0028
  - param String 270.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable gg_unit_hfoo_0029
  - param String 270.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable gg_unit_hfoo_0030
  - param String 270.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable gg_unit_hfoo_0027
  - param String 270.00
  - param String 0
- Action ShowUnitHide
  - param Variable gg_unit_nzep_0031
- Action ShowUnitHide
  - param Variable Emissary
- Action ShowUnitHide
  - param Variable EmissaryGuard00
- Action ShowUnitHide
  - param Variable EmissaryGuard01


## CreateBoatVisibility
- enabled: True
- category: [17] BoatSetup
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilityBoat01
  - param String 512
- Action SetVariable
  - param Variable VisibilityBoat01
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilityBoat02
  - param String 512
- Action SetVariable
  - param Variable VisibilityBoat02
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilityBoat03
  - param String 512
- Action SetVariable
  - param Variable VisibilityBoat03
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilityBoat04
  - param String 512
- Action SetVariable
  - param Variable VisibilityBoat04
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisibilityBoat05
  - param String 512
- Action SetVariable
  - param Variable VisibilityBoat05
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action TriggerExecute
  - param Variable gg_trg_PauseBoats


## PauseBoats
- enabled: True
- category: [17] BoatSetup
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable gg_unit_nbsp_0112
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable gg_unit_nbsp_0111
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable gg_unit_nbsp_0110
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable gg_unit_nbsp_0098
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable gg_unit_nbsp_0108


## HarvestLoop
- enabled: True
- category: [14] LightBlueHarvest
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param Function GetPlayerState
    - Function GetPlayerState
      - param Preset Player08
      - param Preset PlayerStateGold
  - param Preset Player01
  - param Preset PlayerStateGold
- Action AdjustPlayerStateBJ
  - param Function OperatorInt
    - Function OperatorInt
      - param Function GetPlayerState
        - Function GetPlayerState
          - param Preset Player08
          - param Preset PlayerStateGold
      - param Preset OperatorMultiply
      - param String -1
  - param Preset Player08
  - param Preset PlayerStateGold
- Action AdjustPlayerStateBJ
  - param Function GetPlayerState
    - Function GetPlayerState
      - param Preset Player08
      - param Preset PlayerStateLumber
  - param Preset Player01
  - param Preset PlayerStateLumber
- Action AdjustPlayerStateBJ
  - param Function OperatorInt
    - Function OperatorInt
      - param Function GetPlayerState
        - Function GetPlayerState
          - param Preset Player08
          - param Preset PlayerStateLumber
      - param Preset OperatorMultiply
      - param String -1
  - param Preset Player08
  - param Preset PlayerStateLumber
- Event TriggerRegisterTimerEventPeriodic
  - param String 0.50


## ShipScoreboard
- enabled: True
- category: [15] Mission Displays
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateLeaderboardBJ
  - param Preset Force01
  - param String TRIGSTR_029
- Action SetVariable
  - param Variable ShipsRemaining
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Variable ShipsRemaining
- Action LeaderboardAddItemBJ
  - param Preset Player01
  - param Variable ShipsRemaining
  - param String TRIGSTR_030
  - param Variable NumberShipsRemaining
- Action LeaderboardSetPlayerItemLabelColorBJ
  - param Preset Player01
  - param Variable ShipsRemaining
  - param String 100
  - param String 80.00
  - param String 0.00
  - param String 0
- Action LeaderboardSetPlayerItemValueColorBJ
  - param Preset Player01
  - param Variable ShipsRemaining
  - param String 100
  - param String 100
  - param String 100
  - param String 0


## Countdown Timer
- enabled: True
- category: [15] Mission Displays
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StartTimerBJ
  - param Variable PeasantsChoppingTimer
  - param Preset PeriodicOptionOneTime
  - param Function OperatorReal
    - Function OperatorReal
      - param String 300.00
      - param Preset OperatorMultiply
      - param Variable DifficultyTimerFactor
- Action CreateTimerDialogBJ
  - param Variable PeasantsChoppingTimer
  - param String TRIGSTR_031
- Action SetVariable
  - param Variable CountdownTimerWindow
  - param Function GetLastCreatedTimerDialogBJ
    - Function GetLastCreatedTimerDialogBJ
- Action TimerDialogSetTitleColorBJ
  - param Variable CountdownTimerWindow
  - param String 100
  - param String 80.00
  - param String 0.00
  - param String 0
- Action TimerDialogSetTimeColorBJ
  - param Variable CountdownTimerWindow
  - param String 100
  - param String 100
  - param String 100
  - param String 0


## Ship1
- enabled: True
- category: [16] ShipsDie
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable NumberShipsRemaining
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable NumberShipsRemaining
      - param Preset OperatorSubtract
      - param String 1
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AllShipsDown
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FirstShipDead
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FourOfFiveDead
- Action LeaderboardSetPlayerItemValueBJ
  - param Preset Player01
  - param Variable ShipsRemaining
  - param Variable NumberShipsRemaining
- Action TriggerSleepAction
  - param String 3.00
- Action DestroyFogModifier
  - param Variable VisibilityBoat01
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nbsp_0108
  - param Preset UnitEventDeath


## Ship2
- enabled: True
- category: [16] ShipsDie
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nbsp_0098
  - param Preset UnitEventDeath
- Action SetVariable
  - param Variable NumberShipsRemaining
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable NumberShipsRemaining
      - param Preset OperatorSubtract
      - param String 1
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AllShipsDown
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FirstShipDead
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FourOfFiveDead
- Action LeaderboardSetPlayerItemValueBJ
  - param Preset Player01
  - param Variable ShipsRemaining
  - param Variable NumberShipsRemaining
- Action TriggerSleepAction
  - param String 3.00
- Action DestroyFogModifier
  - param Variable VisibilityBoat02


## Ship3
- enabled: True
- category: [16] ShipsDie
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nbsp_0110
  - param Preset UnitEventDeath
- Action SetVariable
  - param Variable NumberShipsRemaining
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable NumberShipsRemaining
      - param Preset OperatorSubtract
      - param String 1
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AllShipsDown
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FirstShipDead
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FourOfFiveDead
- Action LeaderboardSetPlayerItemValueBJ
  - param Preset Player01
  - param Variable ShipsRemaining
  - param Variable NumberShipsRemaining
- Action TriggerSleepAction
  - param String 3.00
- Action DestroyFogModifier
  - param Variable VisibilityBoat03


## Ship4
- enabled: True
- category: [16] ShipsDie
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nbsp_0111
  - param Preset UnitEventDeath
- Action SetVariable
  - param Variable NumberShipsRemaining
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable NumberShipsRemaining
      - param Preset OperatorSubtract
      - param String 1
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AllShipsDown
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FirstShipDead
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FourOfFiveDead
- Action LeaderboardSetPlayerItemValueBJ
  - param Preset Player01
  - param Variable ShipsRemaining
  - param Variable NumberShipsRemaining
- Action TriggerSleepAction
  - param String 3.00
- Action DestroyFogModifier
  - param Variable VisibilityBoat04


## Ship5
- enabled: True
- category: [16] ShipsDie
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nbsp_0112
  - param Preset UnitEventDeath
- Action SetVariable
  - param Variable NumberShipsRemaining
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable NumberShipsRemaining
      - param Preset OperatorSubtract
      - param String 1
- Action ConditionalTriggerExecute
  - param Variable gg_trg_AllShipsDown
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FirstShipDead
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FourOfFiveDead
- Action LeaderboardSetPlayerItemValueBJ
  - param Preset Player01
  - param Variable ShipsRemaining
  - param Variable NumberShipsRemaining
- Action TriggerSleepAction
  - param String 3.00
- Action DestroyFogModifier
  - param Variable VisibilityBoat05


## KeepHarvestersChopping
- enabled: True
- category: [18] WoodChopping
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0041
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0043
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0040
  - param Preset UnitOrderAutoHarvestLumber
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0042
  - param Preset UnitOrderAutoHarvestLumber
- Event TriggerRegisterTimerEventPeriodic
  - param String 20.00


## StartWoodTimer
- enabled: True
- category: [18] WoodChopping
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StartTimerBJ
  - param Variable WoodTimer01
  - param Preset PeriodicOptionOneTime
  - param Function OperatorReal
    - Function OperatorReal
      - param String 60.00
      - param Preset OperatorMultiply
      - param Variable DifficultyTimerFactor
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow2
  - param Function DoNothing
    - Action SetDestructableInvulnerableBJ
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
      - param Preset InvulnerabilityInvulnerable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow3
  - param Function DoNothing
    - Action SetDestructableInvulnerableBJ
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
      - param Preset InvulnerabilityInvulnerable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow4
  - param Function DoNothing
    - Action SetDestructableInvulnerableBJ
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
      - param Preset InvulnerabilityInvulnerable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow5
  - param Function DoNothing
    - Action SetDestructableInvulnerableBJ
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
      - param Preset InvulnerabilityInvulnerable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow6
  - param Function DoNothing
    - Action SetDestructableInvulnerableBJ
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
      - param Preset InvulnerabilityInvulnerable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow7
  - param Function DoNothing
    - Action SetDestructableInvulnerableBJ
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
      - param Preset InvulnerabilityInvulnerable


## WoodTimer01Expires
- enabled: True
- category: [18] WoodChopping
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicVictoryRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicDefeatRunning
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable WoodTimer01
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow2
  - param Function DoNothing
    - Action SetDestructableInvulnerableBJ
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
      - param Preset InvulnerabilityVulnerable
- Action StartTimerBJ
  - param Variable WoodTimer02
  - param Preset PeriodicOptionOneTime
  - param Function OperatorReal
    - Function OperatorReal
      - param String 60.00
      - param Preset OperatorMultiply
      - param Variable DifficultyTimerFactor


## WoodTimer02Expires
- enabled: True
- category: [18] WoodChopping
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicVictoryRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicDefeatRunning
  - param Preset OperatorEqualENE
  - param String false
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow1
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable WoodTimer02
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow3
  - param Function DoNothing
    - Action SetDestructableInvulnerableBJ
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
      - param Preset InvulnerabilityVulnerable
- Action StartTimerBJ
  - param Variable WoodTimer03
  - param Preset PeriodicOptionOneTime
  - param Function OperatorReal
    - Function OperatorReal
      - param String 60.00
      - param Preset OperatorMultiply
      - param Variable DifficultyTimerFactor


## WoodTimer03Expires
- enabled: True
- category: [18] WoodChopping
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicVictoryRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicDefeatRunning
  - param Preset OperatorEqualENE
  - param String false
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow2
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable WoodTimer03
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow4
  - param Function DoNothing
    - Action SetDestructableInvulnerableBJ
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
      - param Preset InvulnerabilityVulnerable
- Action StartTimerBJ
  - param Variable WoodTimer04
  - param Preset PeriodicOptionOneTime
  - param Function OperatorReal
    - Function OperatorReal
      - param String 60.00
      - param Preset OperatorMultiply
      - param Variable DifficultyTimerFactor


## WoodTimer04Expires
- enabled: True
- category: [18] WoodChopping
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicVictoryRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicDefeatRunning
  - param Preset OperatorEqualENE
  - param String false
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow3
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable WoodTimer04
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow5
  - param Function DoNothing
    - Action SetDestructableInvulnerableBJ
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
      - param Preset InvulnerabilityVulnerable
- Action StartTimerBJ
  - param Variable WoodTimer05
  - param Preset PeriodicOptionOneTime
  - param Function OperatorReal
    - Function OperatorReal
      - param String 30.00
      - param Preset OperatorMultiply
      - param Variable DifficultyTimerFactor


## WoodTimer05Expires
- enabled: True
- category: [18] WoodChopping
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicVictoryRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicDefeatRunning
  - param Preset OperatorEqualENE
  - param String false
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow4
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable WoodTimer05
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow6
  - param Function DoNothing
    - Action SetDestructableInvulnerableBJ
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
      - param Preset InvulnerabilityVulnerable
- Action StartTimerBJ
  - param Variable WoodTimer06
  - param Preset PeriodicOptionOneTime
  - param Function OperatorReal
    - Function OperatorReal
      - param String 30.00
      - param Preset OperatorMultiply
      - param Variable DifficultyTimerFactor


## WoodTimer06Expires
- enabled: True
- category: [18] WoodChopping
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicVictoryRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicDefeatRunning
  - param Preset OperatorEqualENE
  - param String false
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow5
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable WoodTimer06
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow7
  - param Function DoNothing
    - Action SetDestructableInvulnerableBJ
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
      - param Preset InvulnerabilityVulnerable
- Action StartTimerBJ
  - param Variable WoodTimer07
  - param Preset PeriodicOptionOneTime
  - param Function OperatorReal
    - Function OperatorReal
      - param String 30.00
      - param Preset OperatorMultiply
      - param Variable DifficultyTimerFactor


## WoodTimer07Expires
- enabled: True
- category: [18] WoodChopping
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicVictoryRunning
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicDefeatRunning
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable WoodTimer07
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow1
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow2
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow3
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow4
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow5
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow6
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow7
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable


## EncounterUndead
- enabled: True
- category: [8] VoiceOver MustUseMercenaries
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
- Condition GetBooleanAnd
  - param Function 
    - Condition OperatorCompareReal
      - param Function DistanceBetweenPoints
        - Function DistanceBetweenPoints
          - param Function GetUnitLoc
            - Function GetUnitLoc
              - param Variable Arthas
          - param Function GetRectCenter
            - Function GetRectCenter
              - param Variable gg_rct_VoiceOverNeedMenTrigger
      - param Preset OperatorLessEq
      - param String 1536.00
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VoiceOverNeedMenTrigger
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_EncounterUndeadMessageArthas
  - param Preset CheckingIgnoringChecking


## EncounterUndeadMessageArthas
- enabled: True
- category: [8] VoiceOver MustUseMercenaries
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition GetBooleanAnd
  - param Function 
    - Condition OperatorCompareReal
      - param Function DistanceBetweenPoints
        - Function DistanceBetweenPoints
          - param Function GetUnitLoc
            - Function GetUnitLoc
              - param Variable Arthas
          - param Function GetRectCenter
            - Function GetRectCenter
              - param Variable gg_rct_VoiceOverNeedMenTrigger
      - param Preset OperatorLessEq
      - param String 2048.00
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action SetSpeechVolumeGroupsBJ
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_EncounterUndeadMessageMuradin
  - param Preset CheckingIgnoringChecking
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Arthas
      - param String TRIGSTR_158
      - param Variable gg_snd_H08Arthas11
      - param String TRIGSTR_159
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## EncounterUndeadMessageMuradin
- enabled: True
- category: [8] VoiceOver MustUseMercenaries
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition GetBooleanAnd
  - param Function 
    - Condition OperatorCompareReal
      - param Function DistanceBetweenPoints
        - Function DistanceBetweenPoints
          - param Function GetUnitLoc
            - Function GetUnitLoc
              - param Variable Muradin
          - param Function GetUnitLoc
            - Function GetUnitLoc
              - param Variable Arthas
      - param Preset OperatorLessEq
      - param String 2048.00
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Muradin
      - param Preset OperatorEqualENE
      - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Muradin
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Muradin
      - param String TRIGSTR_174
      - param Variable gg_snd_H08Muradin12
      - param String TRIGSTR_175
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## NextToMercenaryCamp
- enabled: True
- category: [9] VoiceOver DamnUther
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
  - param Variable gg_trg_NextToMercenaryCampMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareReal
  - param Function DistanceBetweenPoints
    - Function DistanceBetweenPoints
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_VoiceOverDamnUther
  - param Preset OperatorLessEq
  - param String 1024.00
- Condition OperatorCompareBoolean
  - param Function IsUnitAliveBJ
    - Function IsUnitAliveBJ
      - param Variable Arthas
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_VoiceOverDamnUther


## NextToMercenaryCampMessage
- enabled: True
- category: [9] VoiceOver DamnUther
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
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Arthas
      - param String TRIGSTR_182
      - param Variable gg_snd_H08Arthas13
      - param String TRIGSTR_183
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_HintBuyMercenariesMessage
  - param Preset CheckingIgnoringChecking


## FirstShipDead
- enabled: True
- category: [12] VoiceOver BurnShip1
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
  - param Variable gg_trg_FirstShipDeadMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareInteger
  - param Variable NumberShipsRemaining
  - param Preset OperatorEqual
  - param String 4
- Condition OperatorCompareBoolean
  - param Function IsTriggerEnabled
    - Function IsTriggerEnabled
      - param Function GetTriggeringTrigger
        - Function GetTriggeringTrigger
  - param Preset OperatorEqualENE
  - param String true


## FirstShipDeadMessage
- enabled: True
- category: [12] VoiceOver BurnShip1
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
      - param String TRIGSTR_200
      - param Variable gg_snd_H08Arthas18
      - param String TRIGSTR_201
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## FourOfFiveDead
- enabled: True
- category: [13] VoiceOver BurnShip2
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
  - param Variable gg_trg_FourOfFiveDeadMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareInteger
  - param Variable NumberShipsRemaining
  - param Preset OperatorEqual
  - param String 1
- Condition OperatorCompareBoolean
  - param Function IsTriggerEnabled
    - Function IsTriggerEnabled
      - param Function GetTriggeringTrigger
        - Function GetTriggeringTrigger
  - param Preset OperatorEqualENE
  - param String true


## FourOfFiveDeadMessage
- enabled: True
- category: [13] VoiceOver BurnShip2
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
      - param String TRIGSTR_228
      - param Variable gg_snd_H08Arthas19
      - param String TRIGSTR_229
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## HintUnitReachesShip
- enabled: True
- category: [11] Hints
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
  - param Variable gg_trg_HintUnitReachesShipMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_HintShipsMustBurn


## HintUnitReachesShipMessage
- enabled: True
- category: [11] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Variable NumberShipsRemaining
  - param Preset OperatorEqual
  - param String 5
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action QuestMessageBJ
  - param Preset Force01
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_231
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## HintUnitReachesDrakes
- enabled: True
- category: [11] Hints
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
  - param Variable gg_trg_HintUnitReachesDrakesMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_HintDrakes


## HintUnitReachesDrakesMessage
- enabled: True
- category: [11] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsUnitGroupDeadBJ
    - Function IsUnitGroupDeadBJ
      - param Variable UnitGroupBlueDragon
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action QuestMessageBJ
  - param Preset Force01
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_232
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## HintMortarAtTrees
- enabled: True
- category: [11] Hints
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
  - param Variable gg_trg_HintMortarAtTreesMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player01
          - param String hmtm
  - param Preset OperatorGreater
  - param String 0
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_HintMortarTeamTree


## HintMortarAtTreesMessage
- enabled: True
- category: [11] Hints
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
  - param Preset Force01
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_233
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## HintGoblinTrees
- enabled: True
- category: [11] Hints
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
  - param Variable gg_trg_HintGoblinTreesMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_HintTrees


## HintGoblinTreesMessage
- enabled: True
- category: [11] Hints
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
  - param Preset Force01
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_234
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hhou
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_AdditionalFarm
  - param Preset RealUnitFacing
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## HintBuyMercenariesMessage
- enabled: True
- category: [11] Hints
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
  - param String TRIGSTR_056
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## TriggerGauntletCinematic
- enabled: True
- category: [23] GauntletCinematic
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
  - param Variable gg_trg_GauntletCinematic
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_TriggerGauntletCinematic


## GauntletCinematic
- enabled: True
- category: [23] GauntletCinematic
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
  - param Variable GauntletCinematicRunning
  - param String true
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable ShipsRemaining
- Action TimerDialogDisplayBJ
  - param Preset ShowHideHide
  - param Variable CountdownTimerWindow
- Action PauseTimerBJ
  - param Preset PauseResumePause
  - param Variable PeasantsChoppingTimer
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
  - param String 1.00
- Action PlayThematicMusicBJ
  - param Preset MusicThemeTension
- Action TriggerSleepAction
  - param String 1.00
- Action EnableTrigger
  - param Variable gg_trg_GauntletCinematicEscape
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetSkyModel
  - param Preset SkyModelSky05
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_GauntletInitial
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
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GauntletCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_GauntletFinal
  - param Preset Player01
  - param String 6.00
- Action TriggerSleepAction
  - param String 6.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable GauntletCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DisableTrigger
  - param Variable gg_trg_GauntletCinematicEscape
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_GauntletInitial
  - param Preset Player01
  - param String 0
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action TriggerExecute
  - param Variable gg_trg_PauseBoats
- Action CommentString
  - param String PUT PEASANTS BACK TO MINING
- Action TriggerExecute
  - param Variable gg_trg_PeasantsMine
- Action TriggerSleepAction
  - param String 1.00
- Action TriggerExecute
  - param Variable gg_trg_GauntletCinematicVisibilities
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Variable ShipsRemaining
- Action TimerDialogDisplayBJ
  - param Preset ShowHideShow
  - param Variable CountdownTimerWindow
- Action PauseTimerBJ
  - param Preset PauseResumeResume
  - param Variable PeasantsChoppingTimer
- Action SetSkyModel
  - param Preset SkyModelNone
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
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
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## GauntletCinematicVisibilities
- enabled: True
- category: [23] GauntletCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_uzg1_0061
  - param String 768.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_uzg1_0065
  - param String 768.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_uzg1_0064
  - param String 768.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_uzg1_0062
  - param String 768.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_uzg1_0063
  - param String 768.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_uzg1_0060
  - param String 768.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_uzg1_0094
  - param String 768.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_uzg1_0109
  - param String 768.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_VisiibilityGauntletEnd
  - param String 768.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier


## GauntletCinematicEscape
- enabled: True
- category: [23] GauntletCinematic
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
  - param Variable GauntletCinematicEscape
  - param String true
- Action SetVariable
  - param Variable GauntletCinematicRunning
  - param String false
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
- Action StopCameraForPlayerBJ
  - param Preset Player01
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_GauntletInitial
  - param Preset Player01
  - param String 0
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action TriggerExecute
  - param Variable gg_trg_PauseBoats
- Action CommentString
  - param String PUT PEASANTS BACK TO MINING
- Action TriggerExecute
  - param Variable gg_trg_PeasantsMine
- Action TriggerSleepAction
  - param String 1.00
- Action TriggerExecute
  - param Variable gg_trg_GauntletCinematicVisibilities
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Variable ShipsRemaining
- Action TimerDialogDisplayBJ
  - param Preset ShowHideShow
  - param Variable CountdownTimerWindow
- Action PauseTimerBJ
  - param Preset PauseResumeResume
  - param Variable PeasantsChoppingTimer
- Action SetSkyModel
  - param Preset SkyModelNone
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
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
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_GauntletCinematic


## TriggerExitVictoryCinematic
- enabled: True
- category: [4] ExitCinematicVictory
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action StopSoundBJ
  - param Variable gg_snd_H08Arthas19
  - param Preset FadeDontFade
- Action TriggerExecute
  - param Variable gg_trg_Level_Enable
- Action SetVariable
  - param Variable ExitCinematicVictoryRunning
  - param String true
- Action DisableTrigger
  - param Variable gg_trg_KeepHarvestersChopping
- Action EnableTrigger
  - param Variable gg_trg_ExitVictoryCinematicEscape
- Action TriggerExecute
  - param Variable gg_trg_ExitVictoryKillWindows
- Action TriggerExecute
  - param Variable gg_trg_ExitVictoryCinematicMode
- Action TriggerExecute
  - param Variable gg_trg_ExitVictoryInitialCamera
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents


## ExitVictoryKillWindows
- enabled: True
- category: [4] ExitCinematicVictory
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DestroyLeaderboardBJ
  - param Variable ShipsRemaining
- Action DestroyTimerDialogBJ
  - param Variable CountdownTimerWindow


## ExitVictoryCinematicMode
- enabled: True
- category: [4] ExitCinematicVictory
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Preset Force01
- Action SetSkyModel
  - param Preset SkyModelSky05
- Action UseTimeOfDayBJ
  - param Preset OnOffOff


## ExitVictoryInitialCamera
- enabled: True
- category: [4] ExitCinematicVictory
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
- Action SetSkyModel
  - param Preset SkyModelSky05
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ExitVictory
  - param Preset Player01
  - param String 0
- Action TriggerExecute
  - param Variable gg_trg_ExitVictoryActorSetup
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
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
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_ExitVictoryArthasGreets


## ExitVictoryActorSetup
- enabled: True
- category: [4] ExitCinematicVictory
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
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ShowUnitShow
  - param Variable Arthas
- Action ClearSelection
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action SetUnitLifePercentBJ
  - param Variable Arthas
  - param String 100
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Arthas
- Action SetUnitPositionLoc
  - param Variable Muradin
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroMuradinTarget
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow1
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow2
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow3
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow4
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow5
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow6
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow7
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0027
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman01Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0028
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman02Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0029
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman03Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0030
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman04Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0040
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant01Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0041
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant02Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0042
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant03Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0043
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant04Move
- Action SetUnitPositionLoc
  - param Variable Captain
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryCaptain01Move
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hkni
  - param Preset Player08
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryKnight01Create
  - param String 180.00
- Action SetVariable
  - param Variable ExitVictoryKnight01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hkni
  - param Preset Player08
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryKnight02Create
  - param String 180.00
- Action SetVariable
  - param Variable ExitVictoryKnight02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLocFacingBJ
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ExitVictoryArthasMove
      - param String 90.00
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ExitVictoryArthasMove
      - param Preset ShowHideHide
- Action SetUnitFacingTimed
  - param Variable Arthas
  - param String 90.00
  - param String 0
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nits
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc01Create
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable ExitVictoryMerc01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nogr
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Create
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable ExitVictoryMerc02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nitp
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc03Create
  - param Preset RealUnitFacing
- Action SetVariable
  - param Variable ExitVictoryMerc03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0027
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman01Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0028
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman02Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0029
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman03Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0030
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman04Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0040
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant01Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0041
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant02Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0042
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant03Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0043
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant04Target
- Action IssuePointOrderLoc
  - param Variable Captain
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryCaptain01Target
- Action IssuePointOrderLoc
  - param Variable ExitVictoryKnight01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryKnight01Target
- Action IssuePointOrderLoc
  - param Variable ExitVictoryKnight02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryKnight02Target


## ExitVictoryArthasGreets
- enabled: True
- category: [4] ExitCinematicVictory
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Captain
  - param String TRIGSTR_039
  - param Variable gg_snd_H08Captain20
  - param String TRIGSTR_042
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IssuePointOrderLoc
  - param Variable ExitVictoryMerc01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc01Target
- Action IssuePointOrderLoc
  - param Variable ExitVictoryMerc02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action IssuePointOrderLoc
  - param Variable ExitVictoryMerc03
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc03Target
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Preset Force01
  - param Variable Arthas
  - param String TRIGSTR_043
  - param Variable gg_snd_H08Arthas21
  - param String TRIGSTR_044
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 1.50
- Action SetUnitFacingTimed
  - param Variable Arthas
  - param String 145.00
  - param String 0
- Action TriggerSleepAction
  - param String 1.50
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hfoo_0027
  - param Variable ExitVictoryMerc02
  - param String 0.40
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hfoo_0028
  - param Variable ExitVictoryMerc01
  - param String 0.60
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hfoo_0029
  - param Variable ExitVictoryMerc03
  - param String 0.60
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hfoo_0030
  - param Variable ExitVictoryMerc01
  - param String 0.70
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hpea_0040
  - param Variable ExitVictoryMerc02
  - param String 0.60
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hpea_0041
  - param Variable ExitVictoryMerc03
  - param String 0.50
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hpea_0042
  - param Variable ExitVictoryMerc01
  - param String 0.40
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hpea_0043
  - param Variable ExitVictoryMerc03
  - param String 0.70
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Captain
  - param Variable ExitVictoryMerc01
  - param String 0.50
- Action SetUnitFacingToFaceUnitTimed
  - param Variable ExitVictoryKnight01
  - param Variable ExitVictoryMerc03
  - param String 0.70
- Action SetUnitFacingToFaceUnitTimed
  - param Variable ExitVictoryKnight02
  - param Variable ExitVictoryMerc03
  - param String 0.60
- Action WaitForSoundBJ
  - param Variable gg_snd_H08Arthas21
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_hfoo_0028
  - param String TRIGSTR_045
  - param Variable gg_snd_H08Footman22
  - param String TRIGSTR_046
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ExitVictoryKnight01
  - param String TRIGSTR_047
  - param Variable gg_snd_H08Knight23
  - param String TRIGSTR_048
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop2
  - param Variable ExitVictoryKnight01
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop2
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitOwner
  - param Variable ExitVictoryMerc01
  - param Preset Player06
  - param Preset ChangeColorFalse
- Action SetUnitOwner
  - param Variable ExitVictoryMerc02
  - param Preset Player06
  - param Preset ChangeColorFalse
- Action SetUnitOwner
  - param Variable ExitVictoryMerc03
  - param Preset Player06
  - param Preset ChangeColorFalse
- Action SetUnitLifePercentBJ
  - param Variable Arthas
  - param String 100
- Action SetUnitLifePercentBJ
  - param Variable ExitVictoryMerc01
  - param String 50.00
- Action SetUnitLifePercentBJ
  - param Variable ExitVictoryMerc02
  - param String 50.00
- Action SetUnitLifePercentBJ
  - param Variable ExitVictoryMerc03
  - param String 50.00
- Action SetUnitManaPercentBJ
  - param Variable ExitVictoryMerc03
  - param String 0.00
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action IssuePointOrderLoc
  - param Variable Captain
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action IssuePointOrderLoc
  - param Variable ExitVictoryKnight01
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action IssuePointOrderLoc
  - param Variable ExitVictoryKnight02
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0027
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0028
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0029
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0030
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action ShowUnitHide
  - param Variable gg_unit_hpea_0040
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hpea
  - param Preset Player08
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_hpea_0040
  - param Function GetUnitFacing
    - Function GetUnitFacing
      - param Variable gg_unit_hpea_0040
- Action SetVariable
  - param Variable ExitVictoryPeasant01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable ExitVictoryPeasant01
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action ShowUnitHide
  - param Variable gg_unit_hpea_0041
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hpea
  - param Preset Player08
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_hpea_0041
  - param Function GetUnitFacing
    - Function GetUnitFacing
      - param Variable gg_unit_hpea_0041
- Action SetVariable
  - param Variable ExitVictoryPeasant02
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable ExitVictoryPeasant02
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action ShowUnitHide
  - param Variable gg_unit_hpea_0042
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hpea
  - param Preset Player08
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_hpea_0042
  - param Function GetUnitFacing
    - Function GetUnitFacing
      - param Variable gg_unit_hpea_0042
- Action SetVariable
  - param Variable ExitVictoryPeasant03
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable ExitVictoryPeasant03
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action ShowUnitHide
  - param Variable gg_unit_hpea_0043
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hpea
  - param Preset Player08
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_hpea_0043
  - param Function GetUnitFacing
    - Function GetUnitFacing
      - param Variable gg_unit_hpea_0043
- Action SetVariable
  - param Variable ExitVictoryPeasant04
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable ExitVictoryPeasant04
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryMerc02Target
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ExitVictoryCombat
  - param Preset Player01
  - param String 4.00


## ExitVictoryMercsDie
- enabled: True
- category: [4] ExitCinematicVictory
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
      - param Variable ExitCinematicVictoryEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_ExitVictoryActorReset
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ExitVictoryArthasAddresses
  - param Preset Player01
  - param String 0
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
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
      - param Variable ExitCinematicVictoryEscape
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
  - param Variable gg_unit_hfoo_0028
  - param String TRIGSTR_050
  - param Variable gg_snd_H08Footman24
  - param String TRIGSTR_051
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
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
  - param String TRIGSTR_052
  - param Variable gg_snd_H08Arthas25
  - param String TRIGSTR_053
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingTimed
  - param Variable Arthas
  - param String 135.00
  - param String 0.30
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingTimed
  - param Variable Arthas
  - param String 45.00
  - param String 4.00
- Action TriggerSleepAction
  - param String 5.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
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
      - param Variable gg_rct_ExitVictoryArthasToMen
- Action WaitForSoundBJ
  - param Variable gg_snd_H08Arthas25
  - param String 0.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_ExitVictoryAllFaceArthas
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderMove
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_IntroZeppelinTarget
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicVictoryEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_ExitVictoryCinematicEnd
- Condition OperatorCompareBoolean
  - param Variable ExitCinematicVictoryRunning
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareInteger
  - param Function GetPlayerUnitCount
    - Function GetPlayerUnitCount
      - param Preset Player06
      - param Preset InclusionExclude
  - param Preset OperatorEqual
  - param String 0
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath


## ExitVictoryActorReset
- enabled: True
- category: [4] ExitCinematicVictory
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryArthasAddresses
- Action SetUnitFacingTimed
  - param Variable Arthas
  - param String 90.00
  - param String 0
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0027
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman01Target
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0028
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman02Target
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0029
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman03Target
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0030
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman04Target
- Action SetUnitPositionLoc
  - param Variable ExitVictoryPeasant01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant01Target
- Action SetUnitPositionLoc
  - param Variable ExitVictoryPeasant02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant02Target
- Action SetUnitPositionLoc
  - param Variable ExitVictoryPeasant03
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant03Target
- Action SetUnitPositionLoc
  - param Variable ExitVictoryPeasant04
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant04Target
- Action SetUnitPositionLoc
  - param Variable Captain
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryCaptain01Target
- Action SetUnitPositionLoc
  - param Variable ExitVictoryKnight01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryKnight01Target
- Action SetUnitPositionLoc
  - param Variable ExitVictoryKnight02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitVictoryKnight02Target
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_ExitVictoryAllFaceArthas
  - param Function DoNothing
    - Action SetUnitFacingToFaceUnitTimed
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable Arthas
      - param String 0


## ExitVictoryCinematicEnd
- enabled: True
- category: [4] ExitCinematicVictory
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
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
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean01
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean02
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean03
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean04
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean05
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_OCean06
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_OCean07
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_OCean08
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_OCean09
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action TriggerSleepAction
  - param String 2.00
- Action TriggerExecute
  - param Variable gg_trg_Level_Victory


## ExitVictoryCinematicEscape
- enabled: True
- category: [4] ExitCinematicVictory
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
  - param Variable ExitCinematicVictoryEscape
  - param String true
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action TriggerSleepAction
  - param String 2
- Action TriggerExecute
  - param Variable gg_trg_Level_Victory


## TriggerExitDefeatCinematic
- enabled: True
- category: [7] ExitCinematicDefeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action EnableTrigger
  - param Variable gg_trg_ExitDefeatCinematicEscape
- Action DisableTrigger
  - param Variable gg_trg_KeepHarvestersChopping
- Action SetVariable
  - param Variable ExitCinematicDefeatRunning
  - param String true
- Action TriggerExecute
  - param Variable gg_trg_ExitDefeatKillWindows
- Action TriggerExecute
  - param Variable gg_trg_ExitDefeatCinematicMode
- Action TriggerExecute
  - param Variable gg_trg_ExitDefeatInitialCamera


## ExitDefeatKillWindows
- enabled: True
- category: [7] ExitCinematicDefeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DestroyLeaderboardBJ
  - param Variable ShipsRemaining
- Action DestroyTimerDialogBJ
  - param Variable CountdownTimerWindow


## ExitDefeatCinematicMode
- enabled: True
- category: [7] ExitCinematicDefeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Preset Force01
- Action SetSkyModel
  - param Preset SkyModelSky05
- Action UseTimeOfDayBJ
  - param Preset OnOffOff


## ExitDefeatInitialCamera
- enabled: True
- category: [7] ExitCinematicDefeat
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
- Action SetSkyModel
  - param Preset SkyModelSky05
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicDefeatEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ExitDefeat
  - param Preset Player01
  - param String 0
- Action TriggerExecute
  - param Variable gg_trg_ExitDefeatActorSetup
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicDefeatEscape
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
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicDefeatEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_ExitDefeatFootmanRejoices


## ExitDefeatActorSetup
- enabled: True
- category: [7] ExitCinematicDefeat
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
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow1
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow2
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow3
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow4
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow5
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow6
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_WoodRow7
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0027
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman01Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0028
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman02Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0029
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman03Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0030
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman04Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0040
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant01Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0041
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant02Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0042
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant03Move
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0043
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant04Move
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0027
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman01Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0028
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman02Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0029
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman03Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0030
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatFootman04Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0040
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant01Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0041
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant02Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0042
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant03Target
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0043
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatPeasant04Target


## ExitDefeatFootmanRejoices
- enabled: True
- category: [7] ExitCinematicDefeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssueImmediateOrder
  - param Variable gg_unit_hfoo_0029
  - param Preset UnitOrderStop
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hfoo_0027
  - param Variable gg_unit_hfoo_0029
  - param String 0.40
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hfoo_0028
  - param Variable gg_unit_hfoo_0029
  - param String 0.60
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hfoo_0030
  - param Variable gg_unit_hfoo_0029
  - param String 0.70
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hpea_0040
  - param Variable gg_unit_hfoo_0029
  - param String 0.60
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hpea_0041
  - param Variable gg_unit_hfoo_0029
  - param String 0.50
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hpea_0042
  - param Variable gg_unit_hfoo_0029
  - param String 0.40
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_hpea_0043
  - param Variable gg_unit_hfoo_0029
  - param String 0.70
- Action AddUnitAnimationPropertiesBJ
  - param Preset AddRemoveAdd
  - param String victory
  - param Variable gg_unit_hfoo_0029
- Action SetUnitAnimation
  - param Variable gg_unit_hfoo_0029
  - param String stand
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_hfoo_0029
  - param String TRIGSTR_032
  - param Variable gg_snd_H08Footman16
  - param String TRIGSTR_033
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicDefeatEscape
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
      - param Variable gg_rct_ExitDefeatRowboat01
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0028
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatRowboat01
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0040
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatRowboat01
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0041
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatRowboat01
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0029
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatRowboat02
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0030
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatRowboat02
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0042
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatRowboat02
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0043
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitDefeatRowboat02
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
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean01
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean02
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean03
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean04
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_Ocean05
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_OCean06
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_OCean07
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_OCean08
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterWavesLoop1
  - param Variable gg_rct_OCean09
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ExitCinematicDefeatEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_ExitDefeatCinematicEnd


## ExitDefeatCinematicEnd
- enabled: True
- category: [7] ExitCinematicDefeat
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_Level_Defeat


## ExitDefeatCinematicEscape
- enabled: True
- category: [7] ExitCinematicDefeat
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
  - param Variable ExitCinematicDefeatEscape
  - param String true
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action TriggerSleepAction
  - param String 2
- Action TriggerExecute
  - param Variable gg_trg_Level_Defeat


## Level Enable
- enabled: True
- category: [21] Level Changing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StoreUnitBJ
  - param Variable Arthas
  - param String Arthas
  - param String Human09
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action StoreUnitBJ
  - param Variable Muradin
  - param String Muradin
  - param String Human09
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SaveGameCacheBJ
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SetMissionAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset MissionIndexH11


## Level Victory
- enabled: True
- category: [21] Level Changing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetNextLevelBJ
  - param String Maps\Campaign\Human09.w3m
- Action CustomVictoryBJ
  - param Preset Player01
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse


## Level Defeat
- enabled: True
- category: [21] Level Changing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Preset Player01
  - param String TRIGSTR_002


## AllShipsDown
- enabled: True
- category: [5] VictoryConditionChecks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_MainTimerExpires
- Action DisableTrigger
  - param Variable gg_trg_All_Units_Dead
- Action DestroyLeaderboardBJ
  - param Variable ShipsRemaining
- Action DestroyTimerDialogBJ
  - param Variable CountdownTimerWindow
- Action QueuedTriggerClearBJ
- Action QuestSetCompletedBJ
  - param Variable QuestDestroyShips
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestReqShips
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_037
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action TriggerExecute
  - param Variable gg_trg_TriggerExitVictoryCinematic
- Condition OperatorCompareInteger
  - param Variable NumberShipsRemaining
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareBoolean
  - param Function IsTriggerEnabled
    - Function IsTriggerEnabled
      - param Variable gg_trg_AllShipsDown
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false


## MainTimerExpires
- enabled: True
- category: [6] DefeatConditionChecks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable GameOver
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsTriggerEnabled
    - Function IsTriggerEnabled
      - param Variable gg_trg_MainTimerExpires
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Variable gg_trg_AllShipsDown
- Action QueuedTriggerClearBJ
- Action QuestSetFailedBJ
  - param Variable QuestDestroyShips
  - param Preset FailureOptionFailed
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_040
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action TriggerExecute
  - param Variable gg_trg_TriggerExitDefeatCinematic
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable PeasantsChoppingTimer


## All Units Dead
- enabled: True
- category: [6] DefeatConditionChecks
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
  - param Variable gg_trg_AllShipsDown
- Action DisableTrigger
  - param Variable gg_trg_MainTimerExpires
- Action QueuedTriggerClearBJ
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_238
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action TriggerExecute
  - param Variable gg_trg_Level_Defeat
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerMatching
        - Function GetUnitsOfPlayerMatching
          - param Preset Player01
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
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## Victory Cheat
- enabled: True
- category: [20] Cheat Code Support
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_Level_Enable
- Action TriggerExecute
  - param Variable gg_trg_Level_Victory
- Event TriggerRegisterPlayerEventVictory
  - param Preset Player01


## Defeat Cheat
- enabled: True
- category: [20] Cheat Code Support
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_Level_Defeat
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player01


## DebugDefeatCinematic
- enabled: False
- category: [19] DEBUG
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_TriggerExitDefeatCinematic
- Event TriggerRegisterPlayerChatEvent
  - param Preset Player01
  - param String debugdefeat
  - param Preset ChatMatchTypeExact


## DebugVictoryCinematic
- enabled: False
- category: [19] DEBUG
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_TriggerExitVictoryCinematic
- Event TriggerRegisterPlayerChatEvent
  - param Preset Player01
  - param String debugvictory
  - param Preset ChatMatchTypeExact

