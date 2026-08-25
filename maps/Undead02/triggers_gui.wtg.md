version = TFT

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 37 | Archipelago | False |
| 0 | Initialization Phase | False |
| 27 | AI Start | False |
| 21 | DEFEAT CONDITIONS | False |
| 15 | DayTime Until Tichondrius | False |
| 3 | GameCache | False |
| 4 | Arthas Stuck At Level 3 | False |
| 2 | Alliance Settings | False |
| 28 | Waterfall | False |
| 10 | When Meat Wagons Die | False |
| 6 | HINT Meatapults | False |
| 36 | New Unit Available | False |
| 34 | Revival Handling Cinematic Movement Handling | False |
| 19 | ZZZZZZZ   CINEMATICS  ZZZZZZ | False |
| 1 | Intro Cinematic | False |
| 8 | Arthas Gets KelThuzad Bones CINEMATIC | False |
| 7 | Tichondrius Cinematic | False |
| 17 | Sasquatch | False |
| 13 | Uther Lightbringer | False |
| 35 | VICTORY Cinematic | False |
| 33 | ZZZZZZZ   PALADINS      ZZZZZZ | False |
| 5 | Lord Nicholas Buzan | False |
| 11 | Edward Kang | False |
| 12 | Gregory Edmunson | False |
| 25 | LEADERBOARD Paladins | False |
| 24 | All Paladins Dead | False |
| 32 | ZZZZZZZZ STUFF  ZZZZZZ | False |
| 14 | Get The Urn | False |
| 22 | Golem Patrol | False |
| 18 | Knight Patrol | False |
| 23 | Fun With Ticho | False |
| 26 | Fire Trap Renegade Wizards Unleashed | False |
| 16 | HINTS Build A Base Also AI signals | False |
| 9 | Golem | False |
| 20 | Crates | False |
| 30 | Villagers Flee | False |
| 29 | Level Data | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| ThePlayer | player | . | Player03 |
| Arthas | unit | . | . |
| IntroCinematicSkip | boolean | . | false |
| Meatwagons | group | . | . |
| BuzanBlah1 | boolean | . | false |
| GotCorpse | boolean | . | false |
| ReachTichondriusCinSkip | boolean | . | false |
| GetKelThuzadCorpse | quest | . | . |
| UtherCinSkip | boolean | . | false |
| GetTheUrn | quest | . | . |
| Jimmy | unit | . | . |
| PickUpUrnCinSkip | boolean | . | false |
| BuildABase | boolean | . | false |
| BuildBaseQuest | quest | . | . |
| ReqCrypt | questitem | . | . |
| ReqHauntGoldmine | questitem | . | . |
| ReqNecropolis | questitem | . | . |
| Req3Ziggurats | questitem | . | . |
| ReqGraveyard | questitem | . | . |
| TeleportEffect | effect | . | . |
| ArthasPosition | location | . | . |
| TichondriusMeetingDone | boolean | . | false |
| KelThuzadCorpse | unit | . | . |
| ReqKillBuzan | questitem | . | . |
| LeaderboardPaladinsToKill | leaderboard | . | . |
| KelThuzad1CinSkip | boolean | . | false |
| KelThuzad | unit | . | . |
| PaladinsToKill | integer | . | 3 |
| Meat1 | unit | . | . |
| Meat2 | unit | . | . |
| Meat3 | unit | . | . |
| ReqTalkToKelz | questitem | . | . |
| Tichondrius | player | . | Player00 |
| PALADIN1 | player | . | Player05 |
| PALADIN2 | player | . | Player02 |
| PALADIN3 | player | . | Player01 |
| UTHER | player | . | Player09 |
| KELTHUZAD | player | . | Player10 |
| BuzanPaladin | unit | . | . |
| KangPaladin | unit | . | . |
| MilitiaPlayed | boolean | . | false |
| EdmunsonPaladin | unit | . | . |
| TextDisplayTime | real | . | 20.00 |
| ReqKillPaladinsQuest | questitem | . | . |
| SFX1 | effect | . | . |
| SFX2 | effect | . | . |
| SFX3 | effect | . | . |
| SFX4 | effect | . | . |
| SFX5 | effect | . | . |
| DeadPaladinPosition | location | . | . |
| ZigguratGroup | group | . | . |
| ReqGetTheUrn | questitem | . | . |
| WaterfallVisionToggle | boolean | . | false |
| WaterfallVision | fogmodifier | . | . |
| ZigguratsDone | boolean | . | false |
| PreQuestDelayTime | real | . | 5.00 |
| Uther | unit | . | . |
| WTHITSkip | boolean | . | false |
| ENDCINPlaying | boolean | . | false |
| ArthasCinematicRegion | rect | . | . |
| ArthasRevivalAltar | unit | . | UnitNull |
| SelectedUnits | group | . | . |
| GameOver | boolean | . | false |
| RockGolem1 | boolean | . | false |
| RockGolem2 | boolean | . | false |
| RockGolem3 | boolean | . | false |
| KnightPatrol01 | boolean | . | false |
| KnightPatrol02 | boolean | . | false |

# Triggers
## fileio
- enabled: True
- category: [37] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## map_config
- enabled: True
- category: [37] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## status
- enabled: True
- category: [37] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## heroes
- enabled: True
- category: [37] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## item_locations
- enabled: True
- category: [37] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## debug
- enabled: True
- category: [37] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## zoom
- enabled: True
- category: [37] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## irregulars
- enabled: True
- category: [37] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## Initialize Initializations
- enabled: True
- category: [0] Initialization Phase
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetCampaignMenuRaceBJ
  - param Preset CampaignIndexU
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Handicap
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Remove_Units_For_Easy
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Remove_Units_For_Normal
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Give_Uther_Mana_For_Hard
- Action ConditionalTriggerExecute
  - param Variable gg_trg_LoadGameCache
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Friendly_Friends
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Intro_Cinematic
- Action EnableTrigger
  - param Variable gg_trg_Level_3_Stop_XP
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Knights_Patrol
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Never_Sleep
- Action ConditionalTriggerExecute
  - param Variable gg_trg_DayTime
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Money_Edmunson
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Money_Kang
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Start_AI
- Action SetUnitInvulnerable
  - param Variable gg_unit_Utic_0006
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_nvil_0144
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_nvl2_0146
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_nvlw_0148
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_nvil_0145
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable gg_unit_nvlw_0147
  - param Preset InvulnerabilityInvulnerable
- Action SetPlayerHandicapXPBJ
  - param Variable ThePlayer
  - param String 25.00
- Action SetVariable
  - param Variable Uther
  - param Variable gg_unit_Huth_0091
- Action CommentString
  - param String Hide Tichondrius Soul Fires
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOf3
  - param Variable gg_rct_FireGust1
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOf3
  - param Variable gg_rct_FireGust2
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOf3
  - param Variable gg_rct_FireGust3
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOf3
  - param Variable gg_rct_FireGust4
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOf3
  - param Variable gg_rct_FireGust5
- Action CommentString
  - param String Hide Players In Score Screen
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Variable Tichondrius
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player06
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Variable KELTHUZAD
- Action SetMapMusicIndexedBJ
  - param Preset MusicFileMusic
  - param String 1
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Event MapInitializationEvent


## Handicap
- enabled: True
- category: [0] Initialization Phase
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerHandicapBJ
  - param Preset Player01
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player02
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player05
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player09
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset PlayerNA
  - param Preset RealHandicapEasy
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyEasy


## Remove Units For Easy
- enabled: True
- category: [0] Initialization Phase
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Orange
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0020
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0033
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0117
- Action ReplaceUnitBJ
  - param Variable gg_unit_hgtw_0025
  - param String hwtw
  - param Preset UnitStateMethodRelative
- Action ReplaceUnitBJ
  - param Variable gg_unit_hgtw_0086
  - param String hwtw
  - param Preset UnitStateMethodRelative
- Action ReplaceUnitBJ
  - param Variable gg_unit_hctw_0059
  - param String hwtw
  - param Preset UnitStateMethodRelative
- Action CommentString
  - param String Teal
- Action RemoveUnit
  - param Variable gg_unit_nvil_0106
- Action RemoveUnit
  - param Variable gg_unit_nvl2_0143
- Action RemoveUnit
  - param Variable gg_unit_nvl2_0112
- Action RemoveUnit
  - param Variable gg_unit_nvil_0108
- Action RemoveUnit
  - param Variable gg_unit_nvl2_0103
- Action RemoveGuardPosition
  - param Variable gg_unit_hfoo_0127
- Action RemoveGuardPosition
  - param Variable gg_unit_hfoo_0123
- Action RemoveGuardPosition
  - param Variable gg_unit_hfoo_0122
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0127
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0123
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0122
- Action CommentString
  - param String Light Blue
- Action RemoveUnit
  - param Variable gg_unit_hkni_0029
- Action RemoveUnit
  - param Variable gg_unit_hkni_0084
- Action CommentString
  - param String Blue
- Action RemoveGuardPosition
  - param Variable gg_unit_hkni_0070
- Action RemoveGuardPosition
  - param Variable gg_unit_hfoo_0065
- Action RemoveGuardPosition
  - param Variable gg_unit_hfoo_0063
- Action RemoveGuardPosition
  - param Variable gg_unit_hfoo_0064
- Action RemoveUnit
  - param Variable gg_unit_hkni_0070
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0065
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0063
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0064
- Action CommentString
  - param String Neutral Hostile
- Action RemoveUnit
  - param Variable gg_unit_ngst_0133
- Action RemoveUnit
  - param Variable gg_unit_ngst_0134
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyEasy


## Remove Units For Normal
- enabled: True
- category: [0] Initialization Phase
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
  - param String Orange
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0020
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0033
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0117
- Action ReplaceUnitBJ
  - param Variable gg_unit_hgtw_0025
  - param String hwtw
  - param Preset UnitStateMethodRelative
- Action ReplaceUnitBJ
  - param Variable gg_unit_hgtw_0086
  - param String hwtw
  - param Preset UnitStateMethodRelative
- Action ReplaceUnitBJ
  - param Variable gg_unit_hctw_0059
  - param String hwtw
  - param Preset UnitStateMethodRelative
- Action CommentString
  - param String Teal
- Action RemoveUnit
  - param Variable gg_unit_nvl2_0112
- Action RemoveUnit
  - param Variable gg_unit_nvil_0108
- Action RemoveUnit
  - param Variable gg_unit_nvl2_0103
- Action RemoveGuardPosition
  - param Variable gg_unit_hfoo_0127
- Action RemoveGuardPosition
  - param Variable gg_unit_hfoo_0123
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0127
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0123
- Action CommentString
  - param String Light Blue
- Action RemoveUnit
  - param Variable gg_unit_hkni_0029
- Action RemoveUnit
  - param Variable gg_unit_hkni_0084
- Action CommentString
  - param String Blue
- Action RemoveGuardPosition
  - param Variable gg_unit_hkni_0070
- Action RemoveGuardPosition
  - param Variable gg_unit_hfoo_0065
- Action RemoveGuardPosition
  - param Variable gg_unit_hfoo_0064
- Action RemoveUnit
  - param Variable gg_unit_hkni_0070
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0065
- Action RemoveUnit
  - param Variable gg_unit_hfoo_0064
- Action CommentString
  - param String Neutral Hostile
- Action RemoveUnit
  - param Variable gg_unit_ngst_0133


## Give Uther Mana For Hard
- enabled: True
- category: [0] Initialization Phase
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateItemLoc
  - param String pgma
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_Huth_0091
- Action UnitAddItemSwapped
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Variable gg_unit_Huth_0091
- Action SelectHeroSkill
  - param Variable gg_unit_Huth_0091
  - param Preset HeroSkillDivineShield
- Action CreateItemLoc
  - param String belv
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_Huth_0091
- Action UnitAddItemSwapped
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Variable gg_unit_Huth_0091
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard


## Start AI
- enabled: True
- category: [27] AI Start
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StartCampaignAI
  - param Preset Player01
  - param String u02_blue.ai
- Action StartCampaignAI
  - param Preset Player02
  - param String u02_teal.ai


## Arthas Dead Game Over
- enabled: True
- category: [21] DEFEAT CONDITIONS
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_451
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CustomDefeatBJ
  - param Variable ThePlayer
  - param String TRIGSTR_452
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
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Interim Defeat
- enabled: True
- category: [21] DEFEAT CONDITIONS
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_449
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CustomDefeatBJ
  - param Variable ThePlayer
  - param String TRIGSTR_450
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsOfPlayerMatching
        - Function GetUnitsOfPlayerMatching
          - param Variable ThePlayer
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
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Lose Buildings
- enabled: True
- category: [21] DEFEAT CONDITIONS
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable GameOver
  - param String true
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_448
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action CustomDefeatBJ
  - param Variable ThePlayer
  - param String TRIGSTR_447
- Condition OperatorCompareInteger
  - param Function GetPlayerStructureCount
    - Function GetPlayerStructureCount
      - param Variable ThePlayer
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


## DayTime
- enabled: True
- category: [15] DayTime Until Tichondrius
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetTimeOfDay
  - param String 8.00
- Action UseTimeOfDayBJ
  - param Preset OnOffOff


## LoadGameCache
- enabled: True
- category: [3] GameCache
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action InitGameCacheBJ
  - param String Campaigns.w3v
- Action RestoreUnitLocFacingPointBJ
  - param String Arthas
  - param String Undead02
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Variable ThePlayer
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasOrDefaultArthas
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_ugho_0047
- Action SetVariable
  - param Variable Arthas
  - param Function GetLastRestoredUnitBJ
    - Function GetLastRestoredUnitBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable Arthas
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Default_Arthas
  - param Function DoNothing
    - Action DoNothing


## Default Arthas
- enabled: True
- category: [3] GameCache
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String Uear
  - param Variable ThePlayer
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasOrDefaultArthas
  - param String 0.00
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
  - param Preset HeroSkillDeathCoil
- Action SelectHeroSkill
  - param Variable Arthas
  - param Preset HeroSkillUnholyAura


## Level 3 Stop XP
- enabled: True
- category: [4] Arthas Stuck At Level 3
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
  - param Preset OperatorGreater
  - param String 2
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventHero_Level


## Friendly Friends
- enabled: True
- category: [2] Alliance Settings
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerAllianceStateBJ
  - param Variable PALADIN1
  - param Preset PlayerNA
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Variable PALADIN2
  - param Preset PlayerNA
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Variable PALADIN3
  - param Preset PlayerNA
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Variable UTHER
  - param Preset PlayerNA
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Variable Tichondrius
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable PALADIN1
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable PALADIN2
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable PALADIN3
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable UTHER
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable Tichondrius
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceBJ
  - param Variable PALADIN1
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Variable PALADIN2
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Variable PALADIN3
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Variable UTHER
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Variable Tichondrius
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Variable ThePlayer
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNP
- Action SetPlayerAllianceBJ
  - param Variable PALADIN1
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNP
- Action SetPlayerAllianceBJ
  - param Variable PALADIN2
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNP
- Action SetPlayerAllianceBJ
  - param Variable PALADIN3
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNP
- Action SetPlayerAllianceBJ
  - param Variable UTHER
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNP


## Approach
- enabled: True
- category: [28] Waterfall
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable WaterfallVisionToggle
  - param String true
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable ThePlayer
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RaysofLight_And_Vision_Center
  - param String 800.00
- Action SetVariable
  - param Variable WaterfallVision
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action ConditionalTriggerExecute
  - param Variable gg_trg_FallWater
- Condition OperatorCompareBoolean
  - param Variable WaterfallVisionToggle
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Waterfall_Vision


## FallWater
- enabled: True
- category: [28] Waterfall
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
  - param Preset QuestMessageTypeSecret
  - param String TRIGSTR_106
- Action CinematicFilterGenericBJ
  - param String 2.00
  - param Preset BlendModeBlend
  - param Preset CineFilterTexturePanda
  - param String 100
  - param String 100
  - param String 100
  - param String 20.00
  - param String 0
  - param String 0
  - param String 0
  - param String 100.00


## Leave
- enabled: True
- category: [28] Waterfall
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable WaterfallVisionToggle
  - param String false
- Action DestroyFogModifier
  - param Variable WaterfallVision
- Condition OperatorCompareBoolean
  - param Variable WaterfallVisionToggle
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Function GetUnitsInRectMatching
        - Function GetUnitsInRectMatching
          - param Variable gg_rct_Waterfall_Vision
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
  - param Variable gg_rct_Waterfall_Vision


## Meat Wagon Dies Remove From Group Var
- enabled: True
- category: [10] When Meat Wagons Die
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable Meatwagons
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


## Hint Meatapults
- enabled: True
- category: [6] HINT Meatapults
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
  - param Variable gg_trg_Meatpult_Queued
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_HINT_Meatapults


## Meatpult Queued
- enabled: True
- category: [6] HINT Meatapults
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
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable ThePlayer
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_hwtw_0024
  - param String 512
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_707
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Meat Wagon Available Message
- enabled: True
- category: [36] New Unit Available
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
  - param String 5.00
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_706
- Action TriggerSleepAction
  - param String 10.00
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Arthas Cinematic Revival
- enabled: True
- category: [34] Revival Handling Cinematic Movement Handling
- starts off: False
- is custom text: False
- run on map init: False
```description
Before running this in a cinematic, set the region to be moved to for "ArthasCinematicRegion."
After running this, set the unit facing for Arthas.
```
### Functions
- Action SetVariable
  - param Variable ArthasPosition
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable ArthasCinematicRegion
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
      - param Variable ArthasCinematicRegion
  - param Preset ShowHideHide
- Action SetVariable
  - param Variable ArthasPosition
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable ArthasCinematicRegion
- Action SetVariable
  - param Variable ArthasRevivalAltar
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsOfPlayerMatching
        - Function GetUnitsOfPlayerMatching
          - param Variable ThePlayer
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
                - Condition OperatorCompareUnitCode
                  - param Function GetUnitTypeId
                    - Function GetUnitTypeId
                      - param Function GetFilterUnit
                        - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param String uaod
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable ArthasRevivalAltar
      - param Preset OperatorNotEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action SetVariable
      - param Variable ArthasPosition
      - param Function OffsetLocation
        - Function OffsetLocation
          - param Function GetUnitLoc
            - Function GetUnitLoc
              - param Variable ArthasRevivalAltar
          - param String 0
          - param String -128.00
  - param Function DoNothing
    - Action DoNothing


## Altar Cleanup
- enabled: True
- category: [34] Revival Handling Cinematic Movement Handling
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable ArthasRevivalAltar
  - param Preset UnitNull
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetDyingUnit
        - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param String uaod
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Intro Cinematic Skip
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
  - param Variable IntroCinematicSkip
  - param String true
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Variable Meatwagons
      - param Preset OperatorLess
      - param String 3
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 3
      - param String umtw
      - param Variable ThePlayer
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Intro_Meat_Go_Here
      - param String 0
  - param Function DoNothing
    - Action DoNothing
- Action GroupAddGroup
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_Intro_Meat_Go_Here
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetFilterUnit
                - Function GetFilterUnit
          - param Preset OperatorEqualENE
          - param String umtw
  - param Variable Meatwagons
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitInGroup
        - Function IsUnitInGroup
          - param Variable Meat1
          - param Variable Meatwagons
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Meat1
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Meat1
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitInGroup
        - Function IsUnitInGroup
          - param Variable Meat2
          - param Variable Meatwagons
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Meat2
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Meat2
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitInGroup
        - Function IsUnitInGroup
          - param Variable Meat3
          - param Variable Meatwagons
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Meat3
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Meat3
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Intro_Arthas_1
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Ghoul_Group
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Intro_Ghouls_Go_Here
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable gg_unit_Hpb1_0018
  - param String 0.25
- Action CreateQuestBJ
  - param Preset QuestTypeReqDiscovered
  - param String TRIGSTR_053
  - param String TRIGSTR_063
  - param String ReplaceableTextures\CommandButtons\BTNNecromancer.tga
- Action SetVariable
  - param Variable GetKelThuzadCorpse
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action QuestSetDiscoveredBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param Preset DiscoveredOptionDiscovered
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_052
- Action SetVariable
  - param Variable ReqKillBuzan
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_055
- Action SetVariable
  - param Variable ReqTalkToKelz
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_663
- Action CreateQuestBJ
  - param Preset QuestTypeReqUndiscovered
  - param String TRIGSTR_048
  - param String TRIGSTR_049
  - param String ReplaceableTextures\CommandButtons\BTNUrnOfKelThuzad.tga
- Action SetVariable
  - param Variable GetTheUrn
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable GetTheUrn
  - param String TRIGSTR_109
- Action SetVariable
  - param Variable ReqKillPaladinsQuest
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Variable GetTheUrn
  - param String TRIGSTR_110
- Action CreateQuestBJ
  - param Preset QuestTypeReqUndiscovered
  - param String TRIGSTR_015
  - param String TRIGSTR_046
  - param String ReplaceableTextures\CommandButtons\BTNNecropolis.tga
- Action SetVariable
  - param Variable BuildBaseQuest
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_133
- Action SetVariable
  - param Variable ReqNecropolis
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_135
- Action SetVariable
  - param Variable ReqHauntGoldmine
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_138
- Action SetVariable
  - param Variable ReqCrypt
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_139
- Action SetVariable
  - param Variable Req3Ziggurats
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_140
- Action SetVariable
  - param Variable ReqGraveyard
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetEntireMapRect
        - Function GetEntireMapRect
      - param Variable ThePlayer
  - param Function DoNothing
    - Action SetUnitPathing
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset PathingOn
- Action RemoveUnit
  - param Variable gg_unit_uaco_0048
- Action ResetTerrainFogBJ
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Final_Camera
  - param Variable ThePlayer
  - param String 0
- Action TriggerSleepAction
  - param String 0.01
- Action SetSkyModel
  - param Preset SkyModelNone
- Action ResetToGameCameraForPlayer
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
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectUnitSingle
  - param Variable Arthas
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_708
- Action TriggerSleepAction
  - param String 5.00
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Meat_Wagon_Available_Message
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03


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
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Arthas_And_Army_Arrives
  - param Variable ThePlayer
  - param String 0
- Action SetSkyModel
  - param Preset SkyModelSky03
- Action SetTerrainFogExBJ
  - param String 0
  - param String 1500.00
  - param String 4000.00
  - param String 200.00
  - param String 35.00
  - param String 25.00
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.01
- Action EnableTrigger
  - param Variable gg_trg_Intro_Cinematic_Skip
- Action CommentString
  - param String CINEMATIC NOW SKIPPABLE
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
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop02
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Arthas_And_Army_Arrives_2
  - param Variable ThePlayer
  - param String 9.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2.00
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
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkVictory
- Action IssuePointOrderLoc
  - param Variable gg_unit_uaco_0048
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Intro_YakYak_Acolyte
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Ghoul_Group
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Intro_Ghouls_Go_Here
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Intro_Arthas_1
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop1
  - param Variable Arthas
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop1
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String umtw
  - param Variable ThePlayer
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Intro_Meat1
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action SetVariable
  - param Variable Meat1
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Meatwagons
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String umtw
  - param Variable ThePlayer
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Intro_Meat2
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action SetVariable
  - param Variable Meat2
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Meatwagons
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String umtw
  - param Variable ThePlayer
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Intro_Meat3
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action SetVariable
  - param Variable Meat3
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action GroupAddUnitSimple
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Variable Meatwagons
- Action SetUnitPathing
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset PathingOff
- Action GroupPointOrderLoc
  - param Variable Meatwagons
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Intro_Meat_Go_Here
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MeatWagonReady1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MeatWagon_Sound
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonReady1
  - param String 85.00
- Action PlaySoundBJ
  - param Variable gg_snd_MeatWagonReady1
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MeatWagonYes3
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MeatWagon_Sound
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonYes3
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MeatWagonYes3
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable gg_unit_uaco_0048
  - param String 0.25
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_000
  - param Variable gg_snd_U02Arthas01
  - param String TRIGSTR_001
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Arthas01
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Infernal_Contraptions
  - param Variable ThePlayer
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Infernal_Contraptions_2
  - param Variable ThePlayer
  - param String 7.00
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MeatWagonYes1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MeatWagon_Sound
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonYes1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MeatWagonYes1
- Action WaitForSoundBJ
  - param Variable gg_snd_MeatWagonYes1
  - param String 0.01
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MeatWagonReady1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_MeatWagon_Sound
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonReady1
  - param String 70.00
- Action PlaySoundBJ
  - param Variable gg_snd_MeatWagonReady1
- Action SetUnitFacingToFaceLocTimed
  - param Variable gg_unit_uaco_0048
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Intro_Meat_Go_Here
  - param String 0.20
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_uaco_0048
  - param String TRIGSTR_002
  - param Variable gg_snd_U02Acolyte02
  - param String TRIGSTR_003
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Acolyte02
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Move_Out
  - param Variable ThePlayer
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_005
  - param Variable gg_snd_U02Arthas03
  - param String TRIGSTR_006
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Arthas03
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Move_Out2
  - param Variable ThePlayer
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U02Acolyte04
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_uaco_0048
  - param Variable Arthas
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_uaco_0048
  - param String TRIGSTR_007
  - param Variable gg_snd_U02Acolyte04
  - param String TRIGSTR_008
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Acolyte04
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
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
  - param String TRIGSTR_009
  - param Variable gg_snd_U02Arthas05
  - param String TRIGSTR_010
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Arthas05
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_uaco_0048
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Intro_Meat2
- Action SetUnitPathing
  - param Variable gg_unit_uaco_0048
  - param Preset PathingOff
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
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
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ResetTerrainFogBJ
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro_Final_Camera
  - param Variable ThePlayer
  - param String 0
- Action TriggerSleepAction
  - param String 0.01
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCinematicSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String CINEMATIC NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_Intro_Cinematic_Skip
- Action SetSkyModel
  - param Preset SkyModelNone
- Action ResetToGameCameraForPlayer
  - param Variable ThePlayer
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable gg_unit_Hpb1_0018
  - param String 0.25
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Variable ThePlayer
  - param Function DoNothing
    - Action SetUnitPathing
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset PathingOn
- Action CreateQuestBJ
  - param Preset QuestTypeReqDiscovered
  - param String TRIGSTR_179
  - param String TRIGSTR_183
  - param String ReplaceableTextures\CommandButtons\BTNNecromancer.tga
- Action SetVariable
  - param Variable GetKelThuzadCorpse
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action QuestSetDiscoveredBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param Preset DiscoveredOptionDiscovered
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_184
- Action SetVariable
  - param Variable ReqKillBuzan
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_185
- Action SetVariable
  - param Variable ReqTalkToKelz
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_662
- Action CreateQuestBJ
  - param Preset QuestTypeReqUndiscovered
  - param String TRIGSTR_190
  - param String TRIGSTR_191
  - param String ReplaceableTextures\CommandButtons\BTNUrnOfKelThuzad.tga
- Action SetVariable
  - param Variable GetTheUrn
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable GetTheUrn
  - param String TRIGSTR_192
- Action SetVariable
  - param Variable ReqKillPaladinsQuest
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Variable GetTheUrn
  - param String TRIGSTR_193
- Action SetVariable
  - param Variable ReqGetTheUrn
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestBJ
  - param Preset QuestTypeReqUndiscovered
  - param String TRIGSTR_194
  - param String TRIGSTR_195
  - param String ReplaceableTextures\CommandButtons\BTNNecropolis.tga
- Action SetVariable
  - param Variable BuildBaseQuest
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_196
- Action SetVariable
  - param Variable ReqNecropolis
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_197
- Action SetVariable
  - param Variable ReqHauntGoldmine
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_198
- Action SetVariable
  - param Variable ReqCrypt
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_199
- Action SetVariable
  - param Variable Req3Ziggurats
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
  - param String TRIGSTR_200
- Action SetVariable
  - param Variable ReqGraveyard
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action RemoveUnit
  - param Variable gg_unit_uaco_0048
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectUnitSingle
  - param Variable Arthas
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_042
- Action TriggerSleepAction
  - param String 5.00
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Meat_Wagon_Available_Message
  - param Preset CheckingIgnoringChecking


## Arthas Picks Up KelThuzad Cinematic Skip
- enabled: True
- category: [8] Arthas Gets KelThuzad Bones CINEMATIC
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
  - param Variable KelThuzad1CinSkip
  - param String true
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PALADIN1
  - param Function DoNothing
    - Action KillUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action RemoveUnit
  - param Variable KelThuzad
- Action ResetTerrainFogBJ
- Action EnableTrigger
  - param Variable gg_trg_ReachTichondriusWithRemainsCinSkip
- Action ConditionalTriggerExecute
  - param Variable gg_trg_ReachTichondriusWithRemainsCinSkip
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03


## Arthas Picks Up KelThuzad Cinematic
- enabled: True
- category: [8] Arthas Gets KelThuzad Bones CINEMATIC
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QuestItemSetCompletedBJ
  - param Variable ReqTalkToKelz
  - param Preset CompletionOptionCompleted
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
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
- Action PlayThematicMusicBJ
  - param Preset MusicThemeTension
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable ThePlayer
  - param Function DoNothing
    - Action SelectUnitRemove
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action SetTimeOfDay
  - param String 20.00
- Action SetTerrainFogExBJ
  - param String 0
  - param String 1000
  - param String 8000
  - param String 0
  - param String 0.00
  - param String 0.00
  - param String 100
- Action SetVariable
  - param Variable GotCorpse
  - param String true
- Action RemoveUnit
  - param Variable gg_unit_ncop_0053
- Action RemoveUnit
  - param Variable KelThuzadCorpse
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_Arthas_Picks_Up_KelThuzad_Cinematic_Skip
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable KelThuzad1CinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PALADIN1
  - param Function DoNothing
    - Action KillUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadCin_Arthas
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzadCin_Grave
  - param String 0.20
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable ThePlayer
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitType
            - Function IsUnitType
              - param Function GetFilterUnit
                - Function GetFilterUnit
              - param Preset UnitTypeHero
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_KelThuzadCin_Units
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_KelThuzadCin1
  - param Variable ThePlayer
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_KelThuzadCin2
  - param Variable ThePlayer
  - param String 15.00
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable KelThuzad1CinSkip
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
      - param Variable KelThuzad1CinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Near_KelThuzad
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_056
  - param Variable gg_snd_U02Arthas11
  - param String TRIGSTR_057
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable KelThuzad1CinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ThePlayer
  - param String uktg
  - param String TRIGSTR_165
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad_Remains
  - param Variable gg_snd_U02KelThuzad27
  - param String TRIGSTR_166
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable KelThuzad1CinSkip
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
  - param String TRIGSTR_167
  - param Variable gg_snd_U02Arthas28
  - param String TRIGSTR_168
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action SetUnitLookAt
  - param Variable Arthas
  - param Preset UnitFacingBoneHead
  - param Variable gg_unit_ndog_0030
  - param String 0
  - param String 0
  - param String 90
- Action TriggerSleepAction
  - param String 0.50
- Action SetUnitLookAt
  - param Variable Arthas
  - param Preset UnitFacingBoneHead
  - param Variable gg_unit_ndog_0085
  - param String 0
  - param String 0
  - param String 90
- Action TriggerSleepAction
  - param String 1.00
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkVictory
- Action SetUnitLookAt
  - param Variable Arthas
  - param Preset UnitFacingBoneHead
  - param Variable KelThuzad
  - param String 0
  - param String 0
  - param String 90
- Action WaitForSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable KelThuzad1CinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String uktg
  - param Variable KELTHUZAD
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad_Remains
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action SetVariable
  - param Variable KelThuzad
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action TriggerExecute
  - param Variable gg_trg_Alpha_In_Kelz
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 100.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable KelThuzad1CinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ThePlayer
  - param String uktg
  - param String TRIGSTR_169
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad_Remains
  - param Variable gg_snd_U02KelThuzad29
  - param String TRIGSTR_170
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_KelThuzadCin3
  - param Variable ThePlayer
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U02KelThuzad29
- Action WaitForSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable KelThuzad1CinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DisableTrigger
  - param Variable gg_trg_Arthas_Picks_Up_KelThuzad_Cinematic_Skip
- Action TriggerExecute
  - param Variable gg_trg_Alpha_Out_Kelz
- Action TriggerSleepAction
  - param String 3.00
- Action ResetUnitLookAt
  - param Variable Arthas
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable KelThuzad1CinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ResetTerrainFogBJ
- Action ConditionalTriggerExecute
  - param Variable gg_trg_ReachTichondriusWithRemainsCin


## Alpha In Kelz
- enabled: True
- category: [8] Arthas Gets KelThuzad Bones CINEMATIC
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 95.00
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_DarkRitualTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_KelThuzad_Remains
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_DarkRitualTarget1
  - param String 75.00
- Action PlaySoundBJ
  - param Variable gg_snd_DarkRitualTarget1
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 90.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 85.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 80.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 75.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 70.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 65.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 60.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 55.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 50.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 45.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 40.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 35.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 30.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 25.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 20.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 15.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 10.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 5.00
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 0.00


## Alpha Out Kelz
- enabled: True
- category: [8] Arthas Gets KelThuzad Bones CINEMATIC
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 5.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 10.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 15.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 20.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 25.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 30.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 35.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 40.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 45.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 50.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 55.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 60.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 65.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 70.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 75.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 80.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 85.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 90.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 95.00
- Action TriggerSleepAction
  - param String 0.05
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 100.00
- Action TriggerSleepAction
  - param String 0.05
- Action RemoveUnit
  - param Variable KelThuzad


## ReachTichondriusWithRemainsCinSkip
- enabled: True
- category: [7] Tichondrius Cinematic
- starts off: True
- is custom text: False
- run on map init: False
```description
Disables previous defeat condition.
```
### Functions
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action EndThematicMusicBJ
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action SetVariable
  - param Variable ReachTichondriusCinSkip
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
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action SetUnitOwner
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable ThePlayer
      - param Preset ChangeColorTrue
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Arthas_Go_Here
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable ThePlayer
  - param Function DoNothing
    - Action SetUnitMoveSpeed
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetUnitDefaultMoveSpeed
        - Function GetUnitDefaultMoveSpeed
          - param Function GetEnumUnit
            - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAndTypeId
    - Function GetUnitsOfPlayerAndTypeId
      - param Variable ThePlayer
      - param String uaco
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Ticho_Acolytes_Start_Then_Move
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Ticho_Acolytes_Start_Then_Move
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Cin_Acolytes_Move_Here
- Action ForGroup
  - param Function GetUnitsOfPlayerAndTypeId
    - Function GetUnitsOfPlayerAndTypeId
      - param Variable ThePlayer
      - param String ugho
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Ticho_Ghouls_Start_THen_Move
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Ticho_Ghouls_Start_THen_Move
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Cin_Ghouls_Go_here
- Action ForGroup
  - param Function GetUnitsOfPlayerAndTypeId
    - Function GetUnitsOfPlayerAndTypeId
      - param Variable ThePlayer
      - param String umtw
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Ticho_MW_Start_Then_Move
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Ticho_MW_Start_Then_Move
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Cin_Meatwagons_Go_Here
- Action SetUnitPositionLocFacingBJ
  - param Variable gg_unit_Utic_0006
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Hangs_Out
  - param String 215.00
- Action AdjustPlayerStateBJ
  - param String 1200
  - param Variable ThePlayer
  - param Preset PlayerStateGold
- Action AdjustPlayerStateBJ
  - param String 800
  - param Variable ThePlayer
  - param Preset PlayerStateLumber
- Action SetVariable
  - param Variable BuildABase
  - param String true
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Tichondrius_Cin_End_Cam
  - param Variable ThePlayer
  - param String 0
- Action TriggerSleepAction
  - param String 0.10
- Action DestroyEffectBJ
  - param Variable TeleportEffect
- Action ResetToGameCameraForPlayer
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
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityVulnerable
- Action SelectUnitSingle
  - param Variable Arthas
- Action DisableTrigger
  - param Variable gg_trg_Arthas_Dead_Game_Over
- Action EnableTrigger
  - param Variable gg_trg_Interim_Defeat
- Action QuestSetCompletedBJ
  - param Variable GetKelThuzadCorpse
  - param Preset CompletionOptionCompleted
- Action FlashQuestDialogButtonBJ
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_122
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QuestSetDiscoveredBJ
  - param Variable GetTheUrn
  - param Preset DiscoveredOptionDiscovered
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_156
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Create_Leaderboard


## ReachTichondriusWithRemainsCin
- enabled: True
- category: [7] Tichondrius Cinematic
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
  - param Variable TichondriusMeetingDone
  - param String true
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Preset Player06
  - param Function DoNothing
    - Action SetUnitOwner
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Variable ThePlayer
      - param Preset ChangeColorTrue
- Action EnableTrigger
  - param Variable gg_trg_ReachTichondriusWithRemainsCinSkip
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action TriggerSleepAction
  - param String 0.70
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
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
      - param Variable ReachTichondriusCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Tichondrius_Cin_1
  - param Variable ThePlayer
  - param String 0
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_TichondriusGroup
  - param Function DoNothing
    - Action SetUnitMoveSpeed
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String 180.00
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable ThePlayer
      - param Function 
        - Condition OperatorCompareBoolean
          - param Function IsUnitType
            - Function IsUnitType
              - param Function GetFilterUnit
                - Function GetFilterUnit
              - param Preset UnitTypeHero
          - param Preset OperatorEqualENE
          - param String false
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Tichondrius_Arthas_Units_Here
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_TichondriusGroup
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetFilterUnit
                - Function GetFilterUnit
          - param Preset OperatorEqualENE
          - param String ugho
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Cin_Ghouls_Go_here
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_TichondriusGroup
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetFilterUnit
                - Function GetFilterUnit
          - param Preset OperatorEqualENE
          - param String uaco
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Cin_Acolytes_Move_Here
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectMatching
    - Function GetUnitsInRectMatching
      - param Variable gg_rct_TichondriusGroup
      - param Function 
        - Condition OperatorCompareUnitCode
          - param Function GetUnitTypeId
            - Function GetUnitTypeId
              - param Function GetFilterUnit
                - Function GetFilterUnit
          - param Preset OperatorEqualENE
          - param String umtw
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Cin_Meatwagons_Go_Here
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Arthas_Here
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable gg_unit_Utic_0006
  - param String 0.30
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
      - param Variable ReachTichondriusCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 1.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_Utic_0006
  - param String TRIGSTR_023
  - param Variable gg_snd_U02Tichondrius15
  - param String TRIGSTR_024
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonWhat1
  - param Variable Meat1
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonWhat1
  - param String 50.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Meat1
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action PlaySoundBJ
      - param Variable gg_snd_MeatWagonWhat1
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_MeatWagonWhat1
  - param String 0.01
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonWhat2
  - param Variable Meat2
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonWhat2
  - param String 50.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Meat2
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action PlaySoundBJ
      - param Variable gg_snd_MeatWagonWhat2
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Tichondrius15
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
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
  - param String TRIGSTR_025
  - param Variable gg_snd_U02Arthas16
  - param String TRIGSTR_026
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonWhat3
  - param Variable Meat3
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonWhat3
  - param String 50.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Meat3
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action PlaySoundBJ
      - param Variable gg_snd_MeatWagonWhat3
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Arthas16
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable gg_unit_Utic_0006
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Go_Here
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
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
      - param Variable gg_rct_Tichondrius_Arthas_Go_Here
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop3
  - param Variable Arthas
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop3
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonYes1
  - param Variable Meat1
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonYes1
  - param String 50.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Meat1
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action PlaySoundBJ
      - param Variable gg_snd_MeatWagonYes1
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_Utic_0006
  - param String TRIGSTR_028
  - param Variable gg_snd_U02Tichondrius17
  - param String TRIGSTR_030
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonWhat1
  - param Variable Meat1
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonWhat1
  - param String 40.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Meat1
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action PlaySoundBJ
      - param Variable gg_snd_MeatWagonWhat1
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Tichondrius_Cin_2
  - param Variable ThePlayer
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U02Tichondrius17
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Tichondrius17
  - param String 4.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Tichondrius17
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
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
  - param String TRIGSTR_031
  - param Variable gg_snd_U02Arthas18
  - param String TRIGSTR_032
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonYes3
  - param Variable Meat1
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonYes3
  - param String 40.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Meat1
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action PlaySoundBJ
      - param Variable gg_snd_MeatWagonYes3
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable gg_unit_Utic_0006
  - param String 0.30
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Arthas18
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Tichondrius_Cin_3
  - param Variable ThePlayer
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_Utic_0006
  - param String TRIGSTR_033
  - param Variable gg_snd_U02Tichondrius19
  - param String TRIGSTR_034
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_MeatWagonYes3
  - param Variable Meat1
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MeatWagonYes3
  - param String 40.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsUnitAliveBJ
        - Function IsUnitAliveBJ
          - param Variable Meat1
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action PlaySoundBJ
      - param Variable gg_snd_MeatWagonYes3
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Tichondrius19
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_Utic_0006
  - param Variable Arthas
  - param String 0.30
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Tichondrius19
  - param String 0.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Tichondrius_Cin_4
  - param Variable ThePlayer
  - param String 10.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
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
  - param String TRIGSTR_035
  - param Variable gg_snd_U02Arthas20
  - param String TRIGSTR_036
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Arthas20
  - param String 0.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Go_Here
  - param String Abilities\Spells\Undead\DarkSummoning\DarkSummonTarget.mdl
- Action SetVariable
  - param Variable TeleportEffect
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_DarkSummoningTarget1
  - param Variable gg_unit_Utic_0006
- Action PlaySoundBJ
  - param Variable gg_snd_DarkSummoningTarget1
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
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
      - param Variable ReachTichondriusCinSkip
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
      - param Variable ReachTichondriusCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitPositionLocFacingBJ
  - param Variable gg_unit_Utic_0006
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Hangs_Out
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable ReachTichondriusCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String No Longer Skippable
- Action DisableTrigger
  - param Variable gg_trg_ReachTichondriusWithRemainsCinSkip
- Action DestroyEffectBJ
  - param Variable TeleportEffect
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Tichondrius_Cin_End_Cam
  - param Variable ThePlayer
  - param String 0
- Action TriggerSleepAction
  - param String 0.10
- Action ResetToGameCameraForPlayer
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
- Action AdjustPlayerStateBJ
  - param String 1200
  - param Variable ThePlayer
  - param Preset PlayerStateGold
- Action AdjustPlayerStateBJ
  - param String 800
  - param Variable ThePlayer
  - param Preset PlayerStateLumber
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityVulnerable
- Action SelectUnitSingle
  - param Variable Arthas
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable ThePlayer
  - param Function DoNothing
    - Action SetUnitMoveSpeed
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetUnitDefaultMoveSpeed
        - Function GetUnitDefaultMoveSpeed
          - param Function GetEnumUnit
            - Function GetEnumUnit
- Action DisableTrigger
  - param Variable gg_trg_Arthas_Dead_Game_Over
- Action EnableTrigger
  - param Variable gg_trg_Interim_Defeat
- Action EndThematicMusicBJ
- Action QuestSetCompletedBJ
  - param Variable GetKelThuzadCorpse
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_113
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QuestSetDiscoveredBJ
  - param Variable GetTheUrn
  - param Preset DiscoveredOptionDiscovered
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_123
- Action SetVariable
  - param Variable BuildABase
  - param String true
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Create_Leaderboard


## Never Sleep
- enabled: True
- category: [17] Sasquatch
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_nsqe_0072
  - param Preset SleepWakeOptionWake
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_nsqt_0054
  - param Preset SleepWakeOptionWake


## What the Hell is That
- enabled: True
- category: [17] Sasquatch
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
  - param Variable gg_trg_What_the_Hell_is_That_Que
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable ThePlayer
- Condition OperatorCompareBoolean
  - param Variable ENDCINPlaying
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_What_the_hell_is_that


## What the Hell is That Skip
- enabled: True
- category: [17] Sasquatch
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
  - param Variable WTHITSkip
  - param String true
- Action DisableTrigger
  - param Variable gg_trg_What_the_Hell_is_That_Skip
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
  - param Variable LeaderboardPaladinsToKill
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action ResetToGameCameraForPlayer
  - param Variable ThePlayer
  - param String 1.00
- Action SetSkyModel
  - param Preset SkyModelNone
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Variable ArthasPosition
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsInRectMatching
            - Function GetUnitsInRectMatching
              - param Variable gg_rct_NaughtyGhouls
              - param Function 
                - Condition OperatorCompareUnit
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param Variable Arthas
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action SetUnitPositionLocFacingLocBJ
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_What_the_hell_is_that
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable gg_unit_nsqe_0072
  - param Function DoNothing
    - Action DoNothing
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Sasquatch
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_What_the_hell_is_that
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_What_the_Hell_is_That_Que


## What the Hell is That Que
- enabled: True
- category: [17] Sasquatch
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
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
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
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardPaladinsToKill
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action SetVariable
  - param Variable ArthasCinematicRegion
  - param Variable gg_rct_What_the_hell_is_that
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Arthas_Cinematic_Revival
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Variable gg_rct_NaughtyGhouls
      - param Variable ThePlayer
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_NaughtyGhoulsGoHere
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action IssueImmediateOrder
  - param Variable Arthas
  - param Preset UnitOrderStop
- Action SetUnitPositionLocFacingLocBJ
  - param Variable gg_unit_nsqe_0072
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SasquatchElder
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SasquatchYounger
- Action SetUnitPositionLocFacingLocBJ
  - param Variable gg_unit_nsqt_0054
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SasquatchYounger
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_What_the_hell_is_that
- Action SetSkyModel
  - param Preset SkyModelSky03
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Sasquatch
  - param Variable ThePlayer
  - param String 0
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_What_the_Hell_is_That_Skip
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable gg_unit_nsqe_0072
  - param String 0.30
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_045
  - param Variable gg_snd_U02Arthas01
  - param String TRIGSTR_051
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable WTHITSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable gg_unit_nsqt_0054
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_nsqt_0054
  - param Variable Arthas
  - param String 0.30
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nsqt_0054
  - param String TRIGSTR_084
  - param Variable gg_snd_WendigoPissed2
  - param String TRIGSTR_090
  - param Preset AddSetToAdd
  - param String 0.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable WTHITSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_nsqe_0072
  - param String TRIGSTR_094
  - param Variable gg_snd_WendigoYes1
  - param String TRIGSTR_095
  - param Preset AddSetToAdd
  - param String 10.00
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_WendigoYes1
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable WTHITSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PlaySoundBJ
  - param Variable gg_snd_WendigoYes2
- Action WaitForSoundBJ
  - param Variable gg_snd_WendigoYes2
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable WTHITSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PlaySoundBJ
  - param Variable gg_snd_WendigoYes1
- Action WaitForSoundBJ
  - param Variable gg_snd_WendigoYes1
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable WTHITSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PlaySoundBJ
  - param Variable gg_snd_WendigoYes3
- Action WaitForSoundBJ
  - param Variable gg_snd_WendigoYes3
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable WTHITSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 6.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable WTHITSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_What_the_Hell_is_That_Skip
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
  - param Variable LeaderboardPaladinsToKill
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action ResetToGameCameraForPlayer
  - param Variable ThePlayer
  - param String 1.00
- Action SetSkyModel
  - param Preset SkyModelNone
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Variable ArthasPosition
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsInRectMatching
            - Function GetUnitsInRectMatching
              - param Variable gg_rct_NaughtyGhouls
              - param Function 
                - Condition OperatorCompareUnit
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
                  - param Preset OperatorEqualENE
                  - param Variable Arthas
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action SetUnitPositionLocFacingLocBJ
      - param Variable Arthas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_What_the_hell_is_that
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable gg_unit_nsqe_0072
  - param Function DoNothing
    - Action DoNothing
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action GroupPointOrderLoc
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_Sasquatch
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_What_the_hell_is_that
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Hidden Sasquatch
- enabled: True
- category: [17] Sasquatch
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nsqt_0110
  - param Preset UnitOrderAttack
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable ThePlayer
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_SasquatchAttackRarr


## Uther Cinematic Skip
- enabled: True
- category: [13] Uther Lightbringer
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
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Variable LeaderboardPaladinsToKill
- Action SetVariable
  - param Variable UtherCinSkip
  - param String true
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action ResetToGameCameraForPlayer
  - param Variable ThePlayer
  - param String 1.00
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SelectGroupBJ
  - param Variable SelectedUnits
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
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
      - param Variable ThePlayer
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PALADIN2
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PALADIN3
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
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Variable LeaderboardPaladinsToKill
- Action SetUnitInvulnerable
  - param Variable gg_unit_Utic_0006
  - param Preset InvulnerabilityInvulnerable


## Uther Cinematic
- enabled: True
- category: [13] Uther Lightbringer
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerClearBJ
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardPaladinsToKill
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
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
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action SetVariable
  - param Variable ArthasCinematicRegion
  - param Variable gg_rct_Uther_Arthas_Start
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Arthas_Cinematic_Revival
- Action SetVariable
  - param Variable SelectedUnits
  - param Function GetUnitsSelectedAll
    - Function GetUnitsSelectedAll
      - param Variable ThePlayer
- Action ClearSelection
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
      - param Variable ThePlayer
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PALADIN2
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PALADIN3
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ShowUnitShow
  - param Variable Arthas
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
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Uther_Cin_1
  - param Variable ThePlayer
  - param String 0
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable Arthas
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionUnpause
  - param Variable gg_unit_Huth_0091
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Uther_Uther_Move_Here
  - param String 0
- Action PlayThematicMusicBJ
  - param Preset MusicThemeTragicConfrontation
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_Uther_Cinematic_Skip
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2.00
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
      - param Variable UtherCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Uther_Cin_2
  - param Variable ThePlayer
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U02Uther21
- Action IssuePointOrderLoc
  - param Variable gg_unit_Huth_0091
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Uther_Uther_Move_Here
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable UtherCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_Huth_0091
  - param String TRIGSTR_064
  - param Variable gg_snd_U02Uther21
  - param String TRIGSTR_065
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Uther21
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable UtherCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Uther_Cin_3
  - param Variable ThePlayer
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_066
  - param Variable gg_snd_U02Arthas22
  - param String TRIGSTR_067
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Uther_Cin_3b
  - param Variable ThePlayer
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U02Arthas22
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Arthas22
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable UtherCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_Huth_0091
  - param String TRIGSTR_068
  - param Variable gg_snd_U02Uther23
  - param String TRIGSTR_069
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Uther23
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable UtherCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Uther_Cin_3c
  - param Variable ThePlayer
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Uther_Cin_4
  - param Variable ThePlayer
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U02Arthas24
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_070
  - param Variable gg_snd_U02Arthas24
  - param String TRIGSTR_071
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Arthas24
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable UtherCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DisableTrigger
  - param Variable gg_trg_Uther_Cinematic_Skip
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
- Action ResetToGameCameraForPlayer
  - param Variable ThePlayer
  - param String 0.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityVulnerable
- Action SelectGroupBJ
  - param Variable SelectedUnits
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
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
      - param Variable ThePlayer
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PALADIN2
  - param Function DoNothing
    - Action ShowUnitShow
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PALADIN3
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
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Variable ArthasPosition
- Action LeaderboardDisplayBJ
  - param Preset ShowHideShow
  - param Variable LeaderboardPaladinsToKill
- Action SetUnitInvulnerable
  - param Variable gg_unit_Utic_0006
  - param Preset InvulnerabilityInvulnerable
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable ThePlayer
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Uther_Lightbringer_Cin


## Uther Dies
- enabled: True
- category: [13] Uther Lightbringer
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
  - param Variable DeadPaladinPosition
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetDyingUnit
        - Function GetDyingUnit
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionPause
- Action ReplaceUnitBJ
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param String Huth
  - param Preset UnitStateMethodDefaults
- Action SetVariable
  - param Variable Uther
  - param Function GetLastReplacedUnitBJ
    - Function GetLastReplacedUnitBJ
- Action SetUnitLifeBJ
  - param Variable Uther
  - param String 1.00
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action PauseUnitBJ
  - param Preset PauseUnpauseOptionPause
  - param Variable Uther
- Action TriggerSleepAction
  - param String 0.10
- Action SetUnitBlendTimeBJ
  - param Variable Uther
  - param String 0.00
- Action SetUnitInvulnerable
  - param Variable Uther
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitLifeBJ
  - param Variable Uther
  - param String 1.00
- Action SetUnitAnimationWithRarity
  - param Variable Uther
  - param String stand
  - param Preset RarityControlFrequent
- Action VolumeGroupSetVolumeBJ
  - param Preset VolumeGroupSpells
  - param String 0.00
- Action TriggerSleepAction
  - param String 1.00
- Action SetUnitTimeScalePercent
  - param Variable Uther
  - param String 10.00
- Action SetUnitAnimationWithRarity
  - param Variable Uther
  - param String death
  - param Preset RarityControlFrequent
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_Huth_0091
  - param String TRIGSTR_091
  - param Variable gg_snd_U02Uther25
  - param String TRIGSTR_092
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action TriggerSleepAction
  - param String 2.50
- Action SetUnitBlendTimeBJ
  - param Variable Uther
  - param String 0.15
- Action TriggerSleepAction
  - param String 2.00
- Action SetUnitAnimationWithRarity
  - param Variable Uther
  - param String death
  - param Preset RarityControlFrequent
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Uther25
  - param String 0
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
      - param String TRIGSTR_700
      - param Variable gg_snd_U02Arthas26
      - param String TRIGSTR_701
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action SetUnitTimeScalePercent
  - param Variable Uther
  - param String 80.00
- Action KillUnit
  - param Variable Uther
- Action SetVariable
  - param Variable PaladinsToKill
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable PaladinsToKill
      - param Preset OperatorSubtract
      - param String 1
- Action LeaderboardSetPlayerItemValueBJ
  - param Variable ThePlayer
  - param Variable LeaderboardPaladinsToKill
  - param Variable PaladinsToKill
- Action PauseAllUnitsBJ
  - param Preset PauseUnpauseOptionUnpause
- Action ConditionalTriggerExecute
  - param Variable gg_trg_All_Paladins_Dead_Drop_The_Urn
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Huth_0091
  - param Preset UnitEventDeath


## END CINEMATIC SKIP
- enabled: True
- category: [35] VICTORY Cinematic
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
  - param Variable PickUpUrnCinSkip
  - param String true
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
  - param Preset Player03


## END CINEMATIC
- enabled: True
- category: [35] VICTORY Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsQuestCompleted
    - Function IsQuestCompleted
      - param Variable BuildBaseQuest
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsQuestCompleted
    - Function IsQuestCompleted
      - param Variable GetTheUrn
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_Lose_Buildings
- Action SetVariable
  - param Variable ENDCINPlaying
  - param String true
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_END_CINEMATIC_Que
  - param Preset CheckingIgnoringChecking


## END CINEMATIC Que
- enabled: True
- category: [35] VICTORY Cinematic
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
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Function GetPlayersAll
    - Function GetPlayersAll
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Prep
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action SetTimeOfDay
  - param String 20.00
- Action UnitRemoveBuffsBJ
  - param Preset BuffTypeAll
  - param Variable Arthas
- Action ClearSelection
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_END_CINEMATIC_SKIP
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable PickUpUrnCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PlayThematicMusicBJ
  - param Preset MusicThemeSadMystery
- Action RemoveUnit
  - param Variable KelThuzad
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
      - param Variable PALADIN1
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PALADIN2
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PALADIN3
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsOfPlayerMatching
    - Function GetUnitsOfPlayerMatching
      - param Variable UTHER
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
            - Condition OperatorCompareBoolean
              - param Function IsUnitType
                - Function IsUnitType
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
                  - param Preset UnitTypeStructure
              - param Preset OperatorEqualENE
              - param String false
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
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
            - Condition OperatorCompareBoolean
              - param Function IsUnitType
                - Function IsUnitType
                  - param Function GetFilterUnit
                    - Function GetFilterUnit
                  - param Preset UnitTypeStructure
              - param Preset OperatorEqualENE
              - param String false
  - param Function DoNothing
    - Action RemoveUnit
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_FinalCin_1
  - param Variable ThePlayer
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Final_Cin_2
  - param Variable ThePlayer
  - param String 5.00
- Action SetVariable
  - param Variable ArthasCinematicRegion
  - param Variable gg_rct_FinalCin_Arthas_Gets_Urn_Puts_in_Corpse
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Arthas_Cinematic_Revival
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Final_Cin_Meat_Wagon_Go
  - param String 0
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
      - param Variable PickUpUrnCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 2.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable PickUpUrnCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String uktg
  - param Variable KELTHUZAD
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Final_Cin_Corpse_Spawn
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action SetVariable
  - param Variable KelThuzad
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitVertexColorBJ
  - param Variable KelThuzad
  - param String 100
  - param String 100
  - param String 100
  - param String 100.00
- Action TriggerExecute
  - param Variable gg_trg_Alpha_In_Kelz
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_DarkRitualTarget1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Final_Cin_Corpse_Spawn
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_DarkRitualTarget1
  - param String 75.00
- Action PlaySoundBJ
  - param Variable gg_snd_DarkRitualTarget1
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable PickUpUrnCinSkip
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
      - param Variable PickUpUrnCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable KelThuzad
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable PickUpUrnCinSkip
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
      - param Variable PickUpUrnCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssueImmediateOrder
  - param Variable Arthas
  - param Preset UnitOrderStop
- Action TriggerSleepAction
  - param String 0.30
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable PickUpUrnCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action AddSpecialEffectLocBJ
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Final_Cin_Tichondrius_Tele
  - param String Abilities\Spells\Undead\DarkSummoning\DarkSummonTarget.mdl
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_MassTeleportTarget
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Final_Cin_Tichondrius_Tele
  - param String 0
- Action SetSoundVolumeBJ
  - param Variable gg_snd_MassTeleportTarget
  - param String 80.00
- Action PlaySoundBJ
  - param Variable gg_snd_MassTeleportTarget
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable PickUpUrnCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitPositionLoc
  - param Variable gg_unit_Utic_0006
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Final_Cin_Tichondrius_Tele
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_Utic_0006
  - param Variable Arthas
  - param String 0.30
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Final_Cin_5
  - param Variable ThePlayer
  - param Function GetSoundDurationBJ
    - Function GetSoundDurationBJ
      - param Variable gg_snd_U02Tichondrius30
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_Utic_0006
  - param String TRIGSTR_702
  - param Variable gg_snd_U02Tichondrius30
  - param String TRIGSTR_703
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Tichondrius30
  - param String 4.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable PickUpUrnCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DestroyEffectBJ
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Tichondrius30
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable PickUpUrnCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Arthas
  - param Variable gg_unit_Utic_0006
  - param String 0.22
- Action WaitForSoundBJ
  - param Variable gg_snd_U02Tichondrius30
  - param String 0.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable PickUpUrnCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ThePlayer
  - param String uktg
  - param String TRIGSTR_704
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
  - param Variable gg_snd_U02KelThuzad31
  - param String TRIGSTR_705
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontDont
- Action WaitForSoundBJ
  - param Variable gg_snd_U02KelThuzad31
  - param String 0.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable PickUpUrnCinSkip
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_END_CINEMATIC_SKIP
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 2.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action ResetToGameCameraForPlayer
  - param Variable ThePlayer
  - param String 2.00
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
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop02
- Action TriggerSleepAction
  - param String 2
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run


## Stop Arthas
- enabled: True
- category: [5] Lord Nicholas Buzan
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
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerClearInactiveBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable BuzanPaladin
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable ThePlayer
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_Hpb1_0018
  - param String 512
- Action SetVariable
  - param Variable BuzanBlah1
  - param String true
- Action IssueImmediateOrder
  - param Variable gg_unit_Hpb1_0018
  - param Preset UnitOrderHoldPosition
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_Hpb1_0018
  - param String TRIGSTR_011
  - param Variable gg_snd_U02PaladinA06
  - param String TRIGSTR_012
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IssuePointOrderLoc
  - param Variable gg_unit_Hpb1_0018
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_NicholasBuzan_Move
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable Arthas
  - param String TRIGSTR_013
  - param Variable gg_snd_U02Arthas07
  - param String TRIGSTR_014
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action TriggerSleepAction
  - param String 3.00
- Action EnableTrigger
  - param Variable gg_trg_BlahBlahBlah
- Action SetVariable
  - param Variable BuzanBlah1
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Buzan_Area


## BlahBlahBlah
- enabled: True
- category: [5] Lord Nicholas Buzan
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
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable BuzanPaladin
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_Hpb1_0018
  - param String TRIGSTR_018
  - param Variable gg_snd_U02PaladinB08
  - param String TRIGSTR_019
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Hpb1_0018
  - param Preset UnitEventDamaged


## Buzan Face Arthas
- enabled: True
- category: [5] Lord Nicholas Buzan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 2
- Action SetUnitFacingToFaceUnitTimed
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Variable Arthas
  - param String 0.30
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_Hpb1_0018
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_NicholasBuzan_Move


## If Dead Stop Sound
- enabled: True
- category: [5] Lord Nicholas Buzan
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
- Action StopSoundBJ
  - param Variable gg_snd_U02PaladinA06
  - param Preset FadeDontDont
- Action StopSoundBJ
  - param Variable gg_snd_U02PaladinB08
  - param Preset FadeDontDont
- Action EnableTrigger
  - param Variable gg_trg_Arthas_Picks_Up_KelThuzad_Cinematic
- Action QuestItemSetCompletedBJ
  - param Variable ReqKillBuzan
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeUpdated
  - param String TRIGSTR_044
- Action FlashQuestDialogButtonBJ
- Action SetVariable
  - param Variable BuzanPaladin
  - param Preset UnitNull
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function RectContainsUnit
        - Function RectContainsUnit
          - param Variable gg_rct_Near_KelThuzad
          - param Variable Arthas
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action TriggerExecute
      - param Variable gg_trg_Arthas_Picks_Up_KelThuzad_Cinematic
  - param Function DoNothing
    - Action DoNothing
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Hpb1_0018
  - param Preset UnitEventDeath


## Buzan Attacks
- enabled: True
- category: [5] Lord Nicholas Buzan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupPointOrderLoc
  - param Function GetUnitsOfPlayerAll
    - Function GetUnitsOfPlayerAll
      - param Variable PALADIN1
  - param Preset UnitOrderAttack
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable ThePlayer
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Buzan_Attacks


## No Levels for Buzan
- enabled: True
- category: [5] Lord Nicholas Buzan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Hpb1_0018
- Event MapInitializationEvent


## Buzan IS
- enabled: True
- category: [5] Lord Nicholas Buzan
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable BuzanPaladin
  - param Variable gg_unit_Hpb1_0018
- Event MapInitializationEvent


## Money Kang
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerState
  - param Preset Player02
  - param Preset PlayerStateGold
  - param String 10000


## Edward Kang Speech
- enabled: True
- category: [11] Edward Kang
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
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Edward_Kang_Speech_Que
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Edward_Kang
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_HC00_0049
  - param Preset UnitEventDamaged


## Edward Kang Speech Que
- enabled: True
- category: [11] Edward Kang
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
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable MilitiaPlayed
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Militia
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable KangPaladin
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable ThePlayer
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_HC00_0049
  - param String 512
- Action DisableTrigger
  - param Variable gg_trg_Arthas_Harasses_Villagers_Calls_Militia
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_HC00_0049
  - param String TRIGSTR_073
  - param Variable gg_snd_U02PaladinD10
  - param String TRIGSTR_076
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## If Ed Dead Stop Sound
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action StopSoundBJ
  - param Variable gg_snd_U02PaladinD10
  - param Preset FadeDontDont
- Action SetVariable
  - param Variable PaladinsToKill
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable PaladinsToKill
      - param Preset OperatorSubtract
      - param String 1
- Action LeaderboardSetPlayerItemValueBJ
  - param Variable ThePlayer
  - param Variable LeaderboardPaladinsToKill
  - param Variable PaladinsToKill
- Action SetVariable
  - param Variable KangPaladin
  - param Preset UnitNull
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_Edward_Kang_Speech_Que
- Action SetVariable
  - param Variable DeadPaladinPosition
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetDyingUnit
        - Function GetDyingUnit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_All_Paladins_Dead_Drop_The_Urn
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_Edward_Kang_Speech_Que
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_HC00_0049
  - param Preset UnitEventDeath


## Arthas Harasses Villagers Calls Militia
- enabled: True
- category: [11] Edward Kang
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
      - param Variable MilitiaPlayed
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action ConditionalTriggerExecute
      - param Variable gg_trg_Militia
  - param Function DoNothing
    - Action DoNothing
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nvil_0107
  - param Preset UnitEventDamaged
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nvl2_0104
  - param Preset UnitEventDamaged
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nvl2_0143
  - param Preset UnitEventDamaged
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nvil_0106
  - param Preset UnitEventDamaged
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nvil_0105
  - param Preset UnitEventDamaged
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nvl2_0103
  - param Preset UnitEventDamaged
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_nvil_0108
  - param Preset UnitEventDamaged


## Militia
- enabled: True
- category: [11] Edward Kang
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
  - param Variable MilitiaPlayed
  - param String true
- Action PlaySoundBJ
  - param Variable gg_snd_HumanCallToArmsWhat1
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Militia_Easy
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Militia_Normal
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Militia_Hard


## Militia Easy
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0105
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0107
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia03
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvl2_0104
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia04
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyEasy


## Militia Normal
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0105
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0106
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0107
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia03
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvl2_0104
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia04
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvl2_0143
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia05
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyNormal


## Militia Hard
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0105
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia01
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0106
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia02
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0107
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia03
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvl2_0104
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia04
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvl2_0143
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia05
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvl2_0112
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia06
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvil_0108
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia07
- Action IssuePointOrderLoc
  - param Variable gg_unit_nvl2_0103
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia08
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyHard


## Attacking Militia01
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hmil
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia01
  - param String 315.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderPatrol
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_HC00_0049
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nvil_0105
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Militia01


## Attacking Militia02
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hmil
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia02
  - param String 270.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderPatrol
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_HC00_0049
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nvil_0106
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Militia02


## Attacking Militia03
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hmil
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia03
  - param String 225.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderPatrol
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_HC00_0049
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nvil_0107
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Militia03


## Attacking Militia04
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hmil
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia04
  - param String 225.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderPatrol
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_HC00_0049
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nvl2_0104
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Militia04


## Attacking Militia05
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hmil
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia05
  - param String 45.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderPatrol
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_HC00_0049
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nvl2_0143
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Militia05


## Attacking Militia06
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hmil
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia06
  - param String 225.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderPatrol
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_HC00_0049
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nvl2_0112
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Militia06


## Attacking Militia07
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hmil
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia07
  - param String 225.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderPatrol
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_HC00_0049
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nvil_0108
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Militia07


## Attacking Militia08
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String hmil
  - param Preset Player02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Militia08
  - param String 225.00
- Action IssuePointOrderLoc
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
  - param Preset UnitOrderPatrol
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_HC00_0049
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_nvl2_0103
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Militia08


## No Levels for Kang
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_HC00_0049
- Event MapInitializationEvent


## Kang IS
- enabled: True
- category: [11] Edward Kang
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable KangPaladin
  - param Variable gg_unit_HC00_0049
- Event MapInitializationEvent


## Money Edmunson
- enabled: True
- category: [12] Gregory Edmunson
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateGold
  - param String 10000
- Action SetPlayerState
  - param Preset Player01
  - param Preset PlayerStateLumber
  - param String 10000


## Gregory Edmunson Speech
- enabled: True
- category: [12] Gregory Edmunson
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
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Hpb2_0052
  - param Preset UnitEventDamaged
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Gregory_Edmunson_Speech_Que
  - param Preset CheckingIgnoringChecking
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Gregory_Edmunson


## Gregory Edmunson Speech Que
- enabled: True
- category: [12] Gregory Edmunson
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
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable EdmunsonPaladin
      - param Preset OperatorEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable ThePlayer
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_Hpb2_0052
  - param String 512
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_HC00_0049
  - param String TRIGSTR_077
  - param Variable gg_snd_U02PaladinC09
  - param String TRIGSTR_078
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## If Greg Dead Stop Sound
- enabled: True
- category: [12] Gregory Edmunson
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
- Action StopSoundBJ
  - param Variable gg_snd_U02PaladinC09
  - param Preset FadeDontDont
- Action SetVariable
  - param Variable EdmunsonPaladin
  - param Preset UnitNull
- Action SetVariable
  - param Variable PaladinsToKill
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable PaladinsToKill
      - param Preset OperatorSubtract
      - param String 1
- Action LeaderboardSetPlayerItemValueBJ
  - param Variable ThePlayer
  - param Variable LeaderboardPaladinsToKill
  - param Variable PaladinsToKill
- Action SetVariable
  - param Variable DeadPaladinPosition
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetDyingUnit
        - Function GetDyingUnit
- Action ConditionalTriggerExecute
  - param Variable gg_trg_All_Paladins_Dead_Drop_The_Urn
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Variable gg_trg_Gregory_Edmunson_Speech_Que
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Hpb2_0052
  - param Preset UnitEventDeath


## Greg Attacked Reinforce
- enabled: True
- category: [12] Gregory Edmunson
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
      - param Variable gg_rct_Gregory_Reinforcements
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset UnitOrderAttack
      - param Function GetUnitLoc
        - Function GetUnitLoc
          - param Variable gg_unit_Hpb2_0052
- Event TriggerRegisterUnitEvent
  - param Variable gg_unit_Hpb2_0052
  - param Preset UnitEventDamaged


## No Levels for Edmunson
- enabled: True
- category: [12] Gregory Edmunson
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable gg_unit_Hpb2_0052
- Event MapInitializationEvent


## Edmunson IS
- enabled: True
- category: [12] Gregory Edmunson
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable EdmunsonPaladin
  - param Variable gg_unit_Hpb2_0052
- Event MapInitializationEvent


## Create Leaderboard
- enabled: True
- category: [25] LEADERBOARD Paladins
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateLeaderboardBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param String TRIGSTR_074
- Action SetVariable
  - param Variable LeaderboardPaladinsToKill
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
- Action LeaderboardAddItemBJ
  - param Variable ThePlayer
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param String TRIGSTR_075
  - param Variable PaladinsToKill
- Action LeaderboardSetValueColorBJ
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param String 100.00
  - param String 100.00
  - param String 100.00
  - param String 0
- Action LeaderboardSetPlayerItemLabelColorBJ
  - param Variable ThePlayer
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param String 100.00
  - param String 100.00
  - param String 100.00
  - param String 0
- Action LeaderboardSetPlayerItemValueColorBJ
  - param Variable ThePlayer
  - param Function GetLastCreatedLeaderboard
    - Function GetLastCreatedLeaderboard
  - param String 100.00
  - param String 100.00
  - param String 100.00
  - param String 0


## All Paladins Dead Drop The Urn
- enabled: True
- category: [24] All Paladins Dead
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Variable PaladinsToKill
  - param Preset OperatorEqual
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CreateItemLoc
  - param String ktrm
  - param Variable DeadPaladinPosition
- Action SetItemInvulnerableBJ
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Preset InvulnerabilityInvulnerable
- Action SetItemDroppableBJ
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Preset DropNoDropOptionNoDrop
- Action QuestItemSetCompletedBJ
  - param Variable ReqKillPaladinsQuest
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeUpdated
  - param String TRIGSTR_157
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardPaladinsToKill


## Get The Urn
- enabled: True
- category: [14] Get The Urn
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action LeaderboardDisplayBJ
  - param Preset ShowHideHide
  - param Variable LeaderboardPaladinsToKill
- Action QuestItemSetCompletedBJ
  - param Variable ReqGetTheUrn
  - param Preset CompletionOptionCompleted
- Action QuestSetCompletedBJ
  - param Variable GetTheUrn
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_458
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action ConditionalTriggerExecute
  - param Variable gg_trg_END_CINEMATIC
- Condition OperatorCompareItemCode
  - param Function GetItemTypeId
    - Function GetItemTypeId
      - param Function GetManipulatedItem
        - Function GetManipulatedItem
  - param Preset OperatorEqualENE
  - param String ktrm
- Condition OperatorCompareUnit
  - param Function GetManipulatingUnit
    - Function GetManipulatingUnit
  - param Preset OperatorEqualENE
  - param Variable Arthas
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventHeroPickUpItem


## Patrol
- enabled: True
- category: [22] Golem Patrol
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventSingle
  - param String 5
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngst_0133
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Golem_1B
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngst_0132
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Golem_2B
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngst_0134
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Golem_3B


## Golem01A
- enabled: True
- category: [22] Golem Patrol
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RockGolem1
  - param String false
- Action TriggerSleepAction
  - param String 1.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngst_0133
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Golem_1B
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_ngst_0133
- Condition OperatorCompareBoolean
  - param Variable RockGolem1
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Golem_1A


## Golem01B
- enabled: True
- category: [22] Golem Patrol
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RockGolem1
  - param String true
- Action TriggerSleepAction
  - param String 1.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngst_0133
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Golem_1A
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_ngst_0133
- Condition OperatorCompareBoolean
  - param Variable RockGolem1
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Golem_1B


## Golem02A
- enabled: True
- category: [22] Golem Patrol
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RockGolem2
  - param String false
- Action TriggerSleepAction
  - param String 1.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngst_0132
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Golem_2B
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_ngst_0132
- Condition OperatorCompareBoolean
  - param Variable RockGolem2
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Golem_2A


## Golem02B
- enabled: True
- category: [22] Golem Patrol
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RockGolem2
  - param String true
- Action TriggerSleepAction
  - param String 1.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngst_0132
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Golem_2A
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_ngst_0132
- Condition OperatorCompareBoolean
  - param Variable RockGolem2
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Golem_2B


## Golem03A
- enabled: True
- category: [22] Golem Patrol
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RockGolem3
  - param String false
- Action TriggerSleepAction
  - param String 1.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngst_0134
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Golem_3B
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_ngst_0134
- Condition OperatorCompareBoolean
  - param Variable RockGolem3
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Golem_3A


## Golem03B
- enabled: True
- category: [22] Golem Patrol
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable RockGolem3
  - param String true
- Action TriggerSleepAction
  - param String 1.00
- Action IssuePointOrderLoc
  - param Variable gg_unit_ngst_0134
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Golem_3A
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_ngst_0134
- Condition OperatorCompareBoolean
  - param Variable RockGolem3
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Golem_3B


## Knights Patrol
- enabled: True
- category: [18] Knight Patrol
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0069
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Knight_Patrol01A
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action IssuePointOrderLoc
      - param Variable gg_unit_hkni_0070
      - param Preset UnitOrderPatrol
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Knight_Patrol02A
  - param Function DoNothing
    - Action DoNothing
- Action # IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action DisableTrigger
      - param Variable gg_trg_KnightPatrol02A
  - param Function DoNothing
    - Action DoNothing
- Action # IfThenElse
  - param Function 
    - Condition OperatorCompareGameDifficulty
      - param Function GetGameDifficulty
        - Function GetGameDifficulty
      - param Preset OperatorEqualENE
      - param Preset GameDifficultyHard
  - param Function DoNothing
    - Action DisableTrigger
      - param Variable gg_trg_KnightPatrol02B
  - param Function DoNothing
    - Action DoNothing
- Event TriggerRegisterTimerEventSingle
  - param String 5


## KnightPatrol01A
- enabled: True
- category: [18] Knight Patrol
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable KnightPatrol01
  - param String true
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0069
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Knight_Patrol01B
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hkni_0069
- Condition OperatorCompareBoolean
  - param Variable KnightPatrol01
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Knight_Patrol01A


## KnightPatrol01B
- enabled: True
- category: [18] Knight Patrol
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable KnightPatrol01
  - param String false
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0069
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Knight_Patrol01A
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hkni_0069
- Condition OperatorCompareBoolean
  - param Variable KnightPatrol01
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Knight_Patrol01B


## KnightPatrol02A
- enabled: True
- category: [18] Knight Patrol
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable KnightPatrol02
  - param String true
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0070
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Knight_Patrol02B
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hkni_0070
- Condition OperatorCompareBoolean
  - param Variable KnightPatrol02
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Knight_Patrol02A


## KnightPatrol02B
- enabled: True
- category: [18] Knight Patrol
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetVariable
  - param Variable KnightPatrol02
  - param String false
- Action IssuePointOrderLoc
  - param Variable gg_unit_hkni_0070
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Knight_Patrol02A
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable gg_unit_hkni_0070
- Condition OperatorCompareBoolean
  - param Variable KnightPatrol02
  - param Preset OperatorEqualENE
  - param String true
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Knight_Patrol02B


## Feast on Souls
- enabled: True
- category: [23] Fun With Ticho
- starts off: False
- is custom text: False
- run on map init: False
```description
Villagers set invulnerable at map init.

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable ThePlayer
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Tichondrius_Hangs_Out
  - param String 1024.00
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_Utic_0006
  - param String TRIGSTR_201
  - param Variable gg_snd_TichondriusPissed3
  - param String TRIGSTR_202
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action TriggerSleepAction
  - param String 0.40
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_Utic_0006
  - param Variable gg_unit_nvil_0144
  - param String 0.20
- Action TriggerSleepAction
  - param String 0.20
- Action SetUnitAnimation
  - param Variable gg_unit_Utic_0006
  - param String Spell
- Action TriggerSleepAction
  - param String 0.80
- Action KillUnit
  - param Variable gg_unit_nvil_0144
- Action DestroyEffectBJ
  - param Variable SFX1
- Action TriggerSleepAction
  - param String 0.20
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String YOf3
  - param Variable gg_rct_FireGust1
- Action TriggerSleepAction
  - param String 0.40
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_Utic_0006
  - param Variable gg_unit_nvl2_0146
  - param String 0.20
- Action TriggerSleepAction
  - param String 0.20
- Action SetUnitAnimation
  - param Variable gg_unit_Utic_0006
  - param String Spell
- Action TriggerSleepAction
  - param String 0.80
- Action KillUnit
  - param Variable gg_unit_nvl2_0146
- Action DestroyEffectBJ
  - param Variable SFX2
- Action TriggerSleepAction
  - param String 0.20
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String YOf3
  - param Variable gg_rct_FireGust2
- Action TriggerSleepAction
  - param String 0.40
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_Utic_0006
  - param Variable gg_unit_nvlw_0148
  - param String 0.20
- Action TriggerSleepAction
  - param String 0.20
- Action SetUnitAnimation
  - param Variable gg_unit_Utic_0006
  - param String Spell
- Action TriggerSleepAction
  - param String 0.80
- Action KillUnit
  - param Variable gg_unit_nvlw_0148
- Action DestroyEffectBJ
  - param Variable SFX3
- Action TriggerSleepAction
  - param String 0.20
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String YOf3
  - param Variable gg_rct_FireGust3
- Action TriggerSleepAction
  - param String 0.40
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_Utic_0006
  - param Variable gg_unit_nvil_0145
  - param String 0.20
- Action TriggerSleepAction
  - param String 0.20
- Action SetUnitAnimation
  - param Variable gg_unit_Utic_0006
  - param String Spell
- Action TriggerSleepAction
  - param String 0.80
- Action KillUnit
  - param Variable gg_unit_nvil_0145
- Action DestroyEffectBJ
  - param Variable SFX4
- Action TriggerSleepAction
  - param String 0.20
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String YOf3
  - param Variable gg_rct_FireGust4
- Action TriggerSleepAction
  - param String 0.40
- Action SetUnitFacingToFaceUnitTimed
  - param Variable gg_unit_Utic_0006
  - param Variable gg_unit_nvlw_0147
  - param String 0.20
- Action TriggerSleepAction
  - param String 0.20
- Action SetUnitAnimation
  - param Variable gg_unit_Utic_0006
  - param String Spell
- Action TriggerSleepAction
  - param String 0.80
- Action KillUnit
  - param Variable gg_unit_nvlw_0147
- Action DestroyEffectBJ
  - param Variable SFX5
- Action TriggerSleepAction
  - param String 0.20
- Action SetDoodadAnimationRectBJ
  - param String stand
  - param String YOf3
  - param Variable gg_rct_FireGust5
- Action ResetUnitAnimation
  - param Variable gg_unit_Utic_0006
- Action TriggerSleepAction
  - param String 2
- Action SetUnitFacingTimed
  - param Variable gg_unit_Utic_0006
  - param String 0.00
  - param String 0.20
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable gg_unit_Utic_0006
  - param String TRIGSTR_203
  - param Variable gg_snd_TichondriusWhat2
  - param String TRIGSTR_204
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action TriggerSleepAction
  - param String 0.35
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOf3
  - param Variable gg_rct_FireGust1
- Action RemoveUnit
  - param Variable gg_unit_nvil_0144
- Action TriggerSleepAction
  - param String 0.20
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOf3
  - param Variable gg_rct_FireGust2
- Action RemoveUnit
  - param Variable gg_unit_nvl2_0146
- Action TriggerSleepAction
  - param String 0.35
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOf3
  - param Variable gg_rct_FireGust3
- Action RemoveUnit
  - param Variable gg_unit_nvlw_0148
- Action TriggerSleepAction
  - param String 0.15
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOf3
  - param Variable gg_rct_FireGust4
- Action RemoveUnit
  - param Variable gg_unit_nvil_0145
- Action TriggerSleepAction
  - param String 0.35
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String YOf3
  - param Variable gg_rct_FireGust5
- Action RemoveUnit
  - param Variable gg_unit_nvlw_0147
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable ThePlayer
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Approach_Tichondrius


## Sleep Mortals
- enabled: True
- category: [23] Fun With Ticho
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AddSpecialEffectTargetUnitBJ
  - param String overhead
  - param Variable gg_unit_nvil_0144
  - param String Abilities\Spells\Undead\Sleep\SleepTarget.mdl
- Action SetVariable
  - param Variable SFX1
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AddSpecialEffectTargetUnitBJ
  - param String overhead
  - param Variable gg_unit_nvl2_0146
  - param String Abilities\Spells\Undead\Sleep\SleepTarget.mdl
- Action SetVariable
  - param Variable SFX2
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AddSpecialEffectTargetUnitBJ
  - param String overhead
  - param Variable gg_unit_nvlw_0148
  - param String Abilities\Spells\Undead\Sleep\SleepTarget.mdl
- Action SetVariable
  - param Variable SFX3
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AddSpecialEffectTargetUnitBJ
  - param String overhead
  - param Variable gg_unit_nvil_0145
  - param String Abilities\Spells\Undead\Sleep\SleepTarget.mdl
- Action SetVariable
  - param Variable SFX4
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AddSpecialEffectTargetUnitBJ
  - param String overhead
  - param Variable gg_unit_nvlw_0147
  - param String Abilities\Spells\Undead\Sleep\SleepTarget.mdl
- Action SetVariable
  - param Variable SFX5
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Event MapInitializationEvent


## Villagers Flee
- enabled: True
- category: [23] Fun With Ticho
- starts off: False
- is custom text: False
- run on map init: False
```description
Villagers set invulnerable at map init.

```
### Functions
- Action IssuePointOrderLoc
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_Approach_Flee_Destination
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset PlayerNA
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorNotEqualENE
  - param String ngst
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Approach_Tichondrius
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Approach_Flee_From_Here


## Never Sleep2
- enabled: True
- category: [26] Fire Trap Renegade Wizards Unleashed
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_nwzr_0151
  - param Preset SleepWakeOptionWake
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_nwiz_0150
  - param Preset SleepWakeOptionWake
- Action UnitSetCanSleepBJ
  - param Variable gg_unit_nwiz_0149
  - param Preset SleepWakeOptionWake


## Hint Quest Build Base and Haunt GM
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Variable gg_trg_Hint_Quest_Build_Base_and_Haunt_Que
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareBoolean
  - param Variable BuildABase
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable ENDCINPlaying
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerSelectionEventBJ
  - param Preset Player03
  - param Preset SelDeselOptionSel


## Hint Quest Build Base and Haunt Que
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Variable PreQuestDelayTime
- Action QuestSetDiscoveredBJ
  - param Variable BuildBaseQuest
  - param Preset DiscoveredOptionDiscovered
- Action ConditionalTriggerExecute
  - param Variable gg_trg_MAIN_QUEST_UPDATE
- Action FlashQuestDialogButtonBJ
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ThePlayer
  - param String unec
  - param String TRIGSTR_186
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_ngol_0003
  - param Variable gg_snd_U02Necromancer38
  - param String TRIGSTR_187
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_118
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Hint Necropolis
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Variable gg_trg_Hint_Necropolis_Que
  - param Preset CheckingIgnoringIgnoring
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructingStructure
        - Function GetConstructingStructure
  - param Preset OperatorEqualENE
  - param String ugol
- Condition OperatorCompareBoolean
  - param Variable ENDCINPlaying
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Start


## Hint Necropolis Que
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Variable PreQuestDelayTime
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ThePlayer
  - param String unec
  - param String TRIGSTR_093
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_ngol_0003
  - param Variable gg_snd_U02Necromancer39
  - param String TRIGSTR_097
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfTypeIdAll
            - Function GetUnitsOfTypeIdAll
              - param String unpl
      - param Preset OperatorLessEq
      - param String 0
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeHint
      - param String TRIGSTR_543
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfTypeIdAll
            - Function GetUnitsOfTypeIdAll
              - param String unpl
      - param Preset OperatorLessEq
      - param String 0
  - param Function DoNothing
    - Action TriggerSleepAction
      - param Preset RealQueueDelayHint
  - param Function DoNothing
    - Action DoNothing
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Hint Crypt Necropolis Finished
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
- starts off: False
- is custom text: False
- run on map init: False
```description
Sends AI signal.
```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Hint_Crypt_Necropolis_Finished_Que
  - param Preset CheckingIgnoringIgnoring
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructedStructure
        - Function GetConstructedStructure
  - param Preset OperatorEqualENE
  - param String unpl
- Condition OperatorCompareBoolean
  - param Variable ENDCINPlaying
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Finish


## Hint Crypt Necropolis Finished Que
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
- starts off: False
- is custom text: False
- run on map init: False
```description
Sends AI signal.
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
  - param Variable PreQuestDelayTime
- Action QuestItemSetCompletedBJ
  - param Variable ReqNecropolis
  - param Preset CompletionOptionCompleted
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Build_a_Base_Complete
- Action ConditionalTriggerExecute
  - param Variable gg_trg_MAIN_QUEST_UPDATE
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ThePlayer
  - param String unec
  - param String TRIGSTR_173
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_ngol_0003
  - param Variable gg_snd_U02Necromancer40
  - param String TRIGSTR_174
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfTypeIdAll
            - Function GetUnitsOfTypeIdAll
              - param String usep
      - param Preset OperatorLessEq
      - param String 0
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeHint
      - param String TRIGSTR_465
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Function CountUnitsInGroup
        - Function CountUnitsInGroup
          - param Function GetUnitsOfTypeIdAll
            - Function GetUnitsOfTypeIdAll
              - param String usep
      - param Preset OperatorLessEq
      - param String 0
  - param Function DoNothing
    - Action TriggerSleepAction
      - param Preset RealQueueDelayHint
  - param Function DoNothing
    - Action DoNothing
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Hint Graveyard
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Variable gg_trg_Hint_Graveyard_Que
  - param Preset CheckingIgnoringIgnoring
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructingStructure
        - Function GetConstructingStructure
  - param Preset OperatorEqualENE
  - param String usep
- Condition OperatorCompareBoolean
  - param Variable ENDCINPlaying
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Start


## Hint Graveyard Que
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Variable PreQuestDelayTime
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ThePlayer
  - param String unec
  - param String TRIGSTR_152
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_ngol_0003
  - param Variable gg_snd_U02Necromancer41
  - param String TRIGSTR_153
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_136
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Hint Ziggurat
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Variable gg_trg_Hint_Ziggurat_Que
  - param Preset CheckingIgnoringIgnoring
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructingStructure
        - Function GetConstructingStructure
  - param Preset OperatorEqualENE
  - param String ugrv
- Condition OperatorCompareBoolean
  - param Variable ENDCINPlaying
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Start


## Hint Ziggurat Que
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareInteger
          - param Function CountUnitsInGroup
            - Function CountUnitsInGroup
              - param Function GetUnitsOfPlayerAndTypeId
                - Function GetUnitsOfPlayerAndTypeId
                  - param Variable ThePlayer
                  - param String uzig
          - param Preset OperatorLess
          - param String 3
      - param Function 
        - Condition OperatorCompareInteger
          - param Function CountUnitsInGroup
            - Function CountUnitsInGroup
              - param Function GetUnitsOfPlayerAndTypeId
                - Function GetUnitsOfPlayerAndTypeId
                  - param Variable ThePlayer
                  - param String uzg1
          - param Preset OperatorLess
          - param String 3
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeHint
      - param String TRIGSTR_497
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareInteger
          - param Function CountUnitsInGroup
            - Function CountUnitsInGroup
              - param Function GetUnitsOfPlayerAndTypeId
                - Function GetUnitsOfPlayerAndTypeId
                  - param Variable ThePlayer
                  - param String uzig
          - param Preset OperatorLess
          - param String 3
      - param Function 
        - Condition OperatorCompareInteger
          - param Function CountUnitsInGroup
            - Function CountUnitsInGroup
              - param Function GetUnitsOfPlayerAndTypeId
                - Function GetUnitsOfPlayerAndTypeId
                  - param Variable ThePlayer
                  - param String uzg1
          - param Preset OperatorLess
          - param String 3
  - param Function DoNothing
    - Action TriggerSleepAction
      - param String 5.00
  - param Function DoNothing
    - Action DoNothing
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Hint Acolytes Summon
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Variable gg_trg_Hint_Acolytes_Summon_Que
  - param Preset CheckingIgnoringIgnoring
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructingStructure
        - Function GetConstructingStructure
  - param Preset OperatorEqualENE
  - param String unpl
- Condition OperatorCompareBoolean
  - param Variable ENDCINPlaying
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Start


## Hint Acolytes Summon Que
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Variable PreQuestDelayTime
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_147
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Hint Ghouls Crypt Finished
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Variable gg_trg_Hint_Ghouls_Crypt_Finished_Que
  - param Preset CheckingIgnoringIgnoring
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructedStructure
        - Function GetConstructedStructure
  - param Preset OperatorEqualENE
  - param String usep
- Condition OperatorCompareBoolean
  - param Variable ENDCINPlaying
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Finish


## Hint Ghouls Crypt Finished Que
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Variable PreQuestDelayTime
- Action QuestItemSetCompletedBJ
  - param Variable ReqCrypt
  - param Preset CompletionOptionCompleted
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Build_a_Base_Complete
- Action ConditionalTriggerExecute
  - param Variable gg_trg_MAIN_QUEST_UPDATE
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable ThePlayer
  - param String unec
  - param String TRIGSTR_160
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_ngol_0003
  - param Variable gg_snd_U02Necromancer42
  - param String TRIGSTR_161
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_148
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action CommandAI
  - param Preset Player01
  - param String 0
  - param String 0
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Hint Graveyard Finished
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QuestItemSetCompletedBJ
  - param Variable ReqGraveyard
  - param Preset CompletionOptionCompleted
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Build_a_Base_Complete
- Action ConditionalTriggerExecute
  - param Variable gg_trg_MAIN_QUEST_UPDATE
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructedStructure
        - Function GetConstructedStructure
  - param Preset OperatorEqualENE
  - param String ugrv
- Condition OperatorCompareBoolean
  - param Variable ENDCINPlaying
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Finish


## Hint Ziggurat Finish
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructedStructure
        - Function GetConstructedStructure
  - param Preset OperatorEqualENE
  - param String uzig
- Action GroupAddUnitSimple
  - param Function GetConstructedStructure
    - Function GetConstructedStructure
  - param Variable ZigguratGroup
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Hint_Ziggurats_Finished_Finally
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Finish


## Hint Ziggurat Destroyed
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action GroupRemoveUnitSimple
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Variable ZigguratGroup
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetDyingUnit
        - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param String uzig
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Hint Ziggurats Finished Finally
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
      - param Variable ZigguratGroup
  - param Preset OperatorGreaterEq
  - param String 3
- Condition OperatorCompareBoolean
  - param Variable ZigguratsDone
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable ENDCINPlaying
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_Hint_Ziggurat_Finish
- Action DisableTrigger
  - param Variable gg_trg_Hint_Ziggurat_Destroyed
- Action SetVariable
  - param Variable ZigguratsDone
  - param String true
- Action QuestItemSetCompletedBJ
  - param Variable Req3Ziggurats
  - param Preset CompletionOptionCompleted
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Build_a_Base_Complete
- Action ConditionalTriggerExecute
  - param Variable gg_trg_MAIN_QUEST_UPDATE
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest


## Hint Haunted Goldmine Finished
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Variable gg_trg_Lose_Buildings
- Action QueuedTriggerAddBJ
  - param Variable gg_trg_Hint_Haunted_Goldmine_Finished_Que
  - param Preset CheckingIgnoringIgnoring
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructedStructure
        - Function GetConstructedStructure
  - param Preset OperatorEqualENE
  - param String ugol
- Condition OperatorCompareBoolean
  - param Variable ENDCINPlaying
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Finish


## Hint Haunted Goldmine Finished Que
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
- Action QuestItemSetCompletedBJ
  - param Variable ReqHauntGoldmine
  - param Preset CompletionOptionCompleted
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Build_a_Base_Complete
- Action ConditionalTriggerExecute
  - param Variable gg_trg_MAIN_QUEST_UPDATE
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_149
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Build a Base Complete
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
  - param Function IsQuestItemCompleted
    - Function IsQuestItemCompleted
      - param Variable Req3Ziggurats
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsQuestItemCompleted
    - Function IsQuestItemCompleted
      - param Variable ReqCrypt
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsQuestItemCompleted
    - Function IsQuestItemCompleted
      - param Variable ReqGraveyard
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsQuestItemCompleted
    - Function IsQuestItemCompleted
      - param Variable ReqHauntGoldmine
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function IsQuestItemCompleted
    - Function IsQuestItemCompleted
      - param Variable ReqNecropolis
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable ENDCINPlaying
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QuestSetCompletedBJ
  - param Variable BuildBaseQuest
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeCompleted
  - param String TRIGSTR_661
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action ConditionalTriggerExecute
  - param Variable gg_trg_END_CINEMATIC


## Slaughterhouse
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
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
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructedStructure
        - Function GetConstructedStructure
  - param Preset OperatorEqualENE
  - param String uslh
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Finish


## MAIN QUEST UPDATE
- enabled: True
- category: [16] HINTS Build A Base Also AI signals
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function IsQuestCompleted
    - Function IsQuestCompleted
      - param Variable BuildBaseQuest
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestCompleted
        - Function IsQuestCompleted
          - param Variable BuildBaseQuest
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeCompleted
      - param String TRIGSTR_589
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_590
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestItemCompleted
        - Function IsQuestItemCompleted
          - param Variable ReqHauntGoldmine
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeRequirement
      - param String TRIGSTR_604
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeRequirement
      - param String TRIGSTR_605
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestItemCompleted
        - Function IsQuestItemCompleted
          - param Variable ReqNecropolis
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeRequirement
      - param String TRIGSTR_616
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeRequirement
      - param String TRIGSTR_617
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestItemCompleted
        - Function IsQuestItemCompleted
          - param Variable ReqCrypt
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeRequirement
      - param String TRIGSTR_630
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeRequirement
      - param String TRIGSTR_631
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestItemCompleted
        - Function IsQuestItemCompleted
          - param Variable ReqGraveyard
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeRequirement
      - param String TRIGSTR_644
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeRequirement
      - param String TRIGSTR_645
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Function IsQuestItemCompleted
        - Function IsQuestItemCompleted
          - param Variable Req3Ziggurats
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeRequirement
      - param String TRIGSTR_657
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Function GetPlayersAll
        - Function GetPlayersAll
      - param Preset QuestMessageTypeRequirement
      - param String TRIGSTR_658


## Approach Golem
- enabled: True
- category: [9] Golem
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action EnumDestructablesInRectAll
  - param Variable gg_rct_Approach_Golem_Destroy_Trees
  - param Function DoNothing
    - Action KillDestructable
      - param Function GetEnumDestructable
        - Function GetEnumDestructable
- Action TriggerSleepAction
  - param String 0.50
- Action IssuePointOrderLoc
  - param Variable gg_unit_nggr_0142
  - param Preset UnitOrderAttack
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable ThePlayer
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Approach_Golem


## Drop1
- enabled: True
- category: [20] Crates
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateItemLoc
  - param String pman
  - param Function GetDestructableLoc
    - Function GetDestructableLoc
      - param Variable gg_dest_LTcr_1930
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_1930


## Drop2
- enabled: True
- category: [20] Crates
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateItemLoc
  - param String spro
  - param Function GetDestructableLoc
    - Function GetDestructableLoc
      - param Variable gg_dest_LTcr_2256
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_2256


## Drop3
- enabled: True
- category: [20] Crates
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateItemLoc
  - param String phea
  - param Function GetDestructableLoc
    - Function GetDestructableLoc
      - param Variable gg_dest_LTcr_2410
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_2410


## IZZZI Name Me 01 IZZZI
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions


## Name me 01
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action PlaySoundBJ
  - param Variable gg_snd_U01Peasant15A
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC07_0037
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Name_Me_01_House
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 256.00
  - param Variable gg_unit_hC07_0037


## Name me 01 Walk
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC07_0037
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Name_me_01_A
- Event TriggerRegisterTimerEventSingle
  - param String 5


## Name me 01 Walk A
- enabled: True
- category: [30] Villagers Flee
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
  - param Preset PlayerNP
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Name_me_01_A
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC07_0037
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Name_me_01_B


## Name me 01 Walk B
- enabled: True
- category: [30] Villagers Flee
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
  - param Preset PlayerNP
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Name_me_01_B
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC07_0037
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Name_me_01_A


## Name me 01 House
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action UnitRemoveAbilityBJ
  - param String Awan
  - param Variable gg_unit_hC07_0037
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset PlayerNP
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Name_Me_01_House


## IZZZI Name Me 02 IZZZI
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions


## Name me 02
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC10_0057
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Name_Me_02_House
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterUnitInRangeSimple
  - param String 256.00
  - param Variable gg_unit_hC10_0057


## Name me 02 Helping Move
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC10_0057
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Moving_01
- Event TriggerRegisterTimerEventSingle
  - param String 5


## Name me 02 Helping Move 02
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ShowUnitHide
  - param Variable gg_unit_hC10_0057
- Action TriggerSleepAction
  - param String 2
- Action ShowUnitShow
  - param Variable gg_unit_hC10_0057
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC10_0057
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Moving_02
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset PlayerNP
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Moving_01


## Name me 02 Helping Move 03
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action ShowUnitHide
  - param Variable gg_unit_hC10_0057
- Action TriggerSleepAction
  - param String 2
- Action ShowUnitShow
  - param Variable gg_unit_hC10_0057
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC10_0057
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Moving_01
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset PlayerNP
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Moving_02


## Name me 02 House
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset PlayerNP
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Name_Me_02_House


## IZZZI Name Me 03 Girl IZZZI
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions


## Name me 03 Girl
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC11_0060
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Moving_02
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterUnitInRangeSimple
  - param String 256.00
  - param Variable gg_unit_hC11_0060


## Name me 03 Gril House
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param String hC11
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Moving_02


## IZZZI Couple at Inn IZZZI
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions


## Dave Inn Keeper
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC12_0067
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Inn_House
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterUnitInRangeSimple
  - param String 256.00
  - param Variable gg_unit_hC12_0067


## Maye Inn Keeper Wife
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC14_0066
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Inn_House
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterUnitInRangeSimple
  - param String 256.00
  - param Variable gg_unit_hC14_0066


## Inn Keeper House
- enabled: True
- category: [30] Villagers Flee
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
  - param Preset PlayerNP
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Inn_House


## IZZZI Guy by Windmills IZZZI
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions


## Name me 05
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC13_0080
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Inn_House
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterUnitInRangeSimple
  - param String 256.00
  - param Variable gg_unit_hC13_0080


## Name me 05 Walk
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventSingle
  - param String 5
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC13_0080
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Name_me_05_Move_01


## Walk in Circle 01
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 1.00
- Action IssuePointOrderLoc
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Name_me_05_Move_02
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset PlayerNP
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Name_me_05_Move_01


## Walk in Circle 02
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 2
- Action IssuePointOrderLoc
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Name_me_05_Move_03
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset PlayerNP
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Name_me_05_Move_02


## Walk in Circle 03
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 3.00
- Action IssuePointOrderLoc
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Name_me_05_Move_01
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset PlayerNP
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Name_me_05_Move_03


## Name me 05 House
- enabled: True
- category: [30] Villagers Flee
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
  - param Preset PlayerNP
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Barn_House


## IZZZI Guy Fixing Firepit IZZZI
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions


## John
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action PlaySoundBJ
  - param Variable gg_snd_U01Peasant15A
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC08_0050
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Family_House
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 256.00
  - param Variable gg_unit_hC08_0050


## John Work
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerEventSingle
  - param String 5
- Action SetUnitAnimation
  - param Variable gg_unit_hC08_0050
  - param String stand work


## John and Kerry House
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset PlayerNP
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Family_House


## IZZZI Name Me 06 IZZZI
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions


## Name me 06
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action IssuePointOrderLoc
  - param Variable gg_unit_hC15_0083
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Name_me_06_House
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Preset Player03
- Event TriggerRegisterUnitInRangeSimple
  - param String 256.00
  - param Variable gg_unit_hC15_0083


## Name me 06 House
- enabled: True
- category: [30] Villagers Flee
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Preset PlayerNP
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Name_me_06_House


## Next Level Prep
- enabled: True
- category: [29] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action InitGameCacheBJ
  - param String Campaigns.w3v
- Action StoreUnitBJ
  - param Variable Arthas
  - param String Arthas
  - param String Undead03
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SaveGameCacheBJ
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SetMissionAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset MissionIndexU02
- Action SetMissionAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset MissionIndexU03


## Next Level Run
- enabled: True
- category: [29] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetNextLevelBJ
  - param String Maps\Campaign\Undead02Interlude.w3m
- Action CustomVictoryBJ
  - param Variable ThePlayer
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse


## Victory
- enabled: True
- category: [29] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterPlayerEventVictory
  - param Preset Player03
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Prep
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run


## Defeat
- enabled: True
- category: [29] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Variable ThePlayer
  - param String TRIGSTR_456
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player03

