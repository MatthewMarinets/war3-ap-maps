version = TFT

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 18 | Archipelago | False |
| 0 | Initialization | False |
| 5 | Intro Cinematic | False |
| 6 | RevealSecrets | False |
| 15 | Waygate Hints | False |
| 3 | Destructibles | False |
| 13 | Computer Resources | False |
| 4 | Start AI | False |
| 14 | Dragon Hawks | False |
| 8 | Altars | False |
| 9 | Keys | False |
| 1 | Rescue Zeppelins | False |
| 12 | Cap Arthas Experience | False |
| 17 | Hints | False |
| 10 | Gate | False |
| 11 | Sylvanas Dies | False |
| 7 | Victory and Defeat | False |
| 16 | Level Data | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| Arthas | unit | . | UnitNull |
| AAAP_Undead | player | . | Player03 |
| P_HighElves01 | player | . | Player09 |
| Zeppelin01 | unit | . | . |
| Zeppelin02 | unit | . | . |
| AAAPG_Undead | force | . | Force03 |
| InitialGhoulA | unit | . | UnitNull |
| InitialGhoulB | unit | . | UnitNull |
| InitialGhoulC | unit | . | UnitNull |
| InitialGhoulD | unit | . | UnitNull |
| Sylvanas | unit | . | . |
| Bridge01 | destructable | . | DestructableNull |
| QuestKey | quest | . | . |
| QuestKeyRequirementAltars | questitem | . | . |
| QuestKeyRequirementPieces | questitem | . | . |
| Altar01 | unit | . | UnitNull |
| Altar02 | unit | . | UnitNull |
| Altar03 | unit | . | UnitNull |
| Key01 | item | . | ItemNull |
| Key02 | item | . | ItemNull |
| Key03 | item | . | ItemNull |
| Key03Acquired | boolean | . | false |
| Key01Acquired | boolean | . | false |
| Key02Acquired | boolean | . | false |
| Altar01Visibility | fogmodifier | . | . |
| Altar02Visibility | fogmodifier | . | . |
| Altar03Visibility | fogmodifier | . | . |
| NumberOfPiecesFound | integer | . | 0 |
| ElfGate02 | destructable | . | DestructableNull |
| Key2Part | item | . | . |
| Key3Part | item | . | . |
| Altar01Destroyed | boolean | . | false |
| Altar02Destroyed | boolean | . | false |
| Altar03Destroyed | boolean | . | false |
| QuestGate | quest | . | . |
| QuestGateRequirementArthas | questitem | . | . |
| VisibilityGate | fogmodifier | . | . |
| InitialNecromancerA | unit | . | UnitNull |
| InitialNecromancerB | unit | . | UnitNull |
| ElfGate01 | destructable | . | DestructableNull |
| InitialRepairer01 | unit | . | . |
| InitialRepairer02 | unit | . | . |
| InitialBystander01 | unit | . | . |
| InitialBystander02 | unit | . | . |
| InitialArcher01 | unit | . | . |
| InitialArcher02 | unit | . | . |
| InitialArcher03 | unit | . | . |
| InitialFiendA | unit | . | . |
| InitialFiendB | unit | . | . |
| InitialFiendC | unit | . | . |
| FleeingElf01 | unit | . | . |
| FleeingElf02 | unit | . | . |
| FleeingElf03 | unit | . | . |
| P_HighElves02 | player | . | Player10 |
| P_HighElves03 | player | . | Player11 |
| GoblinLaboratory | unit | . | . |
| Golem01 | unit | . | . |
| SpawnGolemSound01 | sound | . | . |
| SpawnGolemSound02 | sound | . | . |
| SpawnSpiderSound01 | sound | . | . |
| SecretSound | sound | . | . |
| SylvanusCinematicRunning | boolean | . | false |
| VictoryCancelled | boolean | . | false |
| EffectDarkSummoning | effect | . | . |
| SylvanusBanshee | unit | . | . |
| SylvanusBansheeCreated | boolean | . | false |
| SpecialEffect01 | effect | . | . |
| IntroCancelled | boolean | . | false |
| VictoryInProgress | boolean | . | false |
| AIAttacking | boolean | . | false |
| SpawnedStartingTroops | boolean | . | false |
| DragonHawk01 | unit | . | . |
| DragonHawk02 | unit | . | . |
| VisibilityLandingSpot | fogmodifier | . | . |
| BridgeSound01 | sound | . | . |
| BridgeSound02 | sound | . | . |
| WaygateHint01 | boolean | . | false |
| WaygateHint02 | boolean | . | false |
| P_HighElves04 | player | . | Player08 |
| GoldMine | integer | . | 0 |
| StartAITimer | timer | . | . |
| P_Reinforcements | player | . | Player06 |
| StarfallFX | effect | . | . |
| GameOver | boolean | . | false |
| CinematicArthas | unit | . | UnitNull |

# Triggers
## fileio
- enabled: True
- category: [18] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## map_config
- enabled: True
- category: [18] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## status
- enabled: True
- category: [18] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## heroes
- enabled: True
- category: [18] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## item_locations
- enabled: True
- category: [18] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## debug
- enabled: True
- category: [18] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## zoom
- enabled: True
- category: [18] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## irregulars
- enabled: True
- category: [18] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## Initialization
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
  - param String Init Variables
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Difficulty_Not_Hard
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Handicap
- Action SetPlayerHandicapXPBJ
  - param Variable AAAP_Undead
  - param String 40.00
- Action SetVariable
  - param Variable Sylvanas
  - param Variable gg_unit_Hvwd_0033
- Action SetVariable
  - param Variable Altar01
  - param Variable gg_unit_halt_0093
- Action SetVariable
  - param Variable Altar02
  - param Variable gg_unit_halt_0094
- Action SetVariable
  - param Variable Altar03
  - param Variable gg_unit_halt_0098
- Action SetVariable
  - param Variable Zeppelin01
  - param Variable gg_unit_nzep_0034
- Action SetVariable
  - param Variable Zeppelin02
  - param Variable gg_unit_nzep_0036
- Action SetVariable
  - param Variable InitialGhoulA
  - param Variable gg_unit_ugho_0043
- Action SetVariable
  - param Variable InitialGhoulB
  - param Variable gg_unit_ugho_0042
- Action SetVariable
  - param Variable InitialGhoulC
  - param Variable gg_unit_ugho_0041
- Action SetVariable
  - param Variable InitialGhoulD
  - param Variable gg_unit_ugho_0040
- Action SetVariable
  - param Variable InitialNecromancerA
  - param Variable gg_unit_unec_0257
- Action SetVariable
  - param Variable InitialNecromancerB
  - param Variable gg_unit_unec_0258
- Action SetVariable
  - param Variable InitialRepairer01
  - param Variable gg_unit_hpea_0162
- Action SetVariable
  - param Variable InitialRepairer02
  - param Variable gg_unit_hpea_0158
- Action SetVariable
  - param Variable InitialBystander02
  - param Variable gg_unit_hpea_0149
- Action SetVariable
  - param Variable InitialArcher01
  - param Variable gg_unit_nhea_0264
- Action SetVariable
  - param Variable InitialArcher02
  - param Variable gg_unit_nhea_0266
- Action SetVariable
  - param Variable InitialArcher03
  - param Variable gg_unit_nhea_0265
- Action SetVariable
  - param Variable FleeingElf01
  - param Variable gg_unit_nhef_0269
- Action SetVariable
  - param Variable FleeingElf02
  - param Variable gg_unit_hpea_0150
- Action SetVariable
  - param Variable FleeingElf03
  - param Variable gg_unit_nhef_0267
- Action SetVariable
  - param Variable GoblinLaboratory
  - param Variable gg_unit_ngad_0047
- Action CommentString
  - param String Init Doodads
- Action SetVariable
  - param Variable Bridge01
  - param Variable gg_dest_LT07_1401
- Action SetVariable
  - param Variable ElfGate01
  - param Variable gg_dest_LTe4_1804
- Action SetVariable
  - param Variable ElfGate02
  - param Variable gg_dest_LTe4_0180
- Action SetDestructableInvulnerableBJ
  - param Variable ElfGate02
  - param Preset InvulnerabilityInvulnerable
- Action CommentString
  - param String Init Sounds
- Action SetVariable
  - param Variable SpawnGolemSound01
  - param Variable gg_snd_AncientUprootDeath1
- Action SetVariable
  - param Variable SpawnGolemSound02
  - param Variable gg_snd_RockGolemYes2
- Action SetVariable
  - param Variable SpawnSpiderSound01
  - param Variable gg_snd_SpiderYesAttack2
- Action SetVariable
  - param Variable SecretSound
  - param Variable gg_snd_SecretFound
- Action SetVariable
  - param Variable BridgeSound01
  - param Variable gg_snd_BuildingDeathLargeHuman
- Action SetVariable
  - param Variable BridgeSound02
  - param Variable gg_snd_BattleShipDeath1
- Action SetSoundPositionLocBJ
  - param Variable BridgeSound01
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BridgeCollapse
  - param String 0
- Action SetSoundPositionLocBJ
  - param Variable BridgeSound02
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BridgeCollapse
  - param String 0
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_GoblinZeppelinReady1
  - param Variable GoblinLaboratory
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 0.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Variable AAAPG_Undead
- Action ClearMapMusicBJ
- Action TriggerSleepAction
  - param String 0.01
- Action SetMapMusicIndexedBJ
  - param Preset MusicFileMusic
  - param String 0
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkVictory
- Action CommentString
  - param String Set Invulnerability
- Action SetUnitInvulnerable
  - param Variable InitialGhoulA
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable InitialGhoulB
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable InitialGhoulC
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable InitialGhoulD
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable InitialNecromancerA
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable InitialNecromancerB
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable Sylvanas
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable FleeingElf01
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable FleeingElf02
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable FleeingElf03
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable InitialRepairer01
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitInvulnerable
  - param Variable InitialRepairer02
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitColor
  - param Variable Sylvanas
  - param Preset Color01
- Action CommentString
  - param String Init Player Properties
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves01
  - param Variable AAAP_Undead
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves01
  - param Variable P_HighElves02
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves01
  - param Variable P_HighElves03
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves01
  - param Variable P_HighElves04
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves01
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves02
  - param Variable AAAP_Undead
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves02
  - param Variable P_HighElves01
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves02
  - param Variable P_HighElves03
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves02
  - param Variable P_HighElves04
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves02
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves03
  - param Variable AAAP_Undead
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves03
  - param Variable P_HighElves01
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves03
  - param Variable P_HighElves02
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves03
  - param Variable P_HighElves04
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves03
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves04
  - param Variable AAAP_Undead
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves04
  - param Variable P_HighElves01
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves04
  - param Variable P_HighElves02
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves04
  - param Variable P_HighElves03
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves04
  - param Preset PlayerNA
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Variable AAAP_Undead
  - param Variable P_HighElves01
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable AAAP_Undead
  - param Variable P_HighElves02
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable AAAP_Undead
  - param Variable P_HighElves03
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable AAAP_Undead
  - param Variable P_HighElves04
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable AAAP_Undead
  - param Variable P_Reinforcements
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Variable P_Reinforcements
  - param Variable AAAP_Undead
  - param Preset AllianceSettingAlliedVision
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable P_HighElves01
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable P_HighElves02
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable P_HighElves03
  - param Preset AllianceSettingAllied
- Action SetPlayerAllianceStateBJ
  - param Preset PlayerNA
  - param Variable P_HighElves04
  - param Preset AllianceSettingAllied
- Action SetPlayerState
  - param Variable AAAP_Undead
  - param Preset PlayerStateGold
  - param String 1000
- Action SetPlayerState
  - param Variable AAAP_Undead
  - param Preset PlayerStateLumber
  - param String 500
- Action SetPlayerState
  - param Variable P_HighElves01
  - param Preset PlayerStateGold
  - param String 5000
- Action SetPlayerState
  - param Variable P_HighElves01
  - param Preset PlayerStateLumber
  - param String 1500
- Action SetPlayerState
  - param Variable P_HighElves02
  - param Preset PlayerStateGold
  - param String 5000
- Action SetPlayerState
  - param Variable P_HighElves02
  - param Preset PlayerStateLumber
  - param String 1500
- Action SetPlayerState
  - param Variable P_HighElves03
  - param Preset PlayerStateGold
  - param String 5000
- Action SetPlayerState
  - param Variable P_HighElves03
  - param Preset PlayerStateLumber
  - param String 1500
- Action SetPlayerColorBJ
  - param Variable P_HighElves01
  - param Preset Color01
  - param Preset PlayerChangeColorChange
- Action SetPlayerColorBJ
  - param Variable P_HighElves02
  - param Preset Color02
  - param Preset PlayerChangeColorChange
- Action SetPlayerColorBJ
  - param Variable P_HighElves03
  - param Preset Color01
  - param Preset PlayerChangeColorChange
- Action SetPlayerColorBJ
  - param Variable P_HighElves04
  - param Preset Color01
  - param Preset PlayerChangeColorChange
- Action SetPlayerColorBJ
  - param Preset Player02
  - param Preset Color01
  - param Preset PlayerChangeColorChange
- Action SetPlayerAllianceBJ
  - param Variable P_HighElves01
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Variable P_HighElves02
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Variable P_HighElves03
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Variable P_HighElves04
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset PlayerNA
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Variable P_HighElves01
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Variable P_HighElves02
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Variable P_HighElves03
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Variable P_HighElves04
- Action SetPlayerAllianceBJ
  - param Preset PlayerNA
  - param Preset AllianceTypeSpells
  - param Preset OnOffOff
  - param Preset Player02
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Variable P_HighElves02
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Variable P_HighElves03
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Variable P_HighElves04
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Preset Player02
- Action SetPlayerOnScoreScreenBJ
  - param Preset ShowHideHide
  - param Variable P_Reinforcements
- Action CommentString
  - param String Init Unit Properties
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Load_Arthas
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Arthas
- Action SetHeroLevel
  - param Variable Sylvanas
  - param String 5
  - param Preset ShowHideHide
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Sylvanas
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
- Action SetRescueUnitColorChangeBJ
  - param Preset ChangeColorTrue
- Action IssuePointOrderLoc
  - param Variable InitialBystander01
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialPatrol01
- Action IssuePointOrderLoc
  - param Variable InitialBystander02
  - param Preset UnitOrderPatrol
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialPatrol02
- Action IssueImmediateOrder
  - param Variable FleeingElf02
  - param Preset UnitOrderStop
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0158
  - param Preset UnitOrderStop
- Action IssueImmediateOrder
  - param Variable gg_unit_hpea_0162
  - param Preset UnitOrderStop
- Action RemoveGuardPosition
  - param Variable gg_unit_nws1_0286
- Action RemoveGuardPosition
  - param Variable gg_unit_nws1_0287
- Action RemoveGuardPosition
  - param Variable gg_unit_nef6_0127
- Action RemoveGuardPosition
  - param Variable gg_unit_nef3_0208
- Action RemoveGuardPosition
  - param Variable gg_unit_nefm_0280
- Action CommentString
  - param String Brown near gate
- Action RemoveGuardPosition
  - param Variable gg_unit_hsor_0272
- Action RemoveGuardPosition
  - param Variable gg_unit_nws1_0204
- Action RemoveGuardPosition
  - param Variable gg_unit_nws1_0203
- Action RemoveGuardPosition
  - param Variable gg_unit_hsor_0169
- Action RemoveGuardPosition
  - param Variable gg_unit_hsor_0248
- Action RemoveGuardPosition
  - param Variable gg_unit_nws1_0206
- Action RemoveGuardPosition
  - param Variable gg_unit_nws1_0205
- Action RemoveGuardPosition
  - param Variable gg_unit_hsor_0271
- Action RemoveGuardPosition
  - param Variable gg_unit_hmpr_0274
- Action CommentString
  - param String Brown on middle island
- Action RemoveGuardPosition
  - param Variable gg_unit_hmpr_0012
- Action RemoveGuardPosition
  - param Variable gg_unit_hsor_0067
- Action RemoveGuardPosition
  - param Variable gg_unit_nws1_0277
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0245
- Action RemoveGuardPosition
  - param Variable gg_unit_hhes_0219
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0242
- Action RemoveGuardPosition
  - param Variable gg_unit_hhes_0123
- Action RemoveGuardPosition
  - param Variable gg_unit_nws1_0278
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0241
- Action RemoveGuardPosition
  - param Variable gg_unit_hmpr_0075
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0077
- Action CommentString
  - param String Init Funky No Pathing Towers
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_PATH_Guard_TowersA
  - param Function DoNothing
    - Action SetUnitPathing
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset PathingOff
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Variable gg_rct_PATH_Guard_TowersB
  - param Function DoNothing
    - Action SetUnitPathing
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset PathingOff
- Action SetUnitPositionLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsInRectAll
        - Function GetUnitsInRectAll
          - param Variable gg_rct_PATH_Guard_TowersA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_PATH_Guard_Tower01A
- Action SetUnitPositionLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsInRectAll
        - Function GetUnitsInRectAll
          - param Variable gg_rct_PATH_Guard_TowersA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_PATH_Guard_Tower02A
- Action SetUnitPositionLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsInRectAll
        - Function GetUnitsInRectAll
          - param Variable gg_rct_PATH_Guard_TowersA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_PATH_Guard_Tower03A
- Action SetUnitPositionLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsInRectAll
        - Function GetUnitsInRectAll
          - param Variable gg_rct_PATH_Guard_TowersB
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_PATH_Guard_Tower01B
- Action SetUnitPositionLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsInRectAll
        - Function GetUnitsInRectAll
          - param Variable gg_rct_PATH_Guard_TowersB
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_PATH_Guard_Tower02B
- Action SetUnitPositionLoc
  - param Function GroupPickRandomUnit
    - Function GroupPickRandomUnit
      - param Function GetUnitsInRectAll
        - Function GetUnitsInRectAll
          - param Variable gg_rct_PATH_Guard_TowersB
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_PATH_Guard_Tower03B
- Action CommentString
  - param String Init Map Settings
- Action SetSkyModel
  - param Preset SkyModelSky03
- Action SetTerrainFogExBJ
  - param String 0
  - param String 2500.00
  - param String 11000.00
  - param String 0
  - param String 0.00
  - param String 50.00
  - param String 30.00
- Action SetTimeOfDay
  - param String 20.00
- Action CommentString
  - param String Init Quests
- Action CreateQuestBJ
  - param Preset QuestTypeReqDiscovered
  - param String TRIGSTR_068
  - param String TRIGSTR_069
  - param String ReplaceableTextures\CommandButtons\BTN3M3.tga
- Action SetVariable
  - param Variable QuestKey
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestKey
  - param String TRIGSTR_070
- Action SetVariable
  - param Variable QuestKeyRequirementAltars
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestItemBJ
  - param Variable QuestKey
  - param String TRIGSTR_071
- Action SetVariable
  - param Variable QuestKeyRequirementPieces
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CreateQuestBJ
  - param Preset QuestTypeReqUndiscovered
  - param String TRIGSTR_119
  - param String TRIGSTR_120
  - param String ReplaceableTextures\CommandButtons\BTNCOP.tga
- Action SetVariable
  - param Variable QuestGate
  - param Function GetLastCreatedQuestBJ
    - Function GetLastCreatedQuestBJ
- Action CreateQuestItemBJ
  - param Variable QuestGate
  - param String TRIGSTR_121
- Action SetVariable
  - param Variable QuestGateRequirementArthas
  - param Function GetLastCreatedQuestItemBJ
    - Function GetLastCreatedQuestItemBJ
- Action CommentString
  - param String Init Triggers
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0266
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0264
- Action RemoveGuardPosition
  - param Variable gg_unit_nhea_0265
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Intro_Cinematic
- Event MapInitializationEvent


##   Load Arthas
- enabled: True
- category: [0] Initialization
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
- Action InitGameCacheBJ
  - param String Campaigns.w3v
- Action RestoreUnitLocFacingAngleBJ
  - param String Arthas
  - param String Undead04
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasStart
  - param String 285.00
- Action SetVariable
  - param Variable Arthas
  - param Function GetLastRestoredUnitBJ
    - Function GetLastRestoredUnitBJ
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
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
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_ArthasStart
  - param String 285.00
- Action SetVariable
  - param Variable Arthas
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action SetHeroLevel
  - param Variable Arthas
  - param String 4
  - param Preset ShowHideHide
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
- Action UnitAddItemByIdSwapped
  - param String ktrm
  - param Variable Arthas
- Action SetItemDroppableBJ
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
  - param Preset DropNoDropOptionNoDrop


## Handicap
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetPlayerHandicapBJ
  - param Variable P_HighElves01
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Variable P_HighElves02
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Variable P_HighElves03
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Variable P_HighElves04
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset Player08
  - param Preset RealHandicapEasy
- Action SetPlayerHandicapBJ
  - param Preset PlayerNA
  - param Preset RealHandicapEasy
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorEqualENE
  - param Preset GameDifficultyEasy


## Difficulty Not Hard
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action RemoveGuardPosition
  - param Variable gg_unit_hhes_0170
- Action RemoveUnit
  - param Variable gg_unit_hhes_0170
- Action RemoveGuardPosition
  - param Variable gg_unit_nws1_0135
- Action RemoveUnit
  - param Variable gg_unit_nws1_0135
- Action RemoveGuardPosition
  - param Variable gg_unit_nheb_0026
- Action RemoveUnit
  - param Variable gg_unit_nheb_0026
- Action RemoveGuardPosition
  - param Variable gg_unit_nheb_0030
- Action RemoveUnit
  - param Variable gg_unit_nheb_0030
- Condition OperatorCompareGameDifficulty
  - param Function GetGameDifficulty
    - Function GetGameDifficulty
  - param Preset OperatorNotEqualENE
  - param Preset GameDifficultyHard


## Intro Cinematic
- enabled: True
- category: [5] Intro Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action SetStackedSoundBJ
  - param Preset AddRemoveAdd
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action SetTerrainFogExBJ
  - param String 0
  - param String 900.00
  - param String 4500.00
  - param String 0
  - param String 0.00
  - param String 40.00
  - param String 60.00
- Action VolumeGroupResetBJ
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CommentString
  - param String Banging On The Gate
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro00
  - param Variable AAAP_Undead
  - param String 0
- Action IssueTargetDestructableOrder
  - param Variable Arthas
  - param Preset UnitOrderAttackDestructible
  - param Variable ElfGate01
- Action TriggerSleepAction
  - param String 1.00
- Action CommentString
  - param String NOW SKIPPABLE
- Action EnableTrigger
  - param Variable gg_trg_IntroCancel
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssuePointOrderLoc
  - param Variable InitialRepairer01
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Repair01
- Action IssuePointOrderLoc
  - param Variable InitialRepairer02
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Repair02
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro01
  - param Variable AAAP_Undead
  - param String 0
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action KillDestructable
  - param Variable ElfGate01
- Action SetUnitInvulnerable
  - param Variable InitialRepairer01
  - param Preset InvulnerabilityVulnerable
- Action SetUnitInvulnerable
  - param Variable InitialRepairer02
  - param Preset InvulnerabilityVulnerable
- Action TriggerSleepAction
  - param String 0.10
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ResetUnitAnimation
  - param Variable InitialRepairer01
- Action ExplodeUnitBJ
  - param Variable InitialRepairer02
- Action SetUnitLifeBJ
  - param Variable InitialRepairer01
  - param String 150.00
- Action SetPlayerAllianceStateBJ
  - param Variable P_HighElves01
  - param Variable AAAP_Undead
  - param Preset AllianceSettingUnallied
- Action SetPlayerAllianceStateBJ
  - param Variable AAAP_Undead
  - param Variable P_HighElves01
  - param Preset AllianceSettingUnallied
- Action TriggerSleepAction
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssueTargetOrder
  - param Variable Arthas
  - param Preset UnitOrderAttackUnit
  - param Variable InitialRepairer01
- Action IssuePointOrderLoc
  - param Variable InitialArcher01
  - param Preset UnitOrderMove
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Arthas
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssueTargetOrder
  - param Variable Arthas
  - param Preset UnitOrderAttackUnit
  - param Variable InitialArcher01
- Action IssueTargetOrder
  - param Variable InitialArcher01
  - param Preset UnitOrderAttackUnit
  - param Variable Arthas
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
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
      - param Variable IntroCancelled
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
      - param Variable gg_rct_Arthas02
- Action IssuePointOrderLoc
  - param Variable InitialGhoulA
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulA02
- Action IssuePointOrderLoc
  - param Variable InitialGhoulB
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulB02
- Action IssuePointOrderLoc
  - param Variable InitialGhoulC
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulC02
- Action IssuePointOrderLoc
  - param Variable InitialGhoulD
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulD02
- Action IssuePointOrderLoc
  - param Variable InitialNecromancerA
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialNecroA02
- Action IssuePointOrderLoc
  - param Variable InitialNecromancerB
  - param Preset UnitOrderAttack
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialNecroB02
- Action CommentString
  - param String Through the Gate
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro02
  - param Variable AAAP_Undead
  - param String 0
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro03
  - param Variable AAAP_Undead
  - param String 6.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action TriggerSleepAction
  - param String 6.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
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
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Undead Advancing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro04
  - param Variable AAAP_Undead
  - param String 0.00
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro05
  - param Variable AAAP_Undead
  - param String 4.00
- Action TriggerSleepAction
  - param String 4.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
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
- Action IssuePointOrderLoc
  - param Variable FleeingElf01
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_FleeingElfDestination
- Action IssuePointOrderLoc
  - param Variable FleeingElf02
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_FleeingElfDestination
- Action IssuePointOrderLoc
  - param Variable FleeingElf03
  - param Preset UnitOrderMove
  - param Function GetRandomLocInRect
    - Function GetRandomLocInRect
      - param Variable gg_rct_FleeingElfDestination
- Action TriggerSleepAction
  - param String 1.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Bridge Scene
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro06
  - param Variable AAAP_Undead
  - param String 0.00
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action IssueImmediateOrder
  - param Variable InitialGhoulA
  - param Preset UnitOrderStop
- Action IssueImmediateOrder
  - param Variable InitialGhoulB
  - param Preset UnitOrderStop
- Action IssueImmediateOrder
  - param Variable InitialGhoulC
  - param Preset UnitOrderStop
- Action IssueImmediateOrder
  - param Variable InitialGhoulD
  - param Preset UnitOrderStop
- Action IssueImmediateOrder
  - param Variable InitialNecromancerA
  - param Preset UnitOrderStop
- Action IssueImmediateOrder
  - param Variable InitialNecromancerB
  - param Preset UnitOrderStop
- Action IssueImmediateOrder
  - param Variable Arthas
  - param Preset UnitOrderStop
- Action SetUnitPositionLoc
  - param Variable InitialGhoulA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulA01
- Action SetUnitPositionLoc
  - param Variable InitialGhoulB
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulB01
- Action SetUnitPositionLoc
  - param Variable InitialGhoulC
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulC01
- Action SetUnitPositionLoc
  - param Variable InitialGhoulD
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulD01
- Action SetUnitPositionLoc
  - param Variable InitialNecromancerA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialNecroA01
- Action SetUnitPositionLoc
  - param Variable InitialNecromancerB
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialNecroB01
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas01
- Action SetUnitFacingToFaceLocTimed
  - param Variable InitialGhoulA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulA02
  - param String 0
- Action SetUnitFacingToFaceLocTimed
  - param Variable InitialGhoulB
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulB02
  - param String 0
- Action SetUnitFacingToFaceLocTimed
  - param Variable InitialGhoulC
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulC02
  - param String 0
- Action SetUnitFacingToFaceLocTimed
  - param Variable InitialGhoulD
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulD02
  - param String 0
- Action SetUnitFacingToFaceLocTimed
  - param Variable InitialNecromancerA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialNecroA02
  - param String 0
- Action SetUnitFacingToFaceLocTimed
  - param Variable InitialNecromancerB
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialNecroB02
  - param String 0
- Action SetUnitFacingToFaceLocTimed
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas02
  - param String 0
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro07
  - param Variable AAAP_Undead
  - param String 6.00
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas02
- Action IssuePointOrderLoc
  - param Variable InitialGhoulA
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulA02
- Action IssuePointOrderLoc
  - param Variable InitialGhoulB
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulB02
- Action IssuePointOrderLoc
  - param Variable InitialGhoulC
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulC02
- Action IssuePointOrderLoc
  - param Variable InitialGhoulD
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulD02
- Action IssuePointOrderLoc
  - param Variable InitialNecromancerA
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialNecroA02
- Action IssuePointOrderLoc
  - param Variable InitialNecromancerB
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialNecroB02
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 0.50
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
      - param Variable IntroCancelled
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
      - param Variable gg_rct_Sylvanas01
- Action SetUnitInvulnerable
  - param Variable FleeingElf02
  - param Preset InvulnerabilityVulnerable
- Action SetUnitLifeBJ
  - param Variable FleeingElf02
  - param String 20.00
- Action IssueTargetOrder
  - param Variable Arthas
  - param Preset UnitOrderDeathCoil
  - param Variable FleeingElf02
- Action TriggerSleepAction
  - param String 3.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Undead
  - param Variable Sylvanas
  - param String TRIGSTR_115
  - param Variable gg_snd_U04ASylvanas03
  - param String TRIGSTR_116
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
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
      - param Variable IntroCancelled
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
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Bridge Scene
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro08
  - param Variable AAAP_Undead
  - param String 0
- Action SetVariable
  - param Variable SpawnedStartingTroops
  - param String true
- Action CreateNUnitsAtLoc
  - param String 1
  - param String umtw
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Meatwagon01
  - param String 135.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte01
  - param String 135.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte02
  - param String 135.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte03
  - param String 135.00
- Action CreateNUnitsAtLoc
  - param String 1
  - param String uaco
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Acolyte04
  - param String 135.00
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Sylvanas
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
- Action SetCineModeVolumeGroupsBJ
- Action TriggerSleepAction
  - param String 0.25
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro09
  - param Variable AAAP_Undead
  - param String 12.00
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action WaitForSoundBJ
  - param Variable gg_snd_U04ASylvanas03
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkAgents
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Undead
  - param Variable Sylvanas
  - param String TRIGSTR_039
  - param Variable gg_snd_U04ASylvanas01
  - param String TRIGSTR_040
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
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
      - param Variable gg_rct_Sylvanas02
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro10
  - param Variable AAAP_Undead
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Undead
  - param Variable Arthas
  - param String TRIGSTR_045
  - param Variable gg_snd_U04AArthas04
  - param String TRIGSTR_046
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro11
  - param Variable AAAP_Undead
  - param String 0
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Undead
  - param Variable Sylvanas
  - param String TRIGSTR_063
  - param Variable gg_snd_U04ASylvanas05
  - param String TRIGSTR_064
  - param Preset AddSetToSub
  - param String 1.00
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro12
  - param Variable AAAP_Undead
  - param String 0
- Action SetUnitAnimation
  - param Variable Sylvanas
  - param String stand victory
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action AddSpecialEffectTargetUnitBJ
  - param String origin
  - param Variable Sylvanas
  - param String Abilities\Spells\nightelf\starfall\starfallcaster.mdl
- Action SetVariable
  - param Variable StarfallFX
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_StarfallCaster1
  - param Variable Sylvanas
- Action PlaySoundBJ
  - param Variable gg_snd_StarfallCaster1
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action KillDestructable
  - param Variable Bridge01
- Action PlaySoundBJ
  - param Variable BridgeSound01
- Action TriggerSleepAction
  - param String 0.25
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action PlaySoundBJ
  - param Variable BridgeSound02
- Action TriggerSleepAction
  - param String 2.75
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_Intro08
  - param Variable AAAP_Undead
  - param String 0
- Action ResetTerrainFogBJ
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Undead
  - param Variable Arthas
  - param String TRIGSTR_065
  - param Variable gg_snd_U04AArthas06
  - param String TRIGSTR_066
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DestroyEffectBJ
  - param Variable StarfallFX
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
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_IntroCancel
- Action CommentString
  - param String End Cinematic
- Action ResetToGameCameraForPlayer
  - param Variable AAAP_Undead
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas01
  - param String 0.00
- Action SetSkyModel
  - param Preset SkyModelNone
- Action CommentString
  - param String Set Unit Facing
- Action SetUnitFacingTimed
  - param Variable InitialGhoulA
  - param String 135.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable InitialGhoulB
  - param String 135.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable InitialGhoulC
  - param String 135.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable InitialGhoulD
  - param String 135.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable InitialNecromancerA
  - param String 135.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable InitialNecromancerB
  - param String 135.00
  - param String 0
- Action CommentString
  - param String Visibility Settings
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Reveal01
  - param String 512
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Reveal02
  - param String 512
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Reveal03
  - param String 512
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Variable AAAPG_Undead
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action RemoveUnit
  - param Variable FleeingElf01
- Action RemoveUnit
  - param Variable FleeingElf02
- Action RemoveUnit
  - param Variable FleeingElf03
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Variable P_HighElves01
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityVulnerable
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Variable P_HighElves02
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityVulnerable
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Variable P_HighElves03
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityVulnerable
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Variable AAAP_Undead
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityVulnerable
- Action SuspendHeroXPBJ
  - param Preset EnableDisableEnable
  - param Variable Arthas
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SylvanasReturnsHome
- Action SetUnitManaPercentBJ
  - param Variable Arthas
  - param String 100
- Action SelectUnitSingle
  - param Variable Arthas
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SpiderEntance
- Action TriggerSleepAction
  - param String 2.00
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_135
- Action TriggerSleepAction
  - param String 0.50
- Action CommentString
  - param String Reveal Visibility Regions
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar01
  - param String 512
- Action SetVariable
  - param Variable Altar01Visibility
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action FogModifierStop
  - param Variable Altar01Visibility
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar01
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar01
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar02
  - param String 512
- Action SetVariable
  - param Variable Altar02Visibility
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action FogModifierStop
  - param Variable Altar02Visibility
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar02
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar02
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar03
  - param String 512
- Action SetVariable
  - param Variable Altar03Visibility
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action FogModifierStop
  - param Variable Altar03Visibility
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar03
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar03
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Start_AI


## IntroCancel
- enabled: True
- category: [5] Intro Cinematic
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Variable IntroCancelled
  - param Preset OperatorEqualENE
  - param String false
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable IntroCancelled
  - param String true
- Action CommentString
  - param String Move Units Into Position
- Action DestroyEffectBJ
  - param Variable StarfallFX
- Action SetUnitPositionLoc
  - param Variable InitialGhoulA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulA02
- Action SetUnitPositionLoc
  - param Variable InitialGhoulB
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulB02
- Action SetUnitPositionLoc
  - param Variable InitialGhoulC
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulC02
- Action SetUnitPositionLoc
  - param Variable InitialGhoulD
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialGhoulD02
- Action SetUnitPositionLoc
  - param Variable InitialNecromancerA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialNecroA02
- Action SetUnitPositionLoc
  - param Variable InitialNecromancerB
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialNecroB02
- Action SetUnitPositionLoc
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas02
- Action SetUnitFacingTimed
  - param Variable Arthas
  - param String 135.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable InitialGhoulA
  - param String 135.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable InitialGhoulB
  - param String 135.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable InitialGhoulC
  - param String 135.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable InitialGhoulD
  - param String 135.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable InitialNecromancerA
  - param String 135.00
  - param String 0
- Action SetUnitFacingTimed
  - param Variable InitialNecromancerB
  - param String 135.00
  - param String 0
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SpawnedStartingTroops
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String umtw
      - param Variable AAAP_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Meatwagon01
      - param String 135.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SpawnedStartingTroops
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String uaco
      - param Variable AAAP_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Acolyte01
      - param String 135.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SpawnedStartingTroops
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String uaco
      - param Variable AAAP_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Acolyte02
      - param String 135.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SpawnedStartingTroops
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String uaco
      - param Variable AAAP_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Acolyte03
      - param String 135.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable SpawnedStartingTroops
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action CreateNUnitsAtLoc
      - param String 1
      - param String uaco
      - param Variable AAAP_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Acolyte04
      - param String 135.00
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitPositionLoc
  - param Variable Sylvanas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Sylvanas02
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
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Variable P_HighElves01
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityVulnerable
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Variable P_HighElves02
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityVulnerable
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Variable P_HighElves03
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityVulnerable
- Action ForGroup
  - param Function GetUnitsInRectOfPlayer
    - Function GetUnitsInRectOfPlayer
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
      - param Variable AAAP_Undead
  - param Function DoNothing
    - Action SetUnitInvulnerable
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param Preset InvulnerabilityVulnerable
- Action RemoveUnit
  - param Variable gg_unit_hpea_0158
- Action RemoveUnit
  - param Variable gg_unit_hpea_0162
- Action RemoveUnit
  - param Variable gg_unit_nhea_0264
- Action RemoveUnit
  - param Variable gg_unit_nhea_0265
- Action RemoveUnit
  - param Variable gg_unit_nhea_0266
- Action RemoveUnit
  - param Variable gg_unit_hpea_0149
- Action RemoveUnit
  - param Variable FleeingElf01
- Action RemoveUnit
  - param Variable FleeingElf02
- Action RemoveUnit
  - param Variable FleeingElf03
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SylvanasReturnsHome
- Action CommentString
  - param String Kill Gate and Bridge
- Action KillDestructable
  - param Variable ElfGate01
- Action KillDestructable
  - param Variable Bridge01
- Action CommentString
  - param String Reset Camera and Environmental Settings
- Action StopSoundBJ
  - param Function GetLastPlayedSound
    - Function GetLastPlayedSound
  - param Preset FadeDontFade
- Action ResetToGameCameraForPlayer
  - param Variable AAAP_Undead
  - param String 0.00
- Action PanCameraToTimedLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Arthas01
  - param String 0.00
- Action SetTerrainFogExBJ
  - param String 0
  - param String 1500.00
  - param String 12000.00
  - param String 0
  - param String 100
  - param String 60.00
  - param String 20.00
- Action CinematicModeBJ
  - param Preset OnOffOff
  - param Variable AAAPG_Undead
- Action UseTimeOfDayBJ
  - param Preset OnOffOn
- Action SetSkyModel
  - param Preset SkyModelNone
- Action SuspendHeroXPBJ
  - param Preset EnableDisableEnable
  - param Variable Arthas
- Action CommentString
  - param String Visibility Settings
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_BridgeCollapse
  - param String 768.00
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Reveal01
  - param String 512
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Reveal02
  - param String 512
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Reveal03
  - param String 512
- Action DestroyFogModifier
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetUnitManaPercentBJ
  - param Variable Arthas
  - param String 100
- Action SelectUnitSingle
  - param Variable Arthas
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeIn
  - param String 2.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action CommentString
  - param String Go Go Power Crypt Fiends Intro
- Action ConditionalTriggerExecute
  - param Variable gg_trg_SpiderEntance
- Action TriggerSleepAction
  - param String 2.00
- Action CommentString
  - param String Quest Settings
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_157
- Action TriggerSleepAction
  - param String 0.50
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar01
  - param String 512
- Action SetVariable
  - param Variable Altar01Visibility
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action FogModifierStop
  - param Variable Altar01Visibility
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar01
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar01
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar02
  - param String 512
- Action SetVariable
  - param Variable Altar02Visibility
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action FogModifierStop
  - param Variable Altar02Visibility
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar02
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar02
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar03
  - param String 512
- Action SetVariable
  - param Variable Altar03Visibility
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action FogModifierStop
  - param Variable Altar03Visibility
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar03
  - param String 7.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar03
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Start_AI
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03


## SpiderEntance
- enabled: True
- category: [5] Intro Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ucry
  - param Variable P_Reinforcements
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialFiendA01
  - param String 135.00
- Action SetVariable
  - param Variable InitialFiendA
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ucry
  - param Variable P_Reinforcements
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialFiendB01
  - param String 135.00
- Action SetVariable
  - param Variable InitialFiendB
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action CreateNUnitsAtLoc
  - param String 1
  - param String ucry
  - param Variable P_Reinforcements
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialFiendC01
  - param String 135.00
- Action SetVariable
  - param Variable InitialFiendC
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action IssuePointOrderLoc
  - param Variable InitialFiendA
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialFiendA02
- Action IssuePointOrderLoc
  - param Variable InitialFiendB
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialFiendB02
- Action IssuePointOrderLoc
  - param Variable InitialFiendC
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialFiendC02


## SpiderArrival
- enabled: True
- category: [5] Intro Cinematic
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
  - param Variable gg_trg_SpiderArrival_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable InitialFiendA
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_InitialFiendA02


## SpiderArrival Queue
- enabled: True
- category: [5] Intro Cinematic
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
- Action SmartCameraPanBJ
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable InitialFiendA
  - param String 0.5
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_InitialFiendB02
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable AAAP_Undead
  - param String ucry
  - param String TRIGSTR_576
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable InitialFiendA
  - param Variable gg_snd_U04BCryptFiend06
  - param String TRIGSTR_577
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action RescueUnitBJ
  - param Variable InitialFiendA
  - param Variable AAAP_Undead
  - param Preset ChangeColorTrue
- Action RescueUnitBJ
  - param Variable InitialFiendB
  - param Variable AAAP_Undead
  - param Preset ChangeColorTrue
- Action RescueUnitBJ
  - param Variable InitialFiendC
  - param Variable AAAP_Undead
  - param Preset ChangeColorTrue
- Action IssueImmediateOrder
  - param Variable InitialFiendA
  - param Preset UnitOrderWebOn
- Action IssueImmediateOrder
  - param Variable InitialFiendB
  - param Preset UnitOrderWebOn
- Action IssueImmediateOrder
  - param Variable InitialFiendC
  - param Preset UnitOrderWebOn
- Action TriggerSleepAction
  - param String 1.00
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeUnitAcquired
  - param String TRIGSTR_578
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## SylvanasCrossesBridge
- enabled: True
- category: [5] Intro Cinematic
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
  - param Variable Sylvanas
  - param Preset UnitOrderStop
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Sylvanas
  - param Variable Arthas
  - param String 0.20
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable Sylvanas
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Sylvanas02


## Repair01
- enabled: True
- category: [5] Intro Cinematic
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
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssueImmediateOrder
  - param Variable InitialRepairer01
  - param Preset UnitOrderStop
- Action SetUnitAnimation
  - param Variable InitialRepairer01
  - param String Stand Work
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable InitialRepairer01
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Repair01


## Repair02
- enabled: True
- category: [5] Intro Cinematic
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
  - param String 0.20
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable IntroCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action IssueImmediateOrder
  - param Variable InitialRepairer02
  - param Preset UnitOrderStop
- Action SetUnitAnimation
  - param Variable InitialRepairer02
  - param String Stand Work
- Condition OperatorCompareUnit
  - param Function GetEnteringUnit
    - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable InitialRepairer02
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Repair02


## SylvanasReturnsHome
- enabled: True
- category: [5] Intro Cinematic
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action ResetUnitAnimation
  - param Variable Sylvanas
- Action IssuePointOrderLoc
  - param Variable Sylvanas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SylvanasHome


## RevealSecret01
- enabled: True
- category: [6] RevealSecrets
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_hhes_0021
  - param Variable AAAP_Undead
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable gg_unit_hhes_0037
  - param Variable AAAP_Undead
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SpawnGolem01
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_SpawnGolem01
  - param String 1.00
- Action SetSoundPositionLocBJ
  - param Variable SecretSound
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Secret01
  - param String 0
- Action PlaySoundBJ
  - param Variable SecretSound
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_RevealSecret01A
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_RevealSecret01B
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_RevealSecret01A
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_RevealSecret01B


## WaygateHint01A
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Condition OperatorCompareBoolean
  - param Variable WaygateHint01
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nwgt_0005
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable WaygateHint01
  - param String true
- Action DisableTrigger
  - param Variable gg_trg_WaygateHint02A
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_011


## WaygateHint01B
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Condition OperatorCompareBoolean
  - param Variable WaygateHint01
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nwgt_0110
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable WaygateHint01
  - param String true
- Action DisableTrigger
  - param Variable gg_trg_WaygateHint02B
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_018


## WaygateHint01C
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Condition OperatorCompareBoolean
  - param Variable WaygateHint01
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nwgt_0108
- Action SetVariable
  - param Variable WaygateHint01
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_WaygateHint02C
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_019


## WaygateHint01D
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Condition OperatorCompareBoolean
  - param Variable WaygateHint01
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nwgt_0019
- Action SetVariable
  - param Variable WaygateHint01
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_WaygateHint02D
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_020


## WaygateHint01E
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Condition OperatorCompareBoolean
  - param Variable WaygateHint01
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nwgt_0109
- Action SetVariable
  - param Variable WaygateHint01
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_WaygateHint02E
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_021


## WaygateHint01F
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Condition OperatorCompareBoolean
  - param Variable WaygateHint01
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nwgt_0038
- Action SetVariable
  - param Variable WaygateHint01
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action DisableTrigger
  - param Variable gg_trg_WaygateHint02F
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_022


## 2
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions


## WaygateHint02A
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Condition OperatorCompareBoolean
  - param Variable WaygateHint01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable WaygateHint02
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nwgt_0005
- Action SetVariable
  - param Variable WaygateHint02
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_016


## WaygateHint02B
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Condition OperatorCompareBoolean
  - param Variable WaygateHint01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable WaygateHint02
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nwgt_0110
- Action SetVariable
  - param Variable WaygateHint02
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_023


## WaygateHint02C
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Condition OperatorCompareBoolean
  - param Variable WaygateHint01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable WaygateHint02
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nwgt_0108
- Action SetVariable
  - param Variable WaygateHint02
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_024


## WaygateHint02D
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Condition OperatorCompareBoolean
  - param Variable WaygateHint01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable WaygateHint02
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nwgt_0019
- Action SetVariable
  - param Variable WaygateHint02
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_025


## WaygateHint02E
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Condition OperatorCompareBoolean
  - param Variable WaygateHint01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable WaygateHint02
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nwgt_0109
- Action SetVariable
  - param Variable WaygateHint02
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_026


## WaygateHint02F
- enabled: True
- category: [15] Waygate Hints
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Condition OperatorCompareBoolean
  - param Variable WaygateHint01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable WaygateHint02
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nwgt_0038
- Action SetVariable
  - param Variable WaygateHint02
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param String 1
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_027


## Crate01
- enabled: True
- category: [3] Destructibles
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
- Action CreateItemLoc
  - param String sman
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Crate01
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_1605


## Crate02
- enabled: True
- category: [3] Destructibles
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
  - param String 0.10
- Action CreateNUnitsAtLoc
  - param String 1
  - param String nrat
  - param Preset PlayerNA
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Crate02
  - param String 225.00
- Action AttachSoundToUnitBJ
  - param Variable SpawnSpiderSound01
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action PlaySoundBJ
  - param Variable SpawnSpiderSound01
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Function GetLastCreatedUnit
        - Function GetLastCreatedUnit
  - param String 1.00
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_2722


## Crate03
- enabled: True
- category: [3] Destructibles
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
- Action CreateItemLoc
  - param String pghe
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Crate03
- Event TriggerRegisterDeathEvent
  - param Variable gg_dest_LTcr_1369


## LightBlueGold
- enabled: True
- category: [13] Computer Resources
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
  - param Preset LimitOpLessThan
  - param String 1000


## LightBlueLumber
- enabled: True
- category: [13] Computer Resources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 300
  - param Preset Player09
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player09
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThan
  - param String 300.00


## DarkGreenGold
- enabled: True
- category: [13] Computer Resources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 1000
  - param Preset Player10
  - param Preset PlayerStateGold
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player10
  - param Preset PlayerStateGold
  - param Preset LimitOpLessThan
  - param String 1000


## DarkGreenLumber
- enabled: True
- category: [13] Computer Resources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 300
  - param Preset Player10
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player10
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThan
  - param String 300.00


## BrownGold
- enabled: True
- category: [13] Computer Resources
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
- category: [13] Computer Resources
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action AdjustPlayerStateBJ
  - param String 300
  - param Preset Player11
  - param Preset PlayerStateLumber
- Event TriggerRegisterPlayerStateEvent
  - param Preset Player11
  - param Preset PlayerStateLumber
  - param Preset LimitOpLessThan
  - param String 300.00


## Start AI
- enabled: True
- category: [4] Start AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action StartCampaignAI
  - param Variable P_HighElves01
  - param String u04_lightblue.ai
- Action StartCampaignAI
  - param Variable P_HighElves02
  - param String u04_darkgreen.ai
- Action StartCampaignAI
  - param Variable P_HighElves03
  - param String u04_brown.ai
- Action StartTimerBJ
  - param Variable StartAITimer
  - param Preset PeriodicOptionOneTime
  - param String 240.00


## Begin Attack Waves
- enabled: True
- category: [4] Start AI
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
  - param Variable gg_trg_Begin_Attack_Waves_Timer_Safety
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Finish
- Condition OperatorCompareBoolean
  - param Variable AIAttacking
  - param Preset OperatorEqualENE
  - param String false
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetConstructedStructure
        - Function GetConstructedStructure
  - param Preset OperatorEqualENE
  - param String ugol


## Begin Attack Waves Timer Safety
- enabled: True
- category: [4] Start AI
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Event TriggerRegisterTimerExpireEventBJ
  - param Variable StartAITimer
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SetVariable
  - param Variable AIAttacking
  - param String true
- Action CommandAI
  - param Preset Player10
  - param String 0
  - param String 0
- Action CommandAI
  - param Preset Player09
  - param String 0
  - param String 0
- Action EnableTrigger
  - param Variable gg_trg_Unsummon_QUE


## Dragon Hawk Hint
- enabled: True
- category: [14] Dragon Hawks
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
  - param Variable gg_trg_Dragon_Hawk_Hint_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nws1_0286
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_nws1_0287


## Dragon Hawk Hint Queue
- enabled: True
- category: [14] Dragon Hawks
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
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nws1_0286
  - param String 5.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_nws1_0286
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitTypeWithNameBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Variable AAAP_Undead
  - param String unec
  - param String TRIGSTR_517
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_unec_0257
  - param Variable gg_snd_U04BNecromancer08
  - param String TRIGSTR_518
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Undead
  - param Variable Arthas
  - param String TRIGSTR_515
  - param Variable gg_snd_U04BArthas09
  - param String TRIGSTR_516
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Action ForGroup
  - param Function GetUnitsOfPlayerAndTypeId
    - Function GetUnitsOfPlayerAndTypeId
      - param Variable AAAP_Undead
      - param String ucry
  - param Function DoNothing
    - Action UnitAddIndicatorBJ
      - param Function GetEnumUnit
        - Function GetEnumUnit
      - param String 100
      - param String 100
      - param String 100
      - param String 0
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Kill Altar01
- enabled: True
- category: [8] Altars
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
  - param String 0.20
- Action CreateItemLoc
  - param String k3m1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar01
- Action SetVariable
  - param Variable Key01
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
- Action SetVariable
  - param Variable Altar01Destroyed
  - param String true
- Action SetItemInvulnerableBJ
  - param Variable Key01
  - param Preset InvulnerabilityInvulnerable
- Action SetItemDroppableBJ
  - param Variable Key01
  - param Preset DropNoDropOptionNoDrop
- Action ConditionalTriggerExecute
  - param Variable gg_trg_All_Altars_have_been_destroyed
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Mooncrystal01Hint
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable Altar01
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player09
  - param Preset PlayerUnitEventDeath


## Kill Altar02
- enabled: True
- category: [8] Altars
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
  - param String 0.20
- Action CreateItemLoc
  - param String k3m1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar02
- Action SetVariable
  - param Variable Key02
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
- Action SetVariable
  - param Variable Altar02Destroyed
  - param String true
- Action SetItemInvulnerableBJ
  - param Variable Key02
  - param Preset InvulnerabilityInvulnerable
- Action SetItemDroppableBJ
  - param Variable Key02
  - param Preset DropNoDropOptionNoDrop
- Action ConditionalTriggerExecute
  - param Variable gg_trg_All_Altars_have_been_destroyed
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable Altar02
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player10
  - param Preset PlayerUnitEventDeath


## Kill Altar03
- enabled: True
- category: [8] Altars
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
  - param String 0.20
- Action CreateItemLoc
  - param String k3m1
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar03
- Action SetVariable
  - param Variable Key03
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
- Action SetVariable
  - param Variable Altar03Destroyed
  - param String true
- Action SetItemInvulnerableBJ
  - param Variable Key03
  - param Preset InvulnerabilityInvulnerable
- Action SetItemDroppableBJ
  - param Variable Key03
  - param Preset DropNoDropOptionNoDrop
- Action ConditionalTriggerExecute
  - param Variable gg_trg_All_Altars_have_been_destroyed
- Condition OperatorCompareUnit
  - param Function GetDyingUnit
    - Function GetDyingUnit
  - param Preset OperatorEqualENE
  - param Variable Altar03
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player11
  - param Preset PlayerUnitEventDeath


## All Altars have been destroyed
- enabled: True
- category: [8] Altars
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action QuestItemSetCompletedBJ
  - param Variable QuestKeyRequirementAltars
  - param Preset CompletionOptionCompleted
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeUpdated
  - param String TRIGSTR_014
- Condition OperatorCompareBoolean
  - param Variable Altar01Destroyed
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable Altar02Destroyed
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable Altar03Destroyed
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false


## Key01 Acquired
- enabled: True
- category: [9] Keys
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
  - param Variable NumberOfPiecesFound
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable NumberOfPiecesFound
      - param Preset OperatorAdd
      - param String 1
- Action SetVariable
  - param Variable Key01Acquired
  - param String true
- Action TriggerSleepAction
  - param String 0.01
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key01_and_Key02_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key01_and_Key03_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key02_and_Key03_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key01_and_Key2Part_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key02_and_Key2Part_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key03_and_Key2Part_Acquired
- Action TriggerSleepAction
  - param String 2
- Action SetSpeechVolumeGroupsBJ
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar01
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar01
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action TransmissionFromUnitTypeWithNameBJ
      - param Variable AAAPG_Undead
      - param Variable AAAP_Undead
      - param String uktg
      - param String TRIGSTR_081
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar01
      - param Variable gg_snd_U04AKelThuzad10
      - param String TRIGSTR_082
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 2
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Variable AAAPG_Undead
      - param Variable Arthas
      - param String TRIGSTR_092
      - param Variable gg_snd_U04AArthas13
      - param String TRIGSTR_093
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 3
  - param Function DoNothing
    - Action TransmissionFromUnitTypeWithNameBJ
      - param Variable AAAPG_Undead
      - param Variable AAAP_Undead
      - param String uktg
      - param String TRIGSTR_455
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar01
      - param Variable gg_snd_U04AKelThuzad15
      - param String TRIGSTR_456
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key02Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Variable AAAPG_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar02
      - param String 7.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key02Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Variable AAAP_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar02
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key03Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Variable AAAPG_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar03
      - param String 7.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key03Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Variable AAAP_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar03
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Variable AAAPG_Undead
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_530
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 2
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Variable AAAPG_Undead
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_535
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 3
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Variable AAAPG_Undead
      - param Preset QuestMessageTypeCompleted
      - param String TRIGSTR_540
  - param Function DoNothing
    - Action DoNothing
- Action DestroyFogModifier
  - param Variable Altar01Visibility
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Reveal_Gate_Quest
- Condition OperatorCompareItem
  - param Variable Key01
  - param Preset OperatorEqualENE
  - param Function GetManipulatedItem
    - Function GetManipulatedItem
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventHeroPickUpItem


## Key02 Acquired
- enabled: True
- category: [9] Keys
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
  - param Variable NumberOfPiecesFound
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable NumberOfPiecesFound
      - param Preset OperatorAdd
      - param String 1
- Action SetVariable
  - param Variable Key02Acquired
  - param String true
- Action TriggerSleepAction
  - param String 0.01
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key01_and_Key02_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key01_and_Key03_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key02_and_Key03_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key01_and_Key2Part_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key02_and_Key2Part_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key03_and_Key2Part_Acquired
- Action TriggerSleepAction
  - param String 2
- Action SetSpeechVolumeGroupsBJ
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar02
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar02
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action TransmissionFromUnitTypeWithNameBJ
      - param Variable AAAPG_Undead
      - param Variable AAAP_Undead
      - param String uktg
      - param String TRIGSTR_146
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar02
      - param Variable gg_snd_U04AKelThuzad10
      - param String TRIGSTR_148
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 2
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Variable AAAPG_Undead
      - param Variable Arthas
      - param String TRIGSTR_113
      - param Variable gg_snd_U04AArthas13
      - param String TRIGSTR_114
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 3
  - param Function DoNothing
    - Action TransmissionFromUnitTypeWithNameBJ
      - param Variable AAAPG_Undead
      - param Variable AAAP_Undead
      - param String uktg
      - param String TRIGSTR_161
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar02
      - param Variable gg_snd_U04AKelThuzad15
      - param String TRIGSTR_162
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key01Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Variable AAAPG_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar01
      - param String 7.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key01Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Variable AAAP_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar01
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key03Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Variable AAAPG_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar03
      - param String 7.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key03Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Variable AAAP_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar03
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Variable AAAPG_Undead
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_550
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 2
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Variable AAAPG_Undead
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_555
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 3
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Variable AAAPG_Undead
      - param Preset QuestMessageTypeCompleted
      - param String TRIGSTR_560
  - param Function DoNothing
    - Action DoNothing
- Action DestroyFogModifier
  - param Variable Altar02Visibility
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Reveal_Gate_Quest
- Condition OperatorCompareItem
  - param Variable Key02
  - param Preset OperatorEqualENE
  - param Function GetManipulatedItem
    - Function GetManipulatedItem
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventHeroPickUpItem


## Key03 Acquired
- enabled: True
- category: [9] Keys
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
  - param Variable NumberOfPiecesFound
  - param Function OperatorInt
    - Function OperatorInt
      - param Variable NumberOfPiecesFound
      - param Preset OperatorAdd
      - param String 1
- Action SetVariable
  - param Variable Key03Acquired
  - param String true
- Action TriggerSleepAction
  - param String 0.01
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key01_and_Key02_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key01_and_Key03_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key02_and_Key03_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key01_and_Key2Part_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key02_and_Key2Part_Acquired
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Key03_and_Key2Part_Acquired
- Action TriggerSleepAction
  - param String 2
- Action SetSpeechVolumeGroupsBJ
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar03
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar03
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action TransmissionFromUnitTypeWithNameBJ
      - param Variable AAAPG_Undead
      - param Variable AAAP_Undead
      - param String uktg
      - param String TRIGSTR_182
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar03
      - param Variable gg_snd_U04AKelThuzad10
      - param String TRIGSTR_183
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 2
  - param Function DoNothing
    - Action TransmissionFromUnitWithNameBJ
      - param Variable AAAPG_Undead
      - param Variable Arthas
      - param String TRIGSTR_172
      - param Variable gg_snd_U04AArthas13
      - param String TRIGSTR_173
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 3
  - param Function DoNothing
    - Action TransmissionFromUnitTypeWithNameBJ
      - param Variable AAAPG_Undead
      - param Variable AAAP_Undead
      - param String uktg
      - param String TRIGSTR_192
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar03
      - param Variable gg_snd_U04AKelThuzad15
      - param String TRIGSTR_193
      - param Preset AddSetToAdd
      - param String 0
      - param Preset WaitDontWait
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key01Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Variable AAAPG_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar01
      - param String 7.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key01Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Variable AAAP_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar01
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key02Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action PingMinimapLocForForce
      - param Variable AAAPG_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar02
      - param String 7.00
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key02Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function DoNothing
    - Action SetCameraQuickPositionLocForPlayer
      - param Variable AAAP_Undead
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_Altar02
  - param Function DoNothing
    - Action DoNothing
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 1
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Variable AAAPG_Undead
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_565
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 2
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Variable AAAPG_Undead
      - param Preset QuestMessageTypeUpdated
      - param String TRIGSTR_570
  - param Function DoNothing
    - Action DoNothing
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 3
  - param Function DoNothing
    - Action QuestMessageBJ
      - param Variable AAAPG_Undead
      - param Preset QuestMessageTypeCompleted
      - param String TRIGSTR_575
  - param Function DoNothing
    - Action DoNothing
- Action DestroyFogModifier
  - param Variable Altar03Visibility
- Action ConditionalTriggerExecute
  - param Variable gg_trg___Reveal_Gate_Quest
- Condition OperatorCompareItem
  - param Variable Key03
  - param Preset OperatorEqualENE
  - param Function GetManipulatedItem
    - Function GetManipulatedItem
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventHeroPickUpItem


##   Reveal Gate Quest
- enabled: True
- category: [9] Keys
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action QuestSetCompletedBJ
  - param Variable QuestKey
  - param Preset CompletionOptionCompleted
- Action QuestItemSetCompletedBJ
  - param Variable QuestKeyRequirementPieces
  - param Preset CompletionOptionCompleted
- Action QuestSetDiscoveredBJ
  - param Variable QuestGate
  - param Preset DiscoveredOptionDiscovered
- Action FlashQuestDialogButtonBJ
- Action TriggerSleepAction
  - param String 7.00
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetDestructableLoc
    - Function GetDestructableLoc
      - param Variable ElfGate02
  - param String 512
- Action SetVariable
  - param Variable VisibilityGate
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetDestructableLoc
    - Function GetDestructableLoc
      - param Variable ElfGate02
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetDestructableLoc
    - Function GetDestructableLoc
      - param Variable ElfGate02
  - param String 7.00
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeDiscovered
  - param String TRIGSTR_118
- Condition OperatorCompareInteger
  - param Variable NumberOfPiecesFound
  - param Preset OperatorEqual
  - param String 3
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false


##   Key01 and Key02 Acquired
- enabled: True
- category: [9] Keys
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function UnitHasItem
    - Function UnitHasItem
      - param Variable Arthas
      - param Variable Key01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function UnitHasItem
    - Function UnitHasItem
      - param Variable Arthas
      - param Variable Key02
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action RemoveItem
  - param Variable Key01
- Action RemoveItem
  - param Variable Key02
- Action UnitAddItemByIdSwapped
  - param String k3m2
  - param Variable Arthas
- Action SetVariable
  - param Variable Key2Part
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
- Action SetItemDroppableBJ
  - param Variable Key2Part
  - param Preset DropNoDropOptionNoDrop


##   Key01 and Key03 Acquired
- enabled: True
- category: [9] Keys
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function UnitHasItem
    - Function UnitHasItem
      - param Variable Arthas
      - param Variable Key01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function UnitHasItem
    - Function UnitHasItem
      - param Variable Arthas
      - param Variable Key03
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action RemoveItem
  - param Variable Key01
- Action RemoveItem
  - param Variable Key03
- Action UnitAddItemByIdSwapped
  - param String k3m2
  - param Variable Arthas
- Action SetVariable
  - param Variable Key2Part
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
- Action SetItemDroppableBJ
  - param Variable Key2Part
  - param Preset DropNoDropOptionNoDrop


##   Key02 and Key03 Acquired
- enabled: True
- category: [9] Keys
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function UnitHasItem
    - Function UnitHasItem
      - param Variable Arthas
      - param Variable Key02
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function UnitHasItem
    - Function UnitHasItem
      - param Variable Arthas
      - param Variable Key03
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action RemoveItem
  - param Variable Key02
- Action RemoveItem
  - param Variable Key03
- Action UnitAddItemByIdSwapped
  - param String k3m2
  - param Variable Arthas
- Action SetVariable
  - param Variable Key2Part
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
- Action SetItemDroppableBJ
  - param Variable Key2Part
  - param Preset DropNoDropOptionNoDrop


##   Key01 and Key2Part Acquired
- enabled: True
- category: [9] Keys
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function UnitHasItem
    - Function UnitHasItem
      - param Variable Arthas
      - param Variable Key01
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function UnitHasItem
    - Function UnitHasItem
      - param Variable Arthas
      - param Variable Key2Part
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action RemoveItem
  - param Variable Key01
- Action RemoveItem
  - param Variable Key2Part
- Action UnitAddItemByIdSwapped
  - param String k3m3
  - param Variable Arthas
- Action SetVariable
  - param Variable Key3Part
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
- Action SetItemDroppableBJ
  - param Variable Key3Part
  - param Preset DropNoDropOptionNoDrop


##   Key02 and Key2Part Acquired
- enabled: True
- category: [9] Keys
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function UnitHasItem
    - Function UnitHasItem
      - param Variable Arthas
      - param Variable Key02
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function UnitHasItem
    - Function UnitHasItem
      - param Variable Arthas
      - param Variable Key2Part
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action RemoveItem
  - param Variable Key02
- Action RemoveItem
  - param Variable Key2Part
- Action UnitAddItemByIdSwapped
  - param String k3m3
  - param Variable Arthas
- Action SetVariable
  - param Variable Key3Part
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
- Action SetItemDroppableBJ
  - param Variable Key3Part
  - param Preset DropNoDropOptionNoDrop


##   Key03 and Key2Part Acquired
- enabled: True
- category: [9] Keys
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Condition OperatorCompareBoolean
  - param Function UnitHasItem
    - Function UnitHasItem
      - param Variable Arthas
      - param Variable Key03
  - param Preset OperatorEqualENE
  - param String true
- Condition OperatorCompareBoolean
  - param Function UnitHasItem
    - Function UnitHasItem
      - param Variable Arthas
      - param Variable Key2Part
  - param Preset OperatorEqualENE
  - param String true
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action RemoveItem
  - param Variable Key03
- Action RemoveItem
  - param Variable Key2Part
- Action UnitAddItemByIdSwapped
  - param String k3m3
  - param Variable Arthas
- Action SetVariable
  - param Variable Key3Part
  - param Function GetLastCreatedItem
    - Function GetLastCreatedItem
- Action SetItemDroppableBJ
  - param Variable Key3Part
  - param Preset DropNoDropOptionNoDrop


## Rescue Zeppelins
- enabled: True
- category: [1] Rescue Zeppelins
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
  - param Variable gg_trg_Rescue_Zeppelins_Queue
  - param Preset CheckingIgnoringChecking
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetTriggerUnit
        - Function GetTriggerUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Event TriggerRegisterUnitInRangeSimple
  - param String 512.00
  - param Variable gg_unit_ngad_0047


## Rescue Zeppelins Queue
- enabled: True
- category: [1] Rescue Zeppelins
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
- Action RescueUnitBJ
  - param Variable Zeppelin01
  - param Variable AAAP_Undead
  - param Preset ChangeColorTrue
- Action RescueUnitBJ
  - param Variable Zeppelin02
  - param Variable AAAP_Undead
  - param Preset ChangeColorTrue
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_447
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GoblinLaboratory
  - param String 5.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_GoblinLaboratory
- Action PlaySoundBJ
  - param Variable gg_snd_GoblinZeppelinReady1
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionShare
  - param Variable GoblinLaboratory
  - param Variable AAAP_Undead
- Action UnitShareVisionBJ
  - param Preset ShareDontOptionDont
  - param Variable GoblinLaboratory
  - param Variable AAAP_Undead
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeHint
  - param String TRIGSTR_448
- Action PingMinimapLocForForce
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RevealLandingSpot
  - param String 5.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RevealLandingSpot
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Variable AAAP_Undead
  - param Preset FogStateVisible
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_RevealLandingSpot
  - param String 512
- Action SetVariable
  - param Variable VisibilityLandingSpot
  - param Function GetLastCreatedFogModifier
    - Function GetLastCreatedFogModifier
- Action TriggerSleepAction
  - param Preset RealQueueDelayQuest
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## DisableVisibility
- enabled: True
- category: [1] Rescue Zeppelins
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
  - param String 1.00
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_RevealLandingSpot
- Action PlaySoundBJ
  - param Variable gg_snd_GoodJob
- Action TriggerSleepAction
  - param String 1.00
- Action FogModifierStop
  - param Variable VisibilityLandingSpot
- Condition OperatorComparePlayer
  - param Function GetOwningPlayer
    - Function GetOwningPlayer
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorEqualENE
  - param Variable AAAP_Undead
- Condition OperatorCompareUnitCode
  - param Function GetUnitTypeId
    - Function GetUnitTypeId
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
  - param Preset OperatorNotEqualENE
  - param String nzep
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_RevealLandingSpot


## Cap Arthas Experience
- enabled: True
- category: [12] Cap Arthas Experience
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Arthas
- Condition OperatorCompareInteger
  - param Function GetHeroLevel
    - Function GetHeroLevel
      - param Variable Arthas
  - param Preset OperatorGreaterEq
  - param String 5
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventHero_Level


## Unsummon Hint
- enabled: True
- category: [17] Hints
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
  - param String TRIGSTR_043
- Action TriggerSleepAction
  - param Preset RealQueueDelayHint
- Action QueuedTriggerRemoveBJ
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger


## Unsummon QUE
- enabled: True
- category: [17] Hints
- starts off: True
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


## Mooncrystal01Hint
- enabled: True
- category: [17] Hints
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
  - param String 30.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key01Acquired
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeAlwaysHint
  - param String TRIGSTR_508
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar01
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar01
  - param String 1.00


## Mooncrystal02Hint
- enabled: True
- category: [17] Hints
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
  - param String 30.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key02Acquired
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeAlwaysHint
  - param String TRIGSTR_509
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar02
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar02
  - param String 1.00


## Mooncrystal03Hint
- enabled: True
- category: [17] Hints
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
  - param String 30.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key03Acquired
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeAlwaysHint
  - param String TRIGSTR_510
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar03
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar03
  - param String 1.00


## Insufficient Keys
- enabled: True
- category: [10] Gate
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action PanCameraToTimedLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gate_Region
  - param String 1.00
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gate_Region
  - param String 4.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gate_Region
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Undead
  - param Variable Arthas
  - param String TRIGSTR_436
  - param Variable gg_snd_U04AArthas16
  - param String TRIGSTR_437
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action TransmissionFromUnitTypeWithNameBJ
  - param Variable AAAPG_Undead
  - param Variable AAAP_Undead
  - param String uktg
  - param String TRIGSTR_438
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gate_Region
  - param Variable gg_snd_U04AKelThuzad17
  - param String TRIGSTR_439
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action VolumeGroupResetBJ
- Condition GetBooleanAnd
  - param Function 
    - Condition OperatorCompareUnit
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Preset OperatorEqualENE
      - param Variable Arthas
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorLessEq
      - param String 2
- Condition GetBooleanOr
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key01Acquired
      - param Preset OperatorEqualENE
      - param String true
  - param Function 
    - Condition GetBooleanOr
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable Key02Acquired
          - param Preset OperatorEqualENE
          - param String true
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable Key03Acquired
          - param Preset OperatorEqualENE
          - param String true
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Gate_Region


## No Keys Hint
- enabled: True
- category: [10] Gate
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action DisableTrigger
  - param Function GetTriggeringTrigger
    - Function GetTriggeringTrigger
- Action PanCameraToTimedLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gate_Region
  - param String 1.00
- Action PingMinimapLocForForce
  - param Variable AAAPG_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gate_Region
  - param String 4.00
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gate_Region
- Action QuestMessageBJ
  - param Function GetPlayersAll
    - Function GetPlayersAll
  - param Preset QuestMessageTypeAlwaysHint
  - param String TRIGSTR_526
- Condition GetBooleanAnd
  - param Function 
    - Condition OperatorCompareUnit
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Preset OperatorEqualENE
      - param Variable Arthas
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorLessEq
      - param String 2
- Condition GetBooleanAnd
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable Key01Acquired
      - param Preset OperatorEqualENE
      - param String false
  - param Function 
    - Condition GetBooleanAnd
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable Key02Acquired
          - param Preset OperatorEqualENE
          - param String false
      - param Function 
        - Condition OperatorCompareBoolean
          - param Variable Key03Acquired
          - param Preset OperatorEqualENE
          - param String false
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Gate_Region


## Revive Sylvanas
- enabled: False
- category: [11] Sylvanas Dies
- starts off: True
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action TriggerSleepAction
  - param String 30.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryInProgress
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action ReviveHeroLoc
  - param Variable Sylvanas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gate_Region
  - param Preset ShowHideShow
- Condition OperatorCompareUnit
  - param Variable Sylvanas
  - param Preset OperatorEqualENE
  - param Function GetDyingUnit
    - Function GetDyingUnit
- Condition OperatorCompareBoolean
  - param Variable VictoryInProgress
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player09
  - param Preset PlayerUnitEventDeath


## Trigger Victory
- enabled: True
- category: [7] Victory and Defeat
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
  - param Variable gg_trg_Insufficient_Keys
- Action DisableTrigger
  - param Variable gg_trg_Defeat
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action SetVariable
  - param Variable VictoryInProgress
  - param String true
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
- Action SuspendHeroXPBJ
  - param Preset EnableDisableDisable
  - param Variable Arthas
- Action PlaySoundBJ
  - param Variable gg_snd_QuestCompleted
- Action SetDoodadAnimationRectBJ
  - param String death
  - param String XOmr
  - param Variable gg_rct_COP
- Action SetUnitManaPercentBJ
  - param Variable Sylvanas
  - param String 0.00
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Victory_Cinematic
- Condition GetBooleanAnd
  - param Function 
    - Condition OperatorCompareUnit
      - param Function GetEnteringUnit
        - Function GetEnteringUnit
      - param Preset OperatorEqualENE
      - param Variable Arthas
  - param Function 
    - Condition OperatorCompareInteger
      - param Variable NumberOfPiecesFound
      - param Preset OperatorEqual
      - param String 3
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterEnterRectSimple
  - param Variable gg_rct_Gate_Region


## Victory Cinematic
- enabled: True
- category: [7] Victory and Defeat
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
- Action CommentString
  - param String Fade Out and Establish Setting
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
- Action UseTimeOfDayBJ
  - param Preset OnOffOff
- Action CommentString
  - param String Save Game Data
- Action RemoveItem
  - param Variable Key3Part
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Prep
- Action EnableTrigger
  - param Variable gg_trg_Victory_Cancel
- Action CommentString
  - param String Start Cinematic
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End00A
  - param Variable AAAP_Undead
  - param String 0
- Action CinematicModeBJ
  - param Preset OnOffOn
  - param Variable AAAPG_Undead
- Action SetSkyModel
  - param Preset SkyModelSky02
- Action SetTerrainFogExBJ
  - param String 0
  - param String 900.00
  - param String 4500.00
  - param String 0
  - param String 0.00
  - param String 40.00
  - param String 60.00
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
          - param Variable gg_rct_Gate_Region
      - param Preset ShowHideHide
  - param Function DoNothing
    - Action SetUnitPositionLoc
      - param Variable Sylvanas
      - param Function GetRectCenter
        - Function GetRectCenter
          - param Variable gg_rct_EndSylvanas01
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
    - Action UnitRemoveBuffsBJ
      - param Preset BuffTypeAll
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action ForGroup
  - param Function GetUnitsInRectAll
    - Function GetUnitsInRectAll
      - param Function GetPlayableMapRect
        - Function GetPlayableMapRect
  - param Function DoNothing
    - Action ShowUnitHide
      - param Function GetEnumUnit
        - Function GetEnumUnit
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action RemoveGuardPosition
  - param Variable Sylvanas
- Action SetUnitPositionLoc
  - param Variable Sylvanas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndSylvanas01
- Action ShowUnitShow
  - param Variable Sylvanas
- Action CreateNUnitsAtLocFacingLocBJ
  - param String 1
  - param String UC00
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Gate_Region
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Sylvanas
- Action SetVariable
  - param Variable CinematicArthas
  - param Function GetLastCreatedUnit
    - Function GetLastCreatedUnit
- Action SetUnitInvulnerable
  - param Variable CinematicArthas
  - param Preset InvulnerabilityInvulnerable
- Action SetUnitAnimation
  - param Variable CinematicArthas
  - param String stand ready
- Action SetUnitFacingToFaceUnitTimed
  - param Variable Sylvanas
  - param Variable CinematicArthas
  - param String 0
- Action SetUnitPathing
  - param Variable CinematicArthas
  - param Preset PathingOff
- Action PlayThematicMusicBJ
  - param Preset MusicThemeDarkVictory
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
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Arthas Powers Up
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End00B
  - param Variable AAAP_Undead
  - param String 10.00
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action VolumeGroupResetBJ
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Undead
  - param Variable CinematicArthas
  - param String TRIGSTR_034
  - param Variable gg_snd_EvilArthasYes1
  - param String TRIGSTR_035
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
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
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable CinematicArthas
  - param String spell - 1
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action AddSpecialEffectTargetUnitBJ
  - param String origin
  - param Variable CinematicArthas
  - param String Abilities\Spells\Undead\DeathandDecay\DeathandDecayTarget.mdl
- Action AddSpecialEffectTargetUnitBJ
  - param String origin
  - param Variable CinematicArthas
  - param String Abilities\Spells\Human\Invisibility\InvisibilityTarget.mdl
- Action SetVariable
  - param Variable SpecialEffect01
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_DeathPactTargetBirth1
  - param Variable CinematicArthas
- Action PlaySoundBJ
  - param Variable gg_snd_DeathPactTargetBirth1
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitAnimation
  - param Variable CinematicArthas
  - param String stand ready
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Camera Pulls Out
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End01A
  - param Variable AAAP_Undead
  - param String 0.00
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End01B
  - param Variable AAAP_Undead
  - param String 8.00
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action DestroyEffectBJ
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action DestroyEffectBJ
  - param Function GetLastCreatedEffectBJ
    - Function GetLastCreatedEffectBJ
- Action CommentString
  - param String Arthas Attacks Gate
- Action SetDestructableInvulnerableBJ
  - param Variable ElfGate02
  - param Preset InvulnerabilityVulnerable
- Action ResetUnitAnimation
  - param Variable CinematicArthas
- Action IssueTargetDestructableOrder
  - param Variable CinematicArthas
  - param Preset UnitOrderAttackDestructible
  - param Variable ElfGate02
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Gate Is Destroyed
- Action SetSoundPositionLocBJ
  - param Variable gg_snd_BuildingDeathLargeHuman
  - param Function GetDestructableLoc
    - Function GetDestructableLoc
      - param Variable ElfGate02
  - param String 0
- Action PlaySoundBJ
  - param Variable gg_snd_BuildingDeathLargeHuman
- Action KillDestructable
  - param Variable ElfGate02
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Arthas Talks and Enters the Gate
- Action SetSpeechVolumeGroupsBJ
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Undead
  - param Variable CinematicArthas
  - param String TRIGSTR_031
  - param Variable gg_snd_U04AArthas18
  - param String TRIGSTR_032
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitPathing
  - param Variable CinematicArthas
  - param Preset PathingOff
- Action IssuePointOrderLoc
  - param Variable CinematicArthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndArthas01
- Action AttachSoundToUnitBJ
  - param Variable gg_snd_HorseLoop2
  - param Variable CinematicArthas
- Action PlaySoundBJ
  - param Variable gg_snd_HorseLoop2
- Action TriggerSleepAction
  - param String 0.50
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
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
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CommentString
  - param String Fade Out and Shift Camera
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End02A
  - param Variable AAAP_Undead
  - param String 0.00
- Action RemoveUnit
  - param Variable CinematicArthas
- Action SetVariable
  - param Variable CinematicArthas
  - param Preset UnitNull
- Action ShowUnitShow
  - param Variable Arthas
- Action SetUnitPositionLocFacingLocBJ
  - param Variable Arthas
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndArthas02
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable Sylvanas
- Action SetUnitInvulnerable
  - param Variable Arthas
  - param Preset InvulnerabilityInvulnerable
- Action IssuePointOrderLoc
  - param Variable Arthas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndArthas03
- Action IssuePointOrderLoc
  - param Variable Sylvanas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndSylvanas02
- Action CommentString
  - param String Fade In and Arthas Moves Forward
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
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End02B
  - param Variable AAAP_Undead
  - param String 5.00
- Action TriggerSleepAction
  - param String 2.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetStackedSoundBJ
  - param Preset AddRemoveRemove
  - param Variable gg_snd_WaterStreamLoop1
  - param Variable gg_rct_StreamLoop01
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_EndSylvanas
  - param Variable AAAP_Undead
  - param String 0.00
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Undead
  - param Variable Sylvanas
  - param String TRIGSTR_059
  - param Variable gg_snd_U04ASylvanas12
  - param String TRIGSTR_060
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action SetUnitPathing
  - param Variable Sylvanas
  - param Preset PathingOff
- Action RemoveGuardPosition
  - param Variable Sylvanas
- Action IssuePointOrderLoc
  - param Variable Sylvanas
  - param Preset UnitOrderMove
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_EndSylvanas01
- Action TriggerSleepAction
  - param String 1.00
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action TransmissionFromUnitWithNameBJ
  - param Variable AAAPG_Undead
  - param Variable Arthas
  - param String TRIGSTR_457
  - param Variable gg_snd_U04AArthas11
  - param String TRIGSTR_458
  - param Preset AddSetToAdd
  - param String 0
  - param Preset WaitDontWait
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareBoolean
      - param Variable VictoryCancelled
      - param Preset OperatorEqualENE
      - param String true
  - param Function DoNothing
    - Action ReturnAction
  - param Function DoNothing
    - Action DoNothing
- Action CameraSetupApplyForPlayer
  - param Preset CameraApply
  - param Variable gg_cam_End05
  - param Variable AAAP_Undead
  - param String 0.00
- Action CommentString
  - param String NO LONGER SKIPPABLE
- Action DisableTrigger
  - param Variable gg_trg_Victory_Cancel
- Action TriggerSleepAction
  - param String 1.00
- Action CinematicFadeBJ
  - param Preset FadeTypeOptionFadeOut
  - param String 1.00
  - param Preset CineFilterTextureWhite
  - param String 0
  - param String 0
  - param String 0
  - param String 0
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run


## Victory Cancel
- enabled: True
- category: [7] Victory and Defeat
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
  - param Variable VictoryCancelled
  - param String true
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
- Action IfThenElse
  - param Function 
    - Condition OperatorCompareUnit
      - param Variable CinematicArthas
      - param Preset OperatorNotEqualENE
      - param Preset UnitNull
  - param Function DoNothing
    - Action RemoveUnit
      - param Variable CinematicArthas
  - param Function DoNothing
    - Action DoNothing
- Action ConditionalTriggerExecute
  - param Variable gg_trg_Next_Level_Run
- Event TriggerRegisterPlayerEventEndCinematic
  - param Preset Player03


## Enable Defeat
- enabled: True
- category: [7] Victory and Defeat
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
  - param Variable gg_trg_Defeat
- Action CommandAI
  - param Preset Player09
  - param String 0
  - param String 0
- Action CommandAI
  - param Preset Player11
  - param String 0
  - param String 0
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventConstruct_Finish


## Unit Defeat
- enabled: True
- category: [7] Victory and Defeat
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
  - param Variable gg_trg_Defeat
- Action DisableTrigger
  - param Variable gg_trg_Trigger_Victory
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_443
- Action TriggerSleepAction
  - param String 2.00
- Action CustomDefeatBJ
  - param Variable AAAP_Undead
  - param String TRIGSTR_444
- Condition OperatorCompareInteger
  - param Function CountUnitsInGroup
    - Function CountUnitsInGroup
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
  - param Preset OperatorLessEq
  - param String 0
- Condition OperatorCompareBoolean
  - param Variable GameOver
  - param Preset OperatorEqualENE
  - param String false
- Event TriggerRegisterPlayerUnitEventSimple
  - param Preset Player03
  - param Preset PlayerUnitEventDeath


## Defeat
- enabled: True
- category: [7] Victory and Defeat
- starts off: True
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
  - param Variable gg_trg_Unit_Defeat
- Action DisableTrigger
  - param Variable gg_trg_Trigger_Victory
- Action QuestMessageBJ
  - param Variable AAAPG_Undead
  - param Preset QuestMessageTypeFailed
  - param String TRIGSTR_441
- Action TriggerSleepAction
  - param String 2.00
- Action CustomDefeatBJ
  - param Variable AAAP_Undead
  - param String TRIGSTR_440
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
- category: [16] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Save hero data
- Action InitGameCacheBJ
  - param String Campaigns.w3v
- Action StoreUnitBJ
  - param Variable Arthas
  - param String Arthas
  - param String Undead05
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action SaveGameCacheBJ
  - param Function GetLastCreatedGameCacheBJ
    - Function GetLastCreatedGameCacheBJ
- Action CommentString
  - param String Enable next level
- Action SetMissionAvailableBJ
  - param Preset EnableDisableEnable
  - param Preset MissionIndexU07


## Next Level Run
- enabled: True
- category: [16] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CommentString
  - param String Run next level
- Action SetNextLevelBJ
  - param String Maps\Campaign\Undead05.w3m
- Action CustomVictoryBJ
  - param Variable AAAP_Undead
  - param Preset UseSkipOptionUse
  - param Preset UseSkipOptionUse


## Victory Cheat
- enabled: True
- category: [16] Level Data
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


## Defeat Cheat
- enabled: True
- category: [16] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action CustomDefeatBJ
  - param Variable AAAP_Undead
  - param String TRIGSTR_511
- Event TriggerRegisterPlayerEventDefeat
  - param Preset Player03


## Temp
- enabled: True
- category: [16] Level Data
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar01
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar02
- Action SetCameraQuickPositionLocForPlayer
  - param Variable AAAP_Undead
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_Altar03

