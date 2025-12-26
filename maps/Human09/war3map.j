globals
    // User-defined
unit udg_Arthas= null
unit udg_Muradin= null
unit udg_Malganis= null
boolean udg_PurpleDefeated= false
boolean udg_GreenDefeated= false
weathereffect udg_WeatherSnow= null
boolean udg_IntroCinematicEscape= false
boolean udg_IntroCinematicRunning= false
group udg_IntroNortheastGroup= null
group udg_IntroNorthGroup= null
unit udg_IntroMalganis= null
player udg_PlayerMalganis= null
player udg_PlayerUndeadProtector= null
fogmodifier udg_IntroCancelView= null
real udg_GhostMaterialize= 0
unit udg_GhostA= null
unit udg_GhostB= null
unit udg_Skeleton01= null
unit udg_Skeleton02= null
unit udg_Skeleton03= null
unit udg_Skeleton04= null
unit udg_Skeleton05= null
unit udg_Skeleton06= null
fogmodifier udg_GuardianVisibility= null
boolean udg_FrostmourneCinematicRunning= false
boolean udg_FrostmourneCinematicEscape= false
unit udg_Captain= null
boolean udg_ArthasIsEvil= false
unit udg_EvilArthas= null
fogmodifier udg_ValleyVisA= null
fogmodifier udg_ValleyVisB= null
fogmodifier udg_ValleyVisC= null
fogmodifier udg_DiasVisA= null
quest udg_QuestFrostmourne= null
quest udg_QuestMalganis= null
boolean udg_ExitCinematicRunning= false
boolean udg_ExitCinematicEscape= false
boolean udg_HeroDefeatPossible= false
unit udg_Guardian= null
weathereffect udg_Blizzard= null
fogmodifier udg_VisibilityAltar= null
effect udg_EffectArthasAfterFM= null
unit udg_GuardianLackeyA= null
unit udg_GuardianLackeyB= null
item udg_ItemMuradin01= null
item udg_ItemMuradin02= null
item udg_ItemMuradin03= null
item udg_ItemMuradin04= null
item udg_ItemMuradin05= null
item udg_ItemMuradin06= null
questitem udg_QuestReqFrostmourne= null
questitem udg_QuestReqArthasDie= null
questitem udg_QuestReqMuradinDie= null
questitem udg_QuestReqMalganis= null
timer udg_TimerInitialAttack= null
unit udg_GuardianArcherA= null
unit udg_GuardianArcherB= null
group udg_ValleyGroup= null
effect udg_EffectArthasIntro= null
effect udg_EffectMuradinIntro= null
effect udg_EffectKnight1Intro= null
effect udg_EffectKnight2Intro= null
effect udg_EffectRiflemanIntro1= null
effect udg_EffectRiflemanIntro2= null
effect udg_EffectRiflemanIntro3= null
timer udg_HintGryphonTimer= null
integer udg_ScrollsOfTownPortal= 0
integer udg_AmuletsOfRecall= 0
group udg_UnitGroupSelection= null
integer udg_SkillHolyLight= 0
integer udg_SkillDivineShield= 0
integer udg_SkillDevotionAura= 0
integer udg_SkillResurrection= 0
location udg_PointGuardianPosition= null
real udg_RealGuardianFacing= 0
boolean udg_GameOver= false

    // Generated
rect gg_rct_ExitArthasInitialPosition= null
rect gg_rct_ExitArthaslPositionRunStart= null
rect gg_rct_ExitArthasMovesToMalganis= null
rect gg_rct_ExitArthasPositionRunTo= null
rect gg_rct_ExitCinematicWeather_Blizzard= null
rect gg_rct_ExitCinematicWeather_Blizzard_Running= null
rect gg_rct_ExitCinematicWeather_Wind= null
rect gg_rct_ExitCinematicWeather_Wind_Running= null
rect gg_rct_ExitMalganisInitialPosition= null
rect gg_rct_ExitMalganisLookTo_1= null
rect gg_rct_ExitMalganisLookTo_2= null
rect gg_rct_FrostmourneArthasAfterMalsDeath= null
rect gg_rct_FrostmourneArthasAtDias= null
rect gg_rct_FrostmourneArthasBegin= null
rect gg_rct_FrostmourneArthasEnters= null
rect gg_rct_FrostmourneArthasOutside= null
rect gg_rct_FrostmourneArthasTakesSword= null
rect gg_rct_FrostmourneCaptainSpawn= null
rect gg_rct_FrostmourneCaptainToArthas= null
rect gg_rct_FrostmourneDiasVisibility= null
rect gg_rct_FrostmourneMoveActorsCheck= null
rect gg_rct_FrostmourneMuradinBegin= null
rect gg_rct_FrostmourneMuradinEnters= null
rect gg_rct_FrostmourneMuradinReads= null
rect gg_rct_FrostmourneMuradinToArthas= null
rect gg_rct_FrostmourneValleyVisibilityA= null
rect gg_rct_FrostmourneValleyVisibilityB= null
rect gg_rct_FrostmourneValleyVisibilityC= null
rect gg_rct_InitArthasLooks= null
rect gg_rct_InitPlaceArthas= null
rect gg_rct_InitPlaceMuradin= null
rect gg_rct_IntroArthasEscortGroup= null
rect gg_rct_IntroArthasToCaptain= null
rect gg_rct_IntroArthasToWaygate= null
rect gg_rct_IntroArthasWaygateForce= null
rect gg_rct_IntroCancelVisibility= null
rect gg_rct_IntroCaptainAlert= null
rect gg_rct_IntroEscortKnight01= null
rect gg_rct_IntroEscortKnight02= null
rect gg_rct_IntroEscortRifleman01= null
rect gg_rct_IntroEscortRifleman02= null
rect gg_rct_IntroEscortRifleman03= null
rect gg_rct_IntroFootman01Alert= null
rect gg_rct_IntroFootman02Alert= null
rect gg_rct_IntroFootman03Alert= null
rect gg_rct_IntroFootman04Alert= null
rect gg_rct_IntroGreenAttackRegion= null
rect gg_rct_IntroGryphonAlert= null
rect gg_rct_IntroGryphonPatrolA= null
rect gg_rct_IntroGyrocopterAlert= null
rect gg_rct_IntroGyrocopterPatrolA= null
rect gg_rct_IntroKnight01Alert= null
rect gg_rct_IntroKnightHealedMove= null
rect gg_rct_IntroKnightMoveA= null
rect gg_rct_IntroKnightMoveB= null
rect gg_rct_IntroKnightMoveC= null
rect gg_rct_IntroMortar01Alert= null
rect gg_rct_IntroMortar02Alert= null
rect gg_rct_IntroMortar03Alert= null
rect gg_rct_IntroMortarMoveA= null
rect gg_rct_IntroMuradinToArthas= null
rect gg_rct_IntroMuradintoCaptain= null
rect gg_rct_IntroMuradinToWaygate= null
rect gg_rct_IntroNortheastUndeadMoveTo= null
rect gg_rct_IntroNortheastUndeadWave= null
rect gg_rct_IntroNorthUndeadMoveTo= null
rect gg_rct_IntroNorthUndeadWave= null
rect gg_rct_IntroPriest01Alert= null
rect gg_rct_IntroPriest02Alert= null
rect gg_rct_IntroPriest03Alert= null
rect gg_rct_IntroRifleman01Alert= null
rect gg_rct_IntroRifleman02Alert= null
rect gg_rct_IntroRifleman03Alert= null
rect gg_rct_IntroRifleman04Alert= null
rect gg_rct_IntroRifleman05Alert= null
rect gg_rct_IntroRifleman06Alert= null
rect gg_rct_IntroRifleman07Alert= null
rect gg_rct_IntroRifleman08Alert= null
rect gg_rct_IntroSorceress01= null
rect gg_rct_IntroSorceress02= null
rect gg_rct_IntroSpawnMalganis= null
rect gg_rct_IntroTriggerArthasEscort= null
rect gg_rct_IntroValleyArthas= null
rect gg_rct_IntroValleyKnight01= null
rect gg_rct_IntroValleyKnight02= null
rect gg_rct_IntroValleyMuradin= null
rect gg_rct_IntroValleyRifleman01= null
rect gg_rct_IntroValleyRifleman02= null
rect gg_rct_IntroValleyRifleman03= null
rect gg_rct_IntroValleyUnitFacing= null
rect gg_rct_ItemMuradin01= null
rect gg_rct_ItemMuradin02= null
rect gg_rct_ItemMuradin03= null
rect gg_rct_ItemMuradin04= null
rect gg_rct_ItemMuradin05= null
rect gg_rct_ItemMuradin06= null
rect gg_rct_ValleyFirstWolfAttack= null
rect gg_rct_ValleyFirstWolves= null
rect gg_rct_ValleyGhost01= null
rect gg_rct_ValleyGhost02= null
rect gg_rct_ValleyGraveyardTrigger= null
rect gg_rct_ValleyGuardianTrigger= null
rect gg_rct_ValleyGuardianVisibility= null
rect gg_rct_ValleySkelArcher01= null
rect gg_rct_ValleySkelArcher02= null
rect gg_rct_ValleySkelArcher03= null
rect gg_rct_ValleySkelArcher04= null
rect gg_rct_ValleySkelArcher05= null
rect gg_rct_ValleySkelArcher06= null
rect gg_rct_ValleyTreeBarrier= null
rect gg_rct_ValleyWhiteWolfRun= null
rect gg_rct_ValleyWolvesAttack= null
rect gg_rct_WayGateExit= null
rect gg_rct_WayGateExit_BlackMask= null
rect gg_rct_GargoyleSound= null
rect gg_rct_CallToArmsSound= null
rect gg_rct_FrostmourneSound= null
rect gg_rct_HammerDrop= null
rect gg_rct_ScrollReplace01= null
rect gg_rct_ScrollReplace02= null
rect gg_rct_ScrollReplace03= null
rect gg_rct_AmuletReplace01= null
rect gg_rct_AmuletReplace02= null
rect gg_rct_AmuletReplace03= null
camerasetup gg_cam_Camera_026= null
camerasetup gg_cam_Camera_027= null
camerasetup gg_cam_Camera_028= null
camerasetup gg_cam_Exit_Arthas_01= null
camerasetup gg_cam_Exit_Malganis_01= null
camerasetup gg_cam_Exit_Malganis_02= null
camerasetup gg_cam_ExitArthasRun_1= null
camerasetup gg_cam_ExitArthasRun_2= null
camerasetup gg_cam_ExitArthasRun_Follow= null
camerasetup gg_cam_ExitInitialCamera= null
camerasetup gg_cam_ExitZoomIn= null
camerasetup gg_cam_FrostmourneArthasChannel= null
camerasetup gg_cam_FrostmourneArthasDone= null
camerasetup gg_cam_FrostmourneBeginCloseup= null
camerasetup gg_cam_FrostmourneDeathCamera= null
camerasetup gg_cam_FrostmourneEndCloseup= null
camerasetup gg_cam_FrostmourneIntroShot= null
camerasetup gg_cam_FrostmourneMuradinDeath_01= null
camerasetup gg_cam_FrostmourneMuradinDeath_02= null
camerasetup gg_cam_FrostmourneMuradinDeath_03= null
camerasetup gg_cam_FrostmourneMuradinDeath_04= null
camerasetup gg_cam_FrostmourneMuradinSaysLeave= null
camerasetup gg_cam_FrostmourneMuradinToArthas= null
camerasetup gg_cam_FrostmourneSwordCloseup= null
camerasetup gg_cam_FrostmourneSwordPanBegin= null
camerasetup gg_cam_FrostmourneSwordPanEnd= null
camerasetup gg_cam_IntroArthasInValley= null
camerasetup gg_cam_IntroCaptainCloseup= null
camerasetup gg_cam_IntroFirstCamera= null
camerasetup gg_cam_IntroMalganisCloseup= null
camerasetup gg_cam_IntroMuradinToArthas= null
camerasetup gg_cam_IntroNorthApproach= null
camerasetup gg_cam_IntroNorthEastApproach= null
camerasetup gg_cam_IntroToWaygate1= null
camerasetup gg_cam_IntroToWaygate3= null
sound gg_snd_H09Arthas02= null
sound gg_snd_H09Arthas05= null
sound gg_snd_H09Arthas07= null
sound gg_snd_H09Arthas09= null
sound gg_snd_H09Arthas12= null
sound gg_snd_H09Arthas14= null
sound gg_snd_H09Arthas16= null
sound gg_snd_H09Arthas18= null
sound gg_snd_H09Arthas19= null
sound gg_snd_H09Arthas21= null
sound gg_snd_H09Arthas24= null
sound gg_snd_H09Arthas26= null
sound gg_snd_H09Arthas28= null
sound gg_snd_H09Captain20= null
sound gg_snd_H09Guardian08= null
sound gg_snd_H09Guardian10= null
sound gg_snd_H09Guardian11= null
sound gg_snd_H09Guardian13= null
sound gg_snd_H09MalGanis03= null
sound gg_snd_H09MalGanis23= null
sound gg_snd_H09MalGanis25= null
sound gg_snd_H09MalGanis27= null
sound gg_snd_H09Muradin01= null
sound gg_snd_H09Muradin04= null
sound gg_snd_H09Muradin06= null
sound gg_snd_H09Muradin15= null
sound gg_snd_H09Muradin17= null
sound gg_snd_QuestNew= null
sound gg_snd_QuestLog= null
sound gg_snd_QuestFailed= null
sound gg_snd_QuestCompleted= null
sound gg_snd_Hint= null
sound gg_snd_MassTeleportTarget= null
sound gg_snd_HorseLoop1= null
sound gg_snd_HorseLoop2= null
sound gg_snd_HorseLoop3= null
sound gg_snd_HeroMountainKingDeath= null
sound gg_snd_ColdArrow2= null
sound gg_snd_DryadMissile2= null
sound gg_snd_DivineShield= null
sound gg_snd_BalrogAttack1= null
sound gg_snd_FrostArmorTarget1= null
sound gg_snd_FrostmourneLoopUndead01= null
sound gg_snd_H09Arthas28a= null
sound gg_snd_GargoyleWhat1= null
sound gg_snd_GargoyleWhat2= null
sound gg_snd_HumanCallToArmsWhat1= null
sound gg_snd_AbominationYesAttack2= null
sound gg_snd_CityScapeMagicRunesLoop1= null
sound gg_snd_FrostmourneChant1= null
sound gg_snd_MetalMediumBashStone1= null
sound gg_snd_WoodLightBashStone3= null
sound gg_snd_WoodLightBashStone2= null
trigger gg_trg_fileio= null
trigger gg_trg_map_config= null
trigger gg_trg_status= null
trigger gg_trg_heroes= null
trigger gg_trg_item_locations= null
trigger gg_trg_debug= null
trigger gg_trg_zoom= null
trigger gg_trg_irregulars= null
trigger gg_trg_AP_mercenaries= null
trigger gg_trg_AP_Load_Arthas= null
trigger gg_trg_AP_Load_Muradin= null
trigger gg_trg_Shop_Locations= null
trigger gg_trg_MalGanis_Location= null
trigger gg_trg_StartInitializationSequence= null
trigger gg_trg_Initialize_Variables= null
trigger gg_trg_Initial_Resources= null
trigger gg_trg_Initial_Weather= null
trigger gg_trg_Initial_Alliances= null
trigger gg_trg_Initial_ValleyPrep= null
trigger gg_trg_Initial_IntroWavePrep= null
trigger gg_trg_Initial_ValleyGroup= null
trigger gg_trg_Initial_Quests= null
trigger gg_trg_Initial_AI= null
trigger gg_trg_Initial_Music= null
trigger gg_trg_Setup_Scorescreen= null
trigger gg_trg_Initial_Heroes= null
trigger gg_trg_Arthas_Leans_a_Skill= null
trigger gg_trg_RecreateArthasSkills= null
trigger gg_trg_Easy= null
trigger gg_trg_Normal= null
trigger gg_trg_Hard= null
trigger gg_trg_Gryphon= null
trigger gg_trg_GryphonMessage= null
trigger gg_trg_PurpleGold= null
trigger gg_trg_PurpleLumber= null
trigger gg_trg_GreenGold= null
trigger gg_trg_GreenLumber= null
trigger gg_trg_GiveAnkh= null
trigger gg_trg_DestroyMalganisItems= null
trigger gg_trg_ItemFailsafeDetect= null
trigger gg_trg_ItemFailsafeReplace= null
trigger gg_trg_TriggerIntroCinematic= null
trigger gg_trg_IntroEnvironment= null
trigger gg_trg_IntroCinematicMode= null
trigger gg_trg_IntroActorSetup= null
trigger gg_trg_IntroKnightARespond= null
trigger gg_trg_IntroKnightBRespond= null
trigger gg_trg_IntroInitialCamera= null
trigger gg_trg_IntroMuradinAsksArthas= null
trigger gg_trg_IntroUndeadApproach= null
trigger gg_trg_IntroBaseReorients= null
trigger gg_trg_IntroArthasDecides= null
trigger gg_trg_IntroArthasTalksToCaptain= null
trigger gg_trg_IntroEscortFollowsArthas= null
trigger gg_trg_IntroArthasReachesWaygate= null
trigger gg_trg_IntroMuradinReachesWaygate= null
trigger gg_trg_IntroLastDwarfReachesWaygate= null
trigger gg_trg_IntroCinematicEnd= null
trigger gg_trg_InroArthasGroupTeleports= null
trigger gg_trg_IntroCinematicEscape= null
trigger gg_trg_InitialAttackTimerExpires= null
trigger gg_trg_FirstWolves= null
trigger gg_trg_WolfSpotted= null
trigger gg_trg_WolfTurnsAround= null
trigger gg_trg_WolvesAttack= null
trigger gg_trg_TriggerGraveyardAttack= null
trigger gg_trg_SpawnGhosts= null
trigger gg_trg_LoopGhostTransparency= null
trigger gg_trg_SpawnSkeletal_Archers= null
trigger gg_trg_GuardianEncounter= null
trigger gg_trg_GuardianDies= null
trigger gg_trg_TriggerFrostmourneCinematic= null
trigger gg_trg_FrostmourneCinematicSetup= null
trigger gg_trg_FrostmourneActorSetup= null
trigger gg_trg_FrostmourneApproach= null
trigger gg_trg_FrostmourneMuradinHit= null
trigger gg_trg_FrostmourneCinematicEnd= null
trigger gg_trg_FrostmourneEndCaptainFailsafe= null
trigger gg_trg_FrostmourneArthasTeleports= null
trigger gg_trg_Arthas_Channel= null
trigger gg_trg_FrostmourneCinematicEscapeGood= null
trigger gg_trg_FrostmourneCinematicEscapeEvil= null
trigger gg_trg_TriggerExitCinematic= null
trigger gg_trg_ExitCinematicSetup= null
trigger gg_trg_ExitCinematicActorSetup= null
trigger gg_trg_ExitCinematicArthasMalganisTalk= null
trigger gg_trg_ExitArthasRuns= null
trigger gg_trg_ExitCinematicEnd= null
trigger gg_trg_ExitCinematicEscape= null
trigger gg_trg_ExitCinematicEscapeNoFade= null
trigger gg_trg_BuildingDefeat= null
trigger gg_trg_ArthasDefeat= null
trigger gg_trg_MuradinDefeat= null
trigger gg_trg_Green_Base_Dead= null
trigger gg_trg_Level_Enabling= null
trigger gg_trg_Level_Victory= null
trigger gg_trg_Level_Defeat= null
trigger gg_trg_Victory_Cheat= null
trigger gg_trg_Defeat_Cheat= null
trigger gg_trg_VictoryDEBUG= null
trigger gg_trg_VictoryDEBUG_Copy= null
trigger gg_trg_FrostmourneDEBUG= null
trigger gg_trg_FrostmourneDEBUG_Copy= null
trigger gg_trg_RunDEBUG= null
unit gg_unit_ngol_0003= null
unit gg_unit_hgtw_0009= null
unit gg_unit_uaod_0072= null
unit gg_unit_nfrm_0226= null
unit gg_unit_usep_0061= null
unit gg_unit_nwwg_0256= null
unit gg_unit_nwwd_0139= null
unit gg_unit_uslh_0063= null
unit gg_unit_nmr7_0044= null
unit gg_unit_usep_0084= null
unit gg_unit_nskm_0135= null
unit gg_unit_nskm_0147= null
unit gg_unit_nwnr_0107= null
unit gg_unit_hrif_0210= null
unit gg_unit_ucry_0216= null
unit gg_unit_nwwf_0120= null
unit gg_unit_ngme_0043= null
unit gg_unit_hcth_0105= null
unit gg_unit_hrif_0211= null
unit gg_unit_nwgt_0209= null
unit gg_unit_hrif_0115= null
unit gg_unit_hrif_0117= null
unit gg_unit_hrif_0253= null
unit gg_unit_hrif_0254= null
unit gg_unit_hfoo_0123= null
unit gg_unit_hfoo_0124= null
unit gg_unit_hkni_0125= null
unit gg_unit_hfoo_0126= null
unit gg_unit_hsor_0128= null
unit gg_unit_hmpr_0129= null
unit gg_unit_hmpr_0130= null
unit gg_unit_hgyr_0132= null
unit gg_unit_hgry_0133= null
unit gg_unit_hpea_0134= null
unit gg_unit_hkni_0251= null
unit gg_unit_hpea_0136= null
unit gg_unit_hpea_0137= null
unit gg_unit_hpea_0138= null
unit gg_unit_hrif_0252= null
unit gg_unit_nrvs_0118= null
unit gg_unit_unec_0230= null
unit gg_unit_nrvs_0116= null
unit gg_unit_hmpr_0112= null
unit gg_unit_hkni_0110= null
unit gg_unit_hkni_0250= null
unit gg_unit_hkni_0111= null
unit gg_unit_nwwg_0259= null
unit gg_unit_Umal_0177= null
unit gg_unit_nwwf_0257= null
unit gg_unit_nwwf_0161= null
unit gg_unit_nC00_0011= null
unit gg_unit_nwwg_0255= null
trigger gg_trg_Purple_Base_Location= null
unit gg_unit_unp2_0051= null
string array p_original_names
string array io_lines
constant integer NUM_FILE_LINES= 10
string last_filename= ""
constant integer MISSION_ID= 109
integer NUM_HEROES= 2
constant player USER_PLAYER= Player(1)
integer array hero_global_slots
constant integer item_channel_1= 1
constant integer item_channel_2= - 1
constant integer item_channel_2_hero_slot= - 1
constant integer HERO_ID_ALL= - 1
constant integer HERO_ID_NONE= 0
constant integer HERO_ID_PALADIN_ARTHAS= 1
constant integer HERO_ID_JAINA= 2
constant integer HERO_ID_MURADIN_BRONZEBEARD= 3
constant integer HERO_ID_THRALL= 4
constant integer HERO_ID_CAIRNE_BLOODHOOF= 5
constant integer HERO_ID_GROM_HELLSCREAM= 6
constant integer HERO_ID_DEATH_KNIGHT_ARTHAS= 7
constant integer HERO_ID_KEL_THUZAD= 8
constant integer HERO_ID_ARTHAS_TFT= 9
constant integer HERO_ID_SYLVANAS= 11
constant integer HERO_ID_VARIMATHRAS= 12
constant integer HERO_ID_ANUB_ARAK= 13
constant integer HERO_ID_TYRANDE= 14
constant integer HERO_ID_FURION= 15
constant integer HERO_ID_ILLIDAN= 16
constant integer HERO_ID_TYRANDE_TFT= 17
constant integer HERO_ID_MALFURION= 18
constant integer HERO_ID_MAIEV= 19
constant integer HERO_ID_KAEL_THAS= 20
constant integer HERO_ID_DEMON_ILLIDAN= 21
constant integer HERO_ID_LADY_VASHJ= 22
constant integer HERO_ID_AKAMA= 23
constant integer HERO_ID_LORD_GARITHOS= 24
constant string COMM_VERSION= "1.0"
constant integer MAX_UPDATE_ID= 100000
integer error_state= 0
integer world_id= - 1
integer last_unlock_packet= - 1
integer last_location_packet= - 1
integer last_message_packet= - 1
integer last_hero_packet= - 1
integer last_item_packet= - 1
integer last_mercenaries_packet= - 1
integer last_settings_packet= - 1
integer last_item_channel_packet= - 1
integer checks_before_timeout= 2
boolean array locations_checked
constant integer MAX_LOCATIONS= 30
constant integer MAX_ITEMS_PER_PACKET= 12
integer update_index= - 1
integer hero_status_index= - 1
integer num_channel_1_items_received= 0
integer num_channel_2_items_received= 0
integer array gold_granted
timer status_ack_ping_timer
trigger t_captain_promoted
trigger t_apply_mercenaries
trigger t_create_mercenary_camps
unit item_channel_1_target= null
unit item_channel_2_target= null
integer array HERO_MAX_LEVEL
integer array hero_hashes
trigger t_hero_update
trigger t_hero_pickup_item
trigger t_hero_configure_all
trigger t_hero_set_all_max_level
timer hero_update_status_timer
integer array hero_abil_1
integer array hero_abil_2
integer array hero_abil_3
integer array hero_abil_4
trigger t_location_found= null
trigger t_item_purchased= null
trigger t_help
trigger t_print
trigger t_xp
trigger t_xp2
trigger t_health
trigger t_dragon
trigger t_speed
trigger t_zoom
trigger t_irregulars_on_cast
sound human_no_gold_sound
integer units_added= 0


//JASSHelper struct globals:

endglobals


//===========================================================================
// 
// Human09
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Thu Dec 25 19:49:06 2025
//   Map Author: Blizzard Entertainment
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    set udg_PurpleDefeated=false
    set udg_GreenDefeated=false
    set udg_IntroCinematicEscape=false
    set udg_IntroCinematicRunning=false
    set udg_IntroNortheastGroup=CreateGroup()
    set udg_IntroNorthGroup=CreateGroup()
    set udg_PlayerMalganis=Player(6)
    set udg_PlayerUndeadProtector=Player(3)
    set udg_GhostMaterialize=100.00
    set udg_FrostmourneCinematicRunning=false
    set udg_FrostmourneCinematicEscape=false
    set udg_ArthasIsEvil=false
    set udg_ExitCinematicRunning=false
    set udg_ExitCinematicEscape=false
    set udg_HeroDefeatPossible=true
    set udg_TimerInitialAttack=CreateTimer()
    set udg_ValleyGroup=CreateGroup()
    set udg_HintGryphonTimer=CreateTimer()
    set udg_ScrollsOfTownPortal=0
    set udg_AmuletsOfRecall=0
    set udg_UnitGroupSelection=CreateGroup()
    set udg_SkillHolyLight=0
    set udg_SkillDivineShield=0
    set udg_SkillDevotionAura=0
    set udg_SkillResurrection=0
    set udg_RealGuardianFacing=0
    set udg_GameOver=false
endfunction

//***************************************************************************
//*
//*  Unit Item Tables
//*
//***************************************************************************

function Unit000060_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('I012', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000076_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('I015', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000095_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('I011', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000131_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('I013', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

        // Item set 1
        call RandomDistReset()
        call RandomDistAddItem('I014', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000155_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('I016', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000188_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('I017', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000199_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('I018', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction


//***************************************************************************
//*
//*  Sounds
//*
//***************************************************************************

function InitSounds takes nothing returns nothing
    set gg_snd_H09Arthas02=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas02.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas02, "H09Arthas02")
    call SetSoundDuration(gg_snd_H09Arthas02, 5120)
    set gg_snd_H09Arthas05=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas05.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas05, "H09Arthas05")
    call SetSoundDuration(gg_snd_H09Arthas05, 8228)
    set gg_snd_H09Arthas07=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas07.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas07, "H09Arthas07")
    call SetSoundDuration(gg_snd_H09Arthas07, 4022)
    set gg_snd_H09Arthas09=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas09.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas09, "H09Arthas09")
    call SetSoundDuration(gg_snd_H09Arthas09, 3813)
    set gg_snd_H09Arthas12=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas12.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas12, "H09Arthas12")
    call SetSoundDuration(gg_snd_H09Arthas12, 2298)
    set gg_snd_H09Arthas14=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas14.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas14, "H09Arthas14")
    call SetSoundDuration(gg_snd_H09Arthas14, 6008)
    set gg_snd_H09Arthas16=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas16.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas16, "H09Arthas16")
    call SetSoundDuration(gg_snd_H09Arthas16, 3604)
    set gg_snd_H09Arthas18=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas18.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas18, "H09Arthas18")
    call SetSoundDuration(gg_snd_H09Arthas18, 6321)
    set gg_snd_H09Arthas19=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas19.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas19, "H09Arthas19")
    call SetSoundDuration(gg_snd_H09Arthas19, 12669)
    set gg_snd_H09Arthas21=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas21.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas21, "H09Arthas21")
    call SetSoundDuration(gg_snd_H09Arthas21, 7653)
    set gg_snd_H09Arthas24=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas24.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas24, "H09Arthas24")
    call SetSoundDuration(gg_snd_H09Arthas24, 5877)
    set gg_snd_H09Arthas26=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas26.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas26, "H09Arthas26")
    call SetSoundDuration(gg_snd_H09Arthas26, 5381)
    set gg_snd_H09Arthas28=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas28.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas28, "H09Arthas28")
    call SetSoundDuration(gg_snd_H09Arthas28, 966)
    set gg_snd_H09Captain20=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Captain20.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Captain20, "H09Captain20")
    call SetSoundDuration(gg_snd_H09Captain20, 4257)
    set gg_snd_H09Guardian08=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Guardian08.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Guardian08, "H09Guardian08")
    call SetSoundDuration(gg_snd_H09Guardian08, 9325)
    set gg_snd_H09Guardian10=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Guardian10.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Guardian10, "H09Guardian10")
    call SetSoundDuration(gg_snd_H09Guardian10, 6217)
    set gg_snd_H09Guardian11=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Guardian11.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Guardian11, "H09Guardian11")
    call SetSoundDuration(gg_snd_H09Guardian11, 10814)
    set gg_snd_H09Guardian13=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Guardian13.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Guardian13, "H09Guardian13")
    call SetSoundDuration(gg_snd_H09Guardian13, 10893)
    set gg_snd_H09MalGanis03=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09MalGanis03.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09MalGanis03, "H09MalGanis03")
    call SetSoundDuration(gg_snd_H09MalGanis03, 15725)
    set gg_snd_H09MalGanis23=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09MalGanis23.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09MalGanis23, "H09MalGanis23")
    call SetSoundDuration(gg_snd_H09MalGanis23, 11467)
    set gg_snd_H09MalGanis25=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09MalGanis25.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09MalGanis25, "H09MalGanis25")
    call SetSoundDuration(gg_snd_H09MalGanis25, 15020)
    set gg_snd_H09MalGanis27=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09MalGanis27.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09MalGanis27, "H09MalGanis27")
    call SetSoundDuration(gg_snd_H09MalGanis27, 4075)
    set gg_snd_H09Muradin01=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Muradin01.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Muradin01, "H09Muradin01")
    call SetSoundDuration(gg_snd_H09Muradin01, 9377)
    set gg_snd_H09Muradin04=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Muradin04.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Muradin04, "H09Muradin04")
    call SetSoundDuration(gg_snd_H09Muradin04, 3631)
    set gg_snd_H09Muradin06=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Muradin06.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Muradin06, "H09Muradin06")
    call SetSoundDuration(gg_snd_H09Muradin06, 6295)
    set gg_snd_H09Muradin15=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Muradin15.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Muradin15, "H09Muradin15")
    call SetSoundDuration(gg_snd_H09Muradin15, 24790)
    set gg_snd_H09Muradin17=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Muradin17.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Muradin17, "H09Muradin17")
    call SetSoundDuration(gg_snd_H09Muradin17, 6426)
    set gg_snd_QuestNew=CreateSound("Sound\\Interface\\QuestNew.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_QuestNew, "QuestNew")
    call SetSoundDuration(gg_snd_QuestNew, 3750)
    set gg_snd_QuestLog=CreateSound("Sound\\Interface\\QuestLog.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_QuestLog, "QuestUpdate")
    call SetSoundDuration(gg_snd_QuestLog, 2275)
    set gg_snd_QuestFailed=CreateSound("Sound\\Interface\\QuestFailed.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_QuestFailed, "QuestFailed")
    call SetSoundDuration(gg_snd_QuestFailed, 4690)
    set gg_snd_QuestCompleted=CreateSound("Sound\\Interface\\QuestCompleted.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_QuestCompleted, "QuestCompleted")
    call SetSoundDuration(gg_snd_QuestCompleted, 5154)
    set gg_snd_Hint=CreateSound("Sound\\Interface\\Hint.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_Hint, "Hint")
    call SetSoundDuration(gg_snd_Hint, 2005)
    set gg_snd_MassTeleportTarget=CreateSound("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(gg_snd_MassTeleportTarget, "MassTeleport")
    call SetSoundDuration(gg_snd_MassTeleportTarget, 4899)
    set gg_snd_HorseLoop1=CreateSound("Units\\Human\\Knight\\HorseLoop1.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_HorseLoop1, "HumanKnightMovement")
    call SetSoundDuration(gg_snd_HorseLoop1, 2101)
    set gg_snd_HorseLoop2=CreateSound("Units\\Human\\Knight\\HorseLoop2.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_HorseLoop2, "HumanKnightMovement")
    call SetSoundDuration(gg_snd_HorseLoop2, 3227)
    set gg_snd_HorseLoop3=CreateSound("Units\\Human\\Knight\\HorseLoop3.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_HorseLoop3, "HumanKnightMovement")
    call SetSoundDuration(gg_snd_HorseLoop3, 5317)
    set gg_snd_HeroMountainKingDeath=CreateSound("Units\\Human\\HeroMountainKing\\HeroMountainKingDeath.wav", false, true, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(gg_snd_HeroMountainKingDeath, "HeroMountainKingDeath")
    call SetSoundDuration(gg_snd_HeroMountainKingDeath, 2680)
    set gg_snd_ColdArrow2=CreateSound("Abilities\\Weapons\\ColdArrow\\ColdArrow2.wav", false, true, true, 10, 10, "MissilesEAX")
    call SetSoundParamsFromLabel(gg_snd_ColdArrow2, "ColdArrow")
    call SetSoundDuration(gg_snd_ColdArrow2, 1479)
    set gg_snd_DryadMissile2=CreateSound("Abilities\\Weapons\\Dryadmissile\\DryadMissile2.wav", false, true, true, 10, 10, "MissilesEAX")
    call SetSoundParamsFromLabel(gg_snd_DryadMissile2, "DryadMissile")
    call SetSoundDuration(gg_snd_DryadMissile2, 539)
    set gg_snd_DivineShield=CreateSound("Abilities\\Spells\\Human\\DivineShield\\DivineShield.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(gg_snd_DivineShield, "DivineShield")
    call SetSoundDuration(gg_snd_DivineShield, 1955)
    set gg_snd_BalrogAttack1=CreateSound("Units\\Demon\\DoomGuard\\BalrogAttack1.wav", false, true, true, 10, 10, "CombatSoundsEAX")
    call SetSoundParamsFromLabel(gg_snd_BalrogAttack1, "BalrogAttack1")
    call SetSoundDuration(gg_snd_BalrogAttack1, 1027)
    set gg_snd_FrostArmorTarget1=CreateSound("Abilities\\Spells\\Undead\\FrostArmor\\FrostArmorTarget1.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(gg_snd_FrostArmorTarget1, "FrostArmor")
    call SetSoundDuration(gg_snd_FrostArmorTarget1, 2995)
    set gg_snd_FrostmourneLoopUndead01=CreateSound("Sound\\Ambient\\DoodadEffects\\FrostmourneLoopUndead01.wav", true, true, true, 10, 10, "DoodadsEAX")
    call SetSoundParamsFromLabel(gg_snd_FrostmourneLoopUndead01, "FrostmourneLoop")
    call SetSoundDuration(gg_snd_FrostmourneLoopUndead01, 3320)
    set gg_snd_H09Arthas28a=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human09\\H09Arthas28a.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H09Arthas28a, "H09Arthas28a")
    call SetSoundDuration(gg_snd_H09Arthas28a, 1253)
    set gg_snd_GargoyleWhat1=CreateSound("Units\\Undead\\Gargoyle\\GargoyleWhat1.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_GargoyleWhat1, "GargoyleWhat")
    call SetSoundDuration(gg_snd_GargoyleWhat1, 3157)
    set gg_snd_GargoyleWhat2=CreateSound("Units\\Undead\\Gargoyle\\GargoyleWhat2.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_GargoyleWhat2, "GargoyleWhat")
    call SetSoundDuration(gg_snd_GargoyleWhat2, 3157)
    set gg_snd_HumanCallToArmsWhat1=CreateSound("Abilities\\Spells\\Human\\CallToArms\\HumanCallToArmsWhat1.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(gg_snd_HumanCallToArmsWhat1, "TownHallCallToArms")
    call SetSoundDuration(gg_snd_HumanCallToArmsWhat1, 3970)
    set gg_snd_AbominationYesAttack2=CreateSound("Units\\Undead\\Abomination\\AbominationYesAttack2.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_AbominationYesAttack2, "AbominationYesAttack")
    call SetSoundDuration(gg_snd_AbominationYesAttack2, 1195)
    set gg_snd_CityScapeMagicRunesLoop1=CreateSound("Sound\\Ambient\\DoodadEffects\\CityScapeMagicRunesLoop1.wav", true, true, true, 10, 10, "DoodadsEAX")
    call SetSoundParamsFromLabel(gg_snd_CityScapeMagicRunesLoop1, "MagicRunesLoop")
    call SetSoundDuration(gg_snd_CityScapeMagicRunesLoop1, 1149)
    set gg_snd_FrostmourneChant1=CreateSound("Sound\\Ambient\\DoodadEffects\\FrostmourneChant1.wav", false, false, false, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_FrostmourneChant1, "FrostmourneChantSound")
    call SetSoundDuration(gg_snd_FrostmourneChant1, 5038)
    call SetSoundVolume(gg_snd_FrostmourneChant1, 80)
    set gg_snd_MetalMediumBashStone1=CreateSound("Sound\\Units\\Combat\\MetalMediumBashStone1.wav", false, true, true, 10, 10, "CombatSoundsEAX")
    call SetSoundParamsFromLabel(gg_snd_MetalMediumBashStone1, "MetalMediumBashStone")
    call SetSoundDuration(gg_snd_MetalMediumBashStone1, 777)
    set gg_snd_WoodLightBashStone3=CreateSound("Sound\\Units\\Combat\\WoodLightBashStone3.wav", false, true, true, 10, 10, "CombatSoundsEAX")
    call SetSoundParamsFromLabel(gg_snd_WoodLightBashStone3, "WoodLightBashStone")
    call SetSoundDuration(gg_snd_WoodLightBashStone3, 921)
    set gg_snd_WoodLightBashStone2=CreateSound("Sound\\Units\\Combat\\WoodLightBashStone2.wav", false, true, true, 10, 10, "CombatSoundsEAX")
    call SetSoundParamsFromLabel(gg_snd_WoodLightBashStone2, "WoodLightBashStone")
    call SetSoundDuration(gg_snd_WoodLightBashStone2, 745)
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateBuildingsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'hcas', - 2880.0, - 6208.0, 270.000)
    set u=CreateUnit(p, 'hgtw', - 1408.0, - 6720.0, 270.000)
    set u=CreateUnit(p, 'hgtw', - 1088.0, - 6016.0, 270.000)
    set u=CreateUnit(p, 'hgtw', - 1472.0, - 4288.0, 270.000)
    set u=CreateUnit(p, 'hgtw', - 960.0, - 5120.0, 270.000)
    set gg_unit_hgtw_0009=CreateUnit(p, 'hgtw', - 2304.0, - 3264.0, 270.000)
    set u=CreateUnit(p, 'hgtw', - 3008.0, - 3136.0, 270.000)
    set u=CreateUnit(p, 'hgtw', - 3840.0, - 5568.0, 270.000)
    set u=CreateUnit(p, 'hgtw', - 3264.0, - 6592.0, 270.000)
    set u=CreateUnit(p, 'hgtw', - 1920.0, - 4800.0, 270.000)
    set u=CreateUnit(p, 'hbar', - 2240.0, - 4800.0, 270.000)
    set u=CreateUnit(p, 'hbar', - 1920.0, - 5504.0, 270.000)
    set u=CreateUnit(p, 'hbla', - 3456.0, - 5376.0, 270.000)
    set u=CreateUnit(p, 'hlum', - 3616.0, - 4960.0, 270.000)
    set u=CreateUnit(p, 'hgra', - 2368.0, - 6272.0, 270.000)
    set u=CreateUnit(p, 'harm', - 1856.0, - 6080.0, 270.000)
    set u=CreateUnit(p, 'halt', - 3040.0, - 4640.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 2112.0, - 3840.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 3200.0, - 4032.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1984.0, - 3840.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 3136.0, - 3904.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1984.0, - 6528.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 2048.0, - 6656.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1920.0, - 6656.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1856.0, - 6528.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 3264.0, - 3840.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 3328.0, - 3968.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 3392.0, - 4352.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 3328.0, - 4480.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 2048.0, - 3968.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1920.0, - 4352.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1792.0, - 4352.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1856.0, - 4480.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 2624.0, - 6656.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 2560.0, - 6784.0, 270.000)
    set u=CreateUnit(p, 'hars', - 2304.0, - 4288.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_hcth_0105=CreateUnit(p, 'hcth', - 3472.7, - 5559.9, 297.654)
    set gg_unit_hkni_0110=CreateUnit(p, 'hkni', - 3025.3, - 3502.3, 54.731)
    set gg_unit_hkni_0111=CreateUnit(p, 'hkni', - 2547.9, - 3592.4, 70.549)
    set gg_unit_hmpr_0112=CreateUnit(p, 'hmpr', - 2999.9, - 4037.0, 293.750)
    set gg_unit_hrif_0115=CreateUnit(p, 'hrif', - 1435.5, - 5335.1, 168.858)
    set gg_unit_hrif_0117=CreateUnit(p, 'hrif', - 3054.0, - 5107.4, 22.481)
    set gg_unit_hfoo_0123=CreateUnit(p, 'hfoo', - 1505.1, - 5150.9, 248.476)
    set gg_unit_hfoo_0124=CreateUnit(p, 'hfoo', - 1700.4, - 5247.9, 351.472)
    set gg_unit_hkni_0125=CreateUnit(p, 'hkni', - 2858.6, - 4277.3, 180.090)
    set life=GetUnitState(gg_unit_hkni_0125, UNIT_STATE_LIFE)
    call SetUnitState(gg_unit_hkni_0125, UNIT_STATE_LIFE, 0.75 * life)
    set gg_unit_hfoo_0126=CreateUnit(p, 'hfoo', - 2132.3, - 5965.7, 146.733)
    set gg_unit_hsor_0128=CreateUnit(p, 'hsor', - 2319.4, - 5761.0, 292.102)
    set gg_unit_hmpr_0129=CreateUnit(p, 'hmpr', - 2151.7, - 5789.4, 199.075)
    set gg_unit_hmpr_0130=CreateUnit(p, 'hmpr', - 2949.9, - 4900.6, 273.132)
    set gg_unit_hgyr_0132=CreateUnit(p, 'hgyr', - 2066.7, - 3434.1, 195.420)
    set gg_unit_hgry_0133=CreateUnit(p, 'hgry', - 3529.5, - 3953.1, 82.620)
    set gg_unit_hpea_0134=CreateUnit(p, 'hpea', - 3301.9, - 6124.2, 176.226)
    set gg_unit_hpea_0136=CreateUnit(p, 'hpea', - 3349.1, - 6227.2, 306.770)
    set gg_unit_hpea_0137=CreateUnit(p, 'hpea', - 3262.1, - 6263.9, 118.909)
    set gg_unit_hpea_0138=CreateUnit(p, 'hpea', - 3636.3, - 4703.6, 150.122)
    set gg_unit_hrif_0210=CreateUnit(p, 'hrif', - 2819.0, - 5091.5, 146.331)
    set gg_unit_hrif_0211=CreateUnit(p, 'hrif', - 2337.1, - 5924.1, 22.697)
    set gg_unit_hkni_0250=CreateUnit(p, 'hkni', - 4148.3, - 6317.2, 163.943)
    set gg_unit_hkni_0251=CreateUnit(p, 'hkni', - 4141.8, - 6133.7, 182.551)
    set gg_unit_hrif_0252=CreateUnit(p, 'hrif', - 4017.4, - 6074.0, 194.358)
    set gg_unit_hrif_0253=CreateUnit(p, 'hrif', - 4021.9, - 6193.6, 180.092)
    set gg_unit_hrif_0254=CreateUnit(p, 'hrif', - 4024.8, - 6332.3, 163.396)
endfunction

//===========================================================================
function CreateBuildingsForPlayer2 takes nothing returns nothing
    local player p= Player(2)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateBlightedGoldmine(p, - 1408.0, 1600.0, 270.000)
    call SetResourceAmount(u, 25000)
    set u=CreateUnit(p, 'ugrv', - 2048.0, 1408.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer2 takes nothing returns nothing
    local player p= Player(2)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ugho', - 1994.3, 1855.9, 355.649)
    set u=CreateUnit(p, 'uaco', - 1621.5, 1469.3, 251.430)
    set u=CreateUnit(p, 'uaco', - 1537.4, 1364.5, 104.483)
    set u=CreateUnit(p, 'uaco', - 1548.9, 1238.1, 21.336)
    set u=CreateUnit(p, 'uaco', - 1687.3, 1215.7, 25.632)
    set u=CreateUnit(p, 'uaco', - 1737.5, 1365.6, 36.388)
endfunction

//===========================================================================
function CreateBuildingsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateBlightedGoldmine(p, 6272.0, - 5568.0, 270.000)
    call SetResourceAmount(u, 35000)
    set u=CreateUnit(p, 'ugrv', 5056.0, - 5824.0, 270.000)
    set gg_unit_unp2_0051=CreateUnit(p, 'unp2', 5504.0, - 5184.0, 270.000)
    set u=CreateUnit(p, 'uzig', 4064.0, - 5728.0, 270.000)
    set u=CreateUnit(p, 'uzg1', 3936.0, - 6624.0, 270.000)
    set u=CreateUnit(p, 'uzig', 4768.0, - 4768.0, 270.000)
    set u=CreateUnit(p, 'uzig', 6816.0, - 5536.0, 270.000)
    set u=CreateUnit(p, 'uzg1', 6048.0, - 3680.0, 270.000)
    set u=CreateUnit(p, 'uzig', 5728.0, - 5856.0, 270.000)
    set u=CreateUnit(p, 'uzg1', 6560.0, - 6176.0, 270.000)
    set u=CreateUnit(p, 'uzig', 5216.0, - 4448.0, 270.000)
    set gg_unit_usep_0084=CreateUnit(p, 'usep', 6272.0, - 4224.0, 270.000)
    set u=CreateUnit(p, 'uslh', 4736.0, - 5312.0, 270.000)
    set u=CreateUnit(p, 'usep', 4160.0, - 4928.0, 270.000)
    set u=CreateUnit(p, 'uaod', 6176.0, - 4960.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'uaco', 5970.9, - 5313.7, 339.356)
    set u=CreateUnit(p, 'uaco', 6022.8, - 5196.0, 226.589)
    set u=CreateUnit(p, 'uaco', 5912.9, - 5106.5, 219.151)
    set u=CreateUnit(p, 'uaco', 5824.6, - 5185.3, 296.794)
    set u=CreateUnit(p, 'uaco', 5858.2, - 5297.1, 93.551)
    set u=CreateUnit(p, 'ugho', 5412.6, - 5815.2, 272.173)
    set u=CreateUnit(p, 'ugho', 4274.0, - 5747.2, 271.030)
    set u=CreateUnit(p, 'ucry', 6087.0, - 4456.8, 318.185)
    set u=CreateUnit(p, 'ucry', 6627.6, - 5831.3, 125.193)
    set u=CreateUnit(p, 'uabo', 4428.8, - 4615.7, 267.284)
    set u=CreateUnit(p, 'uabo', 6254.3, - 6020.5, 63.525)
endfunction

//===========================================================================
function CreateUnitsForPlayer4 takes nothing returns nothing
    local player p= Player(4)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ucry', - 2615.9, - 1253.3, 274.538)
    set u=CreateUnit(p, 'unec', - 2427.7, - 1101.5, 270.284)
    set u=CreateUnit(p, 'uabo', - 2559.2, - 1467.4, 259.092)
    set u=CreateUnit(p, 'ugho', 271.8, - 3903.4, 223.580)
    set gg_unit_ucry_0216=CreateUnit(p, 'ucry', - 2421.7, - 1266.2, 258.956)
    set u=CreateUnit(p, 'uabo', - 2331.1, - 1504.4, 258.773)
    set u=CreateUnit(p, 'uabo', 41.6, - 3727.9, 225.881)
    set u=CreateUnit(p, 'ugar', 153.8, - 3347.2, 226.112)
    set u=CreateUnit(p, 'ugar', 318.3, - 3489.4, 219.411)
    set u=CreateUnit(p, 'ugho', - 92.6, - 3400.8, 231.044)
    set u=CreateUnit(p, 'ucry', - 2222.8, - 1323.7, 259.217)
    set gg_unit_unec_0230=CreateUnit(p, 'unec', 147.2, - 3520.7, 220.071)
    set u=CreateUnit(p, 'unec', 282.0, - 3690.1, 215.605)
    set u=CreateUnit(p, 'ugar', 405.9, - 3638.9, 214.081)
endfunction

//===========================================================================
function CreateBuildingsForPlayer6 takes nothing returns nothing
    local player p= Player(6)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'uzig', 1824.0, 2656.0, 270.000)
    set u=CreateUnit(p, 'uzig', 2464.0, 2016.0, 270.000)
    set u=CreateUnit(p, 'uzg1', 2656.0, 4000.0, 270.000)
    set u=CreateUnit(p, 'uzg1', 3552.0, 2848.0, 270.000)
    set u=CreateUnit(p, 'uzig', 4128.0, 4960.0, 270.000)
    set u=CreateUnit(p, 'ugrv', 5568.0, 4672.0, 270.000)
    set u=CreateUnit(p, 'unp2', 3904.0, 5568.0, 270.000)
    set gg_unit_usep_0061=CreateUnit(p, 'usep', 4032.0, 2624.0, 270.000)
    set u=CreateUnit(p, 'usep', 3264.0, 4224.0, 270.000)
    set gg_unit_uslh_0063=CreateUnit(p, 'uslh', 5632.0, 4032.0, 270.000)
    set u=CreateUnit(p, 'utod', 4608.0, 2688.0, 270.000)
    set u=CreateUnit(p, 'usap', 5504.0, 3520.0, 270.000)
    set u=CreateUnit(p, 'uzig', 4448.0, 2080.0, 270.000)
    set u=CreateUnit(p, 'uzig', 4832.0, 3488.0, 270.000)
    set u=CreateUnit(p, 'uzig', 3680.0, 6304.0, 270.000)
    set u=CreateUnit(p, 'uzg1', 4960.0, 4640.0, 270.000)
    set gg_unit_uaod_0072=CreateUnit(p, 'uaod', 4576.0, 5472.0, 270.000)
    set u=CreateUnit(p, 'uzg1', 5600.0, 2912.0, 270.000)
    set u=CreateUnit(p, 'uslh', 3328.0, 4992.0, 270.000)
    set u=CreateUnit(p, 'ubon', 5120.0, 2944.0, 270.000)
    set u=CreateBlightedGoldmine(p, 5120.0, 5376.0, 270.000)
    call SetResourceAmount(u, 50000)
endfunction

//===========================================================================
function CreateUnitsForPlayer6 takes nothing returns nothing
    local player p= Player(6)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'uabo', 3381.0, 2406.7, 285.324)
    set u=CreateUnit(p, 'ushd', 4321.6, 5258.5, 32.015)
    set u=CreateUnit(p, 'uaco', 5087.2, 5113.9, 285.609)
    set u=CreateUnit(p, 'uaco', 5217.9, 5134.5, 238.444)
    set u=CreateUnit(p, 'uaco', 5310.1, 5225.6, 279.303)
    set u=CreateUnit(p, 'uaco', 4997.1, 5173.2, 90.607)
    set u=CreateUnit(p, 'ufro', 4931.2, 3035.3, 204.000)
    set u=CreateUnit(p, 'uaco', 4895.6, 5257.6, 146.342)
    set gg_unit_Umal_0177=CreateUnit(p, 'Umal', 4545.7, 5176.7, 311.180)
    set u=CreateUnit(p, 'unec', 5351.0, 3785.2, 344.509)
    set u=CreateUnit(p, 'ugar', 3859.0, 4583.8, 226.952)
    set u=CreateUnit(p, 'ucry', 3031.7, 4137.2, 357.440)
    set u=CreateUnit(p, 'unec', 3432.4, 5534.4, 213.196)
    set u=CreateUnit(p, 'umtw', 3686.7, 3587.5, 24.083)
    set u=CreateUnit(p, 'ucry', 2564.7, 2364.6, 203.176)
    set u=CreateUnit(p, 'ugar', 2585.6, 3790.3, 337.719)
    set u=CreateUnit(p, 'ugar', 4111.9, 3043.5, 355.539)
    set u=CreateUnit(p, 'uabo', 5099.2, 2447.3, 24.962)
    set u=CreateUnit(p, 'ugho', 2098.2, 2717.7, 350.749)
    set u=CreateUnit(p, 'ugho', 4112.7, 2368.8, 61.437)
    set u=CreateUnit(p, 'ugho', 4340.8, 5472.0, 289.762)
    set u=CreateUnit(p, 'ugho', 5624.9, 4383.2, 292.069)
    set u=CreateUnit(p, 'ucry', 4089.2, 6012.3, 358.857)
endfunction

//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_nC00_0011=CreateUnit(p, 'nC00', - 2858.3, 6398.0, 248.194)
    set u=CreateUnit(p, 'nwwd', - 5569.8, - 742.9, 209.998)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000095_DropItems)
    set u=CreateUnit(p, 'nwwg', - 5565.3, - 575.1, 220.829)
    set u=CreateUnit(p, 'nwwg', - 5557.5, - 907.0, 195.860)
    set u=CreateUnit(p, 'nits', 518.6, - 159.4, 0.000)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000199_DropItems)
    set u=CreateUnit(p, 'nitw', 6999.4, 1591.7, 227.320)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000076_DropItems)
    set u=CreateUnit(p, 'nits', 6624.1, 1489.2, 277.253)
    set u=CreateUnit(p, 'nits', 6933.6, 1318.7, 212.620)
    set u=CreateUnit(p, 'nith', 6791.8, 1689.1, 272.107)
    set u=CreateUnit(p, 'nitp', 6395.7, 1542.8, 298.497)
    set u=CreateUnit(p, 'nitr', 680.6, 17.3, 278.514)
    set u=CreateUnit(p, 'nitr', 704.7, - 463.7, 35.249)
    set u=CreateUnit(p, 'nitp', 519.8, - 312.3, 19.087)
    set gg_unit_nwnr_0107=CreateUnit(p, 'nwnr', - 6176.7, 3569.0, 2.285)
    set gg_unit_nrvs_0116=CreateUnit(p, 'nrvs', - 3036.5, 6589.5, 263.421)
    set gg_unit_nrvs_0118=CreateUnit(p, 'nrvs', - 2571.9, 6549.7, 236.419)
    set gg_unit_nwwf_0120=CreateUnit(p, 'nwwf', - 6153.4, 3325.6, 24.874)
    set u=CreateUnit(p, 'nwwf', - 6208.1, 3890.6, 312.744)
    set u=CreateUnit(p, 'nwwf', - 5591.6, 4059.0, 271.612)
    set gg_unit_nskm_0135=CreateUnit(p, 'nskm', - 3248.8, 6363.2, 290.141)
    set gg_unit_nwwd_0139=CreateUnit(p, 'nwwd', - 7036.2, 2045.4, 345.390)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, gg_unit_nwwd_0139, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, gg_unit_nwwd_0139, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000060_DropItems)
    set gg_unit_nskm_0147=CreateUnit(p, 'nskm', - 2514.9, 6167.2, 238.557)
    set u=CreateUnit(p, 'nspd', - 281.2, - 1611.6, 277.227)
    set u=CreateUnit(p, 'nspd', 238.6, - 1348.9, 57.471)
    set u=CreateUnit(p, 'nspd', 444.5, - 2311.8, 275.293)
    set u=CreateUnit(p, 'nnwl', 125.4, - 1931.5, 38.827)
    set u=CreateUnit(p, 'nnws', 239.2, - 1612.4, 280.054)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000188_DropItems)
    set u=CreateUnit(p, 'nnwr', 491.5, - 1892.5, 190.050)
    call IssueImmediateOrder(u, "autodispeloff")
    call IssueImmediateOrder(u, "raisedeadoff")
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000155_DropItems)
    set gg_unit_nwwf_0161=CreateUnit(p, 'nwwf', - 5425.3, 1600.6, 231.195)
    set gg_unit_nwwg_0255=CreateUnit(p, 'nwwg', - 7077.8, 2237.9, 326.059)
    set gg_unit_nwwg_0256=CreateUnit(p, 'nwwg', - 7145.7, 1915.2, 0.324)
    set gg_unit_nwwf_0257=CreateUnit(p, 'nwwf', - 6458.7, 496.1, 265.800)
    set gg_unit_nwwg_0259=CreateUnit(p, 'nwwg', - 5223.6, 1470.1, 218.931)
    set u=CreateUnit(p, 'nwns', - 5785.6, 4089.7, 266.150)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000131_DropItems)
    set u=CreateUnit(p, 'nwen', - 5428.3, 3972.1, 250.812)
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_ngol_0003=CreateUnit(p, 'ngol', - 3648.0, - 6336.0, 270.000)
    call SetResourceAmount(gg_unit_ngol_0003, 30000)
    set gg_unit_ngme_0043=CreateUnit(p, 'ngme', 5504.0, - 1024.0, 270.000)
    set gg_unit_nmr7_0044=CreateUnit(p, 'nmr7', 2176.0, - 5632.0, 270.000)
    call SetUnitColor(gg_unit_nmr7_0044, ConvertPlayerColor(3))
    set u=CreateUnit(p, 'ngol', - 256.0, - 2432.0, 270.000)
    call SetResourceAmount(u, 15000)
    set u=CreateUnit(p, 'nmoo', - 4544.0, 2176.0, 270.000)
    set u=CreateUnit(p, 'nth0', 6592.0, 1728.0, 270.000)
    set u=CreateUnit(p, 'nth1', 7008.0, 1824.0, 270.000)
    set u=CreateUnit(p, 'nnzg', - 416.0, - 1760.0, 270.000)
    set u=CreateUnit(p, 'nnzg', 416.0, - 1376.0, 270.000)
    set u=CreateUnit(p, 'nnzg', 608.0, - 2208.0, 270.000)
    set gg_unit_nwgt_0209=CreateUnit(p, 'nwgt', - 6592.0, - 5120.0, 270.000)
    call WaygateSetDestination(gg_unit_nwgt_0209, GetRectCenterX(gg_rct_WayGateExit), GetRectCenterY(gg_rct_WayGateExit))
    call WaygateActivate(gg_unit_nwgt_0209, true)
    set gg_unit_nfrm_0226=CreateUnit(p, 'nfrm', - 1088.0, 4480.0, 270.000)
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'nsea', 1786.2, - 1427.2, 285.664)
    set u=CreateUnit(p, 'nsea', 2022.1, - 1559.6, 286.444)
    set u=CreateUnit(p, 'nsea', 1634.9, - 2002.9, 92.068)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer1()
    call CreateBuildingsForPlayer2()
    call CreateBuildingsForPlayer3()
    call CreateBuildingsForPlayer6()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer1()
    call CreateUnitsForPlayer2()
    call CreateUnitsForPlayer3()
    call CreateUnitsForPlayer4()
    call CreateUnitsForPlayer6()
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreateNeutralHostile()
    call CreateNeutralPassive()
    call CreatePlayerUnits()
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_ExitArthasInitialPosition=Rect(1088.0, 5856.0, 1152.0, 5920.0)
    set gg_rct_ExitArthaslPositionRunStart=Rect(896.0, 9600.0, 1024.0, 9728.0)
    set gg_rct_ExitArthasMovesToMalganis=Rect(1888.0, 5920.0, 1952.0, 5984.0)
    set gg_rct_ExitArthasPositionRunTo=Rect(- 1760.0, 10208.0, - 1632.0, 10336.0)
    set gg_rct_ExitCinematicWeather_Blizzard=Rect(- 32.0, 4704.0, 3040.0, 7520.0)
    set gg_rct_ExitCinematicWeather_Blizzard_Running=Rect(- 1952.0, 8544.0, 1120.0, 11360.0)
    set gg_rct_ExitCinematicWeather_Wind=Rect(64.0, 4704.0, 3136.0, 7520.0)
    set gg_rct_ExitCinematicWeather_Wind_Running=Rect(- 1984.0, 8768.0, 1184.0, 11296.0)
    set gg_rct_ExitMalganisInitialPosition=Rect(1280.0, 6272.0, 1408.0, 6400.0)
    set gg_rct_ExitMalganisLookTo_1=Rect(1472.0, 5856.0, 1504.0, 5888.0)
    set gg_rct_ExitMalganisLookTo_2=Rect(1632.0, 6080.0, 1664.0, 6112.0)
    set gg_rct_FrostmourneArthasAfterMalsDeath=Rect(- 1280.0, 4352.0, - 1216.0, 4416.0)
    set gg_rct_FrostmourneArthasAtDias=Rect(- 1280.0, 4480.0, - 1216.0, 4544.0)
    set gg_rct_FrostmourneArthasBegin=Rect(- 2432.0, 4480.0, - 2304.0, 4608.0)
    set gg_rct_FrostmourneArthasEnters=Rect(- 1792.0, 4576.0, - 1728.0, 4640.0)
    set gg_rct_FrostmourneArthasOutside=Rect(- 6816.0, - 5408.0, - 6720.0, - 5312.0)
    set gg_rct_FrostmourneArthasTakesSword=Rect(- 1216.0, 4448.0, - 1152.0, 4512.0)
    set gg_rct_FrostmourneCaptainSpawn=Rect(- 6240.0, - 5568.0, - 6144.0, - 5472.0)
    set gg_rct_FrostmourneCaptainToArthas=Rect(- 6592.0, - 5536.0, - 6496.0, - 5440.0)
    set gg_rct_FrostmourneDiasVisibility=Rect(- 2528.0, 3168.0, 96.0, 6112.0)
    set gg_rct_FrostmourneMoveActorsCheck=Rect(- 4544.0, 3328.0, - 2016.0, 6816.0)
    set gg_rct_FrostmourneMuradinBegin=Rect(- 2432.0, 4352.0, - 2304.0, 4480.0)
    set gg_rct_FrostmourneMuradinEnters=Rect(- 1792.0, 4288.0, - 1728.0, 4352.0)
    set gg_rct_FrostmourneMuradinReads=Rect(- 1536.0, 4384.0, - 1472.0, 4448.0)
    set gg_rct_FrostmourneMuradinToArthas=Rect(- 1216.0, 4160.0, - 1152.0, 4224.0)
    set gg_rct_FrostmourneValleyVisibilityA=Rect(- 8032.0, - 3840.0, - 4928.0, 2688.0)
    set gg_rct_FrostmourneValleyVisibilityB=Rect(- 7872.0, 768.0, - 4064.0, 7776.0)
    set gg_rct_FrostmourneValleyVisibilityC=Rect(- 4384.0, 3264.0, - 1792.0, 7296.0)
    set gg_rct_InitArthasLooks=Rect(- 2752.0, - 5568.0, - 2656.0, - 5472.0)
    set gg_rct_InitPlaceArthas=Rect(- 2496.0, - 5408.0, - 2400.0, - 5312.0)
    set gg_rct_InitPlaceMuradin=Rect(- 3008.0, - 5280.0, - 2912.0, - 5184.0)
    set gg_rct_IntroArthasEscortGroup=Rect(- 4224.0, - 6400.0, - 3808.0, - 6016.0)
    set gg_rct_IntroArthasToCaptain=Rect(- 3488.0, - 5824.0, - 3392.0, - 5728.0)
    set gg_rct_IntroArthasToWaygate=Rect(- 6496.0, - 5344.0, - 6400.0, - 5248.0)
    set gg_rct_IntroArthasWaygateForce=Rect(- 7104.0, - 5888.0, - 6208.0, - 4992.0)
    set gg_rct_IntroCancelVisibility=Rect(- 7264.0, - 6368.0, - 4704.0, - 4992.0)
    set gg_rct_IntroCaptainAlert=Rect(- 1568.0, - 5056.0, - 1472.0, - 4960.0)
    set gg_rct_IntroEscortKnight01=Rect(- 6688.0, - 5408.0, - 6592.0, - 5312.0)
    set gg_rct_IntroEscortKnight02=Rect(- 6848.0, - 5344.0, - 6752.0, - 5248.0)
    set gg_rct_IntroEscortRifleman01=Rect(- 6688.0, - 5536.0, - 6592.0, - 5440.0)
    set gg_rct_IntroEscortRifleman02=Rect(- 6560.0, - 5536.0, - 6464.0, - 5440.0)
    set gg_rct_IntroEscortRifleman03=Rect(- 6432.0, - 5440.0, - 6336.0, - 5344.0)
    set gg_rct_IntroFootman01Alert=Rect(- 2592.0, - 3360.0, - 2496.0, - 3264.0)
    set gg_rct_IntroFootman02Alert=Rect(- 1248.0, - 4736.0, - 1152.0, - 4640.0)
    set gg_rct_IntroFootman03Alert=Rect(- 2752.0, - 3424.0, - 2656.0, - 3328.0)
    set gg_rct_IntroFootman04Alert=Rect(- 1344.0, - 6496.0, - 1248.0, - 6400.0)
    set gg_rct_IntroGreenAttackRegion=Rect(- 3968.0, - 6144.0, - 3552.0, - 5728.0)
    set gg_rct_IntroGryphonAlert=Rect(- 3104.0, - 3392.0, - 3008.0, - 3296.0)
    set gg_rct_IntroGryphonPatrolA=Rect(- 2368.0, - 3616.0, - 2272.0, - 3520.0)
    set gg_rct_IntroGyrocopterAlert=Rect(- 1184.0, - 5024.0, - 1088.0, - 4928.0)
    set gg_rct_IntroGyrocopterPatrolA=Rect(- 3264.0, - 3680.0, - 3168.0, - 3584.0)
    set gg_rct_IntroKnight01Alert=Rect(- 1344.0, - 6304.0, - 1248.0, - 6208.0)
    set gg_rct_IntroKnightHealedMove=Rect(- 1504.0, - 4896.0, - 1408.0, - 4800.0)
    set gg_rct_IntroKnightMoveA=Rect(- 2784.0, - 3616.0, - 2688.0, - 3520.0)
    set gg_rct_IntroKnightMoveB=Rect(- 1376.0, - 4640.0, - 1280.0, - 4544.0)
    set gg_rct_IntroKnightMoveC=Rect(- 2976.0, - 3360.0, - 2880.0, - 3264.0)
    set gg_rct_IntroMortar01Alert=Rect(- 2624.0, - 3712.0, - 2528.0, - 3584.0)
    set gg_rct_IntroMortar02Alert=Rect(- 1408.0, - 5024.0, - 1312.0, - 4928.0)
    set gg_rct_IntroMortar03Alert=Rect(- 1536.0, - 6528.0, - 1440.0, - 6432.0)
    set gg_rct_IntroMortarMoveA=Rect(- 3328.0, - 5120.0, - 3232.0, - 5024.0)
    set gg_rct_IntroMuradinToArthas=Rect(- 2688.0, - 5344.0, - 2592.0, - 5248.0)
    set gg_rct_IntroMuradintoCaptain=Rect(- 3296.0, - 5664.0, - 3200.0, - 5568.0)
    set gg_rct_IntroMuradinToWaygate=Rect(- 6432.0, - 5536.0, - 6336.0, - 5440.0)
    set gg_rct_IntroNortheastUndeadMoveTo=Rect(- 160.0, - 3968.0, - 32.0, - 3840.0)
    set gg_rct_IntroNortheastUndeadWave=Rect(- 352.0, - 4320.0, 544.0, - 3136.0)
    set gg_rct_IntroNorthUndeadMoveTo=Rect(- 2496.0, - 1728.0, - 2368.0, - 1600.0)
    set gg_rct_IntroNorthUndeadWave=Rect(- 2784.0, - 1888.0, - 1984.0, - 896.0)
    set gg_rct_IntroPriest01Alert=Rect(- 1696.0, - 4768.0, - 1600.0, - 4672.0)
    set gg_rct_IntroPriest02Alert=Rect(- 2432.0, - 3520.0, - 2336.0, - 3424.0)
    set gg_rct_IntroPriest03Alert=Rect(- 1440.0, - 6080.0, - 1344.0, - 5984.0)
    set gg_rct_IntroRifleman01Alert=Rect(- 2624.0, - 3520.0, - 2528.0, - 3424.0)
    set gg_rct_IntroRifleman02Alert=Rect(- 2976.0, - 3680.0, - 2880.0, - 3584.0)
    set gg_rct_IntroRifleman03Alert=Rect(- 1536.0, - 4736.0, - 1440.0, - 4640.0)
    set gg_rct_IntroRifleman04Alert=Rect(- 2912.0, - 3488.0, - 2816.0, - 3392.0)
    set gg_rct_IntroRifleman05Alert=Rect(- 1216.0, - 5216.0, - 1120.0, - 5120.0)
    set gg_rct_IntroRifleman06Alert=Rect(- 1344.0, - 4960.0, - 1248.0, - 4864.0)
    set gg_rct_IntroRifleman07Alert=Rect(- 1312.0, - 6016.0, - 1216.0, - 5920.0)
    set gg_rct_IntroRifleman08Alert=Rect(- 1440.0, - 6432.0, - 1344.0, - 6336.0)
    set gg_rct_IntroSorceress01=Rect(- 1568.0, - 6688.0, - 1472.0, - 6592.0)
    set gg_rct_IntroSorceress02=Rect(- 1120.0, - 5312.0, - 1024.0, - 5216.0)
    set gg_rct_IntroSpawnMalganis=Rect(- 2624.0, - 2304.0, - 2496.0, - 2176.0)
    set gg_rct_IntroTriggerArthasEscort=Rect(- 4640.0, - 6624.0, - 4480.0, - 5504.0)
    set gg_rct_IntroValleyArthas=Rect(- 6656.0, - 2464.0, - 6560.0, - 2368.0)
    set gg_rct_IntroValleyKnight01=Rect(- 6752.0, - 2592.0, - 6656.0, - 2496.0)
    set gg_rct_IntroValleyKnight02=Rect(- 6272.0, - 2592.0, - 6176.0, - 2496.0)
    set gg_rct_IntroValleyMuradin=Rect(- 6368.0, - 2464.0, - 6272.0, - 2368.0)
    set gg_rct_IntroValleyRifleman01=Rect(- 6656.0, - 2720.0, - 6560.0, - 2624.0)
    set gg_rct_IntroValleyRifleman02=Rect(- 6560.0, - 2784.0, - 6368.0, - 2560.0)
    set gg_rct_IntroValleyRifleman03=Rect(- 6368.0, - 2720.0, - 6272.0, - 2624.0)
    set gg_rct_IntroValleyUnitFacing=Rect(- 6560.0, - 1216.0, - 6432.0, - 1088.0)
    set gg_rct_ItemMuradin01=Rect(- 2976.0, - 5664.0, - 2912.0, - 5600.0)
    set gg_rct_ItemMuradin02=Rect(- 2880.0, - 5664.0, - 2816.0, - 5600.0)
    set gg_rct_ItemMuradin03=Rect(- 2976.0, - 5760.0, - 2912.0, - 5696.0)
    set gg_rct_ItemMuradin04=Rect(- 2880.0, - 5760.0, - 2816.0, - 5696.0)
    set gg_rct_ItemMuradin05=Rect(- 2976.0, - 5856.0, - 2912.0, - 5792.0)
    set gg_rct_ItemMuradin06=Rect(- 2880.0, - 5856.0, - 2816.0, - 5792.0)
    set gg_rct_ValleyFirstWolfAttack=Rect(- 6400.0, - 1248.0, - 6048.0, - 864.0)
    set gg_rct_ValleyFirstWolves=Rect(- 5760.0, - 1056.0, - 5376.0, - 480.0)
    set gg_rct_ValleyGhost01=Rect(- 5248.0, 6400.0, - 5152.0, 6496.0)
    set gg_rct_ValleyGhost02=Rect(- 5152.0, 6112.0, - 5056.0, 6208.0)
    set gg_rct_ValleyGraveyardTrigger=Rect(- 5408.0, 5984.0, - 4736.0, 6944.0)
    set gg_rct_ValleyGuardianTrigger=Rect(- 3392.0, 5632.0, - 2400.0, 6016.0)
    set gg_rct_ValleyGuardianVisibility=Rect(- 2912.0, 6336.0, - 2848.0, 6400.0)
    set gg_rct_ValleySkelArcher01=Rect(- 5504.0, 6592.0, - 5408.0, 6688.0)
    set gg_rct_ValleySkelArcher02=Rect(- 5376.0, 6624.0, - 5280.0, 6720.0)
    set gg_rct_ValleySkelArcher03=Rect(- 5248.0, 6592.0, - 5152.0, 6688.0)
    set gg_rct_ValleySkelArcher04=Rect(- 5088.0, 6592.0, - 4992.0, 6688.0)
    set gg_rct_ValleySkelArcher05=Rect(- 4960.0, 6560.0, - 4864.0, 6656.0)
    set gg_rct_ValleySkelArcher06=Rect(- 4960.0, 6400.0, - 4864.0, 6496.0)
    set gg_rct_ValleyTreeBarrier=Rect(- 2528.0, 4128.0, - 2240.0, 4704.0)
    set gg_rct_ValleyWhiteWolfRun=Rect(- 5504.0, 1536.0, - 5408.0, 1664.0)
    set gg_rct_ValleyWolvesAttack=Rect(- 6144.0, 992.0, - 5888.0, 2112.0)
    set gg_rct_WayGateExit=Rect(- 6912.0, 8160.0, - 5312.0, 9728.0)
    set gg_rct_WayGateExit_BlackMask=Rect(- 7264.0, 7808.0, - 4768.0, 10176.0)
    set gg_rct_GargoyleSound=Rect(- 192.0, - 3744.0, - 96.0, - 3648.0)
    set gg_rct_CallToArmsSound=Rect(- 2688.0, - 4864.0, - 2496.0, - 4704.0)
    set gg_rct_FrostmourneSound=Rect(- 1152.0, 4416.0, - 1024.0, 4544.0)
    set gg_rct_HammerDrop=Rect(- 1344.0, 4448.0, - 1280.0, 4512.0)
    set gg_rct_ScrollReplace01=Rect(- 3072.0, - 5664.0, - 3008.0, - 5600.0)
    set gg_rct_ScrollReplace02=Rect(- 3072.0, - 5760.0, - 3008.0, - 5696.0)
    set gg_rct_ScrollReplace03=Rect(- 3072.0, - 5856.0, - 3008.0, - 5792.0)
    set gg_rct_AmuletReplace01=Rect(- 3168.0, - 5664.0, - 3104.0, - 5600.0)
    set gg_rct_AmuletReplace02=Rect(- 3168.0, - 5760.0, - 3104.0, - 5696.0)
    set gg_rct_AmuletReplace03=Rect(- 3168.0, - 5856.0, - 3104.0, - 5792.0)
endfunction

//***************************************************************************
//*
//*  Cameras
//*
//***************************************************************************

function CreateCameras takes nothing returns nothing

    set gg_cam_Camera_026=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Camera_026, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_026, CAMERA_FIELD_ROTATION, 121.7, 0.0)
    call CameraSetupSetField(gg_cam_Camera_026, CAMERA_FIELD_ANGLE_OF_ATTACK, 333.4, 0.0)
    call CameraSetupSetField(gg_cam_Camera_026, CAMERA_FIELD_TARGET_DISTANCE, 982.1, 0.0)
    call CameraSetupSetField(gg_cam_Camera_026, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_026, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_026, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Camera_026, 1204.5, 6313.2, 0.0)

    set gg_cam_Camera_027=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Camera_027, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_027, CAMERA_FIELD_ROTATION, 239.6, 0.0)
    call CameraSetupSetField(gg_cam_Camera_027, CAMERA_FIELD_ANGLE_OF_ATTACK, 327.8, 0.0)
    call CameraSetupSetField(gg_cam_Camera_027, CAMERA_FIELD_TARGET_DISTANCE, 785.6, 0.0)
    call CameraSetupSetField(gg_cam_Camera_027, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_027, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_027, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Camera_027, 1267.6, 6210.8, 0.0)

    set gg_cam_Camera_028=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Camera_028, CAMERA_FIELD_ZOFFSET, 40.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_028, CAMERA_FIELD_ROTATION, 205.5, 0.0)
    call CameraSetupSetField(gg_cam_Camera_028, CAMERA_FIELD_ANGLE_OF_ATTACK, 323.2, 0.0)
    call CameraSetupSetField(gg_cam_Camera_028, CAMERA_FIELD_TARGET_DISTANCE, 771.5, 0.0)
    call CameraSetupSetField(gg_cam_Camera_028, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_028, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_028, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Camera_028, 1343.2, 6343.6, 0.0)

    set gg_cam_Exit_Arthas_01=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Exit_Arthas_01, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Arthas_01, CAMERA_FIELD_ROTATION, 183.1, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Arthas_01, CAMERA_FIELD_ANGLE_OF_ATTACK, 334.1, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Arthas_01, CAMERA_FIELD_TARGET_DISTANCE, 982.1, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Arthas_01, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Arthas_01, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Arthas_01, CAMERA_FIELD_FARZ, 2000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Exit_Arthas_01, 1074.9, 6123.8, 0.0)

    set gg_cam_Exit_Malganis_01=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Exit_Malganis_01, CAMERA_FIELD_ZOFFSET, 30.0, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Malganis_01, CAMERA_FIELD_ROTATION, 83.6, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Malganis_01, CAMERA_FIELD_ANGLE_OF_ATTACK, 328.4, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Malganis_01, CAMERA_FIELD_TARGET_DISTANCE, 678.9, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Malganis_01, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Malganis_01, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Malganis_01, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Exit_Malganis_01, 1362.5, 6318.5, 0.0)

    set gg_cam_Exit_Malganis_02=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Exit_Malganis_02, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Malganis_02, CAMERA_FIELD_ROTATION, 37.4, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Malganis_02, CAMERA_FIELD_ANGLE_OF_ATTACK, 330.9, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Malganis_02, CAMERA_FIELD_TARGET_DISTANCE, 678.9, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Malganis_02, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Malganis_02, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Exit_Malganis_02, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Exit_Malganis_02, 1323.1, 6328.3, 0.0)

    set gg_cam_ExitArthasRun_1=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_ExitArthasRun_1, CAMERA_FIELD_ZOFFSET, 50.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_1, CAMERA_FIELD_ROTATION, 135.8, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_1, CAMERA_FIELD_ANGLE_OF_ATTACK, 342.3, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_1, CAMERA_FIELD_TARGET_DISTANCE, 974.4, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_1, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_1, CAMERA_FIELD_FIELD_OF_VIEW, 90.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_1, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_ExitArthasRun_1, 13.4, 9907.8, 0.0)

    set gg_cam_ExitArthasRun_2=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_ExitArthasRun_2, CAMERA_FIELD_ZOFFSET, 50.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_2, CAMERA_FIELD_ROTATION, 165.2, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_2, CAMERA_FIELD_ANGLE_OF_ATTACK, 347.4, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_2, CAMERA_FIELD_TARGET_DISTANCE, 665.5, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_2, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_2, CAMERA_FIELD_FIELD_OF_VIEW, 90.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_2, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_ExitArthasRun_2, - 62.5, 10010.3, 0.0)

    set gg_cam_ExitArthasRun_Follow=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_ExitArthasRun_Follow, CAMERA_FIELD_ZOFFSET, 50.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_Follow, CAMERA_FIELD_ROTATION, 104.1, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_Follow, CAMERA_FIELD_ANGLE_OF_ATTACK, 317.8, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_Follow, CAMERA_FIELD_TARGET_DISTANCE, 665.5, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_Follow, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_Follow, CAMERA_FIELD_FIELD_OF_VIEW, 90.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasRun_Follow, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_ExitArthasRun_Follow, 946.3, 9630.0, 0.0)

    set gg_cam_ExitInitialCamera=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_ExitInitialCamera, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitInitialCamera, CAMERA_FIELD_ROTATION, 90.1, 0.0)
    call CameraSetupSetField(gg_cam_ExitInitialCamera, CAMERA_FIELD_ANGLE_OF_ATTACK, 319.5, 0.0)
    call CameraSetupSetField(gg_cam_ExitInitialCamera, CAMERA_FIELD_TARGET_DISTANCE, 1035.5, 0.0)
    call CameraSetupSetField(gg_cam_ExitInitialCamera, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitInitialCamera, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitInitialCamera, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_ExitInitialCamera, 1363.0, 6264.7, 0.0)

    set gg_cam_ExitZoomIn=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_ExitZoomIn, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitZoomIn, CAMERA_FIELD_ROTATION, 110.3, 0.0)
    call CameraSetupSetField(gg_cam_ExitZoomIn, CAMERA_FIELD_ANGLE_OF_ATTACK, 324.3, 0.0)
    call CameraSetupSetField(gg_cam_ExitZoomIn, CAMERA_FIELD_TARGET_DISTANCE, 858.1, 0.0)
    call CameraSetupSetField(gg_cam_ExitZoomIn, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitZoomIn, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitZoomIn, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_ExitZoomIn, 1202.2, 6132.1, 0.0)

    set gg_cam_FrostmourneArthasChannel=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneArthasChannel, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneArthasChannel, CAMERA_FIELD_ROTATION, 17.6, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneArthasChannel, CAMERA_FIELD_ANGLE_OF_ATTACK, 345.1, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneArthasChannel, CAMERA_FIELD_TARGET_DISTANCE, 1024.5, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneArthasChannel, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneArthasChannel, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneArthasChannel, CAMERA_FIELD_FARZ, 2000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneArthasChannel, - 654.5, 4607.5, 0.0)

    set gg_cam_FrostmourneArthasDone=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneArthasDone, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneArthasDone, CAMERA_FIELD_ROTATION, 90.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneArthasDone, CAMERA_FIELD_ANGLE_OF_ATTACK, 304.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneArthasDone, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneArthasDone, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneArthasDone, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneArthasDone, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneArthasDone, - 6544.6, - 5370.6, 0.0)

    set gg_cam_FrostmourneBeginCloseup=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneBeginCloseup, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneBeginCloseup, CAMERA_FIELD_ROTATION, 57.2, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneBeginCloseup, CAMERA_FIELD_ANGLE_OF_ATTACK, 341.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneBeginCloseup, CAMERA_FIELD_TARGET_DISTANCE, 1170.5, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneBeginCloseup, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneBeginCloseup, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneBeginCloseup, CAMERA_FIELD_FARZ, 2000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneBeginCloseup, - 840.0, 4856.9, 0.0)

    set gg_cam_FrostmourneDeathCamera=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneDeathCamera, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneDeathCamera, CAMERA_FIELD_ROTATION, 16.4, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneDeathCamera, CAMERA_FIELD_ANGLE_OF_ATTACK, 315.5, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneDeathCamera, CAMERA_FIELD_TARGET_DISTANCE, 1287.6, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneDeathCamera, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneDeathCamera, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneDeathCamera, CAMERA_FIELD_FARZ, 2000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneDeathCamera, - 845.0, 4488.3, 0.0)

    set gg_cam_FrostmourneEndCloseup=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneEndCloseup, CAMERA_FIELD_ZOFFSET, 115.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneEndCloseup, CAMERA_FIELD_ROTATION, 57.2, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneEndCloseup, CAMERA_FIELD_ANGLE_OF_ATTACK, 354.2, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneEndCloseup, CAMERA_FIELD_TARGET_DISTANCE, 886.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneEndCloseup, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneEndCloseup, CAMERA_FIELD_FIELD_OF_VIEW, 26.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneEndCloseup, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneEndCloseup, - 863.6, 4806.9, 0.0)

    set gg_cam_FrostmourneIntroShot=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneIntroShot, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneIntroShot, CAMERA_FIELD_ROTATION, 358.7, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneIntroShot, CAMERA_FIELD_ANGLE_OF_ATTACK, 327.1, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneIntroShot, CAMERA_FIELD_TARGET_DISTANCE, 1617.9, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneIntroShot, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneIntroShot, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneIntroShot, CAMERA_FIELD_FARZ, 3000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneIntroShot, - 1707.4, 4404.2, 0.0)

    set gg_cam_FrostmourneMuradinDeath_01=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_01, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_01, CAMERA_FIELD_ROTATION, 345.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_01, CAMERA_FIELD_ANGLE_OF_ATTACK, 344.9, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_01, CAMERA_FIELD_TARGET_DISTANCE, 636.2, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_01, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_01, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_01, CAMERA_FIELD_FARZ, 2000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneMuradinDeath_01, - 1056.5, 4145.0, 0.0)

    set gg_cam_FrostmourneMuradinDeath_02=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_02, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_02, CAMERA_FIELD_ROTATION, 138.4, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_02, CAMERA_FIELD_ANGLE_OF_ATTACK, 346.2, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_02, CAMERA_FIELD_TARGET_DISTANCE, 636.2, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_02, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_02, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_02, CAMERA_FIELD_FARZ, 2500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneMuradinDeath_02, - 1073.9, 4167.7, 0.0)

    set gg_cam_FrostmourneMuradinDeath_03=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_03, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_03, CAMERA_FIELD_ROTATION, 74.8, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_03, CAMERA_FIELD_ANGLE_OF_ATTACK, 345.3, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_03, CAMERA_FIELD_TARGET_DISTANCE, 636.2, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_03, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_03, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_03, CAMERA_FIELD_FARZ, 2000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneMuradinDeath_03, - 1118.4, 4316.5, 0.0)

    set gg_cam_FrostmourneMuradinDeath_04=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_04, CAMERA_FIELD_ZOFFSET, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_04, CAMERA_FIELD_ROTATION, 82.4, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_04, CAMERA_FIELD_ANGLE_OF_ATTACK, 348.3, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_04, CAMERA_FIELD_TARGET_DISTANCE, 636.2, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_04, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_04, CAMERA_FIELD_FIELD_OF_VIEW, 26.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinDeath_04, CAMERA_FIELD_FARZ, 2500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneMuradinDeath_04, - 1172.0, 4401.0, 0.0)

    set gg_cam_FrostmourneMuradinSaysLeave=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneMuradinSaysLeave, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinSaysLeave, CAMERA_FIELD_ROTATION, 48.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinSaysLeave, CAMERA_FIELD_ANGLE_OF_ATTACK, 330.3, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinSaysLeave, CAMERA_FIELD_TARGET_DISTANCE, 926.2, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinSaysLeave, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinSaysLeave, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinSaysLeave, CAMERA_FIELD_FARZ, 2500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneMuradinSaysLeave, - 1396.7, 4491.7, 0.0)

    set gg_cam_FrostmourneMuradinToArthas=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneMuradinToArthas, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinToArthas, CAMERA_FIELD_ROTATION, 59.8, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinToArthas, CAMERA_FIELD_ANGLE_OF_ATTACK, 329.7, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinToArthas, CAMERA_FIELD_TARGET_DISTANCE, 926.2, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinToArthas, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinToArthas, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneMuradinToArthas, CAMERA_FIELD_FARZ, 2200.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneMuradinToArthas, - 1056.3, 4499.3, 0.0)

    set gg_cam_FrostmourneSwordCloseup=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneSwordCloseup, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordCloseup, CAMERA_FIELD_ROTATION, 359.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordCloseup, CAMERA_FIELD_ANGLE_OF_ATTACK, 342.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordCloseup, CAMERA_FIELD_TARGET_DISTANCE, 1151.8, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordCloseup, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordCloseup, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordCloseup, CAMERA_FIELD_FARZ, 2300.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneSwordCloseup, - 1230.4, 4454.9, 0.0)

    set gg_cam_FrostmourneSwordPanBegin=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanBegin, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanBegin, CAMERA_FIELD_ROTATION, 7.5, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanBegin, CAMERA_FIELD_ANGLE_OF_ATTACK, 340.8, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanBegin, CAMERA_FIELD_TARGET_DISTANCE, 933.7, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanBegin, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanBegin, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanBegin, CAMERA_FIELD_FARZ, 2000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneSwordPanBegin, - 786.9, 4515.7, 0.0)

    set gg_cam_FrostmourneSwordPanEnd=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanEnd, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanEnd, CAMERA_FIELD_ROTATION, 104.1, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanEnd, CAMERA_FIELD_ANGLE_OF_ATTACK, 338.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanEnd, CAMERA_FIELD_TARGET_DISTANCE, 848.8, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanEnd, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanEnd, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_FrostmourneSwordPanEnd, CAMERA_FIELD_FARZ, 2000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_FrostmourneSwordPanEnd, - 1181.9, 4762.1, 0.0)

    set gg_cam_IntroArthasInValley=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroArthasInValley, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasInValley, CAMERA_FIELD_ROTATION, 90.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasInValley, CAMERA_FIELD_ANGLE_OF_ATTACK, 304.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasInValley, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasInValley, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasInValley, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasInValley, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroArthasInValley, - 6467.1, - 2397.4, 0.0)

    set gg_cam_IntroCaptainCloseup=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_ROTATION, 126.3, 0.0)
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_ANGLE_OF_ATTACK, 329.3, 0.0)
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_TARGET_DISTANCE, 1070.9, 0.0)
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroCaptainCloseup, - 3492.3, - 5510.6, 0.0)

    set gg_cam_IntroFirstCamera=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroFirstCamera, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroFirstCamera, CAMERA_FIELD_ROTATION, 90.7, 0.0)
    call CameraSetupSetField(gg_cam_IntroFirstCamera, CAMERA_FIELD_ANGLE_OF_ATTACK, 320.1, 0.0)
    call CameraSetupSetField(gg_cam_IntroFirstCamera, CAMERA_FIELD_TARGET_DISTANCE, 1736.4, 0.0)
    call CameraSetupSetField(gg_cam_IntroFirstCamera, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroFirstCamera, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroFirstCamera, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroFirstCamera, - 2603.6, - 3045.1, 0.0)

    set gg_cam_IntroMalganisCloseup=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroMalganisCloseup, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroMalganisCloseup, CAMERA_FIELD_ROTATION, 86.8, 0.0)
    call CameraSetupSetField(gg_cam_IntroMalganisCloseup, CAMERA_FIELD_ANGLE_OF_ATTACK, 335.2, 0.0)
    call CameraSetupSetField(gg_cam_IntroMalganisCloseup, CAMERA_FIELD_TARGET_DISTANCE, 676.5, 0.0)
    call CameraSetupSetField(gg_cam_IntroMalganisCloseup, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroMalganisCloseup, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroMalganisCloseup, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroMalganisCloseup, - 2555.0, - 2222.2, 0.0)

    set gg_cam_IntroMuradinToArthas=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroMuradinToArthas, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroMuradinToArthas, CAMERA_FIELD_ROTATION, 90.8, 0.0)
    call CameraSetupSetField(gg_cam_IntroMuradinToArthas, CAMERA_FIELD_ANGLE_OF_ATTACK, 327.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroMuradinToArthas, CAMERA_FIELD_TARGET_DISTANCE, 1147.6, 0.0)
    call CameraSetupSetField(gg_cam_IntroMuradinToArthas, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroMuradinToArthas, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroMuradinToArthas, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroMuradinToArthas, - 2520.9, - 5099.8, 0.0)

    set gg_cam_IntroNorthApproach=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroNorthApproach, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroNorthApproach, CAMERA_FIELD_ROTATION, 84.7, 0.0)
    call CameraSetupSetField(gg_cam_IntroNorthApproach, CAMERA_FIELD_ANGLE_OF_ATTACK, 319.5, 0.0)
    call CameraSetupSetField(gg_cam_IntroNorthApproach, CAMERA_FIELD_TARGET_DISTANCE, 1946.9, 0.0)
    call CameraSetupSetField(gg_cam_IntroNorthApproach, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroNorthApproach, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroNorthApproach, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroNorthApproach, - 2520.8, - 2334.2, 0.0)

    set gg_cam_IntroNorthEastApproach=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroNorthEastApproach, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroNorthEastApproach, CAMERA_FIELD_ROTATION, 38.6, 0.0)
    call CameraSetupSetField(gg_cam_IntroNorthEastApproach, CAMERA_FIELD_ANGLE_OF_ATTACK, 319.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroNorthEastApproach, CAMERA_FIELD_TARGET_DISTANCE, 1956.2, 0.0)
    call CameraSetupSetField(gg_cam_IntroNorthEastApproach, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroNorthEastApproach, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroNorthEastApproach, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroNorthEastApproach, - 370.4, - 4127.4, 0.0)

    set gg_cam_IntroToWaygate1=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroToWaygate1, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroToWaygate1, CAMERA_FIELD_ROTATION, 141.5, 0.0)
    call CameraSetupSetField(gg_cam_IntroToWaygate1, CAMERA_FIELD_ANGLE_OF_ATTACK, 336.8, 0.0)
    call CameraSetupSetField(gg_cam_IntroToWaygate1, CAMERA_FIELD_TARGET_DISTANCE, 1551.7, 0.0)
    call CameraSetupSetField(gg_cam_IntroToWaygate1, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroToWaygate1, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroToWaygate1, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroToWaygate1, - 4493.2, - 5910.6, 0.0)

    set gg_cam_IntroToWaygate3=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroToWaygate3, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroToWaygate3, CAMERA_FIELD_ROTATION, 70.3, 0.0)
    call CameraSetupSetField(gg_cam_IntroToWaygate3, CAMERA_FIELD_ANGLE_OF_ATTACK, 318.5, 0.0)
    call CameraSetupSetField(gg_cam_IntroToWaygate3, CAMERA_FIELD_TARGET_DISTANCE, 1654.2, 0.0)
    call CameraSetupSetField(gg_cam_IntroToWaygate3, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroToWaygate3, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroToWaygate3, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroToWaygate3, - 6593.1, - 5319.3, 0.0)

endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: fileio
//===========================================================================
// This file defines file IO functions for the JASS side of things
// Based off the FileIO module created by Nestharus, see:
// https://www.hiveworkshop.com/threads/codeless-save-load-its-now-a-reality-demo-map-included.226082/


function InitTrig_fileio takes nothing returns nothing
    local integer i= 0

    loop
        exitwhen i >= NUM_FILE_LINES
        set p_original_names[i]=GetPlayerName(Player(i))
        set i=i + 1
    endloop
endfunction

function io_read_file_simple takes string file_name returns nothing
    call Preloader(file_name)
endfunction

function io_read_file takes string file_name returns nothing
    local integer i= 0

    call Preloader(file_name)
    loop
        exitwhen i >= NUM_FILE_LINES
        set io_lines[i]=GetPlayerName(Player(i))
        call SetPlayerName(Player(i), p_original_names[i])
        set i=i + 1
    endloop
endfunction

function io_open_write takes string filename returns nothing
    call PreloadGenClear()
    call PreloadGenStart()
    set last_filename=filename
endfunction

function io_write takes string contents returns nothing
    call Preload(contents)
endfunction

function io_close_write takes nothing returns nothing
    call PreloadGenEnd(last_filename)
    set last_filename=""
endfunction
//===========================================================================
// Trigger: map_config
//===========================================================================
// Map-specific setup used by other scripts

function hero_get_unit_from_index takes integer slot returns unit
    if slot == 0 then
        return udg_Arthas
    elseif slot == 1 then
        return udg_Muradin
    elseif slot == 2 then
        return udg_Arthas
    elseif slot == 3 then
        return udg_Arthas
    endif
    return null
endfunction

function hero_get_index_from_unit takes unit hero returns integer
    local integer i= 0
    loop
        exitwhen hero_get_unit_from_index(i) == hero
        set i=i + 1
        exitwhen i >= NUM_HEROES
    endloop
    return i
endfunction

function hero_update_variable takes integer slot,unit hero returns nothing
    if slot == 0 then
        set udg_Arthas=hero
    elseif slot == 1 then
        set udg_Muradin=hero
    elseif slot == 2 then
        set udg_Arthas=hero
    else
        set udg_Arthas=hero
    endif
endfunction

function InitTrig_map_config takes nothing returns nothing
    set hero_global_slots[0]=HERO_ID_PALADIN_ARTHAS
    set hero_global_slots[1]=HERO_ID_MURADIN_BRONZEBEARD
    set hero_global_slots[2]=HERO_ID_NONE
    set hero_global_slots[3]=HERO_ID_NONE
endfunction
//===========================================================================
// Trigger: status
//===========================================================================
// defines the packets that communicate with the client
// depends: map_config, fileio

function status_send takes nothing returns nothing
    local integer i= 0
    call io_open_write("status.txt")
    call io_write(I2S(update_index))
    call io_write(COMM_VERSION)
    call io_write(I2S(world_id))
    call io_write(I2S(MISSION_ID))
    call io_write(I2S(last_unlock_packet) + "," + I2S(last_location_packet) + "," + I2S(last_message_packet) + "," + I2S(last_hero_packet) + "," + I2S(last_item_packet) + "," + I2S(last_item_channel_packet) + ",-1," + I2S(last_mercenaries_packet) + "," + I2S(last_settings_packet))
    call io_write(I2S(hero_status_index))
    call io_write(I2S(num_channel_1_items_received) + "," + I2S(num_channel_2_items_received))
    call io_write("_")
    call io_write("_")
    set update_index=update_index + 1
    if update_index >= MAX_UPDATE_ID then
        set update_index=0
    endif
    loop
        exitwhen i >= MAX_LOCATIONS
        if locations_checked[i] then
            call io_write(I2S(i))
        endif
        set i=i + 1
    endloop
    call io_close_write()
endfunction

function B2I takes boolean b returns integer
    if b then
        return 1
    endif
    return 0
endfunction

function captains_set_ability_usable takes player p returns nothing
    local integer available= GetPlayerTechMaxAllowed(p, 'hcth') - GetPlayerTechCount(p, 'AP00', true)
    if available < 0 then
        set available=0
    endif
    call SetPlayerTechResearched(p, 'RP00', available)
    // General irregular unlocks
    call SetPlayerTechResearched(p, 'RP01', B2I(GetPlayerTechMaxAllowed(p, 'hfoo') != 0))
    call SetPlayerTechResearched(p, 'RP02', B2I(GetPlayerTechMaxAllowed(p, 'hrif') != 0))
    call SetPlayerTechResearched(p, 'RP03', B2I(GetPlayerTechMaxAllowed(p, 'nhea') != 0))
    call SetPlayerTechResearched(p, 'RP04', B2I(GetPlayerTechMaxAllowed(p, 'hkni') != 0))
    call SetPlayerTechResearched(p, 'RP05', B2I(GetPlayerTechMaxAllowed(p, 'hmpr') != 0))
    call SetPlayerTechResearched(p, 'RP06', B2I(GetPlayerTechMaxAllowed(p, 'hsor') != 0))
    call SetPlayerTechResearched(p, 'RP07', B2I(GetPlayerTechMaxAllowed(p, 'hspt') != 0))
    call SetPlayerTechResearched(p, 'RP08', B2I(GetPlayerTechMaxAllowed(p, 'hmtm') != 0))
endfunction

function status_load_unlocks_for_player takes integer target_player returns nothing
    local player p= Player(0)
    call SetPlayerTechMaxAllowed(p, 'nech', - 1)
    call SetPlayerTechMaxAllowed(p, 'nvil', target_player)
    call io_read_file_simple("unlocks.txt")
    set last_unlock_packet=GetPlayerTechMaxAllowed(p, 'nech')
    // captains
    call captains_set_ability_usable(Player(target_player))
    // resources
    call AdjustPlayerStateBJ(GetPlayerTechMaxAllowed(Player(target_player), 'gold') - gold_granted[target_player], Player(target_player), PLAYER_STATE_RESOURCE_GOLD)
    set gold_granted[target_player]=GetPlayerTechMaxAllowed(Player(target_player), 'gold')
endfunction

function status_captain_promoted_actions takes nothing returns nothing
    local player p= GetOwningPlayer(GetTriggerUnit())
    local effect special_effect
    if GetSpellAbilityId() != 'AP00' then
        return
    endif
    call AddPlayerTechResearched(p, 'AP00', 1)
    call captains_set_ability_usable(p)
endfunction

function captains_init takes nothing returns nothing
    call SetPlayerTechMaxAllowed(USER_PLAYER, 'hcth', 0)
    set t_captain_promoted=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t_captain_promoted, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddAction(t_captain_promoted, function status_captain_promoted_actions)
endfunction

function status_load_unlocks takes nothing returns nothing
    call status_load_unlocks_for_player(GetPlayerId(USER_PLAYER))
endfunction

function status_load_locations takes nothing returns nothing
    local player p= Player(0)
    local integer i= 0
    local integer loc_id= 0
    call SetPlayerTechMaxAllowed(p, 'nech', - 1)
    call io_read_file("locations.txt")
    loop
        exitwhen i + 2 > StringLength(io_lines[0])
        set loc_id=S2I(SubString(io_lines[0], i, i + 2))
        if loc_id < MAX_LOCATIONS then
            set locations_checked[loc_id]=true
        endif
        set i=i + 2
    endloop
    set i=0
    loop
        exitwhen i + 2 > StringLength(io_lines[1])
        set loc_id=S2I(SubString(io_lines[1], i, i + 2))
        if loc_id < MAX_LOCATIONS then
            set locations_checked[loc_id]=false
        endif
        set i=i + 2
    endloop
    set last_location_packet=GetPlayerTechMaxAllowed(p, 'nech')
endfunction

function status_check_location takes integer location_id returns nothing
    if location_id >= MAX_LOCATIONS then
        call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "|cffff2222Error: Attempted to check invalid location ID: " + I2S(location_id) + "|r")
        return
    endif
    set locations_checked[location_id]=true
    call status_send()
endfunction

function status_load_messages takes nothing returns nothing
    local integer i= 0
    local player p= Player(0)
    local integer num_messages
    call SetPlayerTechMaxAllowed(p, 'nech', - 1)
    call SetPlayerTechMaxAllowed(p, 'nalb', 0)
    call io_read_file("messages.txt")
    set num_messages=GetPlayerTechMaxAllowed(p, 'nalb')
    if num_messages > NUM_FILE_LINES then
        set num_messages=NUM_FILE_LINES
    endif
    loop
        exitwhen i >= num_messages
        call DisplayTextToForce(GetPlayersAll(), io_lines[i])
        set i=i + 1
    endloop
    set last_message_packet=GetPlayerTechMaxAllowed(p, 'nech')
endfunction

function status_load_items takes nothing returns nothing
    local integer num_items= - 1
    local integer i= 0
    local integer item_id= 0
    local player p= Player(0)
    local unit target_unit= null
    call SetPlayerTechMaxAllowed(p, 'nech', - 1)
    call SetPlayerTechMaxAllowed(p, 'nalb', 0)
    call SetPlayerTechMaxAllowed(p, 'ndog', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'ncrb', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'ncrb', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'ncrb', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'ncrb', 0)
    call SetPlayerTechMaxAllowed(Player(4), 'ncrb', 0)
    call SetPlayerTechMaxAllowed(Player(5), 'ncrb', 0)
    call SetPlayerTechMaxAllowed(Player(6), 'ncrb', 0)
    call SetPlayerTechMaxAllowed(Player(7), 'ncrb', 0)
    call SetPlayerTechMaxAllowed(Player(8), 'ncrb', 0)
    call SetPlayerTechMaxAllowed(Player(9), 'ncrb', 0)
    call SetPlayerTechMaxAllowed(Player(10), 'ncrb', 0)
    call SetPlayerTechMaxAllowed(Player(11), 'ncrb', 0)

    call io_read_file_simple("items.txt")
    set last_item_packet=GetPlayerTechMaxAllowed(p, 'nech')
    set num_items=GetPlayerTechMaxAllowed(p, 'nalb')
    if num_items < 0 then
        set num_items=0
    elseif num_items > MAX_ITEMS_PER_PACKET then
        set num_items=MAX_ITEMS_PER_PACKET
    endif

    if GetPlayerTechMaxAllowed(p, 'ndog') == 0 then
        set target_unit=item_channel_1_target
        set num_channel_1_items_received=num_channel_1_items_received + num_items
    else
        set target_unit=item_channel_2_target
        set num_channel_2_items_received=num_channel_2_items_received + num_items
    endif

    loop
        exitwhen i >= num_items
        set item_id=GetPlayerTechMaxAllowed(Player(i), 'ncrb')
        if item_id != 0 then
            call UnitAddItemById(target_unit, item_id)
        endif
        set i=i + 1
    endloop
endfunction

function status_init_item_channels takes integer local_channel_id returns nothing
    if local_channel_id == 1 then
        call SetPlayerTechMaxAllowed(Player(0), 'nalb', item_channel_1)
    else
        call SetPlayerTechMaxAllowed(Player(0), 'nalb', item_channel_2)
    endif
    call SetPlayerTechMaxAllowed(Player(0), 'nech', - 1)
    call SetPlayerTechMaxAllowed(Player(0), 'nske', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'npng', - 1)
    call io_read_file_simple("item_channels.txt")
    set last_item_channel_packet=GetPlayerTechMaxAllowed(Player(0), 'nech')
    if GetPlayerTechMaxAllowed(Player(0), 'nech') == 0 then
        return
    endif
    if local_channel_id == 1 then
        set num_channel_1_items_received=GetPlayerTechMaxAllowed(Player(0), 'npng')
    else
        set num_channel_2_items_received=GetPlayerTechMaxAllowed(Player(0), 'npng')
    endif
endfunction

function status_load_mercenaries takes nothing returns nothing
    local integer i= 0
    call SetPlayerTechMaxAllowed(Player(0), 'nech', - 1)
    call SetPlayerTechMaxAllowed(Player(0), 'nalb', 0)
    loop
        exitwhen i >= 10
        call SetPlayerTechMaxAllowed(Player(i), 'ncrb', 0)
        call SetPlayerTechMaxAllowed(Player(i), 'ndog', 0)
        call SetPlayerTechMaxAllowed(Player(i), 'ndwm', 0)
        set i=i + 1
    endloop
    call io_read_file_simple("mercenaries.txt")
    set last_mercenaries_packet=GetPlayerTechMaxAllowed(Player(0), 'nech')
    call TriggerExecute(t_apply_mercenaries)
endfunction

function status_load_settings takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(0), 'nech', - 1)
    call SetPlayerTechMaxAllowed(Player(0), 'nmer', 0)
    call io_read_file_simple("settings.txt")
    set last_settings_packet=GetPlayerTechMaxAllowed(Player(0), 'nech')
    if GetPlayerTechMaxAllowed(Player(0), 'nmer') > 0 then
        call TriggerExecute(t_create_mercenary_camps)
    endif
endfunction

function status_check_ping takes nothing returns nothing
    local integer bitmask= 0
    local boolean should_send= false
    local player p= Player(0)
    call SetPlayerTechMaxAllowed(p, 'nske', - 1)
    call SetPlayerTechMaxAllowed(p, 'nwgt', - 1)
    call SetPlayerTechMaxAllowed(p, 'nvlk', - 1)
    call SetPlayerTechMaxAllowed(p, 'nvk2', - 1)
    call io_read_file_simple("ping.txt")
    if GetPlayerTechMaxAllowed(p, 'nske') != update_index or GetPlayerTechMaxAllowed(p, 'nvlk') != MISSION_ID then
        if checks_before_timeout > 0 then
            set checks_before_timeout=checks_before_timeout - 1
        elseif checks_before_timeout == 0 then
            set checks_before_timeout=- 1
            set error_state=1
            call DisplayTextToForce(GetPlayersAll(), "|cffff2222Error: Client communication timeout|r")
            call DisplayTextToForce(GetPlayersAll(), "|cffff2222Check the client is started correctly. Locations will not send until communication is established|r")
        endif
        return
    elseif world_id >= 0 and GetPlayerTechMaxAllowed(p, 'nwgt') != world_id then
        if error_state != 2 then
            set error_state=2
            call DisplayTextToForce(GetPlayersAll(), "|cffff2222Error: Client is connected to a different world seed|r")
            call DisplayTextToForce(GetPlayersAll(), "|cffff2222Restart the level or connect the client to a different room|r")
        endif
        return
    elseif error_state > 0 and world_id >= 0 then
        set error_state=0
        call DisplayTextToForce(GetPlayersAll(), "|cff2266ffClient communications re-established.|r")
    endif
    set world_id=GetPlayerTechMaxAllowed(p, 'nwgt')
    set checks_before_timeout=2
    set bitmask=GetPlayerTechMaxAllowed(p, 'nvk2')
    if bitmask > 0 then
        set should_send=true
    endif
    if bitmask >= 512 then
        // bitmask & 511
        set bitmask=bitmask - ( ( bitmask / 512 ) * 512 )
    endif
    if bitmask >= 256 then
        set bitmask=bitmask - 256
        // settings
        call status_load_settings()
    endif
    if bitmask >= 128 then
        set bitmask=bitmask - 128
        // mercenaries
        call status_load_mercenaries()
    endif
    if bitmask >= 64 then
        set bitmask=bitmask - 64
        // hero levels
        call TriggerExecute(t_hero_set_all_max_level)
    endif
    if bitmask >= 32 then
        set bitmask=bitmask - 32
        call status_init_item_channels(0)
        if item_channel_2 > 0 then
            call status_init_item_channels(1)
        endif
    endif
    if bitmask >= 16 then
        set bitmask=bitmask - 16
        call status_load_items()
    endif
    if bitmask >= 8 then
        set bitmask=bitmask - 8
        call TriggerExecute(t_hero_configure_all)
    endif
    if bitmask >= 4 then
        set bitmask=bitmask - 4
        call status_load_messages()
    endif
    if bitmask >= 2 then
        set bitmask=bitmask - 2
        call status_load_locations()
    endif
    if bitmask >= 1 then
        set bitmask=bitmask - 1
        call status_load_unlocks()
    endif
    if should_send then
        call status_send()
    endif
endfunction

function InitTrig_status takes nothing returns nothing
    local integer i= 0
    loop
        exitwhen i >= MAX_LOCATIONS
        set locations_checked[i]=false
        set i=i + 1
    endloop
    set i=0
    loop
        exitwhen i > 12
        set i=i + 1
        set gold_granted[i]=0
    endloop
    set status_ack_ping_timer=CreateTimer()
    call status_send()
    call TimerStart(status_ack_ping_timer, 1, true, function status_check_ping)
    // Captains
    call captains_init()
    // Disable marketplace behaviour
    call PauseTimer(bj_stockUpdateTimer)
    call DestroyTimer(bj_stockUpdateTimer)
    set bj_stockUpdateTimer=null
    call DisableTrigger(bj_stockItemPurchased)
endfunction
//===========================================================================
// Trigger: heroes
//===========================================================================
// Functions to control and configure heroes
// depends: fileio, map_config, status

function hero_apply_max_level takes unit hero,integer level returns nothing
    if GetHeroLevel(hero) >= level then
        call SetHeroLevelBJ(hero, level, false)
        call SuspendHeroXP(hero, true)
    else
        call SuspendHeroXP(hero, false)
    endif
endfunction

function hero_set_max_level takes integer slot,integer level returns nothing
    local unit hero= hero_get_unit_from_index(slot)
    set HERO_MAX_LEVEL[slot]=level
    call hero_apply_max_level(hero , level)
endfunction

function hero_load_global takes integer global_slot returns boolean
    local player p= Player(0)
    call SetPlayerTechMaxAllowed(p, 'nech', - 1)
    call SetPlayerTechMaxAllowed(p, 'nske', - 1)
    call SetPlayerTechMaxAllowed(p, 'npng', - 1)
    call SetPlayerTechMaxAllowed(p, 'ndog', 0)
    call SetPlayerTechMaxAllowed(p, 'nskk', 0)
    call SetPlayerTechMaxAllowed(p, 'npig', 0)
    call SetPlayerTechMaxAllowed(p, 'nsea', 0)
    call SetPlayerTechMaxAllowed(p, 'ncrb', 0)
    call SetPlayerTechMaxAllowed(p, 'nder', 0)
    // nfro = abil IDs
    call SetPlayerTechMaxAllowed(Player(0), 'nfro', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'nfro', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'nfro', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'nfro', 0)
    // nrac = abil skillpoints
    call SetPlayerTechMaxAllowed(Player(0), 'nrac', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'nrac', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'nrac', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'nrac', 0)
    // nvul = items
    call SetPlayerTechMaxAllowed(Player(0), 'nvul', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'nvul', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'nvul', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'nvul', 0)
    call SetPlayerTechMaxAllowed(Player(4), 'nvul', 0)
    call SetPlayerTechMaxAllowed(Player(5), 'nvul', 0)

    call SetPlayerTechMaxAllowed(p, 'nalb', global_slot)
    call io_read_file("heroes.txt")

    return GetPlayerTechMaxAllowed(p, 'nske') == 1
endfunction

function hero_load takes integer hero_slot returns boolean
    local boolean success= hero_load_global(hero_global_slots[hero_slot])
    if success then
        set HERO_MAX_LEVEL[hero_slot]=GetPlayerTechMaxAllowed(Player(0), 'nder')
        set hero_abil_1[hero_slot]=GetPlayerTechMaxAllowed(Player(0), 'nfro')
        set hero_abil_2[hero_slot]=GetPlayerTechMaxAllowed(Player(1), 'nfro')
        set hero_abil_3[hero_slot]=GetPlayerTechMaxAllowed(Player(2), 'nfro')
        set hero_abil_4[hero_slot]=GetPlayerTechMaxAllowed(Player(3), 'nfro')
        set last_hero_packet=GetPlayerTechMaxAllowed(Player(0), 'nech')
    endif
    return success
endfunction

// should be called after hero_load()
function hero_configure takes unit hero,integer slot returns nothing
    local player p= Player(0)
    local integer val
    local integer i= 0
    local item i_item
    call SetHeroXP(hero, GetPlayerTechMaxAllowed(p, 'ncrb'), false)
    set val=GetPlayerTechMaxAllowed(p, 'ndog')
    if val > 0 then
        call SetHeroAgi(hero, val, true)
    endif
    set val=GetPlayerTechMaxAllowed(p, 'nskk')
    if val > 0 then
        call SetHeroStr(hero, val, true)
    endif
    set val=GetPlayerTechMaxAllowed(p, 'npig')
    if val > 0 then
        call SetHeroInt(hero, val, true)
    endif
    set val=GetPlayerTechMaxAllowed(p, 'nsea')
    if val > 0 then
        call SetUnitState(hero, UNIT_STATE_MAX_LIFE, I2R(val))
        call SetUnitState(hero, UNIT_STATE_LIFE, I2R(val))
    endif
    call BlzSetHeroProperName(hero, io_lines[0])
    // abilities
    loop
        exitwhen i > 3
        set val=GetPlayerTechMaxAllowed(Player(i), 'nrac')
        loop
            exitwhen val <= 0
            set val=val - 1
            call SelectHeroSkill(hero, GetPlayerTechMaxAllowed(Player(i), 'nfro'))
        endloop
        set i=i + 1
    endloop
    // items
    set i=0
    loop
        exitwhen i > 5
        set val=GetPlayerTechMaxAllowed(Player(i), 'nvul')
        if val > 0 then
            set i_item=UnitAddItemById(hero, val)
        else
            // pad out empty slots with a dummy item so later items go to the correct slots
            set i_item=UnitAddItemById(hero, 'wtlg')
        endif
        set val=GetPlayerTechMaxAllowed(Player(i), 'nsno')
        if val > 0 and GetItemCharges(i_item) > 0 then
            call SetItemCharges(i_item, val)
        endif
        set i=i + 1
    endloop
    set i=0
    loop
        exitwhen i > 5
        if GetItemTypeId(UnitItemInSlot(hero, i)) == 'wtlg' then
            set i_item=UnitRemoveItemFromSlot(hero, i)
            call RemoveItem(i_item)
        endif
        set i=i + 1
    endloop
    // max level
    set val=GetPlayerTechMaxAllowed(p, 'nder')
    if val > 0 then
        set HERO_MAX_LEVEL[slot]=val
        call hero_apply_max_level(hero , val)
    endif
endfunction

function hero_configure_all takes nothing returns nothing
    local integer slot= 0
    local unit hero
    loop
        exitwhen slot >= NUM_HEROES
        call hero_load(slot)
        set hero=hero_get_unit_from_index(slot)
        // todo: handle hero unit type mismatch
        call hero_configure(hero , slot)
        set slot=slot + 1
    endloop
endfunction

function hero_set_all_max_level takes nothing returns nothing
    local integer slot= 0
    local unit hero
    loop
        exitwhen slot >= NUM_HEROES
        call hero_load(slot)
        call hero_set_max_level(slot , GetPlayerTechMaxAllowed(Player(0), 'nder'))
        set slot=slot + 1
    endloop
endfunction

function hero_create takes integer hero_slot,player for_player,real x,real y,real facing returns unit
    local unit hero= null
    if not hero_load(hero_slot) then
        return null
    endif
    set hero=CreateUnit(for_player, GetPlayerTechMaxAllowed(Player(0), 'npng'), x, y, facing)
    return hero
endfunction

// Create and return a hero units from a global hero slot
// Does not configure ability data for reporting
// Returns null if the hero could not be loaded
function hero_create_global takes integer global_slot,player for_player,real x,real y,real facing returns unit
    local unit hero= null
    if not hero_load_global(global_slot) then
        return null
    endif
    set hero=CreateUnit(for_player, GetPlayerTechMaxAllowed(Player(0), 'npng'), x, y, facing)
    return hero
endfunction

function hero_hide_replace takes integer slot,unit replace returns unit
    local unit old_hero= hero_get_unit_from_index(slot)
    local unit hero
    call ShowUnit(old_hero, false)
    set hero=hero_create(slot , GetOwningPlayer(old_hero) , GetUnitX(old_hero) , GetUnitY(old_hero) , GetUnitFacing(old_hero))
    if hero == null then
        call ShowUnit(old_hero, true)
        return old_hero
    endif
    call hero_configure(hero , slot)
    call hero_update_variable(slot , hero)
    call RemoveUnit(hero)
    return hero
endfunction

function hero_hash_state takes unit hero,integer slot returns integer
    local integer result= 0
    set result=result + GetHeroLevel(hero)
    set result=result * 3 + GetHeroAgi(hero, false)
    set result=result * 3 + GetHeroStr(hero, false)
    set result=result * 3 + GetHeroInt(hero, false)
    set result=result * 3 + R2I(GetUnitState(hero, UNIT_STATE_MAX_LIFE))
    set result=result * 3 + GetUnitAbilityLevel(hero, hero_abil_1[slot])
    set result=result * 3 + GetUnitAbilityLevel(hero, hero_abil_2[slot])
    set result=result * 3 + GetUnitAbilityLevel(hero, hero_abil_3[slot])
    set result=result * 3 + GetUnitAbilityLevel(hero, hero_abil_4[slot])
    set result=result * 3 + GetItemTypeId(UnitItemInSlot(hero, 0))
    set result=result * 3 + GetItemTypeId(UnitItemInSlot(hero, 1))
    set result=result * 3 + GetItemTypeId(UnitItemInSlot(hero, 2))
    set result=result * 3 + GetItemTypeId(UnitItemInSlot(hero, 3))
    set result=result * 3 + GetItemTypeId(UnitItemInSlot(hero, 4))
    set result=result * 3 + GetItemTypeId(UnitItemInSlot(hero, 5))
    return result
endfunction

function hero_publish_status takes integer slot returns nothing
    local unit hero= hero_get_unit_from_index(slot)
    local integer this_hash= hero_hash_state(hero , slot)
    local integer i= 0
    local item i_item
    if this_hash == hero_hashes[slot] then
        return
    endif
    set hero_hashes[slot]=this_hash
    call io_open_write("hero_" + I2S(hero_global_slots[slot]) + ".txt")
    call io_write(I2S(hero_global_slots[slot]))
    call io_write(GetHeroProperName(hero))
    call io_write(I2S(GetHeroXP(hero)))
    call io_write(I2S(GetHeroAgi(hero, false)))
    call io_write(I2S(GetHeroStr(hero, false)))
    call io_write(I2S(GetHeroInt(hero, false)))
    call io_write(I2S(R2I(GetUnitState(hero, UNIT_STATE_MAX_LIFE))))
    if GetUnitTypeId(hero) == 'Ntin' then
        // special handling for Goblin Tinker
        if GetUnitAbilityLevel(hero, 'ANeg') == 0 then
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANsy')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANcs')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANeg')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANrg')))
        elseif GetUnitAbilityLevel(hero, 'ANeg') == 1 then
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANs1')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANc1')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANeg')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANg1')))
        elseif GetUnitAbilityLevel(hero, 'ANeg') == 2 then
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANs2')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANc2')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANeg')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANg2')))
        else
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANs3')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANc3')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANeg')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANg3')))
        endif
    else
        call io_write(I2S(GetUnitAbilityLevel(hero, hero_abil_1[slot])))
        call io_write(I2S(GetUnitAbilityLevel(hero, hero_abil_2[slot])))
        call io_write(I2S(GetUnitAbilityLevel(hero, hero_abil_3[slot])))
        call io_write(I2S(GetUnitAbilityLevel(hero, hero_abil_4[slot])))
    endif
    loop
        exitwhen i >= 6
        set i_item=UnitItemInSlot(hero, i)
        call io_write(I2S(GetItemTypeId(i_item)))
        if i_item == null then
            call io_write("0")
        else
            call io_write(I2S(GetItemCharges(i_item)))
        endif
        set i=i + 1
    endloop
    call io_close_write()

    set hero_status_index=hero_status_index + 1
    if hero_status_index >= MAX_UPDATE_ID then
        set hero_status_index=0
    endif
endfunction

function hero_publish_all_statuses takes nothing returns nothing
    local integer i= 0
    local integer starting_hero_status_index= hero_status_index
    loop
        exitwhen i >= NUM_HEROES
        call hero_publish_status(i)
        set i=i + 1
    endloop
    if hero_status_index != starting_hero_status_index then
        call status_send()
    endif
endfunction

function hero_on_level takes unit hero returns nothing
    local integer hero_index= hero_get_index_from_unit(hero)
    if hero_index >= NUM_HEROES then
        return
    endif
    call hero_apply_max_level(hero , HERO_MAX_LEVEL[hero_index])
endfunction

function hero_on_level_triggerfunction takes nothing returns nothing
    call hero_on_level(GetTriggerUnit())
endfunction

function hero_on_item_pickup takes nothing returns nothing
    local integer hero_index= hero_get_index_from_unit(GetTriggerUnit())
    if not IsHeroUnitId(GetUnitTypeId(GetTriggerUnit())) then
        return
    endif
    if hero_index == item_channel_2_hero_slot then
        return
    endif
    set item_channel_1_target=GetTriggerUnit()
endfunction

function InitTrig_heroes takes nothing returns nothing
    set t_hero_update=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_hero_update, USER_PLAYER, EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddAction(t_hero_update, function hero_on_level_triggerfunction)
    set t_hero_pickup_item=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_hero_pickup_item, USER_PLAYER, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(t_hero_pickup_item, function hero_on_item_pickup)
    set t_hero_configure_all=CreateTrigger()
    call TriggerAddAction(t_hero_configure_all, function hero_configure_all)
    set t_hero_set_all_max_level=CreateTrigger()
    call TriggerAddAction(t_hero_set_all_max_level, function hero_set_all_max_level)
    set hero_update_status_timer=CreateTimer()
    call TimerStart(hero_update_status_timer, 1, true, function hero_publish_all_statuses)
    set item_channel_1_target=hero_get_unit_from_index(0)
    set item_channel_2_target=hero_get_unit_from_index(item_channel_2_hero_slot)
    set hero_hashes[0]=0
    set hero_hashes[1]=0
    set hero_hashes[2]=0
    set hero_hashes[3]=0
endfunction
//===========================================================================
// Trigger: item_locations
//===========================================================================
// triggers for sending locations when picking up location-linked items
// depends: status

function item_location_send takes integer item_id returns nothing
    if ( item_id == 'I010' ) then
        call status_check_location(0)
    elseif ( item_id == 'I011' ) then
        call status_check_location(1)
    elseif ( item_id == 'I012' ) then
        call status_check_location(2)
    elseif ( item_id == 'I013' ) then
        call status_check_location(3)
    elseif ( item_id == 'I014' ) then
        call status_check_location(4)
    elseif ( item_id == 'I015' ) then
        call status_check_location(5)
    elseif ( item_id == 'I016' ) then
        call status_check_location(6)
    elseif ( item_id == 'I017' ) then
        call status_check_location(7)
    elseif ( item_id == 'I018' ) then
        call status_check_location(8)
    elseif ( item_id == 'I019' ) then
        call status_check_location(9)
    elseif ( item_id == 'I01a' ) then
        call status_check_location(10)
    elseif ( item_id == 'I01b' ) then
        call status_check_location(11)
    elseif ( item_id == 'I01c' ) then
        call status_check_location(12)
    elseif ( item_id == 'I01d' ) then
        call status_check_location(13)
    elseif ( item_id == 'I01e' ) then
        call status_check_location(14)
    elseif ( item_id == 'I01f' ) then
        call status_check_location(15)
    elseif ( item_id == 'I020' ) then
        call status_check_location(16)
    elseif ( item_id == 'I021' ) then
        call status_check_location(17)
    elseif ( item_id == 'I022' ) then
        call status_check_location(18)
    elseif ( item_id == 'I023' ) then
        call status_check_location(19)
    elseif ( item_id == 'I024' ) then
        call status_check_location(20)
    elseif ( item_id == 'I025' ) then
        call status_check_location(21)
    elseif ( item_id == 'I026' ) then
        call status_check_location(22)
    elseif ( item_id == 'I027' ) then
        call status_check_location(23)
    elseif ( item_id == 'I028' ) then
        call status_check_location(24)
    elseif ( item_id == 'I029' ) then
        call status_check_location(25)
    elseif ( item_id == 'I02a' ) then
        call status_check_location(26)
    elseif ( item_id == 'I02b' ) then
        call status_check_location(27)
    elseif ( item_id == 'I02c' ) then
        call status_check_location(28)
    elseif ( item_id == 'I02d' ) then
        call status_check_location(29)
    elseif ( item_id == 'I02e' ) then
        call status_check_location(30)
    elseif ( item_id == 'I02f' ) then
        call status_check_location(31)
    endif
endfunction

function item_location_in_range takes integer item_id returns boolean
    if item_id < 'I010' or item_id > 'I02f' then
        return false
    endif
    return true
endfunction

function trigger_function_pick_up_item takes nothing returns nothing
    local integer item_id= GetItemTypeId(GetManipulatedItem())
    if item_location_in_range(item_id) then
        call item_location_send(item_id)
    endif
endfunction

function trigger_function_remove_from_stock takes nothing returns nothing
    local integer item_type= GetItemTypeId(GetSoldItem())
    if item_location_in_range(item_type) then
        call RemoveItemFromStock(GetSellingUnit(), item_type)
    endif
endfunction

function InitTrig_item_locations takes nothing returns nothing
    set t_location_found=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_location_found, USER_PLAYER, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(t_location_found, function trigger_function_pick_up_item)
    set t_item_purchased=CreateTrigger()
    call TriggerRegisterPlayerUnitEvent(t_item_purchased, Player(PLAYER_NEUTRAL_PASSIVE), EVENT_PLAYER_UNIT_SELL_ITEM, null)
    call TriggerAddAction(t_item_purchased, function trigger_function_remove_from_stock)
endfunction
//===========================================================================
// Trigger: debug
//===========================================================================
// debug commands

function debug_print_help takes nothing returns nothing
    call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "Commands: '-print', '-xp', '-xp2', '-health', '-dragon', '-speed'")
endfunction

function debug_xp_tome takes nothing returns nothing
    // call CreateItem('texp', GetStartLocationX(GetPlayerId(USER_PLAYER)), GetStartLocationY(GetPlayerId(USER_PLAYER)))
    call CreateItem('texp', GetUnitX(item_channel_1_target), GetUnitY(item_channel_1_target))
endfunction

function debug_xp2_tome takes nothing returns nothing
    call CreateItem('tkno', GetUnitX(item_channel_1_target), GetUnitY(item_channel_1_target))
endfunction

function debug_health_tome takes nothing returns nothing
    call CreateItem('manh', GetUnitX(item_channel_1_target), GetUnitY(item_channel_1_target))
endfunction

function debug_dragon_egg takes nothing returns nothing
    call CreateItem('fgrd', GetUnitX(item_channel_1_target), GetUnitY(item_channel_1_target))
endfunction

function debug_speed takes nothing returns nothing
    call CreateItem('rspd', GetUnitX(item_channel_1_target), GetUnitY(item_channel_1_target))
endfunction

function debug_print takes nothing returns nothing
    local string s_locations_checked= ""
    local integer index= 0
    call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "world_id: " + I2S(world_id))
    loop
        exitwhen index >= MAX_LOCATIONS
        if locations_checked[index] then
            set s_locations_checked=s_locations_checked + "," + I2S(index)
        endif
        set index=index + 1
    endloop
    call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "checked: " + s_locations_checked)
    set index=0
    loop
        exitwhen index >= NUM_HEROES
        call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "Hero " + I2S(index) + " max level: " + I2S(HERO_MAX_LEVEL[index]))
        set index=index + 1
    endloop
endfunction

function InitTrig_debug takes nothing returns nothing
    set t_help=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_help, USER_PLAYER, "-help", false)
    call TriggerAddAction(t_help, function debug_print_help)
    set t_xp=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_xp, USER_PLAYER, "-xp", false)
    call TriggerAddAction(t_xp, function debug_xp_tome)
    set t_xp2=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_xp2, USER_PLAYER, "-xp2", false)
    call TriggerAddAction(t_xp2, function debug_xp2_tome)
    set t_health=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_health, USER_PLAYER, "-health", false)
    call TriggerAddAction(t_health, function debug_health_tome)
    set t_dragon=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_dragon, USER_PLAYER, "-dragon", false)
    call TriggerAddAction(t_dragon, function debug_dragon_egg)
    set t_speed=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_speed, USER_PLAYER, "-speed", false)
    call TriggerAddAction(t_speed, function debug_speed)
    set t_print=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_print, USER_PLAYER, "-print", false)
    call TriggerAddAction(t_print, function debug_print)
endfunction
//===========================================================================
// Trigger: zoom
//===========================================================================

function Trig_zoom_Actions takes nothing returns nothing
    call SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, S2R(SubStringBJ(GetEventPlayerChatString(), 7, 10)), 0)
endfunction

//===========================================================================
function InitTrig_zoom takes nothing returns nothing
    set t_zoom=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_zoom, USER_PLAYER, "-zoom ", false)
    call TriggerAddAction(t_zoom, function Trig_zoom_Actions)
endfunction
//===========================================================================
// Trigger: irregulars
//===========================================================================

function irregular_transform takes unit u,integer abil_id returns effect
    local effect e= AddSpecialEffect("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl", GetUnitX(u), GetUnitY(u))
    call UnitAddAbility(u, abil_id)
    call IssueImmediateOrder(u, "ravenform")
    return e
endfunction

function irregular_check_money takes unit u,integer amount returns boolean
    local player p= GetOwningPlayer(u)
    local integer current_gold= GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
    if current_gold < amount then
        if not GetSoundIsPlaying(human_no_gold_sound) then
            call StartSound(human_no_gold_sound)
        endif
        call IssueImmediateOrder(u, "stop")
        return false
    endif
    call AdjustPlayerStateBJ(amount, p, PLAYER_STATE_RESOURCE_GOLD)
    return true
endfunction

function irregulars_on_cast takes nothing returns nothing
    local integer a= GetSpellAbilityId()
    local unit u= GetSpellAbilityUnit()
    local effect e= null
    if a == 'AP00' then
        // captain
        if irregular_check_money(u , 80) then
            set e=irregular_transform(u , 'AP0a')
        endif
    elseif a == 'AP01' then
        // footman
        if irregular_check_money(u , 80) then
            set e=irregular_transform(u , 'AP0b')
        endif
    elseif a == 'AP02' then
        // rifleman
        if irregular_check_money(u , 125) then
            set e=irregular_transform(u , 'AP0c')
        endif
    elseif a == 'AP03' then
        // archer
        if irregular_check_money(u , 80) then
            set e=irregular_transform(u , 'AP0d')
        endif
    elseif a == 'AP04' then
        // knight
        if irregular_check_money(u , 225) then
            set e=irregular_transform(u , 'AP0e')
        endif
    elseif a == 'AP05' then
        // priest
        if irregular_check_money(u , 80) then
            set e=irregular_transform(u , 'AP0f')
        endif
    elseif a == 'AP06' then
        // sorceress
        if irregular_check_money(u , 90) then
            set e=irregular_transform(u , 'AP0g')
        endif
    elseif a == 'AP07' then
        // spell breaker
        if irregular_check_money(u , 150) then
            set e=irregular_transform(u , 'AP0h')
        endif
    elseif a == 'AP08' then
        // mortar team
        if irregular_check_money(u , 150) then
            set e=irregular_transform(u , 'AP0i')
        endif
    endif
    if e != null then
        call TriggerSleepAction(2.0)
        call DestroyEffect(e)
    endif
endfunction

//===========================================================================
function InitTrig_irregulars takes nothing returns nothing
    set t_irregulars_on_cast=CreateTrigger()
    set human_no_gold_sound=CreateSound("Sound\\Interface\\warning\\human\\knightnogold1.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(human_no_gold_sound, "NoGoldHuman")
    call SetSoundDuration(human_no_gold_sound, GetSoundDuration(human_no_gold_sound))
    call TriggerRegisterPlayerUnitEventSimple(t_irregulars_on_cast, USER_PLAYER, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddAction(t_irregulars_on_cast, function irregulars_on_cast)
    call Preload("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl")
endfunction
//===========================================================================
// Trigger: AP mercenaries
//===========================================================================

function mercenaries_apply takes nothing returns nothing
    local integer index= 0
    local integer mask= 536870912
    local integer scanned= 0
    local integer signal= 'ncrb'
    local unit target_camp= gg_unit_nmr7_0044
    local integer u
    loop
        exitwhen mask == 0
        if mask == 524288 then // 1 << 19
            set signal='ndog'
            set index=0
            set target_camp=null
        elseif mask == 512 then // 1 << 9
            set signal='ndwm'
            set index=0
            set target_camp=null
        endif
        set u=GetPlayerTechMaxAllowed(Player(index), signal)
        if units_added - scanned >= mask then
            // already added
            set scanned=scanned + mask
        elseif u > 0 then
            // add the unit
            call AddUnitToStock(target_camp, u, 0, 2)
            set scanned=scanned + mask
            set units_added=units_added + mask
        endif
        set mask=mask / 2
        set index=index + 1
    endloop
endfunction

function InitTrig_AP_mercenaries takes nothing returns nothing
    set t_apply_mercenaries=CreateTrigger()
    call TriggerAddAction(t_apply_mercenaries, function mercenaries_apply)
endfunction
//===========================================================================
// Trigger: AP Load Arthas
//===========================================================================
function Trig_AP_Load_Arthas_Func004001 takes nothing returns boolean
    return ( udg_Arthas != null )
endfunction

function Trig_AP_Load_Arthas_Actions takes nothing returns nothing
    // Load the hero data
    local real facing= bj_RADTODEG * Atan2(GetRectCenterY(gg_rct_InitArthasLooks) - GetRectCenterY(gg_rct_InitPlaceArthas), GetRectCenterX(gg_rct_InitArthasLooks) - GetRectCenterX(gg_rct_InitPlaceArthas))
    set udg_Arthas=hero_create(0 , USER_PLAYER , GetRectCenterX(gg_rct_InitPlaceArthas) , GetRectCenterY(gg_rct_InitPlaceArthas) , facing)
    if ( Trig_AP_Load_Arthas_Func004001() ) then
        return
    else
        call DoNothing()
    endif
    // If the hero data wasn't found, create a default hero
    set udg_Arthas=CreateUnit(USER_PLAYER, 'Hart', GetRectCenterX(gg_rct_InitPlaceArthas), GetRectCenterY(gg_rct_InitPlaceArthas), facing)
    set hero_abil_1[0]='AHhb'
    set hero_abil_2[0]='AHds'
    set hero_abil_3[0]='AHad'
    set hero_abil_4[0]='AHre'
endfunction

//===========================================================================
function InitTrig_AP_Load_Arthas takes nothing returns nothing
    set gg_trg_AP_Load_Arthas=CreateTrigger()
    call TriggerAddAction(gg_trg_AP_Load_Arthas, function Trig_AP_Load_Arthas_Actions)
endfunction

//===========================================================================
// Trigger: AP Load Muradin
//===========================================================================
function Trig_AP_Load_Muradin_Func004001 takes nothing returns boolean
    return ( udg_Muradin != null )
endfunction

function Trig_AP_Load_Muradin_Actions takes nothing returns nothing
    // Load the hero data
    local real facing= bj_RADTODEG * Atan2(GetUnitY(gg_unit_hmpr_0130) - GetRectCenterY(gg_rct_InitPlaceMuradin), GetUnitX(gg_unit_hmpr_0130) - GetRectCenterX(gg_rct_InitPlaceMuradin))
    set udg_Muradin=hero_create(1 , USER_PLAYER , GetRectCenterX(gg_rct_InitPlaceMuradin) , GetRectCenterY(gg_rct_InitPlaceMuradin) , facing)
    if ( Trig_AP_Load_Muradin_Func004001() ) then
        return
    else
        call DoNothing()
    endif
    // If the hero data wasn't found, create a default hero
    set udg_Muradin=CreateUnit(USER_PLAYER, 'Hmbr', GetRectCenterX(gg_rct_InitPlaceMuradin), GetRectCenterY(gg_rct_InitPlaceMuradin), facing)
    set hero_abil_1[1]='AHtb'
    set hero_abil_2[1]='AHtc'
    set hero_abil_3[1]='AHbh'
    set hero_abil_4[1]='AHav'
endfunction

//===========================================================================
function InitTrig_AP_Load_Muradin takes nothing returns nothing
    set gg_trg_AP_Load_Muradin=CreateTrigger()
    call TriggerAddAction(gg_trg_AP_Load_Muradin, function Trig_AP_Load_Muradin_Actions)
endfunction

//===========================================================================
// Trigger: Shop Locations
//===========================================================================
function Trig_Shop_Locations_Actions takes nothing returns nothing
    call AddItemToStockBJ('I025', gg_unit_ngme_0043, 1, 1)
    call AddItemToStockBJ('I026', gg_unit_nmr7_0044, 1, 1)
endfunction

//===========================================================================
function InitTrig_Shop_Locations takes nothing returns nothing
    set gg_trg_Shop_Locations=CreateTrigger()
    call TriggerAddAction(gg_trg_Shop_Locations, function Trig_Shop_Locations_Actions)
endfunction

//===========================================================================
// Trigger: MalGanis Location
//===========================================================================
function Trig_MalGanis_Location_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call status_check_location(20)
endfunction

//===========================================================================
function InitTrig_MalGanis_Location takes nothing returns nothing
    set gg_trg_MalGanis_Location=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_MalGanis_Location, gg_unit_Umal_0177, EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_MalGanis_Location, function Trig_MalGanis_Location_Actions)
endfunction

//===========================================================================
// Trigger: StartInitializationSequence
//===========================================================================
function Trig_StartInitializationSequence_Actions takes nothing returns nothing
    call SetCampaignMenuRaceBJ(bj_CAMPAIGN_INDEX_H)
    call TriggerExecute(gg_trg_Initialize_Variables)
    call TriggerExecute(gg_trg_Initial_Resources)
    call TriggerExecute(gg_trg_Initial_Weather)
    call TriggerExecute(gg_trg_Initial_Alliances)
    call TriggerExecute(gg_trg_Initial_Heroes)
    call TriggerExecute(gg_trg_Initial_ValleyPrep)
    call TriggerExecute(gg_trg_Initial_IntroWavePrep)
    call TriggerExecute(gg_trg_Initial_Quests)
    call TriggerExecute(gg_trg_Initial_AI)
    call TriggerExecute(gg_trg_Initial_Music)
    call TriggerExecute(gg_trg_Setup_Scorescreen)
    call TriggerExecute(gg_trg_TriggerIntroCinematic)
endfunction

//===========================================================================
function InitTrig_StartInitializationSequence takes nothing returns nothing
    set gg_trg_StartInitializationSequence=CreateTrigger()
    call TriggerAddAction(gg_trg_StartInitializationSequence, function Trig_StartInitializationSequence_Actions)
endfunction

//===========================================================================
// Trigger: Initialize Variables
//===========================================================================
function Trig_Initialize_Variables_Actions takes nothing returns nothing
    set udg_Malganis=gg_unit_Umal_0177
    set udg_Captain=gg_unit_hcth_0105
    set udg_Guardian=gg_unit_nC00_0011
    set udg_GuardianLackeyA=gg_unit_nrvs_0116
    set udg_GuardianLackeyB=gg_unit_nrvs_0118
    set udg_GuardianArcherA=gg_unit_nskm_0135
    set udg_GuardianArcherB=gg_unit_nskm_0147
endfunction

//===========================================================================
function InitTrig_Initialize_Variables takes nothing returns nothing
    set gg_trg_Initialize_Variables=CreateTrigger()
    call TriggerAddAction(gg_trg_Initialize_Variables, function Trig_Initialize_Variables_Actions)
endfunction

//===========================================================================
// Trigger: Initial Resources
//===========================================================================
function Trig_Initial_Resources_Actions takes nothing returns nothing
    call SetPlayerStateBJ(Player(1), PLAYER_STATE_RESOURCE_GOLD, 1000)
    call SetPlayerStateBJ(Player(1), PLAYER_STATE_GOLD_GATHERED, 1000)
    call SetPlayerStateBJ(Player(1), PLAYER_STATE_RESOURCE_LUMBER, 500)
    call SetPlayerStateBJ(Player(1), PLAYER_STATE_LUMBER_GATHERED, 500)
    call SetPlayerStateBJ(udg_PlayerUndeadProtector, PLAYER_STATE_RESOURCE_GOLD, 1000)
    call SetPlayerStateBJ(udg_PlayerUndeadProtector, PLAYER_STATE_GOLD_GATHERED, 1000)
    call SetPlayerStateBJ(udg_PlayerUndeadProtector, PLAYER_STATE_RESOURCE_LUMBER, 1000)
    call SetPlayerStateBJ(udg_PlayerUndeadProtector, PLAYER_STATE_LUMBER_GATHERED, 1000)
    call SetPlayerStateBJ(udg_PlayerMalganis, PLAYER_STATE_RESOURCE_GOLD, 1000)
    call SetPlayerStateBJ(udg_PlayerMalganis, PLAYER_STATE_GOLD_GATHERED, 1000)
    call SetPlayerStateBJ(udg_PlayerMalganis, PLAYER_STATE_RESOURCE_LUMBER, 1000)
    call SetPlayerStateBJ(udg_PlayerMalganis, PLAYER_STATE_LUMBER_GATHERED, 1000)
endfunction

//===========================================================================
function InitTrig_Initial_Resources takes nothing returns nothing
    set gg_trg_Initial_Resources=CreateTrigger()
    call TriggerAddAction(gg_trg_Initial_Resources, function Trig_Initial_Resources_Actions)
endfunction

//===========================================================================
// Trigger: Initial Weather
//===========================================================================
function Trig_Initial_Weather_Actions takes nothing returns nothing
    call AddWeatherEffectSaveLast(GetEntireMapRect(), 'SNhs')
    set udg_WeatherSnow=GetLastCreatedWeatherEffect()
    call EnableWeatherEffect(udg_WeatherSnow, true)
    call SetTerrainFogExBJ(0, 600.00, 3500.00, 0.00, 100, 100, 100)
    call SetTimeOfDay(20.00)
endfunction

//===========================================================================
function InitTrig_Initial_Weather takes nothing returns nothing
    set gg_trg_Initial_Weather=CreateTrigger()
    call TriggerAddAction(gg_trg_Initial_Weather, function Trig_Initial_Weather_Actions)
endfunction

//===========================================================================
// Trigger: Initial Alliances
//===========================================================================
function Trig_Initial_Alliances_Actions takes nothing returns nothing
    call SetPlayerColorBJ(Player(2), PLAYER_COLOR_GREEN, true)
    call SetPlayerColorBJ(Player(4), PLAYER_COLOR_GREEN, true)
    call SetPlayerAllianceStateBJ(udg_PlayerUndeadProtector, udg_PlayerMalganis, bj_ALLIANCE_ALLIED_VISION)
    call SetPlayerAllianceStateBJ(udg_PlayerMalganis, udg_PlayerUndeadProtector, bj_ALLIANCE_ALLIED_VISION)
    call SetPlayerAllianceStateBJ(Player(2), udg_PlayerMalganis, bj_ALLIANCE_ALLIED_VISION)
    call SetPlayerAllianceStateBJ(Player(2), udg_PlayerUndeadProtector, bj_ALLIANCE_ALLIED_VISION)
    call SetPlayerAllianceStateBJ(udg_PlayerMalganis, Player(2), bj_ALLIANCE_ALLIED_VISION)
    call SetPlayerAllianceStateBJ(udg_PlayerUndeadProtector, Player(2), bj_ALLIANCE_ALLIED_VISION)
    call SetPlayerAllianceBJ(Player(4), ALLIANCE_PASSIVE, true, Player(1))
    call SetPlayerAllianceBJ(Player(2), ALLIANCE_PASSIVE, true, Player(PLAYER_NEUTRAL_AGGRESSIVE))
    call SetPlayerAllianceBJ(Player(4), ALLIANCE_PASSIVE, true, Player(PLAYER_NEUTRAL_AGGRESSIVE))
    call SetPlayerAllianceBJ(Player(3), ALLIANCE_PASSIVE, true, Player(PLAYER_NEUTRAL_AGGRESSIVE))
    call SetPlayerAllianceBJ(Player(6), ALLIANCE_PASSIVE, true, Player(PLAYER_NEUTRAL_AGGRESSIVE))
    call SetPlayerAllianceBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), ALLIANCE_PASSIVE, true, Player(2))
    call SetPlayerAllianceBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), ALLIANCE_PASSIVE, true, Player(3))
    call SetPlayerAllianceBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), ALLIANCE_PASSIVE, true, Player(4))
    call SetPlayerAllianceBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), ALLIANCE_PASSIVE, true, Player(6))
endfunction

//===========================================================================
function InitTrig_Initial_Alliances takes nothing returns nothing
    set gg_trg_Initial_Alliances=CreateTrigger()
    call TriggerAddAction(gg_trg_Initial_Alliances, function Trig_Initial_Alliances_Actions)
endfunction

//===========================================================================
// Trigger: Initial ValleyPrep
//===========================================================================
function Trig_Initial_ValleyPrep_Func001002 takes nothing returns nothing
    call UnitSetCanSleepBJ(GetEnumUnit(), false)
endfunction

function Trig_Initial_ValleyPrep_Actions takes nothing returns nothing
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(PLAYER_NEUTRAL_AGGRESSIVE)), function Trig_Initial_ValleyPrep_Func001002)
    call SetUnitInvulnerable(udg_Guardian, true)
    call SetUnitInvulnerable(udg_GuardianLackeyA, true)
    call SetUnitInvulnerable(udg_GuardianLackeyB, true)
    call SetUnitInvulnerable(udg_GuardianArcherA, true)
    call SetUnitInvulnerable(udg_GuardianArcherB, true)
    call PauseUnitBJ(true, udg_Guardian)
    call PauseUnitBJ(true, udg_GuardianLackeyA)
    call PauseUnitBJ(true, udg_GuardianLackeyB)
    call PauseUnitBJ(true, udg_GuardianArcherA)
    call PauseUnitBJ(true, udg_GuardianArcherB)
    call CreateFogModifierRectBJ(false, Player(1), FOG_OF_WAR_MASKED, gg_rct_FrostmourneValleyVisibilityA)
    set udg_ValleyVisA=GetLastCreatedFogModifier()
    call CreateFogModifierRectBJ(false, Player(1), FOG_OF_WAR_MASKED, gg_rct_FrostmourneValleyVisibilityB)
    set udg_ValleyVisB=GetLastCreatedFogModifier()
    call CreateFogModifierRectBJ(false, Player(1), FOG_OF_WAR_MASKED, gg_rct_FrostmourneValleyVisibilityC)
    set udg_ValleyVisC=GetLastCreatedFogModifier()
endfunction

//===========================================================================
function InitTrig_Initial_ValleyPrep takes nothing returns nothing
    set gg_trg_Initial_ValleyPrep=CreateTrigger()
    call TriggerAddAction(gg_trg_Initial_ValleyPrep, function Trig_Initial_ValleyPrep_Actions)
endfunction

//===========================================================================
// Trigger: Initial IntroWavePrep
//===========================================================================
function Trig_Initial_IntroWavePrep_Func001002 takes nothing returns nothing
    call GroupAddUnitSimple(GetEnumUnit(), udg_IntroNorthGroup)
endfunction

function Trig_Initial_IntroWavePrep_Func002002 takes nothing returns nothing
    call GroupAddUnitSimple(GetEnumUnit(), udg_IntroNortheastGroup)
endfunction

function Trig_Initial_IntroWavePrep_Func003002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Initial_IntroWavePrep_Func004002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Initial_IntroWavePrep_Actions takes nothing returns nothing
    call ForGroupBJ(GetUnitsInRectAll(gg_rct_IntroNorthUndeadWave), function Trig_Initial_IntroWavePrep_Func001002)
    call ForGroupBJ(GetUnitsInRectAll(gg_rct_IntroNortheastUndeadWave), function Trig_Initial_IntroWavePrep_Func002002)
    call ForGroupBJ(udg_IntroNorthGroup, function Trig_Initial_IntroWavePrep_Func003002)
    call ForGroupBJ(udg_IntroNortheastGroup, function Trig_Initial_IntroWavePrep_Func004002)
endfunction

//===========================================================================
function InitTrig_Initial_IntroWavePrep takes nothing returns nothing
    set gg_trg_Initial_IntroWavePrep=CreateTrigger()
    call TriggerAddAction(gg_trg_Initial_IntroWavePrep, function Trig_Initial_IntroWavePrep_Actions)
endfunction

//===========================================================================
// Trigger: Initial ValleyGroup
//===========================================================================
function Trig_Initial_ValleyGroup_Actions takes nothing returns nothing
    call GroupAddUnitSimple(udg_Arthas, udg_ValleyGroup)
    call GroupAddUnitSimple(udg_Muradin, udg_ValleyGroup)
    call GroupAddUnitSimple(gg_unit_hkni_0251, udg_ValleyGroup)
    call GroupAddUnitSimple(gg_unit_hkni_0250, udg_ValleyGroup)
    call GroupAddUnitSimple(gg_unit_hrif_0252, udg_ValleyGroup)
    call GroupAddUnitSimple(gg_unit_hrif_0253, udg_ValleyGroup)
    call GroupAddUnitSimple(gg_unit_hrif_0254, udg_ValleyGroup)
endfunction

//===========================================================================
function InitTrig_Initial_ValleyGroup takes nothing returns nothing
    set gg_trg_Initial_ValleyGroup=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_Initial_ValleyGroup, 1.00)
    call TriggerAddAction(gg_trg_Initial_ValleyGroup, function Trig_Initial_ValleyGroup_Actions)
endfunction

//===========================================================================
// Trigger: Initial Quests
//===========================================================================
function Trig_Initial_Quests_Actions takes nothing returns nothing
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_030", "TRIGSTR_031", "ReplaceableTextures\\CommandButtons\\BTNFrostMourne.tga")
    set udg_QuestFrostmourne=GetLastCreatedQuestBJ()
    call CreateQuestItemBJ(udg_QuestFrostmourne, "TRIGSTR_028")
    set udg_QuestReqFrostmourne=GetLastCreatedQuestItemBJ()
    call CreateQuestItemBJ(udg_QuestFrostmourne, "TRIGSTR_029")
    set udg_QuestReqArthasDie=GetLastCreatedQuestItemBJ()
    call CreateQuestItemBJ(udg_QuestFrostmourne, "TRIGSTR_060")
    set udg_QuestReqMuradinDie=GetLastCreatedQuestItemBJ()
    call CreateQuestBJ(bj_QUESTTYPE_REQ_UNDISCOVERED, "TRIGSTR_093", "TRIGSTR_094", "ReplaceableTextures\\CommandButtons\\BTNHeroDreadLord.tga")
    set udg_QuestMalganis=GetLastCreatedQuestBJ()
    call CreateQuestItemBJ(udg_QuestMalganis, "TRIGSTR_061")
    set udg_QuestReqMalganis=GetLastCreatedQuestItemBJ()
endfunction

//===========================================================================
function InitTrig_Initial_Quests takes nothing returns nothing
    set gg_trg_Initial_Quests=CreateTrigger()
    call TriggerAddAction(gg_trg_Initial_Quests, function Trig_Initial_Quests_Actions)
endfunction

//===========================================================================
// Trigger: Initial AI
//===========================================================================
function Trig_Initial_AI_Actions takes nothing returns nothing
    call StartCampaignAI(Player(2), "h09_teal.ai")
    call StartCampaignAI(udg_PlayerUndeadProtector, "h09_purple.ai")
    call StartCampaignAI(udg_PlayerMalganis, "h09_green.ai")
endfunction

//===========================================================================
function InitTrig_Initial_AI takes nothing returns nothing
    set gg_trg_Initial_AI=CreateTrigger()
    call TriggerAddAction(gg_trg_Initial_AI, function Trig_Initial_AI_Actions)
endfunction

//===========================================================================
// Trigger: Initial Music
//===========================================================================
function Trig_Initial_Music_Actions takes nothing returns nothing
    call ClearMapMusicBJ()
    call TriggerSleepAction(0.01)
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\DarkAgents.mp3")
    call SetMapMusicIndexedBJ("music", 2)
endfunction

//===========================================================================
function InitTrig_Initial_Music takes nothing returns nothing
    set gg_trg_Initial_Music=CreateTrigger()
    call TriggerAddAction(gg_trg_Initial_Music, function Trig_Initial_Music_Actions)
endfunction

//===========================================================================
// Trigger: Setup Scorescreen
//===========================================================================
function Trig_Setup_Scorescreen_Actions takes nothing returns nothing
    call SetPlayerOnScoreScreenBJ(false, Player(2))
    call SetPlayerOnScoreScreenBJ(false, Player(4))
endfunction

//===========================================================================
function InitTrig_Setup_Scorescreen takes nothing returns nothing
    set gg_trg_Setup_Scorescreen=CreateTrigger()
    call TriggerAddAction(gg_trg_Setup_Scorescreen, function Trig_Setup_Scorescreen_Actions)
endfunction

//===========================================================================
// Trigger: Initial Heroes
//===========================================================================
function Trig_Initial_Heroes_Actions takes nothing returns nothing
    call TriggerExecute(gg_trg_AP_Load_Arthas)
    call TriggerExecute(gg_trg_AP_Load_Muradin)
    set item_channel_1_target=udg_Arthas
    call SetHeroLevelBJ(udg_Malganis, 9, false)
    call SelectHeroSkill(udg_Malganis, 'AUcs')
    call SelectHeroSkill(udg_Malganis, 'AUcs')
    call SelectHeroSkill(udg_Malganis, 'AUsl')
    call SelectHeroSkill(udg_Malganis, 'AUsl')
    call SelectHeroSkill(udg_Malganis, 'AUsl')
    call UnitAddItemByIdSwapped('ankh', udg_Malganis)
    call UnitAddItemByIdSwapped('ankh', udg_Malganis)
    call UnitAddItemByIdSwapped('ankh', udg_Malganis)
    call UnitAddItemByIdSwapped('rlif', udg_Malganis)
    call UnitAddItemByIdSwapped('rlif', udg_Malganis)
    call UnitAddItemByIdSwapped('rlif', udg_Malganis)
    call SuspendHeroXPBJ(false, udg_Malganis)
endfunction

//===========================================================================
function InitTrig_Initial_Heroes takes nothing returns nothing
    set gg_trg_Initial_Heroes=CreateTrigger()
    call TriggerAddAction(gg_trg_Initial_Heroes, function Trig_Initial_Heroes_Actions)
endfunction

//===========================================================================
// Trigger: Arthas Leans a Skill
//===========================================================================
function Trig_Arthas_Leans_a_Skill_Func001001 takes nothing returns boolean
    return ( GetLearnedSkillBJ() == 'AHhb' )
endfunction

function Trig_Arthas_Leans_a_Skill_Func002001 takes nothing returns boolean
    return ( GetLearnedSkillBJ() == 'AHds' )
endfunction

function Trig_Arthas_Leans_a_Skill_Func003001 takes nothing returns boolean
    return ( GetLearnedSkillBJ() == 'AHad' )
endfunction

function Trig_Arthas_Leans_a_Skill_Func004001 takes nothing returns boolean
    return ( GetLearnedSkillBJ() == 'AHre' )
endfunction

function Trig_Arthas_Leans_a_Skill_Actions takes nothing returns nothing
    if ( Trig_Arthas_Leans_a_Skill_Func001001() ) then
        set udg_SkillHolyLight=( udg_SkillHolyLight + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_Arthas_Leans_a_Skill_Func002001() ) then
        set udg_SkillDivineShield=( udg_SkillDivineShield + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_Arthas_Leans_a_Skill_Func003001() ) then
        set udg_SkillDevotionAura=( udg_SkillDevotionAura + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_Arthas_Leans_a_Skill_Func004001() ) then
        set udg_SkillResurrection=( udg_SkillResurrection + 1 )
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_Arthas_Leans_a_Skill takes nothing returns nothing
    set gg_trg_Arthas_Leans_a_Skill=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Arthas_Leans_a_Skill, Player(1), EVENT_PLAYER_HERO_SKILL)
    call TriggerAddAction(gg_trg_Arthas_Leans_a_Skill, function Trig_Arthas_Leans_a_Skill_Actions)
endfunction

//===========================================================================
// Trigger: RecreateArthasSkills
//===========================================================================
function Trig_RecreateArthasSkills_Func001001 takes nothing returns boolean
    return ( udg_SkillHolyLight > 0 )
endfunction

function Trig_RecreateArthasSkills_Func003001 takes nothing returns boolean
    return ( udg_SkillHolyLight > 0 )
endfunction

function Trig_RecreateArthasSkills_Func005001 takes nothing returns boolean
    return ( udg_SkillHolyLight > 0 )
endfunction

function Trig_RecreateArthasSkills_Func007001 takes nothing returns boolean
    return ( udg_SkillDivineShield > 0 )
endfunction

function Trig_RecreateArthasSkills_Func009001 takes nothing returns boolean
    return ( udg_SkillDivineShield > 0 )
endfunction

function Trig_RecreateArthasSkills_Func011001 takes nothing returns boolean
    return ( udg_SkillDivineShield > 0 )
endfunction

function Trig_RecreateArthasSkills_Func013001 takes nothing returns boolean
    return ( udg_SkillDevotionAura > 0 )
endfunction

function Trig_RecreateArthasSkills_Func015001 takes nothing returns boolean
    return ( udg_SkillDevotionAura > 0 )
endfunction

function Trig_RecreateArthasSkills_Func017001 takes nothing returns boolean
    return ( udg_SkillDevotionAura > 0 )
endfunction

function Trig_RecreateArthasSkills_Func019001 takes nothing returns boolean
    return ( udg_SkillResurrection > 0 )
endfunction

function Trig_RecreateArthasSkills_Actions takes nothing returns nothing
    if ( Trig_RecreateArthasSkills_Func001001() ) then
        call SelectHeroSkill(udg_EvilArthas, 'AHhb')
    else
        call DoNothing()
    endif
    set udg_SkillHolyLight=( udg_SkillHolyLight - 1 )
    if ( Trig_RecreateArthasSkills_Func003001() ) then
        call SelectHeroSkill(udg_EvilArthas, 'AHhb')
    else
        call DoNothing()
    endif
    set udg_SkillHolyLight=( udg_SkillHolyLight - 1 )
    if ( Trig_RecreateArthasSkills_Func005001() ) then
        call SelectHeroSkill(udg_EvilArthas, 'AHhb')
    else
        call DoNothing()
    endif
    set udg_SkillHolyLight=( udg_SkillHolyLight - 1 )
    if ( Trig_RecreateArthasSkills_Func007001() ) then
        call SelectHeroSkill(udg_EvilArthas, 'AHds')
    else
        call DoNothing()
    endif
    set udg_SkillDivineShield=( udg_SkillDivineShield - 1 )
    if ( Trig_RecreateArthasSkills_Func009001() ) then
        call SelectHeroSkill(udg_EvilArthas, 'AHds')
    else
        call DoNothing()
    endif
    set udg_SkillDivineShield=( udg_SkillDivineShield - 1 )
    if ( Trig_RecreateArthasSkills_Func011001() ) then
        call SelectHeroSkill(udg_EvilArthas, 'AHds')
    else
        call DoNothing()
    endif
    set udg_SkillDivineShield=( udg_SkillDivineShield - 1 )
    if ( Trig_RecreateArthasSkills_Func013001() ) then
        call SelectHeroSkill(udg_EvilArthas, 'AHad')
    else
        call DoNothing()
    endif
    set udg_SkillDevotionAura=( udg_SkillDevotionAura - 1 )
    if ( Trig_RecreateArthasSkills_Func015001() ) then
        call SelectHeroSkill(udg_EvilArthas, 'AHad')
    else
        call DoNothing()
    endif
    set udg_SkillDevotionAura=( udg_SkillDevotionAura - 1 )
    if ( Trig_RecreateArthasSkills_Func017001() ) then
        call SelectHeroSkill(udg_EvilArthas, 'AHad')
    else
        call DoNothing()
    endif
    set udg_SkillDevotionAura=( udg_SkillDevotionAura - 1 )
    if ( Trig_RecreateArthasSkills_Func019001() ) then
        call SelectHeroSkill(udg_EvilArthas, 'AHre')
    else
        call DoNothing()
    endif
    set udg_SkillResurrection=( udg_SkillResurrection - 1 )
endfunction

//===========================================================================
function InitTrig_RecreateArthasSkills takes nothing returns nothing
    set gg_trg_RecreateArthasSkills=CreateTrigger()
    call TriggerAddAction(gg_trg_RecreateArthasSkills, function Trig_RecreateArthasSkills_Actions)
endfunction

//===========================================================================
// Trigger: Easy
//===========================================================================
function Trig_Easy_Conditions takes nothing returns boolean
    if ( not ( GetGameDifficulty() == MAP_DIFFICULTY_EASY ) ) then
        return false
    endif
    return true
endfunction

function Trig_Easy_Actions takes nothing returns nothing
    // PURPLE TOWN
    call RemoveUnit(gg_unit_usep_0084)
    // GREEN TOWN
    call RemoveUnit(gg_unit_usep_0061)
    call RemoveUnit(gg_unit_uslh_0063)
    // INITIAL WAVES
    call RemoveUnit(gg_unit_ucry_0216)
    call RemoveUnit(gg_unit_unec_0230)
    // VALLEY
    call RemoveUnit(gg_unit_nwwg_0255)
    call RemoveUnit(gg_unit_nwwf_0120)
    // HANDICAP
    call SetPlayerHandicapBJ(Player(2), bj_HANDICAP_EASY)
    call SetPlayerHandicapBJ(Player(3), bj_HANDICAP_EASY)
    call SetPlayerHandicapBJ(Player(4), bj_HANDICAP_EASY)
    call SetPlayerHandicapBJ(Player(6), bj_HANDICAP_EASY)
    call SetPlayerHandicapBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), bj_HANDICAP_EASY)
endfunction

//===========================================================================
function InitTrig_Easy takes nothing returns nothing
    set gg_trg_Easy=CreateTrigger()
    call TriggerAddCondition(gg_trg_Easy, Condition(function Trig_Easy_Conditions))
    call TriggerAddAction(gg_trg_Easy, function Trig_Easy_Actions)
endfunction

//===========================================================================
// Trigger: Normal
//===========================================================================
function Trig_Normal_Conditions takes nothing returns boolean
    if ( not ( GetGameDifficulty() == MAP_DIFFICULTY_NORMAL ) ) then
        return false
    endif
    return true
endfunction

function Trig_Normal_Actions takes nothing returns nothing
    // PURPLE TOWN
    call RemoveUnit(gg_unit_usep_0084)
    // GREEN TOWN
    call RemoveUnit(gg_unit_usep_0061)
    call RemoveUnit(gg_unit_uslh_0063)
    // INITIAL WAVES
    call RemoveUnit(gg_unit_ucry_0216)
    call RemoveUnit(gg_unit_unec_0230)
    // VALLEY
    call RemoveUnit(gg_unit_nwwg_0255)
    call RemoveUnit(gg_unit_nwwf_0120)
endfunction

//===========================================================================
function InitTrig_Normal takes nothing returns nothing
    set gg_trg_Normal=CreateTrigger()
    call TriggerAddCondition(gg_trg_Normal, Condition(function Trig_Normal_Conditions))
    call TriggerAddAction(gg_trg_Normal, function Trig_Normal_Actions)
endfunction

//===========================================================================
// Trigger: Hard
//===========================================================================
function Trig_Hard_Conditions takes nothing returns boolean
    if ( not ( GetGameDifficulty() == MAP_DIFFICULTY_HARD ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hard_Func011002 takes nothing returns nothing
    call UnitSetCanSleepBJ(GetEnumUnit(), false)
endfunction

function Trig_Hard_Actions takes nothing returns nothing
    // VALLEY
    call ReplaceUnitBJ(gg_unit_nwnr_0107, 'nwna', bj_UNIT_STATE_METHOD_MAXIMUM)
    // MAL'GANIS
    call SuspendHeroXPBJ(true, udg_Malganis)
    call SetHeroLevelBJ(udg_Malganis, 10, false)
    call SelectHeroSkill(udg_Malganis, 'AUcs')
    call SuspendHeroXPBJ(false, udg_Malganis)
    // GUARDIAN
    call ReplaceUnitBJ(udg_Guardian, 'nC01', bj_UNIT_STATE_METHOD_MAXIMUM)
    set udg_Guardian=GetLastReplacedUnitBJ()
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(PLAYER_NEUTRAL_AGGRESSIVE)), function Trig_Hard_Func011002)
    call SetUnitInvulnerable(udg_Guardian, true)
    call PauseUnitBJ(true, udg_Guardian)
endfunction

//===========================================================================
function InitTrig_Hard takes nothing returns nothing
    set gg_trg_Hard=CreateTrigger()
    call TriggerAddCondition(gg_trg_Hard, Condition(function Trig_Hard_Conditions))
    call TriggerAddAction(gg_trg_Hard, function Trig_Hard_Actions)
endfunction

//===========================================================================
// Trigger: Gryphon
//===========================================================================
function Trig_Gryphon_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_GryphonMessage, true)
endfunction

//===========================================================================
function InitTrig_Gryphon takes nothing returns nothing
    set gg_trg_Gryphon=CreateTrigger()
    call TriggerRegisterTimerExpireEventBJ(gg_trg_Gryphon, udg_HintGryphonTimer)
    call TriggerAddAction(gg_trg_Gryphon, function Trig_Gryphon_Actions)
endfunction

//===========================================================================
// Trigger: GryphonMessage
//===========================================================================
function Trig_GryphonMessage_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_GryphonMessage_Actions takes nothing returns nothing
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_HINT, "TRIGSTR_212")
    call TriggerSleepAction(bj_QUEUE_DELAY_HINT)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_GryphonMessage takes nothing returns nothing
    set gg_trg_GryphonMessage=CreateTrigger()
    call TriggerAddCondition(gg_trg_GryphonMessage, Condition(function Trig_GryphonMessage_Conditions))
    call TriggerAddAction(gg_trg_GryphonMessage, function Trig_GryphonMessage_Actions)
endfunction

//===========================================================================
// Trigger: PurpleGold
//===========================================================================
function Trig_PurpleGold_Actions takes nothing returns nothing
    call AdjustPlayerStateBJ(1000, Player(3), PLAYER_STATE_RESOURCE_GOLD)
endfunction

//===========================================================================
function InitTrig_PurpleGold takes nothing returns nothing
    set gg_trg_PurpleGold=CreateTrigger()
    call TriggerRegisterPlayerStateEvent(gg_trg_PurpleGold, Player(3), PLAYER_STATE_RESOURCE_GOLD, LESS_THAN_OR_EQUAL, 1000.00)
    call TriggerAddAction(gg_trg_PurpleGold, function Trig_PurpleGold_Actions)
endfunction

//===========================================================================
// Trigger: PurpleLumber
//===========================================================================
function Trig_PurpleLumber_Actions takes nothing returns nothing
    call AdjustPlayerStateBJ(1000, Player(3), PLAYER_STATE_RESOURCE_LUMBER)
endfunction

//===========================================================================
function InitTrig_PurpleLumber takes nothing returns nothing
    set gg_trg_PurpleLumber=CreateTrigger()
    call TriggerRegisterPlayerStateEvent(gg_trg_PurpleLumber, Player(3), PLAYER_STATE_RESOURCE_LUMBER, LESS_THAN_OR_EQUAL, 1000.00)
    call TriggerAddAction(gg_trg_PurpleLumber, function Trig_PurpleLumber_Actions)
endfunction

//===========================================================================
// Trigger: GreenGold
//===========================================================================
function Trig_GreenGold_Actions takes nothing returns nothing
    call AdjustPlayerStateBJ(1000, Player(6), PLAYER_STATE_RESOURCE_GOLD)
endfunction

//===========================================================================
function InitTrig_GreenGold takes nothing returns nothing
    set gg_trg_GreenGold=CreateTrigger()
    call TriggerRegisterPlayerStateEvent(gg_trg_GreenGold, Player(6), PLAYER_STATE_RESOURCE_GOLD, LESS_THAN_OR_EQUAL, 1000.00)
    call TriggerAddAction(gg_trg_GreenGold, function Trig_GreenGold_Actions)
endfunction

//===========================================================================
// Trigger: GreenLumber
//===========================================================================
function Trig_GreenLumber_Actions takes nothing returns nothing
    call AdjustPlayerStateBJ(1000, Player(6), PLAYER_STATE_RESOURCE_LUMBER)
endfunction

//===========================================================================
function InitTrig_GreenLumber takes nothing returns nothing
    set gg_trg_GreenLumber=CreateTrigger()
    call TriggerRegisterPlayerStateEvent(gg_trg_GreenLumber, Player(6), PLAYER_STATE_RESOURCE_LUMBER, LESS_THAN_OR_EQUAL, 1000.00)
    call TriggerAddAction(gg_trg_GreenLumber, function Trig_GreenLumber_Actions)
endfunction

//===========================================================================
// Trigger: GiveAnkh
//===========================================================================
function Trig_GiveAnkh_Func001001 takes nothing returns boolean
    return ( UnitItemInSlotBJ(udg_Malganis, 1) == null )
endfunction

function Trig_GiveAnkh_Actions takes nothing returns nothing
    if ( Trig_GiveAnkh_Func001001() ) then
        call UnitAddItemByIdSwapped('ankh', udg_Malganis)
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_GiveAnkh takes nothing returns nothing
    set gg_trg_GiveAnkh=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(gg_trg_GiveAnkh, 2.00)
    call TriggerAddAction(gg_trg_GiveAnkh, function Trig_GiveAnkh_Actions)
endfunction

//===========================================================================
// Trigger: DestroyMalganisItems
//===========================================================================
function Trig_DestroyMalganisItems_Actions takes nothing returns nothing
    call RemoveItem(UnitItemInSlotBJ(udg_Malganis, 1))
    call RemoveItem(UnitItemInSlotBJ(udg_Malganis, 2))
    call RemoveItem(UnitItemInSlotBJ(udg_Malganis, 3))
    call RemoveItem(UnitItemInSlotBJ(udg_Malganis, 4))
    call RemoveItem(UnitItemInSlotBJ(udg_Malganis, 5))
    call RemoveItem(UnitItemInSlotBJ(udg_Malganis, 6))
endfunction

//===========================================================================
function InitTrig_DestroyMalganisItems takes nothing returns nothing
    set gg_trg_DestroyMalganisItems=CreateTrigger()
    call TriggerAddAction(gg_trg_DestroyMalganisItems, function Trig_DestroyMalganisItems_Actions)
endfunction

//===========================================================================
// Trigger: ItemFailsafeDetect
//===========================================================================
function Trig_ItemFailsafeDetect_Func002001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 1)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func003001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 1)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func004001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 2)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func005001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 2)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func006001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 3)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func007001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 3)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func008001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 4)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func009001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 4)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func010001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 5)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func011001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 5)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func012001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 6)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func013001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 6)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func014001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 1)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func015001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 1)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func016001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 2)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func017001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 2)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func018001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 3)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func019001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 3)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func020001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 4)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func021001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 4)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func022001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 5)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func023001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 5)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func024001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 6)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func025001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 6)) == 'stwp' )
endfunction

function Trig_ItemFailsafeDetect_Func027001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 1)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func028001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 1)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func029001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 2)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func030001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 2)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func031001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 3)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func032001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 3)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func033001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 4)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func034001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 4)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func035001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 5)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func036001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 5)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func037001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 6)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func038001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Arthas, 6)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func039001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 1)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func040001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 1)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func041001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 2)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func042001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 2)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func043001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 3)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func044001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 3)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func045001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 4)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func046001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 4)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func047001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 5)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func048001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 5)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func049001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 6)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Func050001 takes nothing returns boolean
    return ( GetItemTypeId(UnitItemInSlotBJ(udg_Muradin, 6)) == 'amrc' )
endfunction

function Trig_ItemFailsafeDetect_Actions takes nothing returns nothing
    // SCROLLS
    if ( Trig_ItemFailsafeDetect_Func002001() ) then
        set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func003001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Arthas, 1))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func004001() ) then
        set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func005001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Arthas, 2))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func006001() ) then
        set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func007001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Arthas, 3))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func008001() ) then
        set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func009001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Arthas, 4))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func010001() ) then
        set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func011001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Arthas, 5))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func012001() ) then
        set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func013001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Arthas, 6))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func014001() ) then
        set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func015001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Muradin, 1))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func016001() ) then
        set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func017001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Muradin, 2))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func018001() ) then
        set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func019001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Muradin, 3))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func020001() ) then
        set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func021001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Muradin, 4))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func022001() ) then
        set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func023001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Muradin, 5))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func024001() ) then
        set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func025001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Muradin, 6))
    else
        call DoNothing()
    endif
    // AMULETS OF RECALL
    if ( Trig_ItemFailsafeDetect_Func027001() ) then
        set udg_AmuletsOfRecall=( udg_AmuletsOfRecall + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func028001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Arthas, 1))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func029001() ) then
        set udg_AmuletsOfRecall=( udg_AmuletsOfRecall + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func030001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Arthas, 2))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func031001() ) then
        set udg_AmuletsOfRecall=( udg_AmuletsOfRecall + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func032001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Arthas, 3))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func033001() ) then
        set udg_AmuletsOfRecall=( udg_AmuletsOfRecall + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func034001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Arthas, 4))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func035001() ) then
        set udg_AmuletsOfRecall=( udg_AmuletsOfRecall + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func036001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Arthas, 5))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func037001() ) then
        set udg_AmuletsOfRecall=( udg_AmuletsOfRecall + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func038001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Arthas, 6))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func039001() ) then
        set udg_AmuletsOfRecall=( udg_AmuletsOfRecall + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func040001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Muradin, 1))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func041001() ) then
        set udg_AmuletsOfRecall=( udg_AmuletsOfRecall + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func042001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Muradin, 2))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func043001() ) then
        set udg_AmuletsOfRecall=( udg_AmuletsOfRecall + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func044001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Muradin, 3))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func045001() ) then
        set udg_AmuletsOfRecall=( udg_AmuletsOfRecall + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func046001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Muradin, 4))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func047001() ) then
        set udg_AmuletsOfRecall=( udg_AmuletsOfRecall + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func048001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Muradin, 5))
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func049001() ) then
        set udg_AmuletsOfRecall=( udg_AmuletsOfRecall + 1 )
    else
        call DoNothing()
    endif
    if ( Trig_ItemFailsafeDetect_Func050001() ) then
        call RemoveItem(UnitItemInSlotBJ(udg_Muradin, 6))
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_ItemFailsafeDetect takes nothing returns nothing
    set gg_trg_ItemFailsafeDetect=CreateTrigger()
    call TriggerAddAction(gg_trg_ItemFailsafeDetect, function Trig_ItemFailsafeDetect_Actions)
endfunction

//===========================================================================
// Trigger: ItemFailsafeReplace
//===========================================================================
function Trig_ItemFailsafeReplace_Func001001 takes nothing returns boolean
    return ( udg_ScrollsOfTownPortal > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func003001 takes nothing returns boolean
    return ( udg_ScrollsOfTownPortal > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func005001 takes nothing returns boolean
    return ( udg_ScrollsOfTownPortal > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func007001 takes nothing returns boolean
    return ( udg_ScrollsOfTownPortal > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func009001 takes nothing returns boolean
    return ( udg_ScrollsOfTownPortal > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func011001 takes nothing returns boolean
    return ( udg_ScrollsOfTownPortal > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func013001 takes nothing returns boolean
    return ( udg_ScrollsOfTownPortal > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func015001 takes nothing returns boolean
    return ( udg_ScrollsOfTownPortal > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func017001 takes nothing returns boolean
    return ( udg_ScrollsOfTownPortal > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func019001 takes nothing returns boolean
    return ( udg_ScrollsOfTownPortal > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func021001 takes nothing returns boolean
    return ( udg_ScrollsOfTownPortal > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func023001 takes nothing returns boolean
    return ( udg_ScrollsOfTownPortal > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func025001 takes nothing returns boolean
    return ( udg_AmuletsOfRecall > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func027001 takes nothing returns boolean
    return ( udg_AmuletsOfRecall > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func029001 takes nothing returns boolean
    return ( udg_AmuletsOfRecall > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func031001 takes nothing returns boolean
    return ( udg_AmuletsOfRecall > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func033001 takes nothing returns boolean
    return ( udg_AmuletsOfRecall > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func035001 takes nothing returns boolean
    return ( udg_AmuletsOfRecall > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func037001 takes nothing returns boolean
    return ( udg_AmuletsOfRecall > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func039001 takes nothing returns boolean
    return ( udg_AmuletsOfRecall > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func041001 takes nothing returns boolean
    return ( udg_AmuletsOfRecall > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func043001 takes nothing returns boolean
    return ( udg_AmuletsOfRecall > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func045001 takes nothing returns boolean
    return ( udg_AmuletsOfRecall > 0 )
endfunction

function Trig_ItemFailsafeReplace_Func047001 takes nothing returns boolean
    return ( udg_AmuletsOfRecall > 0 )
endfunction

function Trig_ItemFailsafeReplace_Actions takes nothing returns nothing
    if ( Trig_ItemFailsafeReplace_Func001001() ) then
        call CreateItemLoc('stwp', GetRectCenter(gg_rct_ScrollReplace01))
    else
        return
    endif
    set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal - 1 )
    if ( Trig_ItemFailsafeReplace_Func003001() ) then
        call CreateItemLoc('stwp', GetRectCenter(gg_rct_ScrollReplace02))
    else
        return
    endif
    set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal - 1 )
    if ( Trig_ItemFailsafeReplace_Func005001() ) then
        call CreateItemLoc('stwp', GetRectCenter(gg_rct_ScrollReplace03))
    else
        return
    endif
    set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal - 1 )
    if ( Trig_ItemFailsafeReplace_Func007001() ) then
        call CreateItemLoc('stwp', GetRectCenter(gg_rct_ScrollReplace01))
    else
        return
    endif
    set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal - 1 )
    if ( Trig_ItemFailsafeReplace_Func009001() ) then
        call CreateItemLoc('stwp', GetRectCenter(gg_rct_ScrollReplace02))
    else
        return
    endif
    set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal - 1 )
    if ( Trig_ItemFailsafeReplace_Func011001() ) then
        call CreateItemLoc('stwp', GetRectCenter(gg_rct_ScrollReplace03))
    else
        return
    endif
    set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal - 1 )
    if ( Trig_ItemFailsafeReplace_Func013001() ) then
        call CreateItemLoc('stwp', GetRectCenter(gg_rct_ScrollReplace01))
    else
        return
    endif
    set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal - 1 )
    if ( Trig_ItemFailsafeReplace_Func015001() ) then
        call CreateItemLoc('stwp', GetRectCenter(gg_rct_ScrollReplace02))
    else
        return
    endif
    set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal - 1 )
    if ( Trig_ItemFailsafeReplace_Func017001() ) then
        call CreateItemLoc('stwp', GetRectCenter(gg_rct_ScrollReplace03))
    else
        return
    endif
    set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal - 1 )
    if ( Trig_ItemFailsafeReplace_Func019001() ) then
        call CreateItemLoc('stwp', GetRectCenter(gg_rct_ScrollReplace01))
    else
        return
    endif
    set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal - 1 )
    if ( Trig_ItemFailsafeReplace_Func021001() ) then
        call CreateItemLoc('stwp', GetRectCenter(gg_rct_ScrollReplace02))
    else
        return
    endif
    set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal - 1 )
    if ( Trig_ItemFailsafeReplace_Func023001() ) then
        call CreateItemLoc('stwp', GetRectCenter(gg_rct_ScrollReplace03))
    else
        return
    endif
    set udg_ScrollsOfTownPortal=( udg_ScrollsOfTownPortal - 1 )
    if ( Trig_ItemFailsafeReplace_Func025001() ) then
        call CreateItemLoc('amrc', GetRectCenter(gg_rct_AmuletReplace01))
    else
        return
    endif
    set udg_AmuletsOfRecall=( udg_AmuletsOfRecall - 1 )
    if ( Trig_ItemFailsafeReplace_Func027001() ) then
        call CreateItemLoc('amrc', GetRectCenter(gg_rct_AmuletReplace02))
    else
        return
    endif
    set udg_AmuletsOfRecall=( udg_AmuletsOfRecall - 1 )
    if ( Trig_ItemFailsafeReplace_Func029001() ) then
        call CreateItemLoc('amrc', GetRectCenter(gg_rct_AmuletReplace03))
    else
        return
    endif
    set udg_AmuletsOfRecall=( udg_AmuletsOfRecall - 1 )
    if ( Trig_ItemFailsafeReplace_Func031001() ) then
        call CreateItemLoc('amrc', GetRectCenter(gg_rct_AmuletReplace01))
    else
        return
    endif
    set udg_AmuletsOfRecall=( udg_AmuletsOfRecall - 1 )
    if ( Trig_ItemFailsafeReplace_Func033001() ) then
        call CreateItemLoc('amrc', GetRectCenter(gg_rct_AmuletReplace02))
    else
        return
    endif
    set udg_AmuletsOfRecall=( udg_AmuletsOfRecall - 1 )
    if ( Trig_ItemFailsafeReplace_Func035001() ) then
        call CreateItemLoc('amrc', GetRectCenter(gg_rct_AmuletReplace03))
    else
        return
    endif
    set udg_AmuletsOfRecall=( udg_AmuletsOfRecall - 1 )
    if ( Trig_ItemFailsafeReplace_Func037001() ) then
        call CreateItemLoc('amrc', GetRectCenter(gg_rct_AmuletReplace01))
    else
        return
    endif
    set udg_AmuletsOfRecall=( udg_AmuletsOfRecall - 1 )
    if ( Trig_ItemFailsafeReplace_Func039001() ) then
        call CreateItemLoc('amrc', GetRectCenter(gg_rct_AmuletReplace02))
    else
        return
    endif
    set udg_AmuletsOfRecall=( udg_AmuletsOfRecall - 1 )
    if ( Trig_ItemFailsafeReplace_Func041001() ) then
        call CreateItemLoc('amrc', GetRectCenter(gg_rct_AmuletReplace03))
    else
        return
    endif
    set udg_AmuletsOfRecall=( udg_AmuletsOfRecall - 1 )
    if ( Trig_ItemFailsafeReplace_Func043001() ) then
        call CreateItemLoc('amrc', GetRectCenter(gg_rct_AmuletReplace01))
    else
        return
    endif
    set udg_AmuletsOfRecall=( udg_AmuletsOfRecall - 1 )
    if ( Trig_ItemFailsafeReplace_Func045001() ) then
        call CreateItemLoc('amrc', GetRectCenter(gg_rct_AmuletReplace02))
    else
        return
    endif
    set udg_AmuletsOfRecall=( udg_AmuletsOfRecall - 1 )
    if ( Trig_ItemFailsafeReplace_Func047001() ) then
        call CreateItemLoc('amrc', GetRectCenter(gg_rct_AmuletReplace03))
    else
        return
    endif
    set udg_AmuletsOfRecall=( udg_AmuletsOfRecall - 1 )
endfunction

//===========================================================================
function InitTrig_ItemFailsafeReplace takes nothing returns nothing
    set gg_trg_ItemFailsafeReplace=CreateTrigger()
    call TriggerAddAction(gg_trg_ItemFailsafeReplace, function Trig_ItemFailsafeReplace_Actions)
endfunction

//===========================================================================
// Trigger: TriggerIntroCinematic
//===========================================================================
function Trig_TriggerIntroCinematic_Actions takes nothing returns nothing
    set udg_IntroCinematicRunning=true
    call EnableTrigger(gg_trg_IntroCinematicEscape)
    call TriggerExecute(gg_trg_IntroEnvironment)
    call TriggerExecute(gg_trg_IntroCinematicMode)
    call TriggerExecute(gg_trg_IntroInitialCamera)
    call TriggerExecute(gg_trg_IntroActorSetup)
endfunction

//===========================================================================
function InitTrig_TriggerIntroCinematic takes nothing returns nothing
    set gg_trg_TriggerIntroCinematic=CreateTrigger()
    call TriggerAddAction(gg_trg_TriggerIntroCinematic, function Trig_TriggerIntroCinematic_Actions)
endfunction

//===========================================================================
// Trigger: IntroEnvironment
//===========================================================================
function Trig_IntroEnvironment_Actions takes nothing returns nothing
    call SetSkyModel("Environment\\Sky\\BlizzardSky\\BlizzardSky.mdl")
endfunction

//===========================================================================
function InitTrig_IntroEnvironment takes nothing returns nothing
    set gg_trg_IntroEnvironment=CreateTrigger()
    call TriggerAddAction(gg_trg_IntroEnvironment, function Trig_IntroEnvironment_Actions)
endfunction

//===========================================================================
// Trigger: IntroCinematicMode
//===========================================================================
function Trig_IntroCinematicMode_Actions takes nothing returns nothing
    call CinematicModeBJ(true, GetPlayersAll())
endfunction

//===========================================================================
function InitTrig_IntroCinematicMode takes nothing returns nothing
    set gg_trg_IntroCinematicMode=CreateTrigger()
    call TriggerAddAction(gg_trg_IntroCinematicMode, function Trig_IntroCinematicMode_Actions)
endfunction

//===========================================================================
// Trigger: IntroActorSetup
//===========================================================================
function Trig_IntroActorSetup_Func004001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroActorSetup_Func007001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroActorSetup_Func010001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroActorSetup_Func013001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroActorSetup_Actions takes nothing returns nothing
    call IssuePointOrderLocBJ(gg_unit_hgry_0133, "move", GetRectCenter(gg_rct_IntroGryphonPatrolA))
    call IssuePointOrderLocBJ(gg_unit_hgyr_0132, "move", GetRectCenter(gg_rct_IntroGyrocopterPatrolA))
    call TriggerSleepAction(3.00)
    if ( Trig_IntroActorSetup_Func004001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(gg_unit_hkni_0110, "move", GetRectCenter(gg_rct_IntroKnightMoveA))
    call TriggerSleepAction(4.00)
    if ( Trig_IntroActorSetup_Func007001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitLookAt(gg_unit_hmpr_0130, "bone_head", gg_unit_hrif_0210, 0, 0, 90)
    call TriggerSleepAction(1.00)
    if ( Trig_IntroActorSetup_Func010001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitLookAt(gg_unit_hrif_0210, "bone_head", gg_unit_hmpr_0130, 0, 0, 90)
    call TriggerSleepAction(3.00)
    if ( Trig_IntroActorSetup_Func013001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitLifeBJ(gg_unit_hkni_0125, 900.00)
    call IssuePointOrderLocBJ(gg_unit_hkni_0125, "move", GetRectCenter(gg_rct_IntroKnightHealedMove))
    call AttachSoundToUnitBJ(gg_snd_HorseLoop2, gg_unit_hkni_0125)
    call PlaySoundBJ(gg_snd_HorseLoop2)
endfunction

//===========================================================================
function InitTrig_IntroActorSetup takes nothing returns nothing
    set gg_trg_IntroActorSetup=CreateTrigger()
    call TriggerAddAction(gg_trg_IntroActorSetup, function Trig_IntroActorSetup_Actions)
endfunction

//===========================================================================
// Trigger: IntroKnightARespond
//===========================================================================
function Trig_IntroKnightARespond_Func004001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroKnightARespond_Func009001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroKnightARespond_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitFacingToFaceUnitTimed(gg_unit_hkni_0111, gg_unit_hkni_0110, 0.20)
    call TriggerSleepAction(4.00)
    if ( Trig_IntroKnightARespond_Func004001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(gg_unit_hkni_0111, "move", GetRectCenter(gg_rct_IntroKnightMoveB))
    call AttachSoundToUnitBJ(gg_snd_HorseLoop2, gg_unit_hkni_0111)
    call PlaySoundBJ(gg_snd_HorseLoop2)
    call TriggerSleepAction(1.00)
    if ( Trig_IntroKnightARespond_Func009001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(gg_unit_hkni_0110, "move", GetRectCenter(gg_rct_IntroKnightMoveC))
    call AttachSoundToUnitBJ(gg_snd_HorseLoop2, gg_unit_hkni_0110)
    call PlaySoundBJ(gg_snd_HorseLoop2)
endfunction

//===========================================================================
function InitTrig_IntroKnightARespond takes nothing returns nothing
    set gg_trg_IntroKnightARespond=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_IntroKnightARespond, gg_rct_IntroKnightMoveA)
    call TriggerAddAction(gg_trg_IntroKnightARespond, function Trig_IntroKnightARespond_Actions)
endfunction

//===========================================================================
// Trigger: IntroKnightBRespond
//===========================================================================
function Trig_IntroKnightBRespond_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitFacingToFaceUnitTimed(gg_unit_hkni_0110, gg_unit_hgtw_0009, 0.30)
endfunction

//===========================================================================
function InitTrig_IntroKnightBRespond takes nothing returns nothing
    set gg_trg_IntroKnightBRespond=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_IntroKnightBRespond, gg_rct_IntroKnightMoveC)
    call TriggerAddAction(gg_trg_IntroKnightBRespond, function Trig_IntroKnightBRespond_Actions)
endfunction

//===========================================================================
// Trigger: IntroInitialCamera
//===========================================================================
function Trig_IntroInitialCamera_Func004001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroInitialCamera_Func008001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroInitialCamera_Actions takes nothing returns nothing
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call CameraSetupApplyForPlayer(true, gg_cam_IntroFirstCamera, Player(1), 0.00)
    call TriggerSleepAction(1.00)
    if ( Trig_IntroInitialCamera_Func004001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 2.00, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call CameraSetupApplyForPlayer(true, gg_cam_IntroMuradinToArthas, Player(1), 8.00)
    call TriggerSleepAction(7.50)
    if ( Trig_IntroInitialCamera_Func008001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Muradin, "move", GetRectCenter(gg_rct_IntroMuradinToArthas))
endfunction

//===========================================================================
function InitTrig_IntroInitialCamera takes nothing returns nothing
    set gg_trg_IntroInitialCamera=CreateTrigger()
    call TriggerAddAction(gg_trg_IntroInitialCamera, function Trig_IntroInitialCamera_Actions)
endfunction

//===========================================================================
// Trigger: IntroMuradinAsksArthas
//===========================================================================
function Trig_IntroMuradinAsksArthas_Conditions takes nothing returns boolean
    if ( not ( GetTriggerUnit() == udg_Muradin ) ) then
        return false
    endif
    return true
endfunction

function Trig_IntroMuradinAsksArthas_Func007001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroMuradinAsksArthas_Func009001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroMuradinAsksArthas_Func012001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroMuradinAsksArthas_Func014001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroMuradinAsksArthas_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitAnimationWithRarity(udg_Arthas, "stand", RARITY_FREQUENT)
    call SetUnitAnimationWithRarity(udg_Muradin, "stand", RARITY_FREQUENT)
    call SetUnitLookAt(udg_Arthas, "bone_head", udg_Muradin, 0, 0, 50.00)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Muradin, "TRIGSTR_014", gg_snd_H09Muradin01, "TRIGSTR_015", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_IntroMuradinAsksArthas_Func007001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.50)
    if ( Trig_IntroMuradinAsksArthas_Func009001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, udg_Muradin, 0.40)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_016", gg_snd_H09Arthas02, "TRIGSTR_017", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_IntroMuradinAsksArthas_Func012001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.50)
    if ( Trig_IntroMuradinAsksArthas_Func014001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg_IntroUndeadApproach)
endfunction

//===========================================================================
function InitTrig_IntroMuradinAsksArthas takes nothing returns nothing
    set gg_trg_IntroMuradinAsksArthas=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_IntroMuradinAsksArthas, gg_rct_IntroMuradinToArthas)
    call TriggerAddCondition(gg_trg_IntroMuradinAsksArthas, Condition(function Trig_IntroMuradinAsksArthas_Conditions))
    call TriggerAddAction(gg_trg_IntroMuradinAsksArthas, function Trig_IntroMuradinAsksArthas_Actions)
endfunction

//===========================================================================
// Trigger: IntroUndeadApproach
//===========================================================================
function Trig_IntroUndeadApproach_Func001002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_IntroUndeadApproach_Func002002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_IntroUndeadApproach_Func008001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroUndeadApproach_Func015001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroUndeadApproach_Func022001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroUndeadApproach_Actions takes nothing returns nothing
    call ForGroupBJ(udg_IntroNorthGroup, function Trig_IntroUndeadApproach_Func001002)
    call ForGroupBJ(udg_IntroNortheastGroup, function Trig_IntroUndeadApproach_Func002002)
    call GroupPointOrderLocBJ(udg_IntroNortheastGroup, "move", GetRectCenter(gg_rct_IntroNortheastUndeadMoveTo))
    call CameraSetupApplyForPlayer(true, gg_cam_IntroNorthEastApproach, Player(1), 0.01)
    call SetSoundPositionLocBJ(gg_snd_GargoyleWhat1, GetRectCenter(gg_rct_GargoyleSound), 0)
    call PlaySoundBJ(gg_snd_GargoyleWhat1)
    call TriggerSleepAction(2.50)
    if ( Trig_IntroUndeadApproach_Func008001() ) then
        return
    else
        call DoNothing()
    endif
    call CreateNUnitsAtLoc(1, 'Umal', Player(4), GetRectCenter(gg_rct_IntroSpawnMalganis), 270.00)
    set udg_IntroMalganis=GetLastCreatedUnit()
    call GroupPointOrderLocBJ(udg_IntroNorthGroup, "move", GetRectCenter(gg_rct_IntroNorthUndeadMoveTo))
    call CameraSetupApplyForPlayer(true, gg_cam_IntroNorthApproach, Player(1), 0.01)
    call SetUnitAnimationWithRarity(udg_Malganis, "stand", RARITY_FREQUENT)
    call TriggerSleepAction(0.50)
    if ( Trig_IntroUndeadApproach_Func015001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_IntroMalganisCloseup, Player(1), 2.00)
    call SetSoundPositionLocBJ(gg_snd_AbominationYesAttack2, GetRectCenter(gg_rct_GargoyleSound), 0)
    call SetSoundVolumeBJ(gg_snd_AbominationYesAttack2, 70.00)
    call PlaySoundBJ(gg_snd_AbominationYesAttack2)
    call TriggerSleepAction(2.00)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_IntroMalganis, "TRIGSTR_018", gg_snd_H09MalGanis03, "TRIGSTR_019", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_IntroUndeadApproach_Func022001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg_IntroArthasDecides)
endfunction

//===========================================================================
function InitTrig_IntroUndeadApproach takes nothing returns nothing
    set gg_trg_IntroUndeadApproach=CreateTrigger()
    call TriggerAddAction(gg_trg_IntroUndeadApproach, function Trig_IntroUndeadApproach_Actions)
endfunction

//===========================================================================
// Trigger: IntroBaseReorients
//===========================================================================
function Trig_IntroBaseReorients_Actions takes nothing returns nothing
    call ResetUnitLookAt(gg_unit_hrif_0210)
    call IssueImmediateOrderBJ(gg_unit_hpea_0138, "autoharvestlumber")
    call IssueImmediateOrderBJ(gg_unit_hpea_0137, "autoharvestgold")
    call IssueImmediateOrderBJ(gg_unit_hpea_0136, "autoharvestgold")
    call IssueImmediateOrderBJ(gg_unit_hpea_0134, "autoharvestgold")
    call IssuePointOrderLocBJ(gg_unit_hgyr_0132, "move", GetRectCenter(gg_rct_IntroGyrocopterAlert))
    call IssuePointOrderLocBJ(gg_unit_hgry_0133, "move", GetRectCenter(gg_rct_IntroGryphonAlert))
    call IssuePointOrderLocBJ(gg_unit_hmpr_0112, "move", GetRectCenter(gg_rct_IntroPriest01Alert))
    call IssuePointOrderLocBJ(gg_unit_hmpr_0130, "move", GetRectCenter(gg_rct_IntroPriest02Alert))
    call IssuePointOrderLocBJ(gg_unit_hmpr_0129, "move", GetRectCenter(gg_rct_IntroPriest03Alert))
    call IssuePointOrderLocBJ(gg_unit_hfoo_0123, "move", GetRectCenter(gg_rct_IntroFootman02Alert))
    call IssuePointOrderLocBJ(gg_unit_hfoo_0124, "move", GetRectCenter(gg_rct_IntroFootman03Alert))
    call IssuePointOrderLocBJ(gg_unit_hfoo_0126, "move", GetRectCenter(gg_rct_IntroFootman04Alert))
    call IssuePointOrderLocBJ(gg_unit_hrif_0210, "move", GetRectCenter(gg_rct_IntroRifleman02Alert))
    call IssuePointOrderLocBJ(gg_unit_hrif_0117, "move", GetRectCenter(gg_rct_IntroRifleman03Alert))
    call IssuePointOrderLocBJ(gg_unit_hrif_0115, "move", GetRectCenter(gg_rct_IntroRifleman06Alert))
    call IssuePointOrderLocBJ(gg_unit_hrif_0211, "move", GetRectCenter(gg_rct_IntroRifleman07Alert))
    call IssuePointOrderLocBJ(gg_unit_hsor_0128, "move", GetRectCenter(gg_rct_IntroSorceress01))
endfunction

//===========================================================================
function InitTrig_IntroBaseReorients takes nothing returns nothing
    set gg_trg_IntroBaseReorients=CreateTrigger()
    call TriggerAddAction(gg_trg_IntroBaseReorients, function Trig_IntroBaseReorients_Actions)
endfunction

//===========================================================================
// Trigger: IntroArthasDecides
//===========================================================================
function Trig_IntroArthasDecides_Func012001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroArthasDecides_Func015001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroArthasDecides_Func017001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroArthasDecides_Func020001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroArthasDecides_Func023001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroArthasDecides_Actions takes nothing returns nothing
    call TriggerExecute(gg_trg_IntroBaseReorients)
    call SetUnitAnimationWithRarity(gg_unit_hcth_0105, "stand", RARITY_FREQUENT)
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, udg_IntroMalganis, 0)
    call SetUnitFacingToFaceUnitTimed(udg_Muradin, udg_IntroMalganis, 0)
    call RemoveUnit(udg_IntroMalganis)
    call ResetUnitLookAt(udg_Arthas)
    call CameraSetupApplyForPlayer(true, gg_cam_IntroMuradinToArthas, Player(1), 0.01)
    call SetSoundPositionLocBJ(gg_snd_HumanCallToArmsWhat1, GetRectCenter(gg_rct_CallToArmsSound), 0)
    call SetSoundVolumeBJ(gg_snd_HumanCallToArmsWhat1, 60.00)
    call PlaySoundBJ(gg_snd_HumanCallToArmsWhat1)
    call TriggerSleepAction(0.50)
    if ( Trig_IntroArthasDecides_Func012001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Muradin, udg_Arthas, 0.20)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Muradin, "TRIGSTR_020", gg_snd_H09Muradin04, "TRIGSTR_021", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_IntroArthasDecides_Func015001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.50)
    if ( Trig_IntroArthasDecides_Func017001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, udg_Muradin, 0.20)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_022", gg_snd_H09Arthas05, "TRIGSTR_023", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_IntroArthasDecides_Func020001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.50)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Muradin, "TRIGSTR_024", gg_snd_H09Muradin06, "TRIGSTR_025", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_IntroArthasDecides_Func023001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Arthas, "move", GetRectCenter(gg_rct_IntroArthasToCaptain))
    call IssuePointOrderLocBJ(udg_Muradin, "move", GetRectCenter(gg_rct_IntroMuradintoCaptain))
    call CameraSetupApplyForPlayer(true, gg_cam_IntroCaptainCloseup, Player(1), 4.00)
endfunction

//===========================================================================
function InitTrig_IntroArthasDecides takes nothing returns nothing
    set gg_trg_IntroArthasDecides=CreateTrigger()
    call TriggerAddAction(gg_trg_IntroArthasDecides, function Trig_IntroArthasDecides_Actions)
endfunction

//===========================================================================
// Trigger: IntroArthasTalksToCaptain
//===========================================================================
function Trig_IntroArthasTalksToCaptain_Conditions takes nothing returns boolean
    if ( not ( GetTriggerUnit() == udg_Arthas ) ) then
        return false
    endif
    return true
endfunction

function Trig_IntroArthasTalksToCaptain_Func003001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroArthasTalksToCaptain_Func006001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroArthasTalksToCaptain_Func013001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroArthasTalksToCaptain_Func014001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroArthasTalksToCaptain_Func016001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroArthasTalksToCaptain_Actions takes nothing returns nothing
    call TriggerSleepAction(0.20)
    if ( Trig_IntroArthasTalksToCaptain_Func003001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, gg_unit_hcth_0105, 0.20)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_026", gg_snd_H09Arthas07, "TRIGSTR_027", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_IntroArthasTalksToCaptain_Func006001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(gg_unit_hcth_0105, "move", GetRectCenter(gg_rct_IntroCaptainAlert))
    call IssuePointOrderLocBJ(udg_Arthas, "move", GetRectCenter(gg_rct_IntroArthasToWaygate))
    call IssuePointOrderLocBJ(udg_Muradin, "move", GetRectCenter(gg_rct_IntroMuradinToWaygate))
    call CameraSetupApplyForPlayer(true, gg_cam_IntroToWaygate1, Player(1), 3.50)
    call TriggerSleepAction(3.50)
    call CameraSetupApplyForPlayer(true, gg_cam_IntroToWaygate3, Player(1), 10.50)
    if ( Trig_IntroArthasTalksToCaptain_Func013001() ) then
        return
    else
        call DoNothing()
    endif
    if ( Trig_IntroArthasTalksToCaptain_Func014001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(10.50)
    if ( Trig_IntroArthasTalksToCaptain_Func016001() ) then
        return
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_IntroArthasTalksToCaptain takes nothing returns nothing
    set gg_trg_IntroArthasTalksToCaptain=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_IntroArthasTalksToCaptain, gg_rct_IntroArthasToCaptain)
    call TriggerAddCondition(gg_trg_IntroArthasTalksToCaptain, Condition(function Trig_IntroArthasTalksToCaptain_Conditions))
    call TriggerAddAction(gg_trg_IntroArthasTalksToCaptain, function Trig_IntroArthasTalksToCaptain_Actions)
endfunction

//===========================================================================
// Trigger: IntroEscortFollowsArthas
//===========================================================================
function Trig_IntroEscortFollowsArthas_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == udg_Arthas ) ) then
        return false
    endif
    if ( not ( udg_IntroCinematicRunning == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_IntroEscortFollowsArthas_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call IssuePointOrderLocBJ(gg_unit_hkni_0250, "move", GetRectCenter(gg_rct_IntroEscortKnight01))
    call IssuePointOrderLocBJ(gg_unit_hkni_0251, "move", GetRectCenter(gg_rct_IntroEscortKnight02))
    call IssuePointOrderLocBJ(gg_unit_hrif_0254, "move", GetRectCenter(gg_rct_IntroEscortRifleman01))
    call IssuePointOrderLocBJ(gg_unit_hrif_0253, "move", GetRectCenter(gg_rct_IntroEscortRifleman02))
    call IssuePointOrderLocBJ(gg_unit_hrif_0252, "move", GetRectCenter(gg_rct_IntroEscortRifleman03))
    call AttachSoundToUnitBJ(gg_snd_HorseLoop3, gg_unit_hkni_0251)
    call PlaySoundBJ(gg_snd_HorseLoop3)
    call WaitForSoundBJ(gg_snd_HorseLoop3, 0.01)
    call AttachSoundToUnitBJ(gg_snd_HorseLoop3, gg_unit_hkni_0251)
    call PlaySoundBJ(gg_snd_HorseLoop3)
    call WaitForSoundBJ(gg_snd_HorseLoop3, 0.01)
    call AttachSoundToUnitBJ(gg_snd_HorseLoop2, gg_unit_hkni_0251)
    call PlaySoundBJ(gg_snd_HorseLoop2)
endfunction

//===========================================================================
function InitTrig_IntroEscortFollowsArthas takes nothing returns nothing
    set gg_trg_IntroEscortFollowsArthas=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_IntroEscortFollowsArthas, gg_rct_IntroTriggerArthasEscort)
    call TriggerAddCondition(gg_trg_IntroEscortFollowsArthas, Condition(function Trig_IntroEscortFollowsArthas_Conditions))
    call TriggerAddAction(gg_trg_IntroEscortFollowsArthas, function Trig_IntroEscortFollowsArthas_Actions)
endfunction

//===========================================================================
// Trigger: IntroArthasReachesWaygate
//===========================================================================
function Trig_IntroArthasReachesWaygate_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == udg_Arthas ) ) then
        return false
    endif
    if ( not ( udg_IntroCinematicRunning == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_IntroArthasReachesWaygate_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, gg_unit_nwgt_0209, 0.40)
    call AddSpecialEffectLocBJ(GetUnitLoc(udg_EvilArthas), "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl")
    call AttachSoundToUnitBJ(gg_snd_MassTeleportTarget, udg_Arthas)
    call PlaySoundBJ(gg_snd_MassTeleportTarget)
    set udg_EffectArthasAfterFM=GetLastCreatedEffectBJ()
    call TriggerSleepAction(2)
    call DestroyEffectBJ(udg_EffectArthasAfterFM)
endfunction

//===========================================================================
function InitTrig_IntroArthasReachesWaygate takes nothing returns nothing
    set gg_trg_IntroArthasReachesWaygate=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_IntroArthasReachesWaygate, gg_rct_IntroArthasToWaygate)
    call TriggerAddCondition(gg_trg_IntroArthasReachesWaygate, Condition(function Trig_IntroArthasReachesWaygate_Conditions))
    call TriggerAddAction(gg_trg_IntroArthasReachesWaygate, function Trig_IntroArthasReachesWaygate_Actions)
endfunction

//===========================================================================
// Trigger: IntroMuradinReachesWaygate
//===========================================================================
function Trig_IntroMuradinReachesWaygate_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == udg_Muradin ) ) then
        return false
    endif
    if ( not ( udg_IntroCinematicRunning == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_IntroMuradinReachesWaygate_Func003001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroMuradinReachesWaygate_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(0.20)
    if ( Trig_IntroMuradinReachesWaygate_Func003001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Muradin, gg_unit_nwgt_0209, 0.40)
endfunction

//===========================================================================
function InitTrig_IntroMuradinReachesWaygate takes nothing returns nothing
    set gg_trg_IntroMuradinReachesWaygate=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_IntroMuradinReachesWaygate, gg_rct_IntroMuradinToWaygate)
    call TriggerAddCondition(gg_trg_IntroMuradinReachesWaygate, Condition(function Trig_IntroMuradinReachesWaygate_Conditions))
    call TriggerAddAction(gg_trg_IntroMuradinReachesWaygate, function Trig_IntroMuradinReachesWaygate_Actions)
endfunction

//===========================================================================
// Trigger: IntroLastDwarfReachesWaygate
//===========================================================================
function Trig_IntroLastDwarfReachesWaygate_Conditions takes nothing returns boolean
    if ( not ( udg_IntroCinematicRunning == true ) ) then
        return false
    endif
    if ( not ( GetEnteringUnit() == gg_unit_hrif_0252 ) ) then
        return false
    endif
    return true
endfunction

function Trig_IntroLastDwarfReachesWaygate_Func002002 takes nothing returns nothing
    call IssueTargetOrderBJ(GetEnumUnit(), "move", gg_unit_nwgt_0209)
endfunction

function Trig_IntroLastDwarfReachesWaygate_Func004001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroLastDwarfReachesWaygate_Func007001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroLastDwarfReachesWaygate_Func026001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroLastDwarfReachesWaygate_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call ForGroupBJ(GetUnitsInRectAll(gg_rct_IntroArthasWaygateForce), function Trig_IntroLastDwarfReachesWaygate_Func002002)
    call TriggerSleepAction(2.50)
    if ( Trig_IntroLastDwarfReachesWaygate_Func004001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.50)
    if ( Trig_IntroLastDwarfReachesWaygate_Func007001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_IntroArthasInValley, Player(1), 0)
    call SetUnitPositionLoc(udg_Arthas, GetRectCenter(gg_rct_IntroValleyArthas))
    call SetUnitFacingToFaceLocTimed(udg_Arthas, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call SetUnitPositionLoc(udg_Muradin, GetRectCenter(gg_rct_IntroValleyMuradin))
    call SetUnitFacingToFaceLocTimed(udg_Muradin, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call SetUnitPositionLoc(gg_unit_hkni_0250, GetRectCenter(gg_rct_IntroValleyKnight01))
    call SetUnitFacingToFaceLocTimed(gg_unit_hkni_0250, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call SetUnitPositionLoc(gg_unit_hkni_0251, GetRectCenter(gg_rct_IntroValleyKnight02))
    call SetUnitFacingToFaceLocTimed(gg_unit_hkni_0251, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call SetUnitPositionLoc(gg_unit_hrif_0254, GetRectCenter(gg_rct_IntroValleyRifleman01))
    call SetUnitFacingToFaceLocTimed(gg_unit_hrif_0254, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call SetUnitPositionLoc(gg_unit_hrif_0253, GetRectCenter(gg_rct_IntroValleyRifleman02))
    call SetUnitFacingToFaceLocTimed(gg_unit_hrif_0253, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call SetUnitPositionLoc(gg_unit_hrif_0252, GetRectCenter(gg_rct_IntroValleyRifleman03))
    call SetUnitFacingToFaceLocTimed(gg_unit_hrif_0252, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call CreateFogModifierRectBJ(true, Player(1), FOG_OF_WAR_MASKED, gg_rct_WayGateExit_BlackMask)
    call TriggerSleepAction(1.00)
    if ( Trig_IntroLastDwarfReachesWaygate_Func026001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg_IntroCinematicEnd)
endfunction

//===========================================================================
function InitTrig_IntroLastDwarfReachesWaygate takes nothing returns nothing
    set gg_trg_IntroLastDwarfReachesWaygate=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_IntroLastDwarfReachesWaygate, gg_rct_IntroEscortRifleman03)
    call TriggerAddCondition(gg_trg_IntroLastDwarfReachesWaygate, Condition(function Trig_IntroLastDwarfReachesWaygate_Conditions))
    call TriggerAddAction(gg_trg_IntroLastDwarfReachesWaygate, function Trig_IntroLastDwarfReachesWaygate_Actions)
endfunction

//===========================================================================
// Trigger: IntroCinematicEnd
//===========================================================================
function Trig_IntroCinematicEnd_Actions takes nothing returns nothing
    set udg_IntroCinematicRunning=false
    call DisableTrigger(gg_trg_IntroCinematicEscape)
    call SetSkyModel(null)
    call SetTerrainFogExBJ(0, 600.00, 6000.00, 0.00, 100, 100, 100)
    call WaygateActivateBJ(false, gg_unit_nwgt_0209)
    call CinematicModeBJ(false, GetPlayersAll())
    call SelectGroupBJ(udg_ValleyGroup)
    call SelectUnitRemove(udg_Muradin)
    call SelectUnitAdd(udg_Muradin)
    call ResetToGameCameraForPlayer(Player(1), 0.00)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_068")
    call RemoveUnit(udg_IntroMalganis)
    call SetPlayerAllianceBJ(Player(4), ALLIANCE_PASSIVE, false, Player(1))
    call StartTimerBJ(udg_TimerInitialAttack, false, 60.00)
    call StartTimerBJ(udg_HintGryphonTimer, false, 10.00)
    call CommandAI(udg_PlayerUndeadProtector, 0, 0)
    call CommandAI(udg_PlayerMalganis, 0, 0)
    call SetPlayerStateBJ(Player(1), PLAYER_STATE_RESOURCE_GOLD, 1000)
    call SetPlayerStateBJ(Player(1), PLAYER_STATE_RESOURCE_LUMBER, 500)
    call SetResourceAmount(gg_unit_ngol_0003, 30000)
    // HANDLE SCROLLS
    call TriggerExecute(gg_trg_ItemFailsafeDetect)
endfunction

//===========================================================================
function InitTrig_IntroCinematicEnd takes nothing returns nothing
    set gg_trg_IntroCinematicEnd=CreateTrigger()
    call TriggerAddAction(gg_trg_IntroCinematicEnd, function Trig_IntroCinematicEnd_Actions)
endfunction

//===========================================================================
// Trigger: IntroCinematicEscape
//===========================================================================
function Trig_IntroCinematicEscape_Func007002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_IntroCinematicEscape_Func008002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_IntroCinematicEscape_Func060001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(4), 'Umal')) == 1 )
endfunction

function Trig_IntroCinematicEscape_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_IntroCinematicEscape=true
    set udg_IntroCinematicRunning=false
    call StopSoundBJ(GetLastPlayedSound(), true)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.40, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.80)
    call ForGroupBJ(udg_IntroNorthGroup, function Trig_IntroCinematicEscape_Func007002)
    call ForGroupBJ(udg_IntroNortheastGroup, function Trig_IntroCinematicEscape_Func008002)
    call CreateFogModifierRectBJ(true, Player(1), FOG_OF_WAR_VISIBLE, gg_rct_IntroCancelVisibility)
    set udg_IntroCancelView=GetLastCreatedFogModifier()
    call FogModifierStop(udg_IntroCancelView)
    call CreateFogModifierRectBJ(true, Player(1), FOG_OF_WAR_MASKED, gg_rct_WayGateExit_BlackMask)
    call CameraSetupApplyForPlayer(true, gg_cam_IntroArthasInValley, Player(1), 0.00)
    call TriggerSleepAction(0.01)
    call ResetUnitLookAt(gg_unit_hrif_0210)
    call ResetUnitLookAt(udg_Arthas)
    call ResetUnitLookAt(udg_Muradin)
    call IssueImmediateOrderBJ(gg_unit_hpea_0138, "autoharvestlumber")
    call IssueImmediateOrderBJ(gg_unit_hpea_0137, "autoharvestgold")
    call IssueImmediateOrderBJ(gg_unit_hpea_0136, "autoharvestgold")
    call IssueImmediateOrderBJ(gg_unit_hpea_0134, "autoharvestgold")
    call SetUnitPositionLoc(gg_unit_hgyr_0132, GetRectCenter(gg_rct_IntroGyrocopterAlert))
    call SetUnitPositionLoc(gg_unit_hgry_0133, GetRectCenter(gg_rct_IntroGryphonAlert))
    call SetUnitPositionLoc(gg_unit_hmpr_0112, GetRectCenter(gg_rct_IntroPriest01Alert))
    call SetUnitPositionLoc(gg_unit_hmpr_0130, GetRectCenter(gg_rct_IntroPriest02Alert))
    call SetUnitPositionLoc(gg_unit_hmpr_0129, GetRectCenter(gg_rct_IntroPriest03Alert))
    call SetUnitPositionLoc(gg_unit_hfoo_0123, GetRectCenter(gg_rct_IntroFootman02Alert))
    call SetUnitPositionLoc(gg_unit_hfoo_0124, GetRectCenter(gg_rct_IntroFootman03Alert))
    call SetUnitPositionLoc(gg_unit_hfoo_0126, GetRectCenter(gg_rct_IntroFootman04Alert))
    call SetUnitPositionLoc(gg_unit_hrif_0210, GetRectCenter(gg_rct_IntroRifleman02Alert))
    call SetUnitPositionLoc(gg_unit_hrif_0117, GetRectCenter(gg_rct_IntroRifleman03Alert))
    call SetUnitPositionLoc(gg_unit_hrif_0115, GetRectCenter(gg_rct_IntroRifleman06Alert))
    call SetUnitPositionLoc(gg_unit_hrif_0211, GetRectCenter(gg_rct_IntroRifleman08Alert))
    call SetUnitPositionLoc(gg_unit_hsor_0128, GetRectCenter(gg_rct_IntroSorceress01))
    call SetUnitLifeBJ(gg_unit_hkni_0125, 900.00)
    call SetUnitPositionLoc(gg_unit_hkni_0125, GetRectCenter(gg_rct_IntroKnightHealedMove))
    call SetUnitPositionLoc(gg_unit_hcth_0105, GetRectCenter(gg_rct_IntroCaptainAlert))
    call SetUnitPositionLoc(udg_Arthas, GetRectCenter(gg_rct_IntroValleyArthas))
    call SetUnitFacingToFaceLocTimed(udg_Arthas, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call SetUnitPositionLoc(udg_Muradin, GetRectCenter(gg_rct_IntroValleyMuradin))
    call SetUnitFacingToFaceLocTimed(udg_Muradin, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call SetUnitPositionLoc(gg_unit_hkni_0250, GetRectCenter(gg_rct_IntroValleyKnight01))
    call SetUnitFacingToFaceLocTimed(gg_unit_hkni_0250, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call SetUnitPositionLoc(gg_unit_hkni_0251, GetRectCenter(gg_rct_IntroValleyKnight02))
    call SetUnitFacingToFaceLocTimed(gg_unit_hkni_0251, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call SetUnitPositionLoc(gg_unit_hrif_0254, GetRectCenter(gg_rct_IntroValleyRifleman01))
    call SetUnitFacingToFaceLocTimed(gg_unit_hrif_0254, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call SetUnitPositionLoc(gg_unit_hrif_0253, GetRectCenter(gg_rct_IntroValleyRifleman02))
    call SetUnitFacingToFaceLocTimed(gg_unit_hrif_0253, GetRectCenter(gg_rct_IntroValleyUnitFacing), 0)
    call SetUnitPositionLoc(gg_unit_hrif_0252, GetRectCenter(gg_rct_IntroValleyRifleman03))
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 0.40, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call SetSkyModel(null)
    call SetTerrainFogExBJ(0, 600.00, 6000.00, 0.00, 100, 100, 100)
    call CinematicModeBJ(false, GetPlayersAll())
    call SelectGroupBJ(udg_ValleyGroup)
    call SelectUnitRemove(udg_Muradin)
    call SelectUnitAdd(udg_Muradin)
    call ResetToGameCameraForPlayer(Player(1), 0.00)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_219")
    if ( Trig_IntroCinematicEscape_Func060001() ) then
        call RemoveUnit(udg_IntroMalganis)
    else
        call DoNothing()
    endif
    call WaygateActivateBJ(false, gg_unit_nwgt_0209)
    call SetPlayerAllianceBJ(Player(4), ALLIANCE_PASSIVE, false, Player(1))
    call StartTimerBJ(udg_TimerInitialAttack, false, 60.00)
    call StartTimerBJ(udg_HintGryphonTimer, false, 10.00)
    call CommandAI(udg_PlayerUndeadProtector, 0, 0)
    call CommandAI(udg_PlayerMalganis, 0, 0)
    call SetPlayerStateBJ(Player(1), PLAYER_STATE_RESOURCE_GOLD, 1000)
    call SetPlayerStateBJ(Player(1), PLAYER_STATE_RESOURCE_LUMBER, 500)
    call SetResourceAmount(gg_unit_ngol_0003, 30000)
    // HANDLE SCROLLS
    call TriggerExecute(gg_trg_ItemFailsafeDetect)
endfunction

//===========================================================================
function InitTrig_IntroCinematicEscape takes nothing returns nothing
    set gg_trg_IntroCinematicEscape=CreateTrigger()
    call DisableTrigger(gg_trg_IntroCinematicEscape)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_IntroCinematicEscape, Player(1))
    call TriggerAddAction(gg_trg_IntroCinematicEscape, function Trig_IntroCinematicEscape_Actions)
endfunction

//===========================================================================
// Trigger: InitialAttackTimerExpires
//===========================================================================
function Trig_InitialAttackTimerExpires_Actions takes nothing returns nothing
    call StartCampaignAI(Player(4), "h09_yellow.ai")
endfunction

//===========================================================================
function InitTrig_InitialAttackTimerExpires takes nothing returns nothing
    set gg_trg_InitialAttackTimerExpires=CreateTrigger()
    call TriggerRegisterTimerExpireEventBJ(gg_trg_InitialAttackTimerExpires, udg_TimerInitialAttack)
    call TriggerAddAction(gg_trg_InitialAttackTimerExpires, function Trig_InitialAttackTimerExpires_Actions)
endfunction

//===========================================================================
// Trigger: FirstWolves
//===========================================================================
function Trig_FirstWolves_Func002002 takes nothing returns nothing
    call IssuePointOrderLocBJ(GetEnumUnit(), "attack", GetRectCenter(gg_rct_ValleyFirstWolfAttack))
endfunction

function Trig_FirstWolves_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call ForGroupBJ(GetUnitsInRectAll(gg_rct_ValleyFirstWolves), function Trig_FirstWolves_Func002002)
endfunction

//===========================================================================
function InitTrig_FirstWolves takes nothing returns nothing
    set gg_trg_FirstWolves=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_FirstWolves, gg_rct_ValleyFirstWolfAttack)
    call TriggerAddAction(gg_trg_FirstWolves, function Trig_FirstWolves_Actions)
endfunction

//===========================================================================
// Trigger: WolfSpotted
//===========================================================================
function Trig_WolfSpotted_Conditions takes nothing returns boolean
    if ( not ( GetAttackedUnitBJ() == gg_unit_nwwf_0257 ) ) then
        return false
    endif
    return true
endfunction

function Trig_WolfSpotted_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call IssuePointOrderLocBJ(gg_unit_nwwf_0257, "move", GetRectCenter(gg_rct_ValleyWhiteWolfRun))
endfunction

//===========================================================================
function InitTrig_WolfSpotted takes nothing returns nothing
    set gg_trg_WolfSpotted=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_WolfSpotted, Player(PLAYER_NEUTRAL_AGGRESSIVE), EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_WolfSpotted, Condition(function Trig_WolfSpotted_Conditions))
    call TriggerAddAction(gg_trg_WolfSpotted, function Trig_WolfSpotted_Actions)
endfunction

//===========================================================================
// Trigger: WolfTurnsAround
//===========================================================================
function Trig_WolfTurnsAround_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == gg_unit_nwwf_0257 ) ) then
        return false
    endif
    return true
endfunction

function Trig_WolfTurnsAround_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call IssueImmediateOrderBJ(GetEnteringUnit(), "stop")
    call SetUnitFacingTimed(GetEnteringUnit(), 180.00, 0.50)
endfunction

//===========================================================================
function InitTrig_WolfTurnsAround takes nothing returns nothing
    set gg_trg_WolfTurnsAround=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_WolfTurnsAround, gg_rct_ValleyWhiteWolfRun)
    call TriggerAddCondition(gg_trg_WolfTurnsAround, Condition(function Trig_WolfTurnsAround_Conditions))
    call TriggerAddAction(gg_trg_WolfTurnsAround, function Trig_WolfTurnsAround_Actions)
endfunction

//===========================================================================
// Trigger: WolvesAttack
//===========================================================================
function Trig_WolvesAttack_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnteringUnit()) == Player(1) ) ) then
        return false
    endif
    return true
endfunction

function Trig_WolvesAttack_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call IssuePointOrderLocBJ(gg_unit_nwwf_0161, "attack", GetRectCenter(gg_rct_ValleyWolvesAttack))
    call IssuePointOrderLocBJ(gg_unit_nwwg_0259, "attack", GetRectCenter(gg_rct_ValleyWolvesAttack))
    call IssuePointOrderLocBJ(gg_unit_nwwf_0257, "attack", GetRectCenter(gg_rct_ValleyWolvesAttack))
    call IssuePointOrderLocBJ(gg_unit_nwwg_0255, "attack", GetRectCenter(gg_rct_ValleyWolvesAttack))
    call IssuePointOrderLocBJ(gg_unit_nwwd_0139, "attack", GetRectCenter(gg_rct_ValleyWolvesAttack))
    call IssuePointOrderLocBJ(gg_unit_nwwg_0256, "attack", GetRectCenter(gg_rct_ValleyWolvesAttack))
endfunction

//===========================================================================
function InitTrig_WolvesAttack takes nothing returns nothing
    set gg_trg_WolvesAttack=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_WolvesAttack, gg_rct_ValleyWolvesAttack)
    call TriggerAddCondition(gg_trg_WolvesAttack, Condition(function Trig_WolvesAttack_Conditions))
    call TriggerAddAction(gg_trg_WolvesAttack, function Trig_WolvesAttack_Actions)
endfunction

//===========================================================================
// Trigger: TriggerGraveyardAttack
//===========================================================================
function Trig_TriggerGraveyardAttack_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnteringUnit()) == Player(1) ) ) then
        return false
    endif
    return true
endfunction

function Trig_TriggerGraveyardAttack_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerExecute(gg_trg_SpawnGhosts)
    call TriggerExecute(gg_trg_SpawnSkeletal_Archers)
endfunction

//===========================================================================
function InitTrig_TriggerGraveyardAttack takes nothing returns nothing
    set gg_trg_TriggerGraveyardAttack=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_TriggerGraveyardAttack, gg_rct_ValleyGraveyardTrigger)
    call TriggerAddCondition(gg_trg_TriggerGraveyardAttack, Condition(function Trig_TriggerGraveyardAttack_Conditions))
    call TriggerAddAction(gg_trg_TriggerGraveyardAttack, function Trig_TriggerGraveyardAttack_Actions)
endfunction

//===========================================================================
// Trigger: SpawnGhosts
//===========================================================================
function Trig_SpawnGhosts_Actions takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'ngh1', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_ValleyGhost01), 225.00)
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 100.00)
    set udg_GhostA=GetLastCreatedUnit()
    call PauseUnitBJ(true, GetLastCreatedUnit())
    call CreateNUnitsAtLoc(1, 'ngh2', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_ValleyGhost02), 225.00)
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 100.00)
    set udg_GhostB=GetLastCreatedUnit()
    call PauseUnitBJ(true, GetLastCreatedUnit())
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=20
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call TriggerExecute(gg_trg_LoopGhostTransparency)
        set bj_forLoopAIndex=bj_forLoopAIndex + 1
    endloop
    call TriggerSleepAction(2.10)
    call PauseUnitBJ(false, udg_GhostA)
    call PauseUnitBJ(false, udg_GhostB)
endfunction

//===========================================================================
function InitTrig_SpawnGhosts takes nothing returns nothing
    set gg_trg_SpawnGhosts=CreateTrigger()
    call TriggerAddAction(gg_trg_SpawnGhosts, function Trig_SpawnGhosts_Actions)
endfunction

//===========================================================================
// Trigger: LoopGhostTransparency
//===========================================================================
function Trig_LoopGhostTransparency_Actions takes nothing returns nothing
    call TriggerSleepAction(( 0.10 * I2R(GetForLoopIndexA()) ))
    set udg_GhostMaterialize=( udg_GhostMaterialize - 5.00 )
    call SetUnitVertexColorBJ(udg_GhostA, 100, 100, 100, udg_GhostMaterialize)
    call SetUnitVertexColorBJ(udg_GhostB, 100, 100, 100, udg_GhostMaterialize)
endfunction

//===========================================================================
function InitTrig_LoopGhostTransparency takes nothing returns nothing
    set gg_trg_LoopGhostTransparency=CreateTrigger()
    call TriggerAddAction(gg_trg_LoopGhostTransparency, function Trig_LoopGhostTransparency_Actions)
endfunction

//===========================================================================
// Trigger: SpawnSkeletal Archers
//===========================================================================
function Trig_SpawnSkeletal_Archers_Actions takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'nska', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_ValleySkelArcher01), 180.00)
    set udg_Skeleton01=GetLastCreatedUnit()
    call CreateNUnitsAtLoc(1, 'nskm', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_ValleySkelArcher02), 180.00)
    set udg_Skeleton02=GetLastCreatedUnit()
    call CreateNUnitsAtLoc(1, 'nska', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_ValleySkelArcher03), 180.00)
    set udg_Skeleton03=GetLastCreatedUnit()
    call CreateNUnitsAtLoc(1, 'nskm', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_ValleySkelArcher04), 180.00)
    set udg_Skeleton04=GetLastCreatedUnit()
    call CreateNUnitsAtLoc(1, 'nska', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_ValleySkelArcher05), 200.00)
    set udg_Skeleton05=GetLastCreatedUnit()
    call CreateNUnitsAtLoc(1, 'nska', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_ValleySkelArcher06), 225.00)
    set udg_Skeleton06=GetLastCreatedUnit()
    call PauseUnitBJ(true, udg_Skeleton01)
    call PauseUnitBJ(true, udg_Skeleton02)
    call PauseUnitBJ(true, udg_Skeleton03)
    call PauseUnitBJ(true, udg_Skeleton04)
    call PauseUnitBJ(true, udg_Skeleton05)
    call PauseUnitBJ(true, udg_Skeleton06)
    call SetUnitAnimation(udg_Skeleton01, "birth")
    call SetUnitAnimation(udg_Skeleton02, "birth")
    call SetUnitAnimation(udg_Skeleton03, "birth")
    call SetUnitAnimation(udg_Skeleton04, "birth")
    call SetUnitAnimation(udg_Skeleton05, "birth")
    call SetUnitAnimation(udg_Skeleton06, "birth")
    call TriggerSleepAction(2.50)
    call PauseUnitBJ(false, udg_Skeleton01)
    call PauseUnitBJ(false, udg_Skeleton02)
    call PauseUnitBJ(false, udg_Skeleton03)
    call PauseUnitBJ(false, udg_Skeleton04)
    call PauseUnitBJ(false, udg_Skeleton05)
    call PauseUnitBJ(false, udg_Skeleton06)
endfunction

//===========================================================================
function InitTrig_SpawnSkeletal_Archers takes nothing returns nothing
    set gg_trg_SpawnSkeletal_Archers=CreateTrigger()
    call TriggerAddAction(gg_trg_SpawnSkeletal_Archers, function Trig_SpawnSkeletal_Archers_Actions)
endfunction

//===========================================================================
// Trigger: GuardianEncounter
//===========================================================================
function Trig_GuardianEncounter_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnteringUnit()) == Player(1) ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_GuardianEncounter_Func006001 takes nothing returns boolean
    return ( DistanceBetweenPoints(GetUnitLoc(udg_Arthas), GetUnitLoc(udg_Guardian)) <= 2048.00 )
endfunction

function Trig_GuardianEncounter_Func007001 takes nothing returns boolean
    return ( DistanceBetweenPoints(GetUnitLoc(udg_Arthas), GetUnitLoc(udg_Guardian)) <= 2048.00 )
endfunction

function Trig_GuardianEncounter_Func010001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_NORMAL )
endfunction

function Trig_GuardianEncounter_Func011001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_EASY )
endfunction

function Trig_GuardianEncounter_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call CreateFogModifierRadiusLocBJ(true, Player(1), FOG_OF_WAR_VISIBLE, GetRectCenter(gg_rct_ValleyGuardianVisibility), 768.00)
    set udg_GuardianVisibility=GetLastCreatedFogModifier()
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Guardian, "TRIGSTR_039", gg_snd_H09Guardian08, "TRIGSTR_040", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_GuardianEncounter_Func006001() ) then
        call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_150", gg_snd_H09Arthas09, "TRIGSTR_151", bj_TIMETYPE_ADD, 0, true)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianEncounter_Func007001() ) then
        call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Guardian, "TRIGSTR_158", gg_snd_H09Guardian10, "TRIGSTR_159", bj_TIMETYPE_ADD, 0, true)
    else
        call DoNothing()
    endif
    call VolumeGroupResetBJ()
    // DIFFICULTY MODIFIER
    if ( Trig_GuardianEncounter_Func010001() ) then
        call SetUnitManaBJ(gg_unit_nC00_0011, 250.00)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianEncounter_Func011001() ) then
        call SetUnitManaBJ(gg_unit_nC00_0011, 0.00)
    else
        call DoNothing()
    endif
    call SetUnitInvulnerable(udg_Guardian, false)
    call SetUnitInvulnerable(udg_GuardianLackeyA, false)
    call SetUnitInvulnerable(udg_GuardianLackeyB, false)
    call SetUnitInvulnerable(udg_GuardianArcherA, false)
    call SetUnitInvulnerable(udg_GuardianArcherB, false)
    call PauseUnitBJ(false, udg_Guardian)
    call PauseUnitBJ(false, udg_GuardianLackeyA)
    call PauseUnitBJ(false, udg_GuardianLackeyB)
    call PauseUnitBJ(false, udg_GuardianArcherA)
    call PauseUnitBJ(false, udg_GuardianArcherB)
endfunction

//===========================================================================
function InitTrig_GuardianEncounter takes nothing returns nothing
    set gg_trg_GuardianEncounter=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_GuardianEncounter, gg_rct_ValleyGuardianTrigger)
    call TriggerAddCondition(gg_trg_GuardianEncounter, Condition(function Trig_GuardianEncounter_Conditions))
    call TriggerAddAction(gg_trg_GuardianEncounter, function Trig_GuardianEncounter_Actions)
endfunction

//===========================================================================
// Trigger: GuardianDies
//===========================================================================
function Trig_GuardianDies_Conditions takes nothing returns boolean
    if ( not ( GetDyingUnit() == udg_Guardian ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_GuardianDies_Func005001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_EASY )
endfunction

function Trig_GuardianDies_Func006001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_NORMAL )
endfunction

function Trig_GuardianDies_Func007001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_GuardianDies_Func015001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianLackeyA) == true )
endfunction

function Trig_GuardianDies_Func016001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianLackeyB) == true )
endfunction

function Trig_GuardianDies_Func017001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianArcherA) == true )
endfunction

function Trig_GuardianDies_Func018001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianArcherB) == true )
endfunction

function Trig_GuardianDies_Func019001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianLackeyA) == true )
endfunction

function Trig_GuardianDies_Func020001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianLackeyB) == true )
endfunction

function Trig_GuardianDies_Func021001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianArcherA) == true )
endfunction

function Trig_GuardianDies_Func022001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianArcherB) == true )
endfunction

function Trig_GuardianDies_Func025001 takes nothing returns boolean
    return ( DistanceBetweenPoints(GetUnitLoc(udg_Arthas), GetRectCenter(gg_rct_ValleyGuardianVisibility)) <= 2048.00 )
endfunction

function Trig_GuardianDies_Func026001 takes nothing returns boolean
    return ( DistanceBetweenPoints(GetUnitLoc(udg_Arthas), GetRectCenter(gg_rct_ValleyGuardianVisibility)) <= 2048.00 )
endfunction

function Trig_GuardianDies_Func030001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianLackeyA) == true )
endfunction

function Trig_GuardianDies_Func031001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianLackeyB) == true )
endfunction

function Trig_GuardianDies_Func032001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianArcherA) == true )
endfunction

function Trig_GuardianDies_Func033001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianArcherB) == true )
endfunction

function Trig_GuardianDies_Func034001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianLackeyA) == true )
endfunction

function Trig_GuardianDies_Func035001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianLackeyB) == true )
endfunction

function Trig_GuardianDies_Func036001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianArcherA) == true )
endfunction

function Trig_GuardianDies_Func037001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_GuardianArcherB) == true )
endfunction

function Trig_GuardianDies_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_PointGuardianPosition=GetUnitLoc(GetDyingUnit())
    set udg_RealGuardianFacing=GetUnitFacing(GetDyingUnit())
    call RemoveUnit(GetDyingUnit())
    if ( Trig_GuardianDies_Func005001() ) then
        call CreateNUnitsAtLoc(1, 'nC00', Player(PLAYER_NEUTRAL_AGGRESSIVE), udg_PointGuardianPosition, udg_RealGuardianFacing)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func006001() ) then
        call CreateNUnitsAtLoc(1, 'nC00', Player(PLAYER_NEUTRAL_AGGRESSIVE), udg_PointGuardianPosition, udg_RealGuardianFacing)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func007001() ) then
        call CreateNUnitsAtLoc(1, 'nC01', Player(PLAYER_NEUTRAL_AGGRESSIVE), udg_PointGuardianPosition, udg_RealGuardianFacing)
    else
        call DoNothing()
    endif
    set udg_Guardian=GetLastCreatedUnit()
    call SetUnitLifeBJ(udg_Guardian, 1.00)
    call PauseUnitBJ(true, udg_Guardian)
    call SetUnitInvulnerable(udg_Guardian, true)
    if ( Trig_GuardianDies_Func015001() ) then
        call PauseUnitBJ(true, udg_GuardianLackeyA)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func016001() ) then
        call PauseUnitBJ(true, udg_GuardianLackeyB)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func017001() ) then
        call PauseUnitBJ(true, udg_GuardianArcherA)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func018001() ) then
        call PauseUnitBJ(true, udg_GuardianArcherB)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func019001() ) then
        call SetUnitInvulnerable(udg_GuardianLackeyA, true)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func020001() ) then
        call SetUnitInvulnerable(udg_GuardianLackeyB, true)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func021001() ) then
        call SetUnitInvulnerable(udg_GuardianArcherA, true)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func022001() ) then
        call SetUnitInvulnerable(udg_GuardianArcherB, true)
    else
        call DoNothing()
    endif
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Guardian, "TRIGSTR_045", gg_snd_H09Guardian11, "TRIGSTR_046", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_GuardianDies_Func025001() ) then
        call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_226", gg_snd_H09Arthas12, "TRIGSTR_227", bj_TIMETYPE_ADD, 0, true)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func026001() ) then
        call TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(PLAYER_NEUTRAL_AGGRESSIVE), 'nC00', "TRIGSTR_256", GetRectCenter(gg_rct_ValleyGuardianVisibility), gg_snd_H09Guardian13, "TRIGSTR_257", bj_TIMETYPE_ADD, 0, true)
    else
        call DoNothing()
    endif
    call VolumeGroupSetVolumeBJ(SOUND_VOLUMEGROUP_UI, 1.00)
    call VolumeGroupResetBJ()
    call KillUnit(udg_Guardian)
    if ( Trig_GuardianDies_Func030001() ) then
        call PauseUnitBJ(false, udg_GuardianLackeyA)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func031001() ) then
        call PauseUnitBJ(false, udg_GuardianLackeyB)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func032001() ) then
        call PauseUnitBJ(false, udg_GuardianArcherA)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func033001() ) then
        call PauseUnitBJ(false, udg_GuardianArcherB)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func034001() ) then
        call KillUnit(udg_GuardianLackeyA)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func035001() ) then
        call KillUnit(udg_GuardianLackeyB)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func036001() ) then
        call KillUnit(udg_GuardianArcherA)
    else
        call DoNothing()
    endif
    if ( Trig_GuardianDies_Func037001() ) then
        call KillUnit(udg_GuardianArcherB)
    else
        call DoNothing()
    endif
    call TriggerSleepAction(2.00)
    call ConditionalTriggerExecute(gg_trg_TriggerFrostmourneCinematic)
endfunction

//===========================================================================
function InitTrig_GuardianDies takes nothing returns nothing
    set gg_trg_GuardianDies=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_GuardianDies, Player(PLAYER_NEUTRAL_AGGRESSIVE), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_GuardianDies, Condition(function Trig_GuardianDies_Conditions))
    call TriggerAddAction(gg_trg_GuardianDies, function Trig_GuardianDies_Actions)
endfunction

//===========================================================================
// Trigger: TriggerFrostmourneCinematic
//===========================================================================
function Trig_TriggerFrostmourneCinematic_Conditions takes nothing returns boolean
    if ( not ( IsUnitAliveBJ(udg_Arthas) == true ) ) then
        return false
    endif
    if ( not ( IsUnitAliveBJ(udg_Muradin) == true ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_TriggerFrostmourneCinematic_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_HeroDefeatPossible=false
    call SetUnitInvulnerable(udg_Arthas, true)
    call SetUnitInvulnerable(udg_Muradin, true)
    set udg_FrostmourneCinematicRunning=true
    call TriggerExecute(gg_trg_FrostmourneCinematicSetup)
endfunction

//===========================================================================
function InitTrig_TriggerFrostmourneCinematic takes nothing returns nothing
    set gg_trg_TriggerFrostmourneCinematic=CreateTrigger()
    call TriggerAddCondition(gg_trg_TriggerFrostmourneCinematic, Condition(function Trig_TriggerFrostmourneCinematic_Conditions))
    call TriggerAddAction(gg_trg_TriggerFrostmourneCinematic, function Trig_TriggerFrostmourneCinematic_Actions)
endfunction

//===========================================================================
// Trigger: FrostmourneCinematicSetup
//===========================================================================
function Trig_FrostmourneCinematicSetup_Func017001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneCinematicSetup_Actions takes nothing returns nothing
    // TURN OFF SKILL LEARNING TRIGGER
    call DisableTrigger(gg_trg_Arthas_Leans_a_Skill)
    call SetSkyModel("Environment\\Sky\\LordaeronWinterSky\\LordaeronWinterSky.mdl")
    call UseTimeOfDayBJ(false)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    call SetUnitInvulnerable(udg_Arthas, false)
    call SetUnitInvulnerable(udg_Muradin, false)
    call CinematicModeBJ(true, GetPlayersAll())
    call EnableTrigger(gg_trg_FrostmourneCinematicEscapeGood)
    call EnableTrigger(gg_trg_FrostmourneCinematicEscapeEvil)
    call TriggerExecute(gg_trg_FrostmourneActorSetup)
    // START MUSIC THEME
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\DarkVictory.mp3")
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneIntroShot, Player(1), 0)
    call TriggerSleepAction(1.00)
    if ( Trig_FrostmourneCinematicSetup_Func017001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg_FrostmourneApproach)
endfunction

//===========================================================================
function InitTrig_FrostmourneCinematicSetup takes nothing returns nothing
    set gg_trg_FrostmourneCinematicSetup=CreateTrigger()
    call TriggerAddAction(gg_trg_FrostmourneCinematicSetup, function Trig_FrostmourneCinematicSetup_Actions)
endfunction

//===========================================================================
// Trigger: FrostmourneActorSetup
//===========================================================================
function Trig_FrostmourneActorSetup_Func001002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_FrostmourneActorSetup_Actions takes nothing returns nothing
    call ForGroupBJ(udg_ValleyGroup, function Trig_FrostmourneActorSetup_Func001002)
    call ShowUnitShow(udg_Arthas)
    call ShowUnitShow(udg_Muradin)
    call SetUnitPositionLocFacingBJ(udg_Arthas, GetRectCenter(gg_rct_FrostmourneArthasBegin), 0.00)
    call SetUnitPositionLocFacingBJ(udg_Muradin, GetRectCenter(gg_rct_FrostmourneMuradinBegin), 0.00)
    call ClearSelection()
    call PauseAllUnitsBJ(true)
    call PauseUnitBJ(false, udg_Arthas)
    call PauseUnitBJ(false, udg_Muradin)
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, udg_Arthas)
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, udg_Muradin)
    call FogModifierStart(udg_ValleyVisA)
    call FogModifierStart(udg_ValleyVisB)
    call FogModifierStart(udg_ValleyVisC)
endfunction

//===========================================================================
function InitTrig_FrostmourneActorSetup takes nothing returns nothing
    set gg_trg_FrostmourneActorSetup=CreateTrigger()
    call TriggerAddAction(gg_trg_FrostmourneActorSetup, function Trig_FrostmourneActorSetup_Actions)
endfunction

//===========================================================================
// Trigger: FrostmourneApproach
//===========================================================================
function Trig_FrostmourneApproach_Func003001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Func010001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Func014001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Func019001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Func024001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Func030001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Func034001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Func036001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Func040001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Func048001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Func052001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Func056001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Func061001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneApproach_Actions takes nothing returns nothing
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 0.40, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.40)
    if ( Trig_FrostmourneApproach_Func003001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneSwordCloseup, Player(1), 6.00)
    call SetSoundPositionLocBJ(gg_snd_FrostmourneLoopUndead01, GetRectCenter(gg_rct_FrostmourneSound), 0)
    call PlaySoundBJ(gg_snd_FrostmourneLoopUndead01)
    call IssuePointOrderLocBJ(udg_Arthas, "move", GetRectCenter(gg_rct_FrostmourneArthasEnters))
    call IssuePointOrderLocBJ(udg_Muradin, "move", GetRectCenter(gg_rct_FrostmourneMuradinEnters))
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_052", gg_snd_H09Arthas14, "TRIGSTR_053", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_FrostmourneApproach_Func010001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Muradin, "move", GetRectCenter(gg_rct_FrostmourneMuradinReads))
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Muradin, "TRIGSTR_054", gg_snd_H09Muradin15, "TRIGSTR_055", bj_TIMETYPE_ADD, 0, false)
    call TriggerSleepAction(( 0.20 * GetSoundDurationBJ(gg_snd_H09Muradin15) ))
    if ( Trig_FrostmourneApproach_Func014001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneSwordPanBegin, Player(1), 0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneSwordPanEnd, Player(1), ( ( ( 0.60 * GetSoundDurationBJ(gg_snd_H09Muradin15) ) + 1 ) + 1 ))
    call TriggerSleepAction(( 0.60 * GetSoundDurationBJ(gg_snd_H09Muradin15) ))
    if ( Trig_FrostmourneApproach_Func019001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Muradin, udg_Arthas, 0)
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneMuradinSaysLeave, Player(1), 0)
    call WaitForSoundBJ(gg_snd_H09Muradin15, 0)
    if ( Trig_FrostmourneApproach_Func024001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Muradin, "move", GetRectCenter(gg_rct_FrostmourneMuradinToArthas))
    call IssuePointOrderLocBJ(udg_Arthas, "move", GetRectCenter(gg_rct_FrostmourneArthasAtDias))
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_056", gg_snd_H09Arthas16, "TRIGSTR_057", bj_TIMETYPE_ADD, 0, false)
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneMuradinToArthas, Player(1), ( GetSoundDurationBJ(gg_snd_H09Arthas16) + ( GetSoundDurationBJ(gg_snd_H09Muradin17) + GetSoundDurationBJ(gg_snd_H09Arthas18) ) ))
    call TriggerSleepAction(GetSoundDurationBJ(gg_snd_H09Arthas16))
    if ( Trig_FrostmourneApproach_Func030001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Muradin, udg_Arthas, 0)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Muradin, "TRIGSTR_058", gg_snd_H09Muradin17, "TRIGSTR_059", bj_TIMETYPE_ADD, 0, false)
    call TriggerSleepAction(GetSoundDurationBJ(gg_snd_H09Muradin17))
    if ( Trig_FrostmourneApproach_Func034001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_100", gg_snd_H09Arthas18, "TRIGSTR_101", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_FrostmourneApproach_Func036001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneBeginCloseup, Player(1), 0)
    call TriggerSleepAction(0.05)
    if ( Trig_FrostmourneApproach_Func040001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Arthas, "move", GetRectCenter(gg_rct_FrostmourneArthasTakesSword))
    call AttachSoundToUnitBJ(gg_snd_DivineShield, udg_Arthas)
    call SetSoundVolumeBJ(gg_snd_DivineShield, 40.00)
    call PlaySoundBJ(gg_snd_DivineShield)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_102", gg_snd_H09Arthas19, "TRIGSTR_103", bj_TIMETYPE_ADD, 0, false)
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneEndCloseup, Player(1), GetSoundDurationBJ(gg_snd_H09Arthas19))
    call WaitForSoundBJ(gg_snd_H09Arthas19, 4.00)
    if ( Trig_FrostmourneApproach_Func048001() ) then
        return
    else
        call DoNothing()
    endif
    call SetSoundVolumeBJ(gg_snd_FrostmourneChant1, 60.00)
    call PlaySoundBJ(gg_snd_FrostmourneChant1)
    call WaitForSoundBJ(gg_snd_H09Arthas19, 1.50)
    if ( Trig_FrostmourneApproach_Func052001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitAnimation(gg_unit_nfrm_0226, "Stand Third")
    call StopSoundBJ(gg_snd_FrostmourneLoopUndead01, true)
    call WaitForSoundBJ(gg_snd_H09Arthas19, 0)
    if ( Trig_FrostmourneApproach_Func056001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneDeathCamera, Player(1), 0.00)
    call SetUnitAnimation(gg_unit_nfrm_0226, "death")
    call TriggerSleepAction(1.50)
    if ( Trig_FrostmourneApproach_Func061001() ) then
        return
    else
        call DoNothing()
    endif
    call status_check_location(23)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.25, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 100.00, 100.00, 100.00, 0.00)
    call TriggerExecute(gg_trg_FrostmourneMuradinHit)
endfunction

//===========================================================================
function InitTrig_FrostmourneApproach takes nothing returns nothing
    set gg_trg_FrostmourneApproach=CreateTrigger()
    call TriggerAddAction(gg_trg_FrostmourneApproach, function Trig_FrostmourneApproach_Actions)
endfunction

//===========================================================================
// Trigger: FrostmourneMuradinHit
//===========================================================================
function Trig_FrostmourneMuradinHit_Func010001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneMuradinHit_Func019001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneMuradinHit_Func023001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneMuradinHit_Func026001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneMuradinHit_Func032001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneMuradinHit_Func038001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneMuradinHit_Func043001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneMuradinHit_Func048001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneMuradinHit_Actions takes nothing returns nothing
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 3.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 100.00, 100.00, 100.00, 0.00)
    call SetUnitTimeScalePercent(udg_Muradin, 80.00)
    call SetUnitAnimation(udg_Muradin, "death second")
    call AttachSoundToUnitBJ(gg_snd_HeroMountainKingDeath, udg_Muradin)
    call PlaySoundBJ(gg_snd_HeroMountainKingDeath)
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneMuradinDeath_01, Player(1), 0.01)
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, udg_Muradin, 0.00)
    call TriggerSleepAction(1.00)
    if ( Trig_FrostmourneMuradinHit_Func010001() ) then
        return
    else
        call DoNothing()
    endif
    call ReplaceUnitBJ(udg_Arthas, 'Harf', bj_UNIT_STATE_METHOD_RELATIVE)
    set udg_EvilArthas=GetLastReplacedUnitBJ()
    call TriggerExecute(gg_trg_RecreateArthasSkills)
    set udg_ArthasIsEvil=true
    call SetUnitAnimation(udg_EvilArthas, "Stand Fourth")
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneMuradinDeath_02, Player(1), 0.01)
    call TriggerSleepAction(1.00)
    if ( Trig_FrostmourneMuradinHit_Func019001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneMuradinDeath_03, Player(1), 0.01)
    call TriggerSleepAction(2.50)
    if ( Trig_FrostmourneMuradinHit_Func023001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitAnimation(udg_EvilArthas, "Stand Fifth")
    call TriggerSleepAction(0.50)
    if ( Trig_FrostmourneMuradinHit_Func026001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneMuradinDeath_04, Player(1), 1.00)
    call SetSoundPositionLocBJ(gg_snd_BalrogAttack1, GetRectCenter(gg_rct_FrostmourneArthasAfterMalsDeath), 0)
    call SetSoundVolumeBJ(gg_snd_BalrogAttack1, 40.00)
    call PlaySoundBJ(gg_snd_BalrogAttack1)
    if ( Trig_FrostmourneMuradinHit_Func032001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.20)
    call SetSoundPositionLocBJ(gg_snd_ColdArrow2, GetRectCenter(gg_rct_FrostmourneArthasAfterMalsDeath), 0)
    call SetSoundVolumeBJ(gg_snd_ColdArrow2, 45.00)
    call PlaySoundBJ(gg_snd_ColdArrow2)
    call TriggerSleepAction(3.20)
    if ( Trig_FrostmourneMuradinHit_Func038001() ) then
        return
    else
        call DoNothing()
    endif
    call SetSoundPositionLocBJ(gg_snd_MetalMediumBashStone1, GetRectCenter(gg_rct_HammerDrop), 0)
    call SetSoundVolumeBJ(gg_snd_MetalMediumBashStone1, 60.00)
    call PlaySoundBJ(gg_snd_MetalMediumBashStone1)
    call TriggerSleepAction(0.60)
    if ( Trig_FrostmourneMuradinHit_Func043001() ) then
        return
    else
        call DoNothing()
    endif
    call SetSoundPositionLocBJ(gg_snd_WoodLightBashStone3, GetRectCenter(gg_rct_HammerDrop), 0)
    call SetSoundVolumeBJ(gg_snd_WoodLightBashStone3, 60.00)
    call PlaySoundBJ(gg_snd_WoodLightBashStone3)
    call TriggerSleepAction(0.60)
    if ( Trig_FrostmourneMuradinHit_Func048001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg_FrostmourneCinematicEnd)
endfunction

//===========================================================================
function InitTrig_FrostmourneMuradinHit takes nothing returns nothing
    set gg_trg_FrostmourneMuradinHit=CreateTrigger()
    call TriggerAddAction(gg_trg_FrostmourneMuradinHit, function Trig_FrostmourneMuradinHit_Actions)
endfunction

//===========================================================================
// Trigger: FrostmourneCinematicEnd
//===========================================================================
function Trig_FrostmourneCinematicEnd_Func005001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneCinematicEnd_Func022002 takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
endfunction

function Trig_FrostmourneCinematicEnd_Func029001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_Captain) == true )
endfunction

function Trig_FrostmourneCinematicEnd_Func031001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneCinematicEnd_Func038001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneCinematicEnd_Func040001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneCinematicEnd_Func042001 takes nothing returns boolean
    return ( udg_FrostmourneCinematicEscape == true )
endfunction

function Trig_FrostmourneCinematicEnd_Actions takes nothing returns nothing
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call SetSoundVolumeBJ(gg_snd_FrostmourneChant1, 50.00)
    call PlaySoundBJ(gg_snd_FrostmourneChant1)
    call TriggerSleepAction(2.00)
    if ( Trig_FrostmourneCinematicEnd_Func005001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneArthasDone, Player(1), 0)
    set udg_ItemMuradin01=UnitItemInSlotBJ(udg_Muradin, 1)
    set udg_ItemMuradin02=UnitItemInSlotBJ(udg_Muradin, 2)
    set udg_ItemMuradin03=UnitItemInSlotBJ(udg_Muradin, 3)
    set udg_ItemMuradin04=UnitItemInSlotBJ(udg_Muradin, 4)
    set udg_ItemMuradin05=UnitItemInSlotBJ(udg_Muradin, 5)
    set udg_ItemMuradin06=UnitItemInSlotBJ(udg_Muradin, 6)
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin01), GetRectCenter(gg_rct_ItemMuradin01))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin02), GetRectCenter(gg_rct_ItemMuradin02))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin03), GetRectCenter(gg_rct_ItemMuradin03))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin04), GetRectCenter(gg_rct_ItemMuradin04))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin05), GetRectCenter(gg_rct_ItemMuradin05))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin06), GetRectCenter(gg_rct_ItemMuradin06))
    call TriggerExecute(gg_trg_ItemFailsafeReplace)
    call GroupRemoveUnitSimple(udg_Arthas, udg_ValleyGroup)
    call ForGroupBJ(udg_ValleyGroup, function Trig_FrostmourneCinematicEnd_Func022002)
    // MAKE MALGANIS VULNERABLE
    call TriggerExecute(gg_trg_DestroyMalganisItems)
    call DisableTrigger(gg_trg_GiveAnkh)
    call CreateFogModifierRectBJ(true, Player(1), FOG_OF_WAR_MASKED, gg_rct_FrostmourneDiasVisibility)
    set udg_DiasVisA=GetLastCreatedFogModifier()
    call SetUnitAnimation(udg_EvilArthas, "Stand")
    if ( Trig_FrostmourneCinematicEnd_Func029001() ) then
        call SetUnitPositionLoc(udg_Captain, GetRectCenter(gg_rct_FrostmourneCaptainSpawn))
    else
        call TriggerExecute(gg_trg_FrostmourneEndCaptainFailsafe)
    endif
    call TriggerSleepAction(1.00)
    if ( Trig_FrostmourneCinematicEnd_Func031001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitPositionLoc(udg_EvilArthas, GetRectCenter(gg_rct_FrostmourneArthasOutside))
    call SetUnitFacingTimed(udg_EvilArthas, 315.00, 0)
    call TriggerExecute(gg_trg_FrostmourneArthasTeleports)
    call PauseUnitBJ(false, udg_Captain)
    call IssuePointOrderLocBJ(udg_Captain, "move", GetRectCenter(gg_rct_FrostmourneCaptainToArthas))
    call TriggerSleepAction(1.00)
    if ( Trig_FrostmourneCinematicEnd_Func038001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Captain, "TRIGSTR_064", gg_snd_H09Captain20, "TRIGSTR_065", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_FrostmourneCinematicEnd_Func040001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_EvilArthas, "TRIGSTR_066", gg_snd_H09Arthas21, "TRIGSTR_067", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_FrostmourneCinematicEnd_Func042001() ) then
        return
    else
        call DoNothing()
    endif
    call DisableTrigger(gg_trg_FrostmourneCinematicEscapeEvil)
    call DisableTrigger(gg_trg_FrostmourneCinematicEscapeGood)
    set udg_FrostmourneCinematicRunning=false
    call SetSkyModel(null)
    call UseTimeOfDayBJ(true)
    call DisableTrigger(gg_trg_FrostmourneCinematicEscapeEvil)
    call DisableTrigger(gg_trg_FrostmourneCinematicEscapeGood)
    call PauseAllUnitsBJ(false)
    call CameraResetSmoothingFactorBJ()
    call CinematicModeBJ(false, GetPlayersAll())
    // ENABLE VICTORY
    call EnableTrigger(gg_trg_Green_Base_Dead)
    // RESELECT ARTHAS
    call SelectUnitSingle(udg_EvilArthas)
    call ResetToGameCameraForPlayer(Player(1), 0.00)
    call CommandAI(udg_PlayerUndeadProtector, 0, 0)
    call CommandAI(udg_PlayerMalganis, 0, 0)
    call QuestSetCompletedBJ(udg_QuestFrostmourne, true)
    call QuestItemSetCompletedBJ(udg_QuestReqFrostmourne, true)
    call QuestItemSetCompletedBJ(udg_QuestReqArthasDie, true)
    call QuestItemSetCompletedBJ(udg_QuestReqMuradinDie, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_086")
    call TriggerSleepAction(10.00)
    call CreateFogModifierRadiusLocBJ(true, Player(1), FOG_OF_WAR_VISIBLE, GetUnitLoc(gg_unit_uaod_0072), 1024.00)
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call PingMinimapLocForForce(bj_FORCE_PLAYER[1], GetUnitLoc(gg_unit_uaod_0072), 5.00)
    call SetCameraQuickPositionLocForPlayer(Player(1), GetUnitLoc(gg_unit_uaod_0072))
    call VolumeGroupResetBJ()
    call QuestSetDiscoveredBJ(udg_QuestMalganis, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_087")
endfunction

//===========================================================================
function InitTrig_FrostmourneCinematicEnd takes nothing returns nothing
    set gg_trg_FrostmourneCinematicEnd=CreateTrigger()
    call TriggerAddAction(gg_trg_FrostmourneCinematicEnd, function Trig_FrostmourneCinematicEnd_Actions)
endfunction

//===========================================================================
// Trigger: FrostmourneEndCaptainFailsafe
//===========================================================================
function Trig_FrostmourneEndCaptainFailsafe_Actions takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'hcth', Player(1), GetRectCenter(gg_rct_FrostmourneCaptainSpawn), 180.00)
    set udg_Captain=GetLastCreatedUnit()
endfunction

//===========================================================================
function InitTrig_FrostmourneEndCaptainFailsafe takes nothing returns nothing
    set gg_trg_FrostmourneEndCaptainFailsafe=CreateTrigger()
    call TriggerAddAction(gg_trg_FrostmourneEndCaptainFailsafe, function Trig_FrostmourneEndCaptainFailsafe_Actions)
endfunction

//===========================================================================
// Trigger: FrostmourneArthasTeleports
//===========================================================================
function Trig_FrostmourneArthasTeleports_Actions takes nothing returns nothing
    call AddSpecialEffectLocBJ(GetUnitLoc(udg_EvilArthas), "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl")
    call SetSoundPositionLocBJ(gg_snd_MassTeleportTarget, GetRectCenter(gg_rct_FrostmourneArthasOutside), 0)
    call SetSoundVolumeBJ(gg_snd_MassTeleportTarget, 80.00)
    call PlaySoundBJ(gg_snd_MassTeleportTarget)
    set udg_EffectArthasAfterFM=GetLastCreatedEffectBJ()
    call TriggerSleepAction(2)
    call DestroyEffectBJ(udg_EffectArthasAfterFM)
endfunction

//===========================================================================
function InitTrig_FrostmourneArthasTeleports takes nothing returns nothing
    set gg_trg_FrostmourneArthasTeleports=CreateTrigger()
    call TriggerAddAction(gg_trg_FrostmourneArthasTeleports, function Trig_FrostmourneArthasTeleports_Actions)
endfunction

//===========================================================================
// Trigger: Arthas Channel
//===========================================================================
function Trig_Arthas_Channel_Conditions takes nothing returns boolean
    if ( not ( udg_Arthas == GetEnteringUnit() ) ) then
        return false
    endif
    return true
endfunction

function Trig_Arthas_Channel_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call IssueImmediateOrderBJ(udg_Arthas, "stop")
    call SetUnitAnimation(udg_Arthas, "Stand Channel")
    call TriggerSleepAction(GetSoundDurationBJ(gg_snd_H09Arthas19))
    call SetUnitAnimation(udg_Arthas, "Stand")
endfunction

//===========================================================================
function InitTrig_Arthas_Channel takes nothing returns nothing
    set gg_trg_Arthas_Channel=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Arthas_Channel, gg_rct_FrostmourneArthasTakesSword)
    call TriggerAddCondition(gg_trg_Arthas_Channel, Condition(function Trig_Arthas_Channel_Conditions))
    call TriggerAddAction(gg_trg_Arthas_Channel, function Trig_Arthas_Channel_Actions)
endfunction

//===========================================================================
// Trigger: FrostmourneCinematicEscapeGood
//===========================================================================
function Trig_FrostmourneCinematicEscapeGood_Conditions takes nothing returns boolean
    if ( not ( udg_ArthasIsEvil == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_FrostmourneCinematicEscapeGood_Func013001 takes nothing returns boolean
    return ( IsLocationMaskedToPlayer(GetRectCenter(gg_rct_FrostmourneValleyVisibilityA), Player(1)) == true )
endfunction

function Trig_FrostmourneCinematicEscapeGood_Func014001 takes nothing returns boolean
    return ( IsLocationMaskedToPlayer(GetRectCenter(gg_rct_FrostmourneValleyVisibilityB), Player(1)) == true )
endfunction

function Trig_FrostmourneCinematicEscapeGood_Func015001 takes nothing returns boolean
    return ( IsLocationMaskedToPlayer(GetRectCenter(gg_rct_FrostmourneValleyVisibilityC), Player(1)) == true )
endfunction

function Trig_FrostmourneCinematicEscapeGood_Func044002 takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
endfunction

function Trig_FrostmourneCinematicEscapeGood_Func055001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_Captain) == true )
endfunction

function Trig_FrostmourneCinematicEscapeGood_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_FrostmourneCinematicEscapeEvil)
    call status_check_location(23)
    set udg_FrostmourneCinematicEscape=true
    set udg_FrostmourneCinematicRunning=false
    call StopSoundBJ(GetLastPlayedSound(), true)
    call VolumeGroupResetBJ()
    call EndThematicMusicBJ()
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(2.00)
    if ( Trig_FrostmourneCinematicEscapeGood_Func013001() ) then
        call DoNothing()
    else
        call FogModifierStart(udg_ValleyVisA)
    endif
    if ( Trig_FrostmourneCinematicEscapeGood_Func014001() ) then
        call DoNothing()
    else
        call FogModifierStart(udg_ValleyVisB)
    endif
    if ( Trig_FrostmourneCinematicEscapeGood_Func015001() ) then
        call DoNothing()
    else
        call FogModifierStart(udg_ValleyVisC)
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call CreateFogModifierRectBJ(true, Player(1), FOG_OF_WAR_MASKED, gg_rct_FrostmourneDiasVisibility)
    set udg_DiasVisA=GetLastCreatedFogModifier()
    call CameraResetSmoothingFactorBJ()
    call CameraSetupApplyForPlayer(true, gg_cam_FrostmourneArthasDone, Player(1), 0)
    call TriggerSleepAction(0.01)
    call ResetToGameCameraForPlayer(Player(1), 0.00)
    call CinematicModeBJ(false, GetPlayersAll())
    call SetSkyModel(null)
    call UseTimeOfDayBJ(true)
    // ENABLE VICTORY
    call EnableTrigger(gg_trg_Green_Base_Dead)
    set udg_ItemMuradin01=UnitItemInSlotBJ(udg_Muradin, 1)
    set udg_ItemMuradin02=UnitItemInSlotBJ(udg_Muradin, 2)
    set udg_ItemMuradin03=UnitItemInSlotBJ(udg_Muradin, 3)
    set udg_ItemMuradin04=UnitItemInSlotBJ(udg_Muradin, 4)
    set udg_ItemMuradin05=UnitItemInSlotBJ(udg_Muradin, 5)
    set udg_ItemMuradin06=UnitItemInSlotBJ(udg_Muradin, 6)
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin01), GetRectCenter(gg_rct_ItemMuradin01))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin02), GetRectCenter(gg_rct_ItemMuradin02))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin03), GetRectCenter(gg_rct_ItemMuradin03))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin04), GetRectCenter(gg_rct_ItemMuradin04))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin05), GetRectCenter(gg_rct_ItemMuradin05))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin06), GetRectCenter(gg_rct_ItemMuradin06))
    call TriggerExecute(gg_trg_ItemFailsafeReplace)
    call GroupRemoveUnitSimple(udg_Arthas, udg_ValleyGroup)
    call ShowUnitHide(udg_Muradin)
    call SetUnitOwner(udg_Muradin, Player(PLAYER_NEUTRAL_PASSIVE), true)
    call ForGroupBJ(udg_ValleyGroup, function Trig_FrostmourneCinematicEscapeGood_Func044002)
    // MAKE MALGANIS VULNERABLE
    call TriggerExecute(gg_trg_DestroyMalganisItems)
    call DisableTrigger(gg_trg_GiveAnkh)
    call ReplaceUnitBJ(udg_Arthas, 'Harf', bj_UNIT_STATE_METHOD_RELATIVE)
    set udg_EvilArthas=GetLastReplacedUnitBJ()
    call TriggerExecute(gg_trg_RecreateArthasSkills)
    call SetUnitPositionLoc(udg_EvilArthas, GetRectCenter(gg_rct_FrostmourneArthasOutside))
    call SetUnitFacingTimed(udg_EvilArthas, 315.00, 0)
    // RESELECT ARTHAS
    call SelectUnitSingle(udg_EvilArthas)
    if ( Trig_FrostmourneCinematicEscapeGood_Func055001() ) then
        call SetUnitPositionLocFacingBJ(udg_Captain, GetRectCenter(gg_rct_FrostmourneCaptainToArthas), 150.00)
    else
        call CreateNUnitsAtLoc(1, 'hcth', Player(1), GetRectCenter(gg_rct_FrostmourneCaptainToArthas), 150.00)
    endif
    call PauseAllUnitsBJ(false)
    call CommandAI(udg_PlayerUndeadProtector, 0, 0)
    call CommandAI(udg_PlayerMalganis, 0, 0)
    call QuestSetCompletedBJ(udg_QuestFrostmourne, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_106")
    call TriggerSleepAction(10.00)
    call CreateFogModifierRadiusLocBJ(true, Player(1), FOG_OF_WAR_VISIBLE, GetUnitLoc(gg_unit_uaod_0072), 1024.00)
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call PingMinimapLocForForce(bj_FORCE_PLAYER[1], GetUnitLoc(gg_unit_uaod_0072), 5.00)
    call SetCameraQuickPositionLocForPlayer(Player(1), GetUnitLoc(gg_unit_uaod_0072))
    call QuestSetDiscoveredBJ(udg_QuestMalganis, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_107")
endfunction

//===========================================================================
function InitTrig_FrostmourneCinematicEscapeGood takes nothing returns nothing
    set gg_trg_FrostmourneCinematicEscapeGood=CreateTrigger()
    call DisableTrigger(gg_trg_FrostmourneCinematicEscapeGood)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_FrostmourneCinematicEscapeGood, Player(1))
    call TriggerAddCondition(gg_trg_FrostmourneCinematicEscapeGood, Condition(function Trig_FrostmourneCinematicEscapeGood_Conditions))
    call TriggerAddAction(gg_trg_FrostmourneCinematicEscapeGood, function Trig_FrostmourneCinematicEscapeGood_Actions)
endfunction

//===========================================================================
// Trigger: FrostmourneCinematicEscapeEvil
//===========================================================================
function Trig_FrostmourneCinematicEscapeEvil_Conditions takes nothing returns boolean
    if ( not ( udg_ArthasIsEvil == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_FrostmourneCinematicEscapeEvil_Func037002 takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
endfunction

function Trig_FrostmourneCinematicEscapeEvil_Func043001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_Captain) == true )
endfunction

function Trig_FrostmourneCinematicEscapeEvil_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_FrostmourneCinematicEscapeGood)
    call status_check_location(23)
    call VolumeGroupResetBJ()
    set udg_FrostmourneCinematicEscape=true
    set udg_FrostmourneCinematicRunning=false
    call StopSoundBJ(GetLastPlayedSound(), true)
    call EndThematicMusicBJ()
    call CameraResetSmoothingFactorBJ()
    call CinematicModeBJ(false, GetPlayersAll())
    // ENABLE VICTORY
    call EnableTrigger(gg_trg_Green_Base_Dead)
    // RESELECT ARTHAS
    call SelectUnitSingle(udg_EvilArthas)
    call ResetToGameCameraForPlayer(Player(1), 0.00)
    call SetSkyModel(null)
    call UseTimeOfDayBJ(true)
    // MURADIN ITEMS
    set udg_ItemMuradin01=UnitItemInSlotBJ(udg_Muradin, 1)
    set udg_ItemMuradin02=UnitItemInSlotBJ(udg_Muradin, 2)
    set udg_ItemMuradin03=UnitItemInSlotBJ(udg_Muradin, 3)
    set udg_ItemMuradin04=UnitItemInSlotBJ(udg_Muradin, 4)
    set udg_ItemMuradin05=UnitItemInSlotBJ(udg_Muradin, 5)
    set udg_ItemMuradin06=UnitItemInSlotBJ(udg_Muradin, 6)
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin01), GetRectCenter(gg_rct_ItemMuradin01))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin02), GetRectCenter(gg_rct_ItemMuradin02))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin03), GetRectCenter(gg_rct_ItemMuradin03))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin04), GetRectCenter(gg_rct_ItemMuradin04))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin05), GetRectCenter(gg_rct_ItemMuradin05))
    call CreateItemLoc(GetItemTypeId(udg_ItemMuradin06), GetRectCenter(gg_rct_ItemMuradin06))
    call TriggerExecute(gg_trg_ItemFailsafeReplace)
    call GroupRemoveUnitSimple(udg_Arthas, udg_ValleyGroup)
    call ForGroupBJ(udg_ValleyGroup, function Trig_FrostmourneCinematicEscapeEvil_Func037002)
    // MAKE MALGANIS VULNERABLE
    call TriggerExecute(gg_trg_DestroyMalganisItems)
    call DisableTrigger(gg_trg_GiveAnkh)
    call SetUnitPositionLoc(udg_EvilArthas, GetRectCenter(gg_rct_FrostmourneArthasOutside))
    call SetUnitFacingTimed(udg_EvilArthas, 315.00, 0)
    if ( Trig_FrostmourneCinematicEscapeEvil_Func043001() ) then
        call SetUnitPositionLocFacingBJ(udg_Captain, GetRectCenter(gg_rct_FrostmourneCaptainToArthas), 150.00)
    else
        call CreateNUnitsAtLoc(1, 'hcth', Player(1), GetRectCenter(gg_rct_FrostmourneCaptainToArthas), 150.00)
    endif
    call PauseAllUnitsBJ(false)
    call CommandAI(udg_PlayerUndeadProtector, 0, 0)
    call CommandAI(udg_PlayerMalganis, 0, 0)
    call QuestSetCompletedBJ(udg_QuestFrostmourne, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_108")
    call TriggerSleepAction(10.00)
    call CreateFogModifierRadiusLocBJ(true, Player(1), FOG_OF_WAR_VISIBLE, GetUnitLoc(gg_unit_uaod_0072), 1024.00)
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call PingMinimapLocForForce(bj_FORCE_PLAYER[1], GetUnitLoc(gg_unit_uaod_0072), 5.00)
    call SetCameraQuickPositionLocForPlayer(Player(1), GetUnitLoc(gg_unit_uaod_0072))
    call QuestSetDiscoveredBJ(udg_QuestMalganis, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_109")
endfunction

//===========================================================================
function InitTrig_FrostmourneCinematicEscapeEvil takes nothing returns nothing
    set gg_trg_FrostmourneCinematicEscapeEvil=CreateTrigger()
    call DisableTrigger(gg_trg_FrostmourneCinematicEscapeEvil)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_FrostmourneCinematicEscapeEvil, Player(1))
    call TriggerAddCondition(gg_trg_FrostmourneCinematicEscapeEvil, Condition(function Trig_FrostmourneCinematicEscapeEvil_Conditions))
    call TriggerAddAction(gg_trg_FrostmourneCinematicEscapeEvil, function Trig_FrostmourneCinematicEscapeEvil_Actions)
endfunction

//===========================================================================
// Trigger: TriggerExitCinematic
//===========================================================================
function Trig_TriggerExitCinematic_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_ExitCinematicRunning=true
    call TriggerExecute(gg_trg_Level_Enabling)
    call QuestSetCompletedBJ(udg_QuestMalganis, true)
    call QuestItemSetCompletedBJ(udg_QuestReqMalganis, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_072")
    call status_check_location(0)
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call EnableTrigger(gg_trg_ExitCinematicEscape)
    call TriggerExecute(gg_trg_ExitCinematicSetup)
endfunction

//===========================================================================
function InitTrig_TriggerExitCinematic takes nothing returns nothing
    set gg_trg_TriggerExitCinematic=CreateTrigger()
    call TriggerAddAction(gg_trg_TriggerExitCinematic, function Trig_TriggerExitCinematic_Actions)
endfunction

//===========================================================================
// Trigger: ExitCinematicSetup
//===========================================================================
function Trig_ExitCinematicSetup_Func017001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicSetup_Actions takes nothing returns nothing
    call UseTimeOfDayBJ(false)
    call SetSkyModel("Environment\\Sky\\BlizzardSky\\BlizzardSky.mdl")
    call RemoveWeatherEffectBJ(udg_WeatherSnow)
    // PLAY SOUND THEME
    call VolumeGroupSetVolumeBJ(SOUND_VOLUMEGROUP_MUSIC, 35.00)
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\DarkVictory.mp3")
    call ClearSelection()
    call SetTerrainFogExBJ(0, 300.00, 2000.00, 0, 100, 100, 100)
    call CinematicModeBJ(true, GetPlayersAll())
    call PauseAllUnitsBJ(true)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    if ( Trig_ExitCinematicSetup_Func017001() ) then
        return
    else
        call DoNothing()
    endif
    call SetPlayerAllianceBJ(Player(1), ALLIANCE_PASSIVE, true, Player(6))
    call SetPlayerAllianceBJ(Player(6), ALLIANCE_PASSIVE, true, Player(1))
    call CameraSetupApplyForPlayer(true, gg_cam_ExitInitialCamera, Player(1), 0.00)
    call TriggerExecute(gg_trg_ExitCinematicActorSetup)
endfunction

//===========================================================================
function InitTrig_ExitCinematicSetup takes nothing returns nothing
    set gg_trg_ExitCinematicSetup=CreateTrigger()
    call TriggerAddAction(gg_trg_ExitCinematicSetup, function Trig_ExitCinematicSetup_Actions)
endfunction

//===========================================================================
// Trigger: ExitCinematicActorSetup
//===========================================================================
function Trig_ExitCinematicActorSetup_Func001001 takes nothing returns boolean
    return ( IsUnitDeadBJ(udg_Malganis) == true )
endfunction

function Trig_ExitCinematicActorSetup_Func002001 takes nothing returns boolean
    return ( IsUnitDeadBJ(udg_EvilArthas) == true )
endfunction

function Trig_ExitCinematicActorSetup_Actions takes nothing returns nothing
    if ( Trig_ExitCinematicActorSetup_Func001001() ) then
        call ReviveHeroLoc(udg_Malganis, GetRectCenter(gg_rct_ExitMalganisInitialPosition), false)
    else
        call SetUnitPositionLoc(udg_Malganis, GetRectCenter(gg_rct_ExitMalganisInitialPosition))
    endif
    if ( Trig_ExitCinematicActorSetup_Func002001() ) then
        call ReviveHeroLoc(udg_EvilArthas, GetRectCenter(gg_rct_ExitArthasInitialPosition), false)
    else
        call SetUnitPositionLoc(udg_EvilArthas, GetRectCenter(gg_rct_ExitArthasInitialPosition))
    endif
    call RemoveGuardPosition(udg_Malganis)
    call PauseUnitBJ(false, udg_EvilArthas)
    call PauseUnitBJ(false, udg_Malganis)
    call SetUnitFacingToFaceUnitTimed(udg_EvilArthas, udg_Malganis, 0)
    call SetUnitFacingToFaceUnitTimed(udg_Malganis, udg_EvilArthas, 0)
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, udg_EvilArthas)
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, udg_Malganis)
    call SetUnitAnimationWithRarity(udg_EvilArthas, "stand", RARITY_FREQUENT)
    call SetUnitAnimationWithRarity(udg_Malganis, "stand", RARITY_FREQUENT)
    call TriggerExecute(gg_trg_ExitCinematicArthasMalganisTalk)
endfunction

//===========================================================================
function InitTrig_ExitCinematicActorSetup takes nothing returns nothing
    set gg_trg_ExitCinematicActorSetup=CreateTrigger()
    call TriggerAddAction(gg_trg_ExitCinematicActorSetup, function Trig_ExitCinematicActorSetup_Actions)
endfunction

//===========================================================================
// Trigger: ExitCinematicArthasMalganisTalk
//===========================================================================
function Trig_ExitCinematicArthasMalganisTalk_Func010001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Func014001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Func019001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Func023001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Func027001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Func030001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Func035001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Func037001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Func040001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Func048001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Func058001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Func061001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Func066001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicArthasMalganisTalk_Actions takes nothing returns nothing
    call AddWeatherEffectSaveLast(gg_rct_ExitCinematicWeather_Blizzard, 'SNbs')
    set udg_WeatherSnow=GetLastCreatedWeatherEffect()
    call EnableWeatherEffect(udg_WeatherSnow, true)
    call TriggerSleepAction(0.01)
    call AddWeatherEffectSaveLast(gg_rct_ExitCinematicWeather_Blizzard, 'WNcw')
    set udg_Blizzard=GetLastCreatedWeatherEffect()
    call EnableWeatherEffect(udg_Blizzard, true)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func010001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Malganis, "TRIGSTR_003", gg_snd_H09MalGanis23, "TRIGSTR_035", bj_TIMETYPE_ADD, 0, false)
    call CameraSetupApplyForPlayer(true, gg_cam_ExitZoomIn, Player(1), GetSoundDurationBJ(GetLastPlayedSound()))
    call WaitForSoundBJ(GetLastPlayedSound(), 0)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func014001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_EvilArthas, "TRIGSTR_036", gg_snd_H09Arthas24, "TRIGSTR_037", bj_TIMETYPE_ADD, 0, true)
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_Exit_Malganis_01, Player(1), 0.01)
    call TriggerSleepAction(0.01)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func019001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Malganis, "TRIGSTR_038", gg_snd_H09MalGanis25, "TRIGSTR_081", bj_TIMETYPE_ADD, 0, false)
    call CameraSetupApplyForPlayer(true, gg_cam_Exit_Malganis_02, Player(1), GetSoundDurationBJ(GetLastPlayedSound()))
    call WaitForSoundBJ(gg_snd_H09MalGanis25, 1.00)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func023001() ) then
        return
    else
        call DoNothing()
    endif
    call SetSoundVolumeBJ(gg_snd_FrostmourneChant1, 35.00)
    call PlaySoundBJ(gg_snd_FrostmourneChant1)
    call WaitForSoundBJ(gg_snd_H09MalGanis25, 0.00)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func027001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.50, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.60)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func030001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_Exit_Arthas_01, Player(1), 0.01)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 0.50, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.25)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func035001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.15)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func037001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_EvilArthas, "TRIGSTR_082", gg_snd_H09Arthas26, "TRIGSTR_083", bj_TIMETYPE_ADD, 0, true)
    call TriggerSleepAction(0.50)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func040001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_Camera_026, Player(1), 0.01)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Malganis, "TRIGSTR_084", gg_snd_H09MalGanis27, "TRIGSTR_085", bj_TIMETYPE_ADD, 0, false)
    call SetUnitFacingToFaceLocTimed(udg_Malganis, GetRectCenter(gg_rct_ExitMalganisLookTo_1), 0)
    call SetUnitLookAt(udg_Malganis, "bone_head", udg_EvilArthas, 0, 0, 90)
    call WaitForSoundBJ(gg_snd_H09MalGanis27, 3.00)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func048001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitLifeBJ(udg_Malganis, 1.00)
    call IssueTargetOrderBJ(udg_EvilArthas, "attack", udg_Malganis)
    call VolumeGroupResetBJ()
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_Camera_028, Player(1), 0.01)
    call WaitForSoundBJ(gg_snd_H09MalGanis27, 0.00)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func058001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_EvilArthas, "TRIGSTR_073", gg_snd_H09Arthas28, "TRIGSTR_074", bj_TIMETYPE_ADD, 0, false)
    call WaitForSoundBJ(gg_snd_H09Arthas28, 0)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func061001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 100.00, 100.00, 100.00, 0)
    call EndThematicMusicBJ()
    call TriggerSleepAction(2.50)
    if ( Trig_ExitCinematicArthasMalganisTalk_Func066001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg_ExitArthasRuns)
endfunction

//===========================================================================
function InitTrig_ExitCinematicArthasMalganisTalk takes nothing returns nothing
    set gg_trg_ExitCinematicArthasMalganisTalk=CreateTrigger()
    call TriggerAddAction(gg_trg_ExitCinematicArthasMalganisTalk, function Trig_ExitCinematicArthasMalganisTalk_Actions)
endfunction

//===========================================================================
// Trigger: ExitArthasRuns
//===========================================================================
function Trig_ExitArthasRuns_Func009001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitArthasRuns_Func014001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitArthasRuns_Func021001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitArthasRuns_Func027001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitArthasRuns_Func032001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitArthasRuns_Actions takes nothing returns nothing
    call SetUnitPositionLoc(udg_EvilArthas, GetRectCenter(gg_rct_ExitArthaslPositionRunStart))
    call SetTerrainFogExBJ(0, 300.00, 1500.00, 0, 100, 100, 100)
    call RemoveWeatherEffectBJ(udg_WeatherSnow)
    call RemoveWeatherEffectBJ(udg_Blizzard)
    call AddWeatherEffectSaveLast(gg_rct_ExitCinematicWeather_Blizzard_Running, 'SNbs')
    set udg_WeatherSnow=GetLastCreatedWeatherEffect()
    call EnableWeatherEffect(udg_WeatherSnow, true)
    call TriggerSleepAction(0.01)
    if ( Trig_ExitArthasRuns_Func009001() ) then
        return
    else
        call DoNothing()
    endif
    call AddWeatherEffectSaveLast(gg_rct_ExitCinematicWeather_Blizzard_Running, 'WNcw')
    set udg_Blizzard=GetLastCreatedWeatherEffect()
    call EnableWeatherEffect(udg_Blizzard, true)
    call TriggerSleepAction(0.50)
    if ( Trig_ExitArthasRuns_Func014001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitMoveSpeed(udg_EvilArthas, 150.00)
    call IssuePointOrderLocBJ(udg_EvilArthas, "move", GetRectCenter(gg_rct_ExitArthasPositionRunTo))
    call TriggerSleepAction(0.50)
    if ( Trig_ExitArthasRuns_Func021001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 100.00, 100.00, 100.00, 0)
    call SetMusicVolumeBJ(100)
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\SadMystery.mp3")
    call CameraSetupApplyForPlayer(true, gg_cam_ExitArthasRun_1, Player(1), 0.01)
    call TriggerSleepAction(0.01)
    if ( Trig_ExitArthasRuns_Func027001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_ExitArthasRun_2, Player(1), 15.00)
    call SetUnitMoveSpeed(udg_EvilArthas, 150.00)
    call IssuePointOrderLocBJ(udg_EvilArthas, "move", GetRectCenter(gg_rct_ExitArthasPositionRunTo))
    call TriggerSleepAction(11.00)
    if ( Trig_ExitArthasRuns_Func032001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg_ExitCinematicEnd)
endfunction

//===========================================================================
function InitTrig_ExitArthasRuns takes nothing returns nothing
    set gg_trg_ExitArthasRuns=CreateTrigger()
    call TriggerAddAction(gg_trg_ExitArthasRuns, function Trig_ExitArthasRuns_Actions)
endfunction

//===========================================================================
// Trigger: ExitCinematicEnd
//===========================================================================
function Trig_ExitCinematicEnd_Func005001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicEnd_Func011001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_ExitCinematicEnd_Actions takes nothing returns nothing
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 4.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(4.20)
    call DisableTrigger(gg_trg_ExitCinematicEscape)
    call EnableTrigger(gg_trg_ExitCinematicEscapeNoFade)
    if ( Trig_ExitCinematicEnd_Func005001() ) then
        return
    else
        call DoNothing()
    endif
    call DisplayTimedTextToForce(GetPlayersAll(), 26.00, "TRIGSTR_063")
    call DisplayTimedTextToForce(GetPlayersAll(), 26.00, "TRIGSTR_210")
    call DisplayTimedTextToForce(GetPlayersAll(), 26.00, "TRIGSTR_211")
    call TriggerSleepAction(30.00)
    call EndThematicMusicBJ()
    if ( Trig_ExitCinematicEnd_Func011001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg_Level_Victory)
endfunction

//===========================================================================
function InitTrig_ExitCinematicEnd takes nothing returns nothing
    set gg_trg_ExitCinematicEnd=CreateTrigger()
    call TriggerAddAction(gg_trg_ExitCinematicEnd, function Trig_ExitCinematicEnd_Actions)
endfunction

//===========================================================================
// Trigger: ExitCinematicEscape
//===========================================================================
function Trig_ExitCinematicEscape_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_ExitCinematicEscape=true
    set udg_ExitCinematicRunning=false
    call StopSoundBJ(GetLastPlayedSound(), true)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 2.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(2.00)
    call TriggerExecute(gg_trg_Level_Victory)
endfunction

//===========================================================================
function InitTrig_ExitCinematicEscape takes nothing returns nothing
    set gg_trg_ExitCinematicEscape=CreateTrigger()
    call DisableTrigger(gg_trg_ExitCinematicEscape)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_ExitCinematicEscape, Player(1))
    call TriggerAddAction(gg_trg_ExitCinematicEscape, function Trig_ExitCinematicEscape_Actions)
endfunction

//===========================================================================
// Trigger: ExitCinematicEscapeNoFade
//===========================================================================
function Trig_ExitCinematicEscapeNoFade_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_ExitCinematicEscape=true
    set udg_ExitCinematicRunning=false
    call StopSoundBJ(GetLastPlayedSound(), true)
    call TriggerSleepAction(2)
    call TriggerExecute(gg_trg_Level_Victory)
endfunction

//===========================================================================
function InitTrig_ExitCinematicEscapeNoFade takes nothing returns nothing
    set gg_trg_ExitCinematicEscapeNoFade=CreateTrigger()
    call DisableTrigger(gg_trg_ExitCinematicEscapeNoFade)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_ExitCinematicEscapeNoFade, Player(1))
    call TriggerAddAction(gg_trg_ExitCinematicEscapeNoFade, function Trig_ExitCinematicEscapeNoFade_Actions)
endfunction

//===========================================================================
// Trigger: BuildingDefeat
//===========================================================================
function Trig_BuildingDefeat_Conditions takes nothing returns boolean
    if ( not ( GetPlayerStructureCount(Player(1), false) == 0 ) ) then
        return false
    endif
    if ( not ( udg_ExitCinematicRunning == false ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_BuildingDefeat_Actions takes nothing returns nothing
    set udg_GameOver=true
    call QueuedTriggerClearInactiveBJ()
    call DisableTrigger(gg_trg_MuradinDefeat)
    call DisableTrigger(gg_trg_ArthasDefeat)
    call DisableTrigger(gg_trg_Green_Base_Dead)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_MISSIONFAILED, "TRIGSTR_213")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call TriggerExecute(gg_trg_Level_Defeat)
endfunction

//===========================================================================
function InitTrig_BuildingDefeat takes nothing returns nothing
    set gg_trg_BuildingDefeat=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_BuildingDefeat, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_BuildingDefeat, Condition(function Trig_BuildingDefeat_Conditions))
    call TriggerAddAction(gg_trg_BuildingDefeat, function Trig_BuildingDefeat_Actions)
endfunction

//===========================================================================
// Trigger: ArthasDefeat
//===========================================================================
function Trig_ArthasDefeat_Conditions takes nothing returns boolean
    if ( not ( udg_HeroDefeatPossible == true ) ) then
        return false
    endif
    if ( not ( GetDyingUnit() == udg_Arthas ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_ArthasDefeat_Actions takes nothing returns nothing
    set udg_GameOver=true
    call QueuedTriggerClearInactiveBJ()
    call DisableTrigger(gg_trg_MuradinDefeat)
    call DisableTrigger(gg_trg_BuildingDefeat)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_MISSIONFAILED, "TRIGSTR_214")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call TriggerExecute(gg_trg_Level_Defeat)
endfunction

//===========================================================================
function InitTrig_ArthasDefeat takes nothing returns nothing
    set gg_trg_ArthasDefeat=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_ArthasDefeat, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_ArthasDefeat, Condition(function Trig_ArthasDefeat_Conditions))
    call TriggerAddAction(gg_trg_ArthasDefeat, function Trig_ArthasDefeat_Actions)
endfunction

//===========================================================================
// Trigger: MuradinDefeat
//===========================================================================
function Trig_MuradinDefeat_Conditions takes nothing returns boolean
    if ( not ( udg_HeroDefeatPossible == true ) ) then
        return false
    endif
    if ( not ( GetDyingUnit() == udg_Muradin ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_MuradinDefeat_Actions takes nothing returns nothing
    set udg_GameOver=true
    call QueuedTriggerClearInactiveBJ()
    call DisableTrigger(gg_trg_ArthasDefeat)
    call DisableTrigger(gg_trg_BuildingDefeat)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_MISSIONFAILED, "TRIGSTR_215")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call TriggerExecute(gg_trg_Level_Defeat)
endfunction

//===========================================================================
function InitTrig_MuradinDefeat takes nothing returns nothing
    set gg_trg_MuradinDefeat=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_MuradinDefeat, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_MuradinDefeat, Condition(function Trig_MuradinDefeat_Conditions))
    call TriggerAddAction(gg_trg_MuradinDefeat, function Trig_MuradinDefeat_Actions)
endfunction

//===========================================================================
// Trigger: Green Base Dead
//===========================================================================
function Trig_Green_Base_Dead_Func005001001002001001 takes nothing returns boolean
    return ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == true )
endfunction

function Trig_Green_Base_Dead_Func005001001002001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetFilterUnit()) != 'uzg1' )
endfunction

function Trig_Green_Base_Dead_Func005001001002001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Green_Base_Dead_Func005001001002001001(), Trig_Green_Base_Dead_Func005001001002001002())
endfunction

function Trig_Green_Base_Dead_Func005001001002002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetFilterUnit()) != 'uzig' )
endfunction

function Trig_Green_Base_Dead_Func005001001002002002 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Green_Base_Dead_Func005001001002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Green_Base_Dead_Func005001001002002001(), Trig_Green_Base_Dead_Func005001001002002002())
endfunction

function Trig_Green_Base_Dead_Func005001001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Green_Base_Dead_Func005001001002001(), Trig_Green_Base_Dead_Func005001001002002())
endfunction

function Trig_Green_Base_Dead_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    if ( not ( IsQuestDiscovered(udg_QuestMalganis) == true ) ) then
        return false
    endif
    if ( not ( IsUnitDeadBJ(udg_Malganis) == true ) ) then
        return false
    endif
    if ( not ( CountUnitsInGroup(GetUnitsOfPlayerMatching(Player(6), Condition(function Trig_Green_Base_Dead_Func005001001002))) == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Green_Base_Dead_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_BuildingDefeat)
    call QueuedTriggerClearInactiveBJ()
    call TriggerExecute(gg_trg_TriggerExitCinematic)
endfunction

//===========================================================================
function InitTrig_Green_Base_Dead takes nothing returns nothing
    set gg_trg_Green_Base_Dead=CreateTrigger()
    call DisableTrigger(gg_trg_Green_Base_Dead)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Green_Base_Dead, 2.00)
    call TriggerAddCondition(gg_trg_Green_Base_Dead, Condition(function Trig_Green_Base_Dead_Conditions))
    call TriggerAddAction(gg_trg_Green_Base_Dead, function Trig_Green_Base_Dead_Actions)
endfunction

//===========================================================================
// Trigger: Level Enabling
//===========================================================================
function Trig_Level_Enabling_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_Level_Enabling takes nothing returns nothing
    set gg_trg_Level_Enabling=CreateTrigger()
    call TriggerAddAction(gg_trg_Level_Enabling, function Trig_Level_Enabling_Actions)
endfunction

//===========================================================================
// Trigger: Level Victory
//===========================================================================
function Trig_Level_Victory_Actions takes nothing returns nothing
    call status_check_location(0)
    call CustomVictoryBJ(Player(1), false, true)
endfunction

//===========================================================================
function InitTrig_Level_Victory takes nothing returns nothing
    set gg_trg_Level_Victory=CreateTrigger()
    call TriggerAddAction(gg_trg_Level_Victory, function Trig_Level_Victory_Actions)
endfunction

//===========================================================================
// Trigger: Level Defeat
//===========================================================================
function Trig_Level_Defeat_Actions takes nothing returns nothing
    call CustomDefeatBJ(Player(1), "TRIGSTR_000")
endfunction

//===========================================================================
function InitTrig_Level_Defeat takes nothing returns nothing
    set gg_trg_Level_Defeat=CreateTrigger()
    call TriggerAddAction(gg_trg_Level_Defeat, function Trig_Level_Defeat_Actions)
endfunction

//===========================================================================
// Trigger: Victory Cheat
//===========================================================================
function Trig_Victory_Cheat_Actions takes nothing returns nothing
    call TriggerExecute(gg_trg_Level_Enabling)
    call TriggerExecute(gg_trg_Level_Victory)
endfunction

//===========================================================================
function InitTrig_Victory_Cheat takes nothing returns nothing
    set gg_trg_Victory_Cheat=CreateTrigger()
    call TriggerRegisterPlayerEventVictory(gg_trg_Victory_Cheat, Player(1))
    call TriggerAddAction(gg_trg_Victory_Cheat, function Trig_Victory_Cheat_Actions)
endfunction

//===========================================================================
// Trigger: Defeat Cheat
//===========================================================================
function Trig_Defeat_Cheat_Actions takes nothing returns nothing
    call TriggerExecute(gg_trg_Level_Defeat)
endfunction

//===========================================================================
function InitTrig_Defeat_Cheat takes nothing returns nothing
    set gg_trg_Defeat_Cheat=CreateTrigger()
    call TriggerRegisterPlayerEventDefeat(gg_trg_Defeat_Cheat, Player(1))
    call TriggerAddAction(gg_trg_Defeat_Cheat, function Trig_Defeat_Cheat_Actions)
endfunction

//===========================================================================
// Trigger: Purple Base Location
//===========================================================================
function Trig_Purple_Base_Location_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call status_check_location(23)
endfunction

//===========================================================================
function InitTrig_Purple_Base_Location takes nothing returns nothing
    set gg_trg_Purple_Base_Location=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Purple_Base_Location, gg_unit_unp2_0051, EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Purple_Base_Location, function Trig_Purple_Base_Location_Actions)
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_fileio()
    call InitTrig_map_config()
    call InitTrig_status()
    call InitTrig_heroes()
    call InitTrig_item_locations()
    call InitTrig_debug()
    call InitTrig_zoom()
    call InitTrig_irregulars()
    call InitTrig_AP_mercenaries()
    call InitTrig_AP_Load_Arthas()
    call InitTrig_AP_Load_Muradin()
    call InitTrig_Shop_Locations()
    call InitTrig_MalGanis_Location()
    call InitTrig_StartInitializationSequence()
    call InitTrig_Initialize_Variables()
    call InitTrig_Initial_Resources()
    call InitTrig_Initial_Weather()
    call InitTrig_Initial_Alliances()
    call InitTrig_Initial_ValleyPrep()
    call InitTrig_Initial_IntroWavePrep()
    call InitTrig_Initial_ValleyGroup()
    call InitTrig_Initial_Quests()
    call InitTrig_Initial_AI()
    call InitTrig_Initial_Music()
    call InitTrig_Setup_Scorescreen()
    call InitTrig_Initial_Heroes()
    call InitTrig_Arthas_Leans_a_Skill()
    call InitTrig_RecreateArthasSkills()
    call InitTrig_Easy()
    call InitTrig_Normal()
    call InitTrig_Hard()
    call InitTrig_Gryphon()
    call InitTrig_GryphonMessage()
    call InitTrig_PurpleGold()
    call InitTrig_PurpleLumber()
    call InitTrig_GreenGold()
    call InitTrig_GreenLumber()
    call InitTrig_GiveAnkh()
    call InitTrig_DestroyMalganisItems()
    call InitTrig_ItemFailsafeDetect()
    call InitTrig_ItemFailsafeReplace()
    call InitTrig_TriggerIntroCinematic()
    call InitTrig_IntroEnvironment()
    call InitTrig_IntroCinematicMode()
    call InitTrig_IntroActorSetup()
    call InitTrig_IntroKnightARespond()
    call InitTrig_IntroKnightBRespond()
    call InitTrig_IntroInitialCamera()
    call InitTrig_IntroMuradinAsksArthas()
    call InitTrig_IntroUndeadApproach()
    call InitTrig_IntroBaseReorients()
    call InitTrig_IntroArthasDecides()
    call InitTrig_IntroArthasTalksToCaptain()
    call InitTrig_IntroEscortFollowsArthas()
    call InitTrig_IntroArthasReachesWaygate()
    call InitTrig_IntroMuradinReachesWaygate()
    call InitTrig_IntroLastDwarfReachesWaygate()
    call InitTrig_IntroCinematicEnd()
    call InitTrig_IntroCinematicEscape()
    call InitTrig_InitialAttackTimerExpires()
    call InitTrig_FirstWolves()
    call InitTrig_WolfSpotted()
    call InitTrig_WolfTurnsAround()
    call InitTrig_WolvesAttack()
    call InitTrig_TriggerGraveyardAttack()
    call InitTrig_SpawnGhosts()
    call InitTrig_LoopGhostTransparency()
    call InitTrig_SpawnSkeletal_Archers()
    call InitTrig_GuardianEncounter()
    call InitTrig_GuardianDies()
    call InitTrig_TriggerFrostmourneCinematic()
    call InitTrig_FrostmourneCinematicSetup()
    call InitTrig_FrostmourneActorSetup()
    call InitTrig_FrostmourneApproach()
    call InitTrig_FrostmourneMuradinHit()
    call InitTrig_FrostmourneCinematicEnd()
    call InitTrig_FrostmourneEndCaptainFailsafe()
    call InitTrig_FrostmourneArthasTeleports()
    call InitTrig_Arthas_Channel()
    call InitTrig_FrostmourneCinematicEscapeGood()
    call InitTrig_FrostmourneCinematicEscapeEvil()
    call InitTrig_TriggerExitCinematic()
    call InitTrig_ExitCinematicSetup()
    call InitTrig_ExitCinematicActorSetup()
    call InitTrig_ExitCinematicArthasMalganisTalk()
    call InitTrig_ExitArthasRuns()
    call InitTrig_ExitCinematicEnd()
    call InitTrig_ExitCinematicEscape()
    call InitTrig_ExitCinematicEscapeNoFade()
    call InitTrig_BuildingDefeat()
    call InitTrig_ArthasDefeat()
    call InitTrig_MuradinDefeat()
    call InitTrig_Green_Base_Dead()
    call InitTrig_Level_Enabling()
    call InitTrig_Level_Victory()
    call InitTrig_Level_Defeat()
    call InitTrig_Victory_Cheat()
    call InitTrig_Defeat_Cheat()
    call InitTrig_Purple_Base_Location()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Shop_Locations)
    call ConditionalTriggerExecute(gg_trg_StartInitializationSequence)
    call ConditionalTriggerExecute(gg_trg_Easy)
    call ConditionalTriggerExecute(gg_trg_Normal)
    call ConditionalTriggerExecute(gg_trg_Hard)
endfunction

//***************************************************************************
//*
//*  TechTree
//*
//***************************************************************************

function InitTechTree_Player1 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(1), 'Hamg', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hpal', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hmkg', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hblm', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Oshd', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Ucrl', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Ewar', 0)
endfunction

function InitTechTree_Player2 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(2), 'Hblm', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Oshd', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Ucrl', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Ewar', 0)
endfunction

function InitTechTree_Player3 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(3), 'Hblm', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Oshd', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Ucrl', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Ewar', 0)
endfunction

function InitTechTree takes nothing returns nothing
    call InitTechTree_Player1()
    call InitTechTree_Player2()
    call InitTechTree_Player3()
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 1
    call SetPlayerStartLocation(Player(1), 0)
    call ForcePlayerStartLocation(Player(1), 0)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)

    // Player 2
    call SetPlayerStartLocation(Player(2), 1)
    call ForcePlayerStartLocation(Player(2), 1)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_COMPUTER)

    // Player 3
    call SetPlayerStartLocation(Player(3), 2)
    call ForcePlayerStartLocation(Player(3), 2)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_COMPUTER)

    // Player 4
    call SetPlayerStartLocation(Player(4), 3)
    call ForcePlayerStartLocation(Player(4), 3)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(4), false)
    call SetPlayerController(Player(4), MAP_CONTROL_COMPUTER)

    // Player 6
    call SetPlayerStartLocation(Player(6), 4)
    call ForcePlayerStartLocation(Player(6), 4)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(6), false)
    call SetPlayerController(Player(6), MAP_CONTROL_COMPUTER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_216
    call SetPlayerTeam(Player(1), 0)

    // Force: TRIGSTR_217
    call SetPlayerTeam(Player(2), 1)
    call SetPlayerTeam(Player(3), 1)
    call SetPlayerTeam(Player(4), 1)
    call SetPlayerTeam(Player(6), 1)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(4), true)

endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 7680.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 11264.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 11264.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 7680.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("NorthrendDay")
    call SetAmbientNightSound("NorthrendNight")
    call SetMapMusic("Music", true, 0)
    call InitSounds()
    call CreateRegions()
    call CreateCameras()
    call InitTechTree()
    call CreateAllUnits()
    call InitBlizzard()


    call InitGlobals()
    call InitCustomTriggers()
    call RunInitializationTriggers()

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_004")
    call SetMapDescription("TRIGSTR_006")
    call SetPlayers(5)
    call SetTeams(5)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)

    call DefineStartLocation(0, - 2880.0, - 6208.0)
    call DefineStartLocation(1, - 1408.0, 1088.0)
    call DefineStartLocation(2, 6144.0, - 5120.0)
    call DefineStartLocation(3, - 1664.0, - 896.0)
    call DefineStartLocation(4, 4544.0, 5376.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
endfunction




//Struct method generated initializers/callers:

