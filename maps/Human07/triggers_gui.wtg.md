version = ROC

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 0 | Initialization | False |
| 16 | Patrols | False |
| 18 | AI Resourcing | False |
| 7 | Difficulty | False |
| 5 | Heroes | False |
| 2 | IntroCinematic | False |
| 14 | Crate Destroyed | False |
| 10 | IceTrollVoiceOver | False |
| 19 | IceTrollHut | False |
| 15 | Hints | False |
| 3 | Muradin Cinematic | False |
| 4 | GreyOrangeFailsafe | False |
| 12 | DwarvesFound | False |
| 1 | RescueDwarves | False |
| 13 | MainUndeadBaseVoiceOver | False |
| 8 | ExitCinematic | False |
| 20 | Level Changing | False |
| 6 | VictoryConditionChecks | False |
| 9 | DefeatConditionChecks | False |
| 17 | Cheat Code Support | False |
| 11 | DEBUG | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| Arthas | unit | . | . |
| Muradin | unit | . | . |
| Vis1 | fogmodifier | . | . |
| Vis2 | fogmodifier | . | . |
| IntroCinematicRunning | boolean | . | false |
| IntroCinematicEscape | boolean | . | false |
| DEBUGIntroSkipped | boolean | . | false |
| MuradinCinematicEscape | boolean | . | false |
| MuradinCinematicRunning | boolean | . | false |
| AquaDead | boolean | . | false |
| OrangeDead | boolean | . | false |
| ExitCinematicRunning | boolean | . | false |
| ExitCinematicEscape | boolean | . | false |
| ArthasDefeatActive | boolean | . | true |
| BuildingDefeatActive | boolean | . | false |
| Vis3 | fogmodifier | . | . |
| Vis4 | fogmodifier | . | . |
| ExitKnight | unit | . | . |
| Captain | unit | . | . |
| QuestTownHall | quest | . | . |
| QuestMuradinMen | quest | . | . |
| QuestUndeadCitadel | quest | . | . |
| PeonsPatrolling | boolean | . | true |
| MainUndeadBaseVis | fogmodifier | . | . |
| PlayerMalganis | player | . | Player06 |
| PlayerCryptFiend | player | . | Player03 |
| CrateDead | boolean | . | false |
| ArthasGroup | group | . | . |
| NerubianSeer | unit | . | . |
| TimerGyroRepairHint | timer | . | . |
| QuestReqDestroyMalGanis | questitem | . | . |
| QuestReqArthas | questitem | . | . |
| QuestReqFindGold | questitem | . | . |
| QuestReqRescueDwarves | questitem | . | . |
| VisibilityDwarf01 | fogmodifier | . | . |
| VisibilityDwarf02 | fogmodifier | . | . |
| TimerGyroAcquired | timer | . | . |
| UnitGroupSelection | group | . | . |
| GameOver | boolean | . | false |

# Triggers
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
  - param Variable gg_trg_ChangePeonOwner
- Action TriggerExecute
  - param Variable gg_trg_Load_Heroes
- Action TriggerExecute
  - param Variable gg_trg_SetMuradinLichLevelsSkills
- Action TriggerExecute
  - param Variable gg_trg_StartingResources
- Action TriggerExecute
  - param Variable gg_trg_StartingAlliances
- Action TriggerExecute
  - param Variable gg_trg_StartingTOD
- Action TriggerExecute
  - param Variable gg_trg_StartingQuest
- Action TriggerExecute
  - param Variable gg_trg_StartAI
- Action TriggerExecute
  - param Variable gg_trg_StartMusic
- Action TriggerExecute
  - param Variable gg_trg_Setup_Scorescreen
- Action TriggerExecute
  - param Variable gg_trg_TriggerIntroCinematic
- Event MapInitializationEvent


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
  - param Variable Muradin
  - param Variable gg_unit_Hmbr_0038
- Action SetVariable
  - param Variable Captain
  - param Variable gg_unit_hcth_0023


## ChangePeonOwner
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitInvulnerable
  - param Variable gg_unit_hpea_0089
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_hpea_0088
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_hpea_0087
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitOwner
  - param Variable gg_unit_hpea_0089
  - param Preset Player09
  - param Preset ChangeColorTrue
- Action SetUnitOwner
  - param Variable gg_unit_hpea_0088
  - param Preset Player09
  - param Preset ChangeColorTrue
- Action SetUnitOwner
  - param Variable gg_unit_hpea_0087
  - param Preset Player09
  - param Preset ChangeColorTrue


## StartingResources
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description
Add resources to the players in the map.
```
### Functions
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateGold
  - param String 1000
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateLumber
  - param String 400
- Action SetPlayerState
  - param Variable PlayerCryptFiend
  - param Preset PlayerStateGold
  - param String 1000
- Action SetPlayerState
  - param Variable PlayerCryptFiend
  - param Preset PlayerStateLumber
  - param String 500
- Action SetPlayerState
  - param Variable PlayerMalganis
  - param Preset PlayerStateGold
  - param String 1000
- Action SetPlayerState
  - param Variable PlayerMalganis
  - param Preset PlayerStateLumber
  - param String 500
- Action SetPlayerState
  - param Preset Player08
  - param Preset PlayerStateGold
  - param String 1000
- Action SetPlayerState
  - param Preset Player08
  - param Preset PlayerStateLumber
  - param String 500


## StartingAlliances
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description
Setup initial alliances outside of Force Menu.
In Force Menu Player 4 and 11 are setup as mutual Allies with Shared Vision.
```
### Functions
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player08
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player07
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player09
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player08
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player06
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player06
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Variable PlayerCryptFiend
- Action SetPlayerAllianceBJ
  - param Preset Player06
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player08
- Action SetPlayerAllianceBJ
  - param Preset Player06
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player07
- Action SetPlayerAllianceBJ
  - param Preset Player06
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player08
  - param Preset AllianceTypePassive
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
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player06
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA


## StartingTOD
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetTimeOfDay
  - param String 6.05


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
  - param String TRIGSTR_037
  - param String TRIGSTR_038
  - param String ReplaceableTextures\CommandButtons\BTNGoldMine.tga
- Action SetVariable
  - param Variable QuestTownHall
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestTownHall
  - param String TRIGSTR_044
- Action SetVariable
  - param Variable QuestReqFindGold
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Variable QuestTownHall
  - param String TRIGSTR_025
- Action SetVariable
  - param Variable QuestReqArthas
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestBJ
  - param Preset QuestTypeReqDiscovered
  - param String TRIGSTR_042
  - param String TRIGSTR_043
  - param String ReplaceableTextures\CommandButtons\BTNHeroDreadLord.tga
- Action SetVariable
  - param Variable QuestUndeadCitadel
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestUndeadCitadel
  - param String TRIGSTR_045
- Action SetVariable
  - param Variable QuestReqDestroyMalGanis
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestBJ
  - param Preset QuestTypeOptUndiscovered
  - param String TRIGSTR_047
  - param String TRIGSTR_048
  - param String ReplaceableTextures\CommandButtons\BTNMortarTeam.tga
- Action SetVariable
  - param Variable QuestMuradinMen
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestMuradinMen
  - param String TRIGSTR_104
- Action SetVariable
  - param Variable QuestReqRescueDwarves
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ


## StartAI
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
  - param Preset Color08
  - param Preset PlayerChangeColorChange
- Action TriggerSleepAction
  - param String 2.00
- Action StartCampaignAI
  - param Preset Player06
  - param String h07_green.ai
- Action StartCampaignAI
  - param Variable PlayerCryptFiend
  - param String h07_purple.ai
- Action StartCampaignAI
  - param Preset Player08
  - param String h07_gray.ai


## StartMusic
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
  - param String 0


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
  - param Preset Player07
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player08
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player09


## InitialCreepPatrols
- enabled: True
- category: [16] Patrols
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventSingle
  - param String 1.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_nspd_0139
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SpiderlingPatrol
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_nspd_0139
  - param Preset SleepWakeOptionWake
- Action IssuePointOrderLoc
  - param Variable gg_unit_nwwf_0122
  - param Preset UnitOrderPatrol
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_WhiteWolfPatrol
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_nwwf_0122
  - param Preset SleepWakeOptionWake
- Action IssuePointOrderLoc
  - param Variable gg_unit_nwwf_0106
  - param Preset UnitOrderPatrol
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_WhiteWolfPatrol
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_nwwf_0106
  - param Preset SleepWakeOptionWake
- Action IssuePointOrderLoc
  - param Variable gg_unit_nitr_0138
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IceTrollPatrol01
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_nitr_0138
  - param Preset SleepWakeOptionWake
- Action IssuePointOrderLoc
  - param Variable gg_unit_nitr_0140
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IceTrollPatrol02
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_nitr_0140
  - param Preset SleepWakeOptionWake


## RestartCreepPatrols
- enabled: True
- category: [16] Patrols
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
          - param Variable gg_unit_nspd_0139
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable gg_unit_nspd_0139
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SpiderlingPatrolBegin
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nspd_0139
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable gg_unit_nspd_0139
      - param Preset UnitOrderPatrol
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_SpiderlingPatrol
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nwwf_0122
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable gg_unit_nwwf_0122
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_WhiteWolfPatrolBegin
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nwwf_0122
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable gg_unit_nwwf_0122
      - param Preset UnitOrderPatrol
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_WhiteWolfPatrol
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nwwf_0106
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable gg_unit_nwwf_0106
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_WhiteWolfPatrolBegin
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nwwf_0106
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable gg_unit_nwwf_0106
      - param Preset UnitOrderPatrol
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_WhiteWolfPatrol
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nitr_0138
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable gg_unit_nitr_0138
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_IceTroll138PatrolBegin
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nitr_0138
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable gg_unit_nitr_0138
      - param Preset UnitOrderPatrol
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_IceTrollPatrol01
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nitr_0140
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable gg_unit_nitr_0140
      - param Function GetRandomLocInRect
        - Function GetRandomLocInRect
          - param Variable gg_rct_IceTroll140PatrolBegin
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable gg_unit_nitr_0140
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable gg_unit_nitr_0140
      - param Preset UnitOrderPatrol
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_IceTrollPatrol02
  - param Function DoNothing
    - Action DoNothing


## GreyGold
- enabled: True
- category: [18] AI Resourcing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player08
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player08
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThanOrEqual
  - param String 1000


## GreyLumber
- enabled: True
- category: [18] AI Resourcing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player08
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player08
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThanOrEqual
  - param String 1000


## GreenGold
- enabled: True
- category: [18] AI Resourcing
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
  - param String 1000


## GreenLumber
- enabled: True
- category: [18] AI Resourcing
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
  - param String 1000


## PurpleGold
- enabled: True
- category: [18] AI Resourcing
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
  - param String 1000


## PurpleLumber
- enabled: True
- category: [18] AI Resourcing
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
  - param String 1000


## Easy
- enabled: True
- category: [7] Difficulty
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
  - param String GREEN TOWN
- Action RemoveUnit
  - param Variable gg_unit_usep_0049
- Action CommentString
  - param String ICE TROLLS
- Action RemoveUnit
  - param Variable gg_unit_nitr_0118
- Action RemoveUnit
  - param Variable gg_unit_nitr_0116
- Action RemoveUnit
  - param Variable gg_unit_nitr_0117
- Action CommentString
  - param String NERUBIANS
- Action RemoveUnit
  - param Variable gg_unit_nnwq_0090
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nnwr
  - param Preset PlayerNA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_DifficultyNerubianQueen
  - param String 0.00
- Action SetVariable
  - param Variable NerubianSeer
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CommentString
  - param String HANDICAP
- Action SetPlayerHandicapBJ
  - param Preset Player03
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player06
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset PlayerNA
  - param Preset RealHandicapEasy
- Event MapInitializationEvent


## Normal
- enabled: True
- category: [7] Difficulty
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
  - param Preset GameDifficultyNormal
- Action CommentString
  - param String GREEN TOWN
- Action RemoveUnit
  - param Variable gg_unit_usep_0049
- Action CommentString
  - param String ICE TROLLS
- Action RemoveUnit
  - param Variable gg_unit_nitr_0118
- Action RemoveUnit
  - param Variable gg_unit_nitr_0116
- Action RemoveUnit
  - param Variable gg_unit_nitr_0117
- Action CommentString
  - param String NERUBIANS
- Action RemoveUnit
  - param Variable gg_unit_nnwq_0090
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nnwr
  - param Preset PlayerNA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_DifficultyNerubianQueen
  - param String 0.00
- Action SetVariable
  - param Variable NerubianSeer
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Event MapInitializationEvent


## NerubianSeerDeath
- enabled: True
- category: [7] Difficulty
- starts off: False
- is custom text: False
- run on map init: False
```description
This trigger exists for use by Normal and Easy difficulties, where the Nerubian Queen is replaced by a Nerubian Seer.
```
### Functions
- Action CreateItemLoc
  - param String ofro
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetDyingUnit
        - Function GetDyingUnit
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable NerubianSeer
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset PlayerNA
  - param Preset PlayerUnitEventDeath


## Load Heroes
- enabled: True
- category: [5] Heroes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerHandicapXPBJ
  - param Preset Player01
  - param String 50.00
- Action InitGameCacheBJ
  - param String Campaigns.w3v
- Action TriggerExecute
  - param Variable gg_trg_Load_Arthas


## Load Arthas
- enabled: True
- category: [5] Heroes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RestoreUnitLocFacingPointBJ
  - param String Arthas
  - param String Human07
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroArthasInitial
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroArthasInitialFacing
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
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String Hart
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroArthasInitial
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroArthasInitialFacing
- Action SetVariable
  - param Variable Arthas
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action TriggerExecute
  - param Variable gg_trg_SetArthasLevelsSkills


## SetArthasLevelsSkills
- enabled: True
- category: [5] Heroes
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetHeroLevel
  - param Variable Arthas
  - param String 7
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


## SetMuradinLichLevelsSkills
- enabled: True
- category: [5] Heroes
- starts off: False
- is custom text: False
- run on map init: False
```description
Set and define skills for level 5 Lich.
Set and define skills for Level 6 Arthas.
Set and definte skills for Level 3 Muradin.
```
### Functions
- Action SetHeroLevel
  - param Variable Muradin
  - param String 5
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable Muradin
  - param Preset HeroSkillThunderClap
- Action SelectHeroSkill
  - param Variable Muradin
  - param Preset HeroSkillThunderClap
- Action SelectHeroSkill
  - param Variable Muradin
  - param Preset HeroSkillStormBolt
- Action SelectHeroSkill
  - param Variable Muradin
  - param Preset HeroSkillBash
- Action SetHeroLevel
  - param Variable gg_unit_Ulic_0100
  - param String 5
  - param Preset ShowHideHide
- Action SelectHeroSkill
  - param Variable gg_unit_Ulic_0100
  - param Preset HeroSkillFrostNova
- Action SelectHeroSkill
  - param Variable gg_unit_Ulic_0100
  - param Preset HeroSkillFrostNova
- Action SelectHeroSkill
  - param Variable gg_unit_Ulic_0100
  - param Preset HeroSkillFrostArmor
- Action SelectHeroSkill
  - param Variable gg_unit_Ulic_0100
  - param Preset HeroSkillDarkRitual
- Action SelectHeroSkill
  - param Variable gg_unit_Ulic_0100
  - param Preset HeroSkillFrostArmor


## LimitArthasXP
- enabled: True
- category: [5] Heroes
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
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Arthas
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventHero_Level


## LimitMuradinXP
- enabled: True
- category: [5] Heroes
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
  - param Variable Muradin
- Condition OperatorCompareInteger
  - param Function GetHeroLevel
    - Function GetHeroLevel
      - param Variable Muradin
  - param Preset OperatorGreaterEq
  - param String 7
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Muradin
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventHero_Level


## TriggerIntroCinematic
- enabled: True
- category: [2] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action EnableTrigger
  - param Variable gg_trg_IntroCinematicEscape
- Action TriggerExecute
  - param Variable gg_trg_CinematicMode
- Action TriggerExecute
  - param Variable gg_trg_IntroInitialCamera
- Action TriggerExecute
  - param Variable gg_trg_BeginPeonMovement
- Action SetVariable
  - param Variable IntroCinematicRunning
  - param String true


## CinematicMode
- enabled: True
- category: [2] IntroCinematic
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


## IntroInitialCamera
- enabled: True
- category: [2] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetSkyModel
  - param Preset SkyModelSky05
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.00
  - param Preset CineFilterTextureBlack
  - param String 0.00
  - param String 0.00
  - param String 0.00
  - param String 0
- Action TriggerSleepAction
  - param String 1.00
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WaterWavesLoop1
  - param String 80.00
- Condition OperatorCompareBoolean
  - param Variable IntroCinematicRunning
  - param Preset OperatorEqualENE
  - param String true
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
- Action SetTerrainFogExBJ
  - param String 0
  - param String 1000.00
  - param String 5000.00
  - param String 0
  - param String 80.00
  - param String 80.00
  - param String 80.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.50
  - param Preset CineFilterTextureBlack
  - param String 0.00
  - param String 0.00
  - param String 0.00
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroInitialCamera
  - param Preset Player01
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroInitialCamera2
  - param Preset Player01
  - param String 6.00
- Action TriggerSleepAction
  - param String 5.60
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
  - param String 0.40
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
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroCameraSweepTo
  - param Preset Player01
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
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
      - param Variable IntroCinematicEscape
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
      - param Variable IntroCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable Captain
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroCaptainMovementTarget
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
- Action ConditionalTriggerExecute
  - param Variable gg_trg_IntroCharactersTalk


## BeginPeonMovement
- enabled: True
- category: [2] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ConditionalTriggerExecute
  - param Variable gg_trg_BeginPeonAttack
- Action AddUnitAnimationPropertiesBJ
  - param Preset AddRemoveAdd
  - param String gold
  - param Variable gg_unit_hpea_0089
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0089
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroPeonBPatrolReturn
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0087
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroPeonAPatrolShore


## BeginPeonAttack
- enabled: True
- category: [2] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable PeonsPatrolling
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable CrateDead
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterTimerEventPeriodic
  - param String 1.80
- Action SetUnitAnimation
  - param Variable gg_unit_hpea_0088
  - param String stand work
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareReal
      - param Function GetRandomReal
        - Function GetRandomReal
          - param String 0.00
          - param String 1.00
      - param Preset OperatorGreaterEq
      - param String 0.30
  - param Function DoNothing
    - Action SetUnitAnimation
      - param Variable gg_unit_hpea_0088
      - param String stand work
  - param Function DoNothing
    - Action ResetUnitAnimation
      - param Variable gg_unit_hpea_0088


## PeonAReturn
- enabled: True
- category: [2] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AddUnitAnimationPropertiesBJ
  - param Preset AddRemoveAdd
  - param String lumber
  - param Variable gg_unit_hpea_0087
- Action SetUnitMoveSpeed
  - param Variable gg_unit_hpea_0087
  - param String 80.00
- Action SetUnitTimeScalePercent
  - param Variable gg_unit_hpea_0087
  - param String 90.00
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hpea_0087
- Condition OperatorCompareBoolean
  - param Variable PeonsPatrolling
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_IntroPeonAPatrolReturn


## PeonAShore
- enabled: True
- category: [2] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AddUnitAnimationPropertiesBJ
  - param Preset AddRemoveRemove
  - param String lumber
  - param Variable gg_unit_hpea_0087
- Action SetUnitMoveSpeed
  - param Variable gg_unit_hpea_0087
  - param Function GetUnitDefaultMoveSpeed
    - Function GetUnitDefaultMoveSpeed
      - param Variable gg_unit_hpea_0087
- Action SetUnitTimeScalePercent
  - param Variable gg_unit_hpea_0087
  - param String 100.00
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hpea_0087
- Condition OperatorCompareBoolean
  - param Variable PeonsPatrolling
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_IntroPeonAPatrolShore


## PeonBReturn
- enabled: True
- category: [2] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AddUnitAnimationPropertiesBJ
  - param Preset AddRemoveAdd
  - param String gold
  - param Variable gg_unit_hpea_0089
- Action SetUnitMoveSpeed
  - param Variable gg_unit_hpea_0089
  - param String 80.00
- Action SetUnitTimeScalePercent
  - param Variable gg_unit_hpea_0089
  - param String 90.00
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hpea_0089
- Condition OperatorCompareBoolean
  - param Variable PeonsPatrolling
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_IntroPeonBPatrolReturn


## PeonBShore
- enabled: True
- category: [2] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AddUnitAnimationPropertiesBJ
  - param Preset AddRemoveRemove
  - param String gold
  - param Variable gg_unit_hpea_0089
- Action SetUnitMoveSpeed
  - param Variable gg_unit_hpea_0089
  - param Function GetUnitDefaultMoveSpeed
    - Function GetUnitDefaultMoveSpeed
      - param Variable gg_unit_hpea_0089
- Action SetUnitTimeScalePercent
  - param Variable gg_unit_hpea_0089
  - param String 100.00
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hpea_0089
- Condition OperatorCompareBoolean
  - param Variable PeonsPatrolling
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_IntroPeonBPatrolShore


## IntroCharactersTalk
- enabled: True
- category: [2] IntroCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitAnimationWithRarity
  - param Variable Captain
  - param String stand
  - param Preset RarityControlFrequent
- Action SetUnitAnimationWithRarity
  - param Variable Arthas
  - param String stand
  - param Preset RarityControlFrequent
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Captain
  - param String TRIGSTR_008
  - param Variable gg_snd_H07Captain01
  - param String TRIGSTR_009
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Condition OperatorCompareBoolean
  - param Variable IntroCinematicEscape
  - param Preset OperatorEqualENE
  - param String false
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
  - param Preset Player01
  - param String 0.01
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Captain
  - param String 0.20
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
- Action SetUnitLookAt
  - param Variable Arthas
  - param Preset UnitFacingBoneHead
  - param Variable Captain
  - param String 0.00
  - param String 0.00
  - param String 90.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_010
  - param Variable gg_snd_H07Arthas02
  - param String TRIGSTR_012
  - param Preset AddSetToAdd
  - param String 0.00
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
  - param Variable gg_cam_IntroCaptainCloseup
  - param Preset Player01
  - param String 0.01
- Action SetUnitFacingToFaceLocTimed
  - param Variable Captain
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_hpea_0088
  - param String 0.20
- Action SetUnitLookAt
  - param Variable Captain
  - param Preset UnitFacingBoneHead
  - param Variable gg_unit_hpea_0088
  - param String 0.00
  - param String 0.00
  - param String 90.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Captain
  - param String TRIGSTR_020
  - param Variable gg_snd_H07Captain03
  - param String TRIGSTR_021
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Variable gg_snd_H07Captain03
      - param Preset OperatorSubtract
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
- Action ResetUnitLookAt
  - param Variable Arthas
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroArthasMovementTarget
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_091
  - param Variable gg_snd_H07Arthas04
  - param String TRIGSTR_092
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait


## ArthasSetsOff
- enabled: True
- category: [2] IntroCinematic
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
- Condition OperatorCompareBoolean
  - param Variable IntroCinematicRunning
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable IntroCinematicEscape
  - param Preset OperatorEqualENE
  - param String false
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasIntroTurn02
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroArthasAfterMove
  - param Preset Player01
  - param String 0.01
- Action ResetUnitLookAt
  - param Variable Captain
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Captain
  - param Variable Arthas
  - param String 0.20
- Action TriggerSleepAction
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_H07Arthas04
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
- Action ConditionalTriggerExecute
  - param Variable gg_trg_CinematicEnd
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_IntroArthasMovementTarget


## CinematicEnd
- enabled: True
- category: [2] IntroCinematic
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
  - param Variable gg_trg_IntroCinematicEscape
- Action SetVariable
  - param Variable IntroCinematicRunning
  - param String false
- Action ResetUnitLookAt
  - param Variable Arthas
- Action ResetUnitLookAt
  - param Variable Captain
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
  - param Variable gg_cam_IntroFinal
  - param Preset Player01
  - param String 0.00
- Action TriggerSleepAction
  - param String 1.00
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetSkyModel
  - param Preset SkyModelNone
- Action SetTerrainFogExBJ
  - param String 0
  - param String 2000.00
  - param String 8000.00
  - param String 0
  - param String 30.00
  - param String 30.00
  - param String 30.00
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectUnitSingle
  - param Variable Arthas
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WaterWavesLoop1
  - param String 100
- Action QuestMessageBJ
  - param Preset Force01
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_033
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QuestMessageBJ
  - param Preset Force01
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_041


## IntroCinematicEscape
- enabled: True
- category: [2] IntroCinematic
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action SetVariable
  - param Variable IntroCinematicRunning
  - param String false
- Action SetVariable
  - param Variable IntroCinematicEscape
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
- Action SetUnitPositionLocFacingLocBJ
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroArthasMovementTarget
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasIntroTurn02
- Action SetUnitPositionLocFacingLocBJ
  - param Variable Captain
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_IntroCaptainMovementTarget
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_IntroFinal
  - param Preset Player01
  - param String 0.00
- Action TriggerSleepAction
  - param String 1.00
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action # PanCameraToTimedLocForPlayer
  - param Preset Player01
  - param Function CameraSetupGetDestPositionLoc
    - Function CameraSetupGetDestPositionLoc
      - param Variable gg_cam_IntroFinal
  - param String 0
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetSkyModel
  - param Preset SkyModelNone
- Action SetTerrainFogExBJ
  - param String 0
  - param String 2000.00
  - param String 8000.00
  - param String 0
  - param String 30.00
  - param String 30.00
  - param String 30.00
- Action SetSoundVolumeBJ
  - param Variable gg_snd_WaterWavesLoop1
  - param String 100
- Action ResetUnitLookAt
  - param Variable Arthas
- Action ResetUnitLookAt
  - param Variable Captain
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectUnitSingle
  - param Variable Arthas
- Action QuestMessageBJ
  - param Preset Force01
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_030
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QuestMessageBJ
  - param Preset Force01
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_031
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## DetectCrateDeath
- enabled: True
- category: [14] Crate Destroyed
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ResetUnitAnimation
  - param Variable gg_unit_hpea_0088
- Action SetVariable
  - param Variable CrateDead
  - param String true
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_PeonHammering
      - param Variable gg_unit_hpea_0088
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_0274


## Ice Troll Attacks
- enabled: True
- category: [10] IceTrollVoiceOver
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
  - param Variable gg_trg_Ice_Troll_Message
  - param Preset CheckingIgnoringChecking
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareUnitCode
      - param Function GetUnitTypeId
        - Function GetUnitTypeId
          - param Function GetAttacker
            - Function GetAttacker
      - param Preset OperatorEqualENE
      - param String nitr
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetAttacker
                - Function GetAttacker
          - param Preset OperatorEqualENE
          - param String nitp
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetAttacker
                - Function GetAttacker
          - param Preset OperatorEqualENE
          - param String nits
- Condition OperatorCompareReal
  - param Function DistanceBetweenPoints
    - Function DistanceBetweenPoints
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable Arthas
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Function GetAttackedUnitBJ
            - Function GetAttackedUnitBJ
  - param Preset OperatorLessEq
  - param String 1024.00
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventAttacked


## Ice Troll Message
- enabled: True
- category: [10] IceTrollVoiceOver
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
  - param Variable Arthas
  - param String TRIGSTR_029
  - param Variable gg_snd_H07Arthas06
  - param String TRIGSTR_034
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## HutDies
- enabled: True
- category: [19] IceTrollHut
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 0.20
- Action CreateItemLoc
  - param String pman
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_IceTrollHut
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nth0_0076
  - param Preset UnitEventDeath


## Gyrocopter
- enabled: True
- category: [15] Hints
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
  - param Variable gg_trg_GyrocopterMessage
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerGyroAcquired


## GyrocopterMessage
- enabled: True
- category: [15] Hints
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
  - param String TRIGSTR_163
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action StartTimerBJ
  - param Variable TimerGyroRepairHint
  - param Preset PeriodicOptionOneTime
  - param String 10.00


## GyroRepair
- enabled: True
- category: [15] Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_GyroRepairMessage
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable TimerGyroRepairHint


## GyroRepairMessage
- enabled: True
- category: [15] Hints
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
  - param String TRIGSTR_035
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## SteamTank
- enabled: False
- category: [15] Hints
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
  - param Variable gg_trg_SteamTankMessage
  - param Preset CheckingIgnoringChecking
- Condition # OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerAndTypeId
        - Function GetUnitsOfPlayerAndTypeId
          - param Preset Player01
          - param String hmtt
  - param Preset OperatorGreaterEq
  - param String 1
- Event # TriggerRegisterTimerEventPeriodic
  - param String 2


## SteamTankMessage
- enabled: True
- category: [15] Hints
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
- Action SetPlayerUnitAvailableBJ
  - param String hmtt
  - param Preset AvailabilityOptionAvailable
  - param Preset Player01
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_049
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## TriggerMuradinIntroCinematic
- enabled: True
- category: [3] Muradin Cinematic
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
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_PlayMuradinIntroCinematic
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_BeginMuradinIntro


## PlayMuradinIntroCinematic
- enabled: True
- category: [3] Muradin Cinematic
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
  - param Variable MuradinCinematicRunning
  - param String true
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action TriggerExecute
  - param Variable gg_trg_Muradin_DwarfVisibilityMods
- Action TriggerExecute
  - param Variable gg_trg_Muradin_InitialCamera


## Muradin DwarfVisibilityMods
- enabled: True
- category: [3] Muradin Cinematic
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## Muradin InitialCamera
- enabled: True
- category: [3] Muradin Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Variable gg_rct_MuradinIntroVisibility
- Action SetVariable
  - param Variable Vis3
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
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
  - param Variable gg_trg_Muradin_CinematicMode
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MuradinInitialCamera
  - param Preset Player01
  - param String 0.00
- Action TriggerExecute
  - param Variable gg_trg_Muradin_ResetPeons
- Action EnableTrigger
  - param Variable gg_trg_Muradin_CinematicEscape
- Action TriggerSleepAction
  - param String 1.90
- Action TriggerExecute
  - param Variable gg_trg_Muradin_PositionActors
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
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
  - param String 0.05
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MuradinGoldMineView
  - param Preset Player01
  - param String 6.00
- Action TriggerSleepAction
  - param String 6.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing


## Muradin CinematicMode
- enabled: True
- category: [3] Muradin Cinematic
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
- Action FogEnableOn
- Action UseTimeOfDayBJ
  - param Preset OnOffOff


## Muradin PositionActors
- enabled: True
- category: [3] Muradin Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ForGroup
  - param Function GetUnitsSelectedAll
    - Function GetUnitsSelectedAll
      - param Preset Player01
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable UnitGroupSelection
- Action ClearSelection
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOn
  - param Preset Player01
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset PlayerNA
  - param Function DoNothing
    - Action IssueImmediateOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderStop
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player01
  - param Function DoNothing
    - Action GroupAddUnitSimple
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable ArthasGroup
- Action ForGroup
  - param Variable ArthasGroup
  - param Function DoNothing
    - Action UnitRemoveBuffsBJ
      - param Preset BuffTypeAll
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Variable ArthasGroup
  - param Function DoNothing
    - Action SetUnitMoveSpeed
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String 240.00
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TeleportArthas
- Action SetUnitPositionLoc
  - param Variable Captain
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TeleportCaptain
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0087
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TeleportPeon01
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0088
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TeleportPeon02
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0089
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TeleportPeon03
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0020
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TeleportFootman01
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0022
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TeleportFootman02
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0110
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TeleportFootman03
- Action SetUnitPositionLoc
  - param Variable gg_unit_hmpr_0019
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_TeleportPriest
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_ArthasMove
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0087
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_Peon01Move
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0088
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_Peon02Move
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0089
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_Peon03Move
- Action IssuePointOrderLoc
  - param Variable Captain
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_CaptainMove
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0020
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_Footman01Move
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0022
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_Footman02Move
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0110
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_Footman03Move
- Action IssuePointOrderLoc
  - param Variable gg_unit_hmpr_0019
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_PriestMove


## Muradin ResetPeons
- enabled: True
- category: [3] Muradin Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitOwner
  - param Variable gg_unit_hpea_0089
  - param Preset Player01
  - param Preset ChangeColorTrue
- Action SetUnitOwner
  - param Variable gg_unit_hpea_0088
  - param Preset Player01
  - param Preset ChangeColorTrue
- Action SetUnitOwner
  - param Variable gg_unit_hpea_0087
  - param Preset Player01
  - param Preset ChangeColorTrue
- Action SetVariable
  - param Variable PeonsPatrolling
  - param String false
- Action SetUnitTimeScalePercent
  - param Variable gg_unit_hpea_0087
  - param String 100.00
- Action SetUnitMoveSpeed
  - param Variable gg_unit_hpea_0087
  - param Function GetUnitDefaultMoveSpeed
    - Function GetUnitDefaultMoveSpeed
      - param Variable gg_unit_hpea_0087
- Action ResetUnitAnimation
  - param Variable gg_unit_hpea_0087
- Action SetUnitTimeScalePercent
  - param Variable gg_unit_hpea_0088
  - param String 100.00
- Action SetUnitMoveSpeed
  - param Variable gg_unit_hpea_0088
  - param Function GetUnitDefaultMoveSpeed
    - Function GetUnitDefaultMoveSpeed
      - param Variable gg_unit_hpea_0088
- Action ResetUnitAnimation
  - param Variable gg_unit_hpea_0088
- Action SetUnitTimeScalePercent
  - param Variable gg_unit_hpea_0089
  - param String 100.00
- Action SetUnitMoveSpeed
  - param Variable gg_unit_hpea_0089
  - param Function GetUnitDefaultMoveSpeed
    - Function GetUnitDefaultMoveSpeed
      - param Variable gg_unit_hpea_0089
- Action ResetUnitAnimation
  - param Variable gg_unit_hpea_0089
- Action AddUnitAnimationPropertiesBJ
  - param Preset AddRemoveRemove
  - param String lumber
  - param Variable gg_unit_hpea_0087
- Action AddUnitAnimationPropertiesBJ
  - param Preset AddRemoveRemove
  - param String gold
  - param Variable gg_unit_hpea_0089
- Action SetUnitInvulnerable
  - param Variable gg_unit_hpea_0087
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_hpea_0088
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_hpea_0089
  - param Preset InvulnerabilityVulnerable


## Muradin FindGoldMine
- enabled: True
- category: [3] Muradin Cinematic
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
  - param Variable Arthas
  - param Preset UnitOrderStop
- Action SetUnitAnimationWithRarity
  - param Variable Arthas
  - param String stand
  - param Preset RarityControlFrequent
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_027
  - param Variable gg_snd_H07Arthas07
  - param String TRIGSTR_028
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ForGroup
  - param Variable ArthasGroup
  - param Function DoNothing
    - Action SetUnitMoveSpeed
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetUnitDefaultMoveSpeed
        - Function GetUnitDefaultMoveSpeed
          - param Function GetEnumUnit
            - Function GetEnumUnit
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0087
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon01Goes
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0088
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon02Goes
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0089
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon03Goes
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
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
      - param Variable MuradinCinematicEscape
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
- Action SetUnitPositionLocFacingBJ
  - param Variable gg_unit_hpea_0087
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon01Corner
  - param String 135.00
- Action SetUnitPositionLocFacingBJ
  - param Variable gg_unit_hpea_0088
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon02Corner
  - param String 135.00
- Action SetUnitPositionLocFacingBJ
  - param Variable gg_unit_hpea_0089
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon03Corner
  - param String 135.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MuradinTownIntro
  - param Preset Player01
  - param String 0
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0087
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon01Attacked
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0088
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon02Attacked
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0089
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon03Attacked
- Action TriggerSleepAction
  - param String 0.01
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MuradinFinalPeonMovementCamera
  - param Preset Player01
  - param String 6.00
- Action TriggerSleepAction
  - param String 4.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action EnableTrigger
  - param Variable gg_trg_Muradin_KeepPeasantAlive
- Action IssueTargetOrder
  - param Variable gg_unit_hrif_0044
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hpea_0087
- Action IssueTargetOrder
  - param Variable gg_unit_hrif_0039
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hpea_0087
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssueTargetOrder
  - param Variable Muradin
  - param Preset UnitOrderThunderBolt
  - param Variable gg_unit_hpea_0087
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
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
  - param String TRIGSTR_003
  - param Variable gg_snd_H07Arthas08
  - param String TRIGSTR_004
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0087
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon01Retreat
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0088
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon02Retreat
- Action IssuePointOrderLoc
  - param Variable gg_unit_hpea_0089
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon03Retreat
- Action TriggerSleepAction
  - param String 1.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action GroupImmediateOrder
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player07
  - param Preset UnitOrderStop
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.20
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
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.20
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetPlayerAllianceBJ
  - param Preset Player07
  - param Preset AllianceTypeSharedVision
  - param Preset OnOffOn
  - param Preset Player01
- Action DestroyFogModifier
  - param Variable VisibilityDwarf01
- Action DestroyFogModifier
  - param Variable VisibilityDwarf02
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MuradinAttacks
  - param Preset Player01
  - param String 0
- Action DisableTrigger
  - param Variable gg_trg_Muradin_KeepPeasantAlive
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Muradin
  - param String TRIGSTR_007
  - param Variable gg_snd_H07Muradin09
  - param String TRIGSTR_023
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action SetUnitPositionLocFacingBJ
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinArthasOffScreen
  - param String 180.00
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
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
      - param Variable gg_rct_MuradinArthasToMuradin
- Action TriggerSleepAction
  - param Function OperatorReal
    - Function OperatorReal
      - param Function GetSoundDurationBJ
        - Function GetSoundDurationBJ
          - param Variable gg_snd_H07Muradin09
      - param Preset OperatorSubtract
      - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable Muradin
  - param String 0.40
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_024
  - param Variable gg_snd_H07Arthas10
  - param String TRIGSTR_039
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_H07Arthas12
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Muradin
  - param String TRIGSTR_040
  - param Variable gg_snd_H07Muradin13
  - param String TRIGSTR_057
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action IssuePointOrderLoc
  - param Variable Muradin
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinToArthas
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MuradinConversationCloseup
  - param Preset Player01
  - param String 4.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0020
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_Footman01MoveAfter
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0022
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_Footman02MoveAfter
- Action IssuePointOrderLoc
  - param Variable gg_unit_hfoo_0110
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_Footman03MoveAfter
- Action IssuePointOrderLoc
  - param Variable gg_unit_hcth_0023
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_CaptainMoveAfter
- Action IssuePointOrderLoc
  - param Variable gg_unit_hmpr_0019
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_PriestMoveAfter
- Action TriggerSleepAction
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_H07Muradin13
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
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
  - param String TRIGSTR_058
  - param Variable gg_snd_H07Arthas14
  - param String TRIGSTR_059
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Muradin
  - param String TRIGSTR_060
  - param Variable gg_snd_H07Muradin15
  - param String TRIGSTR_061
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontDont
- Action SetPlayerAllianceBJ
  - param Preset Player08
  - param Preset AllianceTypeSharedVision
  - param Preset OnOffOn
  - param Preset Player01
- Action TriggerSleepAction
  - param String 4.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetPlayerAllianceBJ
  - param Preset Player03
  - param Preset AllianceTypePassive
  - param Preset OnOffOff
  - param Preset Player08
- Action SetPlayerAllianceBJ
  - param Preset Player08
  - param Preset AllianceTypePassive
  - param Preset OnOffOff
  - param Preset Player03
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ucry
  - param Variable PlayerCryptFiend
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SpawnCryptFiend
  - param String 0.00
- Action RemoveGuardPosition
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hgtw_0005
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Variable PlayerCryptFiend
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SpawnGhouls
  - param String 0.00
- Action RemoveGuardPosition
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssueTargetOrder
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderAttackUnit
  - param Variable gg_unit_hgtw_0005
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MuradinViewCaptiveDwarves
  - param Preset Player01
  - param String 0.01
- Action TriggerSleepAction
  - param String 0.01
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetCameraFieldForPlayer
  - param Preset Player01
  - param Preset CameraFieldRotation
  - param String 60.00
  - param String 5.00
- Action WaitForSoundBJ
  - param Variable gg_snd_H07Muradin15
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MuradinConversationCloseup
  - param Preset Player01
  - param String 0.01
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_062
  - param Variable gg_snd_H07Arthas16
  - param String TRIGSTR_063
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MuradinCinematicEscape
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
      - param Variable MuradinCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_Muradin_End
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Condition OperatorCompareBoolean
  - param Variable MuradinCinematicRunning
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable MuradinCinematicEscape
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_MuradinIntro_ArthasMove


## Muradin KeepPeasantAlive
- enabled: True
- category: [3] Muradin Cinematic
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitLifePercentBJ
  - param Function GetAttackedUnitBJ
    - Function GetAttackedUnitBJ
  - param String 100
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_hpea_0087
  - param Preset UnitEventAttacked


## Muradin End
- enabled: True
- category: [3] Muradin Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Variable gg_trg_Muradin_CinematicEscape
- Action SetVariable
  - param Variable MuradinCinematicRunning
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MuradinFinal
  - param Preset Player01
  - param String 0.00
- Action TriggerSleepAction
  - param String 1.00
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0087
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon01Retreat
- Action SetUnitLifeBJ
  - param Variable gg_unit_hpea_0087
  - param String 50.00
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0088
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon02Retreat
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0089
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon03Retreat
- Action CommentString
  - param String CREATE STRUCTURES
- Action CreateNUnitsAtLoc
  - param String 1
  - param String htow
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinBuildTownHall
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hhou
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinBuildFarm01
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hhou
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinBuildFarm02
  - param Preset RealUnitFacing
- Action IssueTargetOrder
  - param Variable gg_unit_hpea_0087
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0004
- Action IssueTargetOrder
  - param Variable gg_unit_hpea_0088
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0004
- Action IssueTargetOrder
  - param Variable gg_unit_hpea_0089
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0004
- Action SetSkyModel
  - param Preset SkyModelNone
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CommentString
  - param String RESET PATROLS
- Action ConditionalTriggerExecute
  - param Variable gg_trg_RestartCreepPatrols
- Action CommentString
  - param String GIVE MURADIN TO PLAYER
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player07
  - param Function DoNothing
    - Action SetUnitOwner
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset Player01
      - param Preset ChangeColorTrue
- Action SelectHeroSkill
  - param Variable Muradin
  - param Preset HeroSkillStormBolt
- Action CommentString
  - param String ACTIVATE AI
- Action CommandAI
  - param Preset Player06
  - param String 0
  - param String 0
- Action CommandAI
  - param Variable PlayerCryptFiend
  - param String 0
  - param String 0
- Action CommentString
  - param String RESET ALLIANCES
- Action SetPlayerAllianceBJ
  - param Preset Player08
  - param Preset AllianceTypeSharedVision
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceStateBJ
  - param Preset Player08
  - param Variable PlayerCryptFiend
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable PlayerCryptFiend
  - param Preset Player08
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOff
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOff
  - param Preset Player01
- Action CommentString
  - param String RESET HEROES
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable Muradin
  - param Preset InvulnerabilityVulnerable
- Action ResetUnitAnimation
  - param Variable Arthas
- Action ResetUnitAnimation
  - param Variable Muradin
- Action CommentString
  - param String RESET SELECTION
- Action SelectGroupBJ
  - param Variable UnitGroupSelection
- Action CommentString
  - param String QUEST SETUP
- Action TriggerExecute
  - param Variable gg_trg_ChangeDefeatConditions
- Action QuestSetCompletedBJ
  - param Variable QuestTownHall
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_064
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CaptiveDwarves
  - param String 1.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CaptiveDwarves
- Action QuestSetDiscoveredBJ
  - param Variable QuestMuradinMen
  - param Preset DiscoveredOptionDiscovered
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_065
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action StartTimerBJ
  - param Variable TimerGyroAcquired
  - param Preset PeriodicOptionOneTime
  - param String 5.00
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_PlayMuradinIntroCinematic


## Muradin CinematicEscape
- enabled: True
- category: [3] Muradin Cinematic
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String COMMON ESCAPE
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action SetVariable
  - param Variable MuradinCinematicEscape
  - param String true
- Action SetVariable
  - param Variable MuradinCinematicRunning
  - param String false
- Action DisableTrigger
  - param Variable gg_trg_Muradin_KeepPeasantAlive
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_MuradinFinal
  - param Preset Player01
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
  - param String 0.05
- Action ResetToGameCameraForPlayer
  - param Preset Player01
  - param String 0.00
- Action SetSkyModel
  - param Preset SkyModelNone
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action FogModifierStop
  - param Variable VisibilityDwarf01
- Action FogModifierStop
  - param Variable VisibilityDwarf02
- Action CommentString
  - param String RESET PATROLS
- Action ConditionalTriggerExecute
  - param Variable gg_trg_RestartCreepPatrols
- Action CommentString
  - param String GIVE MURADIN TO PLAYER
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player07
  - param Function DoNothing
    - Action SetUnitOwner
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset Player01
      - param Preset ChangeColorTrue
- Action SelectHeroSkill
  - param Variable Muradin
  - param Preset HeroSkillStormBolt
- Action CommentString
  - param String MOVE UNITS
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0087
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon01Retreat
- Action SetUnitLifeBJ
  - param Variable gg_unit_hpea_0087
  - param String 50.00
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0088
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon02Retreat
- Action SetUnitPositionLoc
  - param Variable gg_unit_hpea_0089
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinPeon03Retreat
- Action IssueTargetOrder
  - param Variable gg_unit_hpea_0087
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0004
- Action IssueTargetOrder
  - param Variable gg_unit_hpea_0088
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0004
- Action IssueTargetOrder
  - param Variable gg_unit_hpea_0089
  - param Preset UnitOrderHarvest
  - param Variable gg_unit_ngol_0004
- Action SetUnitPositionLocFacingLocBJ
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinArthasToMuradin
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinToArthas
- Action SetUnitPositionLocFacingLocBJ
  - param Variable Muradin
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinToArthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinArthasToMuradin
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0020
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_Footman01MoveAfter
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0022
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_Footman02MoveAfter
- Action SetUnitPositionLoc
  - param Variable gg_unit_hfoo_0110
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_Footman03MoveAfter
- Action SetUnitPositionLoc
  - param Variable Captain
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_CaptainMoveAfter
- Action SetUnitPositionLoc
  - param Variable gg_unit_hmpr_0019
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinIntro_PriestMoveAfter
- Action CommentString
  - param String CREATE STRUCTURES
- Action CreateNUnitsAtLoc
  - param String 1
  - param String htow
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinBuildTownHall
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hhou
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinBuildFarm01
  - param Preset RealUnitFacing
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hhou
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MuradinBuildFarm02
  - param Preset RealUnitFacing
- Action CommentString
  - param String ACTIVATE AI
- Action CommandAI
  - param Preset Player06
  - param String 0
  - param String 0
- Action CommandAI
  - param Variable PlayerCryptFiend
  - param String 0
  - param String 0
- Action CommentString
  - param String RESET ALLIANCES
- Action SetPlayerAllianceBJ
  - param Preset Player08
  - param Preset AllianceTypeSharedVision
  - param Preset OnOffOn
  - param Preset Player01
- Action SetPlayerAllianceStateBJ
  - param Preset Player08
  - param Variable PlayerCryptFiend
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable PlayerCryptFiend
  - param Preset Player08
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceBJ
  - param Preset Player01
  - param Preset AllianceTypePassive
  - param Preset OnOffOff
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypePassive
  - param Preset OnOffOff
  - param Preset Player01
- Action CommentString
  - param String RESET HEROES
- Action SetUnitManaBJ
  - param Variable Muradin
  - param String 282.00
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable Muradin
  - param Preset InvulnerabilityVulnerable
- Action ResetUnitAnimation
  - param Variable Arthas
- Action ResetUnitAnimation
  - param Variable Muradin
- Action CommentString
  - param String RESET SELECTION
- Action SelectGroupBJ
  - param Variable UnitGroupSelection
- Action CommentString
  - param String QUEST SETUP
- Action TriggerExecute
  - param Variable gg_trg_ChangeDefeatConditions
- Action QuestSetCompletedBJ
  - param Variable QuestTownHall
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_053
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CaptiveDwarves
  - param String 1.00
- Action SetCameraQuickPositionLocForPlayer
  - param Preset Player01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CaptiveDwarves
- Action QuestSetDiscoveredBJ
  - param Variable QuestMuradinMen
  - param Preset DiscoveredOptionDiscovered
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_054
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action StartTimerBJ
  - param Variable TimerGyroAcquired
  - param Preset PeriodicOptionOneTime
  - param String 5.00
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_PlayMuradinIntroCinematic
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## KillOrangeTroopsLeaving
- enabled: True
- category: [4] GreyOrangeFailsafe
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action KillUnit
  - param Function GetLeavingUnit
    - Function GetLeavingUnit
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param Variable PlayerCryptFiend
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectOfPlayer
        - Function GetUnitsInRectOfPlayer
          - param Variable gg_rct_OrangeGreyFailsafe
          - param Preset Player01
  - param Preset OperatorEqual
  - param String 0
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_CaptiveDwarves


## MoveGreyBack
- enabled: True
- category: [4] GreyOrangeFailsafe
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Function GetLeavingUnit
    - Function GetLeavingUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CaptiveDwarves
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetLeavingUnit
        - Function GetLeavingUnit
  - param Preset OperatorEqualENE
  - param Preset Player08
- Event TriggerRegisterLeaveRectSimple
  - param Variable gg_rct_CaptiveDwarves


## Dwarves Spotted
- enabled: True
- category: [12] DwarvesFound
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
  - param Variable gg_trg_Dwarves_Spotted_Message
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareUnit
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Preset OperatorEqualENE
      - param Variable Arthas
  - param Function 
    - Condition OperatorCompareUnit
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Preset OperatorEqualENE
      - param Variable Muradin
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_TriggerDwarvesFound


## Dwarves Spotted Message
- enabled: True
- category: [12] DwarvesFound
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition GetBooleanOr
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function RectContainsUnit
            - Function RectContainsUnit
              - param Variable gg_rct_TriggerDwarvesFound
              - param Variable Arthas
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Variable Arthas
          - param Preset OperatorEqualENE
          - param String true
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function RectContainsUnit
            - Function RectContainsUnit
              - param Variable gg_rct_TriggerDwarvesFound
              - param Variable Muradin
          - param Preset OperatorEqualENE
          - param String true
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
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_CaptiveDwarves
  - param String 1.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ugho
  - param Variable PlayerCryptFiend
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SpawnCryptFiend
  - param String 0.00
- Action RemoveGuardPosition
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ucry
  - param Variable PlayerCryptFiend
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SpawnGhouls
  - param String 0.00
- Action RemoveGuardPosition
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetSpeechVolumeGroupsBJ
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareReal
          - param Function DistanceBetweenPoints
            - Function DistanceBetweenPoints
              - param Function GetUnitLoc
                - Function GetUnitLoc
                  - param Variable Muradin
              - param Function GetRectCenter
                - Function GetRectCenter
                  - param Variable gg_rct_TriggerDwarvesFound
          - param Preset OperatorLessEq
          - param String 2560.00
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitAliveBJ
            - Function IsUnitAliveBJ
              - param Variable Muradin
          - param Preset OperatorEqualENE
          - param String true
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Variable Muradin
      - param String TRIGSTR_145
      - param Variable gg_snd_H07Muradin18
      - param String TRIGSTR_146
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
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
                  - param Variable gg_rct_TriggerDwarvesFound
          - param Preset OperatorLessEq
          - param String 2560.00
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
      - param String TRIGSTR_153
      - param Variable gg_snd_H07Arthas19
      - param String TRIGSTR_154
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## RescueDwarves
- enabled: True
- category: [1] RescueDwarves
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action FlashQuestDialogButtonBJ
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player08
  - param Function DoNothing
    - Action RescueUnitBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset Player01
      - param Preset ChangeColorTrue
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Rescue_Dwarves_Message
  - param Preset CheckingIgnoringChecking
- Action TriggerSleepAction
  - param String 0.50
- Action ForGroup
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_CaptiveDwarfPeasantsReharvest
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetFilterUnit
                - Function GetFilterUnit
          - param Preset OperatorEqualENE
          - param String hpea
  - param Function DoNothing
    - Action IssueImmediateOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderReturnResources
- Action TriggerSleepAction
  - param String 3.00
- Action ForGroup
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_CaptiveDwarfPeasantsReharvest
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetFilterUnit
                - Function GetFilterUnit
          - param Preset OperatorEqualENE
          - param String hpea
  - param Function DoNothing
    - Action IssueTargetOrder
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderHarvest
      - param Variable gg_unit_ngol_0095
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_SteamTankMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorNotEqualENE
  - param String hgyr
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
  - param Variable gg_rct_CaptiveDwarves


## Rescue Dwarves Message
- enabled: True
- category: [1] RescueDwarves
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
- Action QuestSetCompletedBJ
  - param Variable QuestMuradinMen
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestReqRescueDwarves
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_077
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## PlayerEntersBase
- enabled: True
- category: [13] MainUndeadBaseVoiceOver
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
- Action DisableTrigger
  - param Variable gg_trg_PlayerAttackedByBase
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_PlayerEntersBaseMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_MainUndeadBase


## PlayerEntersBaseMessage
- enabled: True
- category: [13] MainUndeadBaseVoiceOver
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
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MainUndeadBase
  - param String 1.00
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MainUndeadBase
  - param String 1800.00
- Action SetVariable
  - param Variable MainUndeadBaseVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_084
  - param Variable gg_snd_H07Arthas26
  - param String TRIGSTR_085
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## PlayerAttackedByBase
- enabled: True
- category: [13] MainUndeadBaseVoiceOver
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
  - param Variable gg_trg_PlayerEntersBase
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_PlayerAttackedByBaseMessage
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetAttacker
        - Function GetAttacker
  - param Preset OperatorEqualENE
  - param Preset Player06
- Condition OperatorCompareBoolean
  - param Function RectContainsUnit
    - Function RectContainsUnit
      - param Variable gg_rct_MainUndeadBase
      - param Function GetAttacker
        - Function GetAttacker
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventAttacked


## PlayerAttackedByBaseMessage
- enabled: True
- category: [13] MainUndeadBaseVoiceOver
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
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MainUndeadBase
  - param String 1.00
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player01
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MainUndeadBase
  - param String 1800.00
- Action SetVariable
  - param Variable MainUndeadBaseVis
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_089
  - param Variable gg_snd_H07Arthas26
  - param String TRIGSTR_090
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## TriggerExitCinematic
- enabled: True
- category: [8] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_PlayExitCinematic
  - param Preset CheckingIgnoringIgnoring


## PlayExitCinematic
- enabled: True
- category: [8] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_Level_Enable
- Action SetVariable
  - param Variable ExitCinematicRunning
  - param String true
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action EnableTrigger
  - param Variable gg_trg_ExitCinematicEscape
- Action TriggerExecute
  - param Variable gg_trg_Exit_CinematicModeOn
- Action TriggerExecute
  - param Variable gg_trg_Exit_InitialCamera


## Exit CinematicModeOn
- enabled: True
- category: [8] ExitCinematic
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


## Exit InitialCamera
- enabled: True
- category: [8] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetSkyModel
  - param Preset SkyModelSky01
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
      - param Variable ExitCinematicEscape
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerExecute
  - param Variable gg_trg_Exit_Position_Actors
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
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2.00
  - param Preset CineFilterTextureBlack
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ExitArthasMuradinTalk
  - param Preset Player01
  - param String 0.01
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
  - param Variable gg_trg_Exit_KnightTalks


## Exit Position Actors
- enabled: True
- category: [8] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ClearSelection
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
  - param Variable Muradin
- Action ShowUnitShow
  - param Variable Captain
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player01
  - param Function DoNothing
    - Action UnitRemoveBuffsBJ
      - param Preset BuffTypeAll
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Captain
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Captain
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ExitKnightOffScreen
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String hcth
      - param Preset Player01
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ExitKnightOffScreen
      - param String 0.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Captain
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetVariable
      - param Variable ExitKnight
      - param Variable Captain
  - param Function DoNothing
    - Action SetVariable
      - param Variable ExitKnight
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
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
          - param Variable gg_rct_ExitArthasLooking
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ExitArthasLooking
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Muradin
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Muradin
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ExitMuradinPosition
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Muradin
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ExitMuradinPosition
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitArthasFacing
  - param String 0
- Action SetUnitAnimationWithRarity
  - param Variable Arthas
  - param String stand
  - param Preset RarityControlFrequent
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitDeadBJ
        - Function IsUnitDeadBJ
          - param Variable Muradin
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReviveHeroLoc
      - param Variable Muradin
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ExitMuradinPosition
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Muradin
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_ExitMuradinPosition
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Captain
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable ExitKnight
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Muradin
- Action SetUnitFacingToFaceLocTimed
  - param Variable Muradin
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitMuradinFacing
  - param String 0
- Action SetUnitAnimationWithRarity
  - param Variable Muradin
  - param String stand
  - param Preset RarityControlFrequent


## Exit KnightTalks
- enabled: True
- category: [8] ExitCinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
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
  - param Variable Arthas
  - param Variable Muradin
  - param String 0.20
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_078
  - param Variable gg_snd_H07Arthas20
  - param String TRIGSTR_079
  - param Preset AddSetToAdd
  - param String 0.00
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
- Action TriggerSleepAction
  - param String 0.50
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
  - param Variable Muradin
  - param Variable Arthas
  - param String 0.40
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Muradin
  - param String TRIGSTR_080
  - param Variable gg_snd_H07Muradin21
  - param String TRIGSTR_081
  - param Preset AddSetToAdd
  - param String 0.00
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
- Action TriggerSleepAction
  - param String 0.50
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
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Muradin
  - param String TRIGSTR_082
  - param Variable gg_snd_H07Muradin22
  - param String TRIGSTR_083
  - param Preset AddSetToAdd
  - param String 0.00
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
- Action IssuePointOrderLoc
  - param Variable ExitKnight
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitKnightToArthas
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_ExitArthasCloseup
  - param Preset Player01
  - param String 2.00
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
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Muradin
  - param Variable ExitKnight
  - param String 0.20
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable ExitKnight
  - param String 0.20
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ExitKnight
  - param String TRIGSTR_093
  - param Variable gg_snd_H07Knight27
  - param String TRIGSTR_094
  - param Preset AddSetToAdd
  - param String 0.00
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
- Action TriggerSleepAction
  - param String 0.50
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
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_095
  - param Variable gg_snd_H07Arthas28
  - param String TRIGSTR_096
  - param Preset AddSetToAdd
  - param String 0.00
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
- Action TriggerSleepAction
  - param String 0.50
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
- Action ResetUnitLookAt
  - param Variable Arthas
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ExitKnight
  - param String TRIGSTR_097
  - param Variable gg_snd_H07Knight29
  - param String TRIGSTR_098
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IssuePointOrderLoc
  - param Variable ExitKnight
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ExitKnightOffScreen
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
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_PlayExitCinematic
- Action TriggerExecute
  - param Variable gg_trg_Level_Victory


## ExitCinematicEscape
- enabled: True
- category: [8] ExitCinematic
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
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_PlayExitCinematic
- Action TriggerExecute
  - param Variable gg_trg_Level_Victory
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player01


## Level Enable
- enabled: True
- category: [20] Level Changing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StoreUnitBJ
  - param Variable Arthas
  - param String Arthas
  - param String Human08
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action StoreUnitBJ
  - param Variable Muradin
  - param String Muradin
  - param String Human08
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SaveGameCacheBJ
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SetMissionAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset MissionIndexH10


## Level Victory
- enabled: True
- category: [20] Level Changing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetNextLevelBJ
  - param String Maps\Campaign\Human08.w3m
- Action CustomVictoryBJ
  - param Preset Player01
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse


## Level Defeat
- enabled: True
- category: [20] Level Changing
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Preset Player01
  - param String TRIGSTR_051


## CheckGreenBuildings
- enabled: True
- category: [6] VictoryConditionChecks
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
  - param Function IsUnitType
    - Function IsUnitType
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
      - param Preset UnitTypeStructure
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerMatching
        - Function GetUnitsOfPlayerMatching
          - param Preset Player06
          - param Function 
            - Condition GetBooleanAnd
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
                    - Condition OperatorCompareUnitCode
                      - param Function GetUnitTypeId
                        - Function GetUnitTypeId
                          - param Function GetFilterUnit
                            - Function GetFilterUnit
                      - param Preset OperatorNotEqualENE
                      - param String uzg1
              - param Function 
                - Condition GetBooleanAnd
                  - param Function 
                    - Condition OperatorCompareUnitCode
                      - param Function GetUnitTypeId
                        - Function GetUnitTypeId
                          - param Function GetFilterUnit
                            - Function GetFilterUnit
                      - param Preset OperatorNotEqualENE
                      - param String uzig
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
- Event # TriggerRegisterTimerEventPeriodic
  - param String 0.50
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player06
  - param Preset PlayerUnitEventDeath
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_CheckPlayerBuildings
- Action QuestSetCompletedBJ
  - param Variable QuestUndeadCitadel
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestReqDestroyMalGanis
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_164
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action TriggerExecute
  - param Variable gg_trg_TriggerExitCinematic


## EarlyArthasDies
- enabled: True
- category: [9] DefeatConditionChecks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable GameOver
  - param String true
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetDyingUnit
        - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param String Hart
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeMissionFailed
  - param String TRIGSTR_165
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action TriggerExecute
  - param Variable gg_trg_Level_Defeat
- Condition OperatorCompareBoolean
  - param Variable ArthasDefeatActive
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## ChangeDefeatConditions
- enabled: True
- category: [9] DefeatConditionChecks
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable BuildingDefeatActive
  - param String true
- Action SetVariable
  - param Variable ArthasDefeatActive
  - param String false


## CheckPlayerBuildings
- enabled: True
- category: [9] DefeatConditionChecks
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
  - param Variable gg_trg_CheckGreenBuildings
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeMissionFailed
  - param String TRIGSTR_166
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action TriggerExecute
  - param Variable gg_trg_Level_Defeat
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Preset Player01
      - param Preset InclusionExclude
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable BuildingDefeatActive
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player01
  - param Preset PlayerUnitEventDeath


## Victory Cheat
- enabled: True
- category: [17] Cheat Code Support
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
- category: [17] Cheat Code Support
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


## DEBUGToMuradinCinematic
- enabled: False
- category: [11] DEBUG
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerExecute
  - param Variable gg_trg_TriggerMuradinIntroCinematic
- Event TriggerRegisterPlayerChatEvent
  - param Preset Player01
  - param String debug
  - param Preset ChatMatchTypeExact

