globals
    // User-defined
unit udg_Arthas= null
unit udg_Muradin= null
fogmodifier udg_Vis1= null
fogmodifier udg_Vis2= null
boolean udg_IntroCinematicRunning= false
boolean udg_IntroCinematicEscape= false
boolean udg_DEBUGIntroSkipped= false
boolean udg_MuradinCinematicEscape= false
boolean udg_MuradinCinematicRunning= false
boolean udg_AquaDead= false
boolean udg_OrangeDead= false
boolean udg_ExitCinematicRunning= false
boolean udg_ExitCinematicEscape= false
boolean udg_ArthasDefeatActive= false
boolean udg_BuildingDefeatActive= false
fogmodifier udg_Vis3= null
fogmodifier udg_Vis4= null
unit udg_ExitKnight= null
unit udg_Captain= null
quest udg_QuestTownHall= null
quest udg_QuestMuradinMen= null
quest udg_QuestUndeadCitadel= null
boolean udg_PeonsPatrolling= false
fogmodifier udg_MainUndeadBaseVis= null
player udg_PlayerMalganis= null
player udg_PlayerCryptFiend= null
boolean udg_CrateDead= false
group udg_ArthasGroup= null
unit udg_NerubianSeer= null
timer udg_TimerGyroRepairHint= null
questitem udg_QuestReqDestroyMalGanis= null
questitem udg_QuestReqArthas= null
questitem udg_QuestReqFindGold= null
questitem udg_QuestReqRescueDwarves= null
fogmodifier udg_VisibilityDwarf01= null
fogmodifier udg_VisibilityDwarf02= null
timer udg_TimerGyroAcquired= null
group udg_UnitGroupSelection= null
boolean udg_GameOver= false

    // Generated
rect gg_rct_ArthasIntroTurn= null
rect gg_rct_ArthasIntroTurn02= null
rect gg_rct_BeginMuradinIntro= null
rect gg_rct_CaptiveDwarfPeasantsReharvest= null
rect gg_rct_CaptiveDwarves= null
rect gg_rct_DifficultyNerubianQueen= null
rect gg_rct_ExitArthasFacing= null
rect gg_rct_ExitArthasLooking= null
rect gg_rct_ExitBuildingFailsafe= null
rect gg_rct_ExitKnightOffScreen= null
rect gg_rct_ExitKnightToArthas= null
rect gg_rct_ExitMoveUnitArea= null
rect gg_rct_ExitMuradinFacing= null
rect gg_rct_ExitMuradinPosition= null
rect gg_rct_IceTrollHut= null
rect gg_rct_IceTrollPatrol01= null
rect gg_rct_IceTrollPatrol02= null
rect gg_rct_IntroArthasInitial= null
rect gg_rct_IntroArthasInitialFacing= null
rect gg_rct_IntroArthasMovementTarget= null
rect gg_rct_IntroCaptainMovementTarget= null
rect gg_rct_IntroPeonAPatrolReturn= null
rect gg_rct_IntroPeonAPatrolShore= null
rect gg_rct_IntroPeonBPatrolReturn= null
rect gg_rct_IntroPeonBPatrolShore= null
rect gg_rct_MainUndeadBase= null
rect gg_rct_MuradinArthasOffScreen= null
rect gg_rct_MuradinArthasToMuradin= null
rect gg_rct_MuradinBuildFarm01= null
rect gg_rct_MuradinBuildFarm02= null
rect gg_rct_MuradinBuildTownHall= null
rect gg_rct_MuradinIntro_ArthasMove= null
rect gg_rct_MuradinIntro_CaptainMove= null
rect gg_rct_MuradinIntro_CaptainMoveAfter= null
rect gg_rct_MuradinIntro_Footman01Move= null
rect gg_rct_MuradinIntro_Footman01MoveAfter= null
rect gg_rct_MuradinIntro_Footman02Move= null
rect gg_rct_MuradinIntro_Footman02MoveAfter= null
rect gg_rct_MuradinIntro_Footman03Move= null
rect gg_rct_MuradinIntro_Footman03MoveAfter= null
rect gg_rct_MuradinIntro_Peon01Move= null
rect gg_rct_MuradinIntro_Peon02Move= null
rect gg_rct_MuradinIntro_Peon03Move= null
rect gg_rct_MuradinIntro_PriestMove= null
rect gg_rct_MuradinIntro_PriestMoveAfter= null
rect gg_rct_MuradinIntroVisibility= null
rect gg_rct_MuradinPeon01Attacked= null
rect gg_rct_MuradinPeon01Corner= null
rect gg_rct_MuradinPeon01Goes= null
rect gg_rct_MuradinPeon01Retreat= null
rect gg_rct_MuradinPeon02Attacked= null
rect gg_rct_MuradinPeon02Corner= null
rect gg_rct_MuradinPeon02Goes= null
rect gg_rct_MuradinPeon02Retreat= null
rect gg_rct_MuradinPeon03Attacked= null
rect gg_rct_MuradinPeon03Corner= null
rect gg_rct_MuradinPeon03Goes= null
rect gg_rct_MuradinPeon03Retreat= null
rect gg_rct_MuradinToArthas= null
rect gg_rct_Ocean01= null
rect gg_rct_Ocean02= null
rect gg_rct_Ocean03= null
rect gg_rct_OrangeGreyFailsafe= null
rect gg_rct_PeonHammering= null
rect gg_rct_SpawnCryptFiend= null
rect gg_rct_SpawnGhouls= null
rect gg_rct_SpiderlingPatrol= null
rect gg_rct_TeleportArthas= null
rect gg_rct_TeleportCaptain= null
rect gg_rct_TeleportFootman01= null
rect gg_rct_TeleportFootman02= null
rect gg_rct_TeleportFootman03= null
rect gg_rct_TeleportPeon01= null
rect gg_rct_TeleportPeon02= null
rect gg_rct_TeleportPeon03= null
rect gg_rct_TeleportPriest= null
rect gg_rct_TriggerDwarvesFound= null
rect gg_rct_VisibilityDwarves01= null
rect gg_rct_VisibilityDwarves02= null
rect gg_rct_WhiteWolfPatrol= null
rect gg_rct_WhiteWolfPatrolBegin= null
rect gg_rct_IceTroll138PatrolBegin= null
rect gg_rct_IceTroll140PatrolBegin= null
rect gg_rct_SpiderlingPatrolBegin= null
camerasetup gg_cam_ExitArthasCloseup= null
camerasetup gg_cam_ExitArthasMuradinTalk= null
camerasetup gg_cam_IntroArthasAfterMove= null
camerasetup gg_cam_IntroArthasCloseup= null
camerasetup gg_cam_IntroCameraSweepTo= null
camerasetup gg_cam_IntroCaptainCloseup= null
camerasetup gg_cam_IntroInitialCamera= null
camerasetup gg_cam_MuradinGoldMineView= null
camerasetup gg_cam_MuradinInitialCamera= null
camerasetup gg_cam_MuradinTownIntro= null
camerasetup gg_cam_MuradinViewCaptiveDwarves= null
camerasetup gg_cam_MuradinAttacks= null
camerasetup gg_cam_MuradinFinalPeonMovementCamera= null
camerasetup gg_cam_MuradinConversationCloseup= null
camerasetup gg_cam_MuradinFinal= null
camerasetup gg_cam_IntroFinal= null
camerasetup gg_cam_IntroInitialCamera2= null
sound gg_snd_H07Arthas02= null
sound gg_snd_H07Arthas04= null
sound gg_snd_H07Arthas06= null
sound gg_snd_H07Arthas07= null
sound gg_snd_H07Arthas08= null
sound gg_snd_H07Arthas10= null
sound gg_snd_H07Arthas12= null
sound gg_snd_H07Arthas14= null
sound gg_snd_H07Arthas16= null
sound gg_snd_H07Arthas19= null
sound gg_snd_H07Arthas20= null
sound gg_snd_H07Arthas26= null
sound gg_snd_H07Arthas28= null
sound gg_snd_H07Captain01= null
sound gg_snd_H07Captain03= null
sound gg_snd_H07Knight27= null
sound gg_snd_H07Knight29= null
sound gg_snd_H07Muradin09= null
sound gg_snd_H07Muradin13= null
sound gg_snd_H07Muradin15= null
sound gg_snd_H07Muradin18= null
sound gg_snd_H07Muradin21= null
sound gg_snd_H07Muradin22= null
sound gg_snd_PeasantYes2= null
sound gg_snd_Hint= null
sound gg_snd_QuestCompleted= null
sound gg_snd_QuestFailed= null
sound gg_snd_QuestLog= null
sound gg_snd_QuestNew= null
sound gg_snd_WaterWavesLoop1= null
trigger gg_trg_fileio= null
trigger gg_trg_map_config= null
trigger gg_trg_status= null
trigger gg_trg_heroes= null
trigger gg_trg_item_locations= null
trigger gg_trg_debug= null
trigger gg_trg_zoom= null
trigger gg_trg_irregulars= null
trigger gg_trg_StartInitializationSequence= null
trigger gg_trg_InitializeVariables= null
trigger gg_trg_ChangePeonOwner= null
trigger gg_trg_StartingResources= null
trigger gg_trg_StartingAlliances= null
trigger gg_trg_StartingTOD= null
trigger gg_trg_StartingQuest= null
trigger gg_trg_StartAI= null
trigger gg_trg_StartMusic= null
trigger gg_trg_Setup_Scorescreen= null
trigger gg_trg_InitialCreepPatrols= null
trigger gg_trg_RestartCreepPatrols= null
trigger gg_trg_GreyGold= null
trigger gg_trg_GreyLumber= null
trigger gg_trg_GreenGold= null
trigger gg_trg_GreenLumber= null
trigger gg_trg_PurpleGold= null
trigger gg_trg_PurpleLumber= null
trigger gg_trg_Easy= null
trigger gg_trg_Normal= null
trigger gg_trg_NerubianSeerDeath= null
trigger gg_trg_Load_Heroes= null
trigger gg_trg_Load_Arthas= null
trigger gg_trg_SetArthasLevelsSkills= null
trigger gg_trg_SetMuradinLichLevelsSkills= null
trigger gg_trg_LimitArthasXP= null
trigger gg_trg_LimitMuradinXP= null
trigger gg_trg_TriggerIntroCinematic= null
trigger gg_trg_CinematicMode= null
trigger gg_trg_IntroInitialCamera= null
trigger gg_trg_BeginPeonMovement= null
trigger gg_trg_BeginPeonAttack= null
trigger gg_trg_PeonAReturn= null
trigger gg_trg_PeonAShore= null
trigger gg_trg_PeonBReturn= null
trigger gg_trg_PeonBShore= null
trigger gg_trg_IntroCharactersTalk= null
trigger gg_trg_ArthasSetsOff= null
trigger gg_trg_CinematicEnd= null
trigger gg_trg_IntroCinematicEscape= null
trigger gg_trg_DetectCrateDeath= null
trigger gg_trg_Ice_Troll_Attacks= null
trigger gg_trg_Ice_Troll_Message= null
trigger gg_trg_HutDies= null
trigger gg_trg_Gyrocopter= null
trigger gg_trg_GyrocopterMessage= null
trigger gg_trg_GyroRepair= null
trigger gg_trg_GyroRepairMessage= null
trigger gg_trg_SteamTank= null
trigger gg_trg_SteamTankMessage= null
trigger gg_trg_TriggerMuradinIntroCinematic= null
trigger gg_trg_PlayMuradinIntroCinematic= null
trigger gg_trg_Muradin_DwarfVisibilityMods= null
trigger gg_trg_Muradin_InitialCamera= null
trigger gg_trg_Muradin_CinematicMode= null
trigger gg_trg_Muradin_PositionActors= null
trigger gg_trg_Muradin_ResetPeons= null
trigger gg_trg_Muradin_FindGoldMine= null
trigger gg_trg_Muradin_KeepPeasantAlive= null
trigger gg_trg_Muradin_End= null
trigger gg_trg_Muradin_CinematicEscape= null
trigger gg_trg_KillOrangeTroopsLeaving= null
trigger gg_trg_MoveGreyBack= null
trigger gg_trg_Dwarves_Spotted= null
trigger gg_trg_Dwarves_Spotted_Message= null
trigger gg_trg_RescueDwarves= null
trigger gg_trg_Rescue_Dwarves_Message= null
trigger gg_trg_PlayerEntersBase= null
trigger gg_trg_PlayerEntersBaseMessage= null
trigger gg_trg_PlayerAttackedByBase= null
trigger gg_trg_PlayerAttackedByBaseMessage= null
trigger gg_trg_TriggerExitCinematic= null
trigger gg_trg_PlayExitCinematic= null
trigger gg_trg_Exit_CinematicModeOn= null
trigger gg_trg_Exit_InitialCamera= null
trigger gg_trg_Exit_Position_Actors= null
trigger gg_trg_Exit_KnightTalks= null
trigger gg_trg_ExitCinematicEscape= null
trigger gg_trg_Level_Enable= null
trigger gg_trg_Level_Victory= null
trigger gg_trg_Level_Defeat= null
trigger gg_trg_CheckGreenBuildings= null
trigger gg_trg_EarlyArthasDies= null
trigger gg_trg_ChangeDefeatConditions= null
trigger gg_trg_CheckPlayerBuildings= null
trigger gg_trg_Victory_Cheat= null
trigger gg_trg_Defeat_Cheat= null
trigger gg_trg_DEBUGToMuradinCinematic= null
unit gg_unit_hpea_0089= null
unit gg_unit_ngol_0004= null
unit gg_unit_hgtw_0005= null
unit gg_unit_nwwf_0122= null
unit gg_unit_nitr_0118= null
unit gg_unit_hpea_0088= null
unit gg_unit_hpea_0087= null
unit gg_unit_nitr_0138= null
unit gg_unit_usep_0049= null
unit gg_unit_nth0_0076= null
unit gg_unit_nitr_0140= null
unit gg_unit_nnwq_0090= null
unit gg_unit_hmpr_0019= null
unit gg_unit_hfoo_0020= null
unit gg_unit_hfoo_0022= null
unit gg_unit_nwwf_0106= null
unit gg_unit_hfoo_0110= null
unit gg_unit_nspd_0139= null
unit gg_unit_nitr_0116= null
unit gg_unit_Ulic_0100= null
unit gg_unit_ngol_0095= null
unit gg_unit_nitr_0117= null
unit gg_unit_hcth_0023= null
unit gg_unit_Hmbr_0038= null
unit gg_unit_hrif_0039= null
unit gg_unit_hrif_0044= null
destructable gg_dest_LTcr_0274= null
string array p_original_names
string array io_lines
constant integer NUM_FILE_LINES= 10
string last_filename= ""
constant integer MISSION_ID= 107
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
constant integer HERO_ID_SYLVANAS= 10
constant integer HERO_ID_VARIMATHRAS= 11
constant integer HERO_ID_ANUB_ARAK= 12
constant integer HERO_ID_TYRANDE= 13
constant integer HERO_ID_FURION= 14
constant integer HERO_ID_ILLIDAN= 15
constant integer HERO_ID_TYRANDE_TFT= 16
constant integer HERO_ID_MALFURION= 17
constant integer HERO_ID_MAIEV= 18
constant integer HERO_ID_KAEL_THAS= 19
constant integer HERO_ID_DEMON_ILLIDAN= 20
constant integer HERO_ID_LADY_VASHJ= 21
constant integer HERO_ID_AKAMA= 22
constant integer HERO_ID_LORD_GARITHOS= 23
constant string COMM_VERSION= "1.0"
constant integer MAX_UPDATE_ID= 100000
integer error_state= 0
integer world_id= - 1
integer last_unlock_packet= - 1
integer last_location_packet= - 1
integer last_message_packet= - 1
integer last_hero_packet= - 1
integer last_item_packet= - 1
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


//JASSHelper struct globals:

endglobals


//===========================================================================
// 
// Human07
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Thu Nov 13 23:14:27 2025
//   Map Author: Blizzard Entertainment
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    set udg_IntroCinematicRunning=false
    set udg_IntroCinematicEscape=false
    set udg_DEBUGIntroSkipped=false
    set udg_MuradinCinematicEscape=false
    set udg_MuradinCinematicRunning=false
    set udg_AquaDead=false
    set udg_OrangeDead=false
    set udg_ExitCinematicRunning=false
    set udg_ExitCinematicEscape=false
    set udg_ArthasDefeatActive=true
    set udg_BuildingDefeatActive=false
    set udg_PeonsPatrolling=true
    set udg_PlayerMalganis=Player(6)
    set udg_PlayerCryptFiend=Player(3)
    set udg_CrateDead=false
    set udg_ArthasGroup=CreateGroup()
    set udg_TimerGyroRepairHint=CreateTimer()
    set udg_TimerGyroAcquired=CreateTimer()
    set udg_UnitGroupSelection=CreateGroup()
    set udg_GameOver=false
endfunction

//***************************************************************************
//*
//*  Unit Item Tables
//*
//***************************************************************************

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
        call RandomDistAddItem('ofro', 100)
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

function Unit000085_DropItems takes nothing returns nothing
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
        call RandomDistAddItem('manh', 100)
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

function Unit000086_DropItems takes nothing returns nothing
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
        call RandomDistAddItem('pghe', 100)
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

function Unit000111_DropItems takes nothing returns nothing
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
        call RandomDistAddItem('rst1', 100)
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

function Unit000119_DropItems takes nothing returns nothing
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
        call RandomDistAddItem('sror', 100)
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
    set gg_snd_H07Arthas02=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas02.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas02, "H07Arthas02")
    call SetSoundDuration(gg_snd_H07Arthas02, 2925)
    set gg_snd_H07Arthas04=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas04.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas04, "H07Arthas04")
    call SetSoundDuration(gg_snd_H07Arthas04, 8489)
    set gg_snd_H07Arthas06=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas06.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas06, "H07Arthas06")
    call SetSoundDuration(gg_snd_H07Arthas06, 1175)
    set gg_snd_H07Arthas07=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas07.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas07, "H07Arthas07")
    call SetSoundDuration(gg_snd_H07Arthas07, 3604)
    set gg_snd_H07Arthas08=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas08.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas08, "H07Arthas08")
    call SetSoundDuration(gg_snd_H07Arthas08, 1828)
    set gg_snd_H07Arthas10=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas10.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas10, "H07Arthas10")
    call SetSoundDuration(gg_snd_H07Arthas10, 3709)
    set gg_snd_H07Arthas12=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas12.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas12, "H07Arthas12")
    call SetSoundDuration(gg_snd_H07Arthas12, 3892)
    set gg_snd_H07Arthas14=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas14.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas14, "H07Arthas14")
    call SetSoundDuration(gg_snd_H07Arthas14, 4153)
    set gg_snd_H07Arthas16=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas16.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas16, "H07Arthas16")
    call SetSoundDuration(gg_snd_H07Arthas16, 2795)
    set gg_snd_H07Arthas19=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas19.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas19, "H07Arthas19")
    call SetSoundDuration(gg_snd_H07Arthas19, 2638)
    set gg_snd_H07Arthas20=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas20.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas20, "H07Arthas20")
    call SetSoundDuration(gg_snd_H07Arthas20, 3291)
    set gg_snd_H07Arthas26=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas26.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas26, "H07Arthas26")
    call SetSoundDuration(gg_snd_H07Arthas26, 3787)
    set gg_snd_H07Arthas28=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Arthas28.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Arthas28, "H07Arthas28")
    call SetSoundDuration(gg_snd_H07Arthas28, 7758)
    set gg_snd_H07Captain01=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Captain01.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Captain01, "H07Captain01")
    call SetSoundDuration(gg_snd_H07Captain01, 11363)
    set gg_snd_H07Captain03=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Captain03.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Captain03, "H07Captain03")
    call SetSoundDuration(gg_snd_H07Captain03, 3970)
    set gg_snd_H07Knight27=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Knight27.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Knight27, "H07Knight27")
    call SetSoundDuration(gg_snd_H07Knight27, 3892)
    set gg_snd_H07Knight29=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Knight29.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Knight29, "H07Knight29")
    call SetSoundDuration(gg_snd_H07Knight29, 1253)
    set gg_snd_H07Muradin09=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Muradin09.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Muradin09, "H07Muradin09")
    call SetSoundDuration(gg_snd_H07Muradin09, 4963)
    set gg_snd_H07Muradin13=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Muradin13.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Muradin13, "H07Muradin13")
    call SetSoundDuration(gg_snd_H07Muradin13, 5146)
    set gg_snd_H07Muradin15=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Muradin15.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Muradin15, "H07Muradin15")
    call SetSoundDuration(gg_snd_H07Muradin15, 9221)
    set gg_snd_H07Muradin18=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Muradin18.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Muradin18, "H07Muradin18")
    call SetSoundDuration(gg_snd_H07Muradin18, 3578)
    set gg_snd_H07Muradin21=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Muradin21.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Muradin21, "H07Muradin21")
    call SetSoundDuration(gg_snd_H07Muradin21, 11964)
    set gg_snd_H07Muradin22=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human07\\H07Muradin22.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H07Muradin22, "H07Muradin22")
    call SetSoundDuration(gg_snd_H07Muradin22, 8751)
    set gg_snd_PeasantYes2=CreateSound("Units\\Human\\Peasant\\PeasantYes2.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_PeasantYes2, "PeasantYes")
    call SetSoundDuration(gg_snd_PeasantYes2, 963)
    set gg_snd_Hint=CreateSound("Sound\\Interface\\Hint.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_Hint, "Hint")
    call SetSoundDuration(gg_snd_Hint, 2005)
    set gg_snd_QuestCompleted=CreateSound("Sound\\Interface\\QuestCompleted.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_QuestCompleted, "QuestCompleted")
    call SetSoundDuration(gg_snd_QuestCompleted, 5154)
    set gg_snd_QuestFailed=CreateSound("Sound\\Interface\\QuestFailed.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_QuestFailed, "QuestFailed")
    call SetSoundDuration(gg_snd_QuestFailed, 4690)
    set gg_snd_QuestLog=CreateSound("Sound\\Interface\\QuestLog.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_QuestLog, "QuestUpdate")
    call SetSoundDuration(gg_snd_QuestLog, 2275)
    set gg_snd_QuestNew=CreateSound("Sound\\Interface\\QuestNew.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_QuestNew, "QuestNew")
    call SetSoundDuration(gg_snd_QuestNew, 3750)
    set gg_snd_WaterWavesLoop1=CreateSound("Sound\\Ambient\\DoodadEffects\\WaterWavesLoop1.wav", true, true, true, 10, 10, "DoodadsEAX")
    call SetSoundParamsFromLabel(gg_snd_WaterWavesLoop1, "WavesLoop")
    call SetSoundDuration(gg_snd_WaterWavesLoop1, 7445)
endfunction

//***************************************************************************
//*
//*  Destructable Objects
//*
//***************************************************************************

function CreateAllDestructables takes nothing returns nothing
    local destructable d
    local trigger t
    local real life
    set gg_dest_LTcr_0274=CreateDestructable('LTcr', - 4032.0, - 5440.0, 0.000, 1.152, 1)
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_hmpr_0019=CreateUnit(p, 'hmpr', - 3795.1, - 5233.1, 252.739)
    set gg_unit_hfoo_0020=CreateUnit(p, 'hfoo', - 3791.3, - 5364.9, 264.864)
    set gg_unit_hfoo_0022=CreateUnit(p, 'hfoo', - 3665.5, - 5374.5, 265.225)
    set gg_unit_hcth_0023=CreateUnit(p, 'hcth', - 3620.5, - 5559.2, 250.429)
    set gg_unit_hpea_0087=CreateUnit(p, 'hpea', - 3888.9, - 4589.4, 256.176)
    set gg_unit_hpea_0088=CreateUnit(p, 'hpea', - 4086.4, - 5354.2, 275.225)
    set gg_unit_hpea_0089=CreateUnit(p, 'hpea', - 4141.7, - 5008.7, 56.801)
    set gg_unit_hfoo_0110=CreateUnit(p, 'hfoo', - 3904.3, - 5358.0, 256.365)
endfunction

//===========================================================================
function CreateBuildingsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ugrv', 3904.0, 3520.0, 270.000)
    set u=CreateUnit(p, 'usep', 3264.0, 3840.0, 270.000)
    set u=CreateUnit(p, 'uzg1', 2528.0, 3424.0, 270.000)
    set u=CreateUnit(p, 'uzg1', 2272.0, 5280.0, 270.000)
    set u=CreateUnit(p, 'uzg1', 3872.0, 4128.0, 270.000)
    set u=CreateUnit(p, 'unpl', 2880.0, 4544.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ucry', 2391.0, 4310.4, 10.307)
    set u=CreateUnit(p, 'ugho', 3689.7, 4125.1, 146.926)
    set u=CreateUnit(p, 'ugho', 2447.5, 5860.6, 106.900)
    set u=CreateUnit(p, 'ucry', 2610.4, 5233.1, 115.284)
    set u=CreateUnit(p, 'ugho', 2260.0, 4891.3, 51.957)
    set u=CreateUnit(p, 'ugho', 2966.3, 3927.8, 43.584)
    set u=CreateUnit(p, 'ucry', 3609.9, 3598.8, 81.664)
endfunction

//===========================================================================
function CreateBuildingsForPlayer6 takes nothing returns nothing
    local player p= Player(6)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateBlightedGoldmine(p, - 4288.0, 4736.0, 270.000)
    call SetResourceAmount(u, 30000)
    set u=CreateUnit(p, 'uzig', - 3168.0, 5408.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 4000.0, 5856.0, 270.000)
    set u=CreateUnit(p, 'unp2', - 3456.0, 4800.0, 270.000)
    set u=CreateUnit(p, 'uzig', - 4704.0, 3936.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 2400.0, 4768.0, 270.000)
    set u=CreateUnit(p, 'uzig', - 2016.0, 3744.0, 270.000)
    set u=CreateUnit(p, 'ugrv', - 3584.0, 5632.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 3104.0, 3616.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 4960.0, 5024.0, 270.000)
    set u=CreateUnit(p, 'usep', - 2560.0, 3776.0, 270.000)
    set gg_unit_usep_0049=CreateUnit(p, 'usep', - 4224.0, 5440.0, 270.000)
    set u=CreateUnit(p, 'usap', - 3968.0, 3904.0, 270.000)
    set u=CreateUnit(p, 'utod', - 3328.0, 4032.0, 270.000)
    set u=CreateUnit(p, 'uslh', - 2880.0, 4480.0, 270.000)
    set u=CreateUnit(p, 'uaod', - 4448.0, 4192.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer6 takes nothing returns nothing
    local player p= Player(6)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ugho', - 2243.2, 4543.5, 102.396)
    set u=CreateUnit(p, 'uaco', - 4201.1, 5067.7, 358.231)
    set u=CreateUnit(p, 'ugho', - 4413.0, 3729.3, 175.677)
    set u=CreateUnit(p, 'ugho', - 4566.1, 5416.3, 228.600)
    set u=CreateUnit(p, 'ugho', - 4725.5, 4405.2, 214.624)
    set u=CreateUnit(p, 'ugho', - 3899.0, 3537.5, 260.999)
    set u=CreateUnit(p, 'ugho', - 3688.3, 5320.6, 335.412)
    set u=CreateUnit(p, 'uaco', - 4127.3, 4946.5, 17.381)
    set u=CreateUnit(p, 'unec', - 3251.2, 4266.2, 158.208)
    set u=CreateUnit(p, 'unec', - 4230.8, 6025.3, 200.726)
    set u=CreateUnit(p, 'ugar', - 2707.1, 4229.3, 159.131)
    set u=CreateUnit(p, 'ugar', - 3354.2, 3569.6, 310.033)
    set u=CreateUnit(p, 'ugar', - 4733.6, 4851.7, 153.341)
    set u=CreateUnit(p, 'ugar', - 3846.2, 4515.4, 224.886)
    set u=CreateUnit(p, 'uaco', - 4064.3, 4755.4, 66.348)
    set u=CreateUnit(p, 'uaco', - 4042.1, 4595.1, 86.179)
    set u=CreateUnit(p, 'uaco', - 4108.5, 4515.0, 131.543)
    set gg_unit_Ulic_0100=CreateUnit(p, 'Ulic', - 3737.9, 3962.4, 248.826)
    set u=CreateUnit(p, 'unec', - 3982.6, 5184.9, 296.662)
    set u=CreateUnit(p, 'uabo', - 3934.6, 4250.6, 56.417)
endfunction

//===========================================================================
function CreateBuildingsForPlayer7 takes nothing returns nothing
    local player p= Player(7)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'hgtw', 3776.0, - 2880.0, 270.000)
    set life=GetUnitState(u, UNIT_STATE_LIFE)
    call SetUnitState(u, UNIT_STATE_LIFE, 0.25 * life)
    set u=CreateUnit(p, 'hbar', 3392.0, - 2688.0, 270.000)
    set life=GetUnitState(u, UNIT_STATE_LIFE)
    call SetUnitState(u, UNIT_STATE_LIFE, 0.20 * life)
endfunction

//===========================================================================
function CreateUnitsForPlayer7 takes nothing returns nothing
    local player p= Player(7)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_Hmbr_0038=CreateUnit(p, 'Hmbr', 3993.2, - 3015.2, 58.721)
    set gg_unit_hrif_0039=CreateUnit(p, 'hrif', 3873.5, - 2963.7, 33.542)
    set gg_unit_hrif_0044=CreateUnit(p, 'hrif', 4115.9, - 3122.8, 64.775)
    set u=CreateUnit(p, 'hrif', 3719.9, - 2671.0, 31.356)
    set u=CreateUnit(p, 'hgyr', 3176.9, - 2798.2, 57.240)
    set life=GetUnitState(u, UNIT_STATE_LIFE)
    call SetUnitState(u, UNIT_STATE_LIFE, 0.40 * life)
endfunction

//===========================================================================
function CreateBuildingsForPlayer8 takes nothing returns nothing
    local player p= Player(8)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'hhou', 4800.0, 6592.0, 270.000)
    set gg_unit_hgtw_0005=CreateUnit(p, 'hgtw', 4160.0, 5952.0, 270.000)
    set life=GetUnitState(gg_unit_hgtw_0005, UNIT_STATE_LIFE)
    call SetUnitState(gg_unit_hgtw_0005, UNIT_STATE_LIFE, 0.50 * life)
    set u=CreateUnit(p, 'hgtw', 4544.0, 5248.0, 270.000)
    set life=GetUnitState(u, UNIT_STATE_LIFE)
    call SetUnitState(u, UNIT_STATE_LIFE, 0.25 * life)
    set u=CreateUnit(p, 'hhou', 4928.0, 6592.0, 270.000)
    set u=CreateUnit(p, 'hhou', 4544.0, 6720.0, 270.000)
    set u=CreateUnit(p, 'harm', 5184.0, 6080.0, 270.000)
    set u=CreateUnit(p, 'hbla', 4224.0, 6400.0, 270.000)
    set u=CreateUnit(p, 'hkee', 5056.0, 5504.0, 270.000)
    set u=CreateUnit(p, 'hbar', 4672.0, 6272.0, 270.000)
    set u=CreateUnit(p, 'hhou', 4416.0, 6720.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer8 takes nothing returns nothing
    local player p= Player(8)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'hmtm', 4830.5, 5035.7, 326.699)
    set u=CreateUnit(p, 'hmtm', 4417.1, 6280.7, 229.083)
    set u=CreateUnit(p, 'hrif', 4376.7, 6005.3, 115.755)
    set u=CreateUnit(p, 'hrif', 4662.5, 5567.3, 175.105)
    set u=CreateUnit(p, 'hrif', 4582.5, 5841.8, 149.166)
    set u=CreateUnit(p, 'hgyr', 4728.6, 6353.6, 31.433)
    set u=CreateUnit(p, 'hgyr', 4901.8, 5969.6, 69.886)
    set u=CreateUnit(p, 'hmtt', 4869.1, 5964.9, 217.434)
    set u=CreateUnit(p, 'hpea', 5073.4, 5233.7, 110.526)
    set u=CreateUnit(p, 'hpea', 5187.4, 5099.9, 202.528)
endfunction

//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'nwwd', 24.5, - 5770.7, 214.650)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000119_DropItems)
    set u=CreateUnit(p, 'nwwg', - 19.1, - 5586.9, 231.051)
    set u=CreateUnit(p, 'nwwf', 221.4, - 5814.7, 202.324)
    set gg_unit_nnwq_0090=CreateUnit(p, 'nnwq', 363.7, - 3873.1, 0.000)
    call IssueImmediateOrder(gg_unit_nnwq_0090, "raisedeadoff")
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, gg_unit_nnwq_0090, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, gg_unit_nnwq_0090, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000076_DropItems)
    set u=CreateUnit(p, 'nnws', 779.9, - 3771.2, 260.187)
    set u=CreateUnit(p, 'nwwg', - 3120.1, - 7318.6, 17.778)
    set u=CreateUnit(p, 'nwwf', - 3082.0, - 7216.4, 28.240)
    set u=CreateUnit(p, 'nwwf', - 2339.5, - 7088.2, 142.914)
    set u=CreateUnit(p, 'nwna', - 370.3, 1039.7, 311.680)
    call SetUnitAcquireRange(u, 200.0)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000111_DropItems)
    set u=CreateUnit(p, 'nits', 4557.4, 1075.4, 281.390)
    set u=CreateUnit(p, 'nnwa', 297.2, - 4357.0, 21.322)
    set gg_unit_nwwf_0106=CreateUnit(p, 'nwwf', 35.5, - 7501.7, 188.431)
    set u=CreateUnit(p, 'nitw', 2718.8, - 5218.5, 236.930)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000086_DropItems)
    set u=CreateUnit(p, 'nitp', 2532.9, - 5231.1, 232.668)
    set u=CreateUnit(p, 'nitp', 2836.9, - 5369.0, 296.366)
    set gg_unit_nitr_0116=CreateUnit(p, 'nitr', 2048.7, - 5120.1, 146.013)
    set gg_unit_nitr_0117=CreateUnit(p, 'nitr', 2300.9, - 5711.0, 70.809)
    set gg_unit_nitr_0118=CreateUnit(p, 'nitr', 3198.2, - 5637.1, 166.536)
    set u=CreateUnit(p, 'nitr', 2815.8, - 5917.7, 184.202)
    set u=CreateUnit(p, 'nwen', - 472.4, 842.4, 332.488)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'nwen', - 167.1, 1116.0, 0.000)
    call SetUnitAcquireRange(u, 200.0)
    set gg_unit_nwwf_0122=CreateUnit(p, 'nwwf', 15.4, - 7260.7, 209.104)
    set u=CreateUnit(p, 'nits', 2751.0, - 7444.8, 180.508)
    set u=CreateUnit(p, 'nith', 2828.2, - 7566.2, 179.889)
    set gg_unit_nitr_0138=CreateUnit(p, 'nitr', 2316.9, - 5293.8, 225.687)
    set gg_unit_nspd_0139=CreateUnit(p, 'nspd', 615.8, - 4537.6, 58.712)
    set gg_unit_nitr_0140=CreateUnit(p, 'nitr', 3287.2, - 5928.3, 33.861)
    set u=CreateUnit(p, 'nitt', 4397.0, 945.7, 300.505)
    set u=CreateUnit(p, 'nitt', 4810.0, 606.4, 173.155)
    set u=CreateUnit(p, 'nitw', 4746.8, 998.1, 226.830)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000085_DropItems)
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_ngol_0004=CreateUnit(p, 'ngol', 5248.0, - 2944.0, 270.000)
    call SetResourceAmount(gg_unit_ngol_0004, 24680)
    set gg_unit_nth0_0076=CreateUnit(p, 'nth0', 2688.0, - 4992.0, 270.000)
    set gg_unit_ngol_0095=CreateUnit(p, 'ngol', 5248.0, 4736.0, 270.000)
    call SetResourceAmount(gg_unit_ngol_0095, 20000)
    set u=CreateUnit(p, 'nth1', 4448.0, 1184.0, 270.000)
    set u=CreateUnit(p, 'nth1', 3040.0, - 5216.0, 270.000)
    set u=CreateUnit(p, 'nth0', 4928.0, 896.0, 270.000)
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'nsea', - 4448.6, - 5560.5, 316.020)
    set u=CreateUnit(p, 'nsea', - 2696.6, - 4231.1, 226.655)
    set u=CreateUnit(p, 'nsea', - 3070.2, - 4770.5, 93.936)
    set u=CreateUnit(p, 'nsea', - 2893.2, - 4506.0, 316.020)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer3()
    call CreateBuildingsForPlayer6()
    call CreateBuildingsForPlayer7()
    call CreateBuildingsForPlayer8()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer1()
    call CreateUnitsForPlayer3()
    call CreateUnitsForPlayer6()
    call CreateUnitsForPlayer7()
    call CreateUnitsForPlayer8()
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

    set gg_rct_ArthasIntroTurn=Rect(- 3776.0, - 5824.0, - 3744.0, - 5792.0)
    set gg_rct_ArthasIntroTurn02=Rect(- 3616.0, - 6080.0, - 3584.0, - 6048.0)
    set gg_rct_BeginMuradinIntro=Rect(3808.0, - 5696.0, 4576.0, - 4768.0)
    set gg_rct_CaptiveDwarfPeasantsReharvest=Rect(4832.0, 4672.0, 5408.0, 5472.0)
    set gg_rct_CaptiveDwarves=Rect(4000.0, 4576.0, 5504.0, 6816.0)
    set gg_rct_DifficultyNerubianQueen=Rect(256.0, - 3968.0, 512.0, - 3712.0)
    set gg_rct_ExitArthasFacing=Rect(- 2048.0, 4128.0, - 1952.0, 4224.0)
    set gg_rct_ExitArthasLooking=Rect(- 2016.0, 3904.0, - 1920.0, 4000.0)
    set gg_rct_ExitBuildingFailsafe=Rect(- 2880.0, 3040.0, - 544.0, 5376.0)
    set gg_rct_ExitKnightOffScreen=Rect(- 2656.0, 4352.0, - 2560.0, 4448.0)
    set gg_rct_ExitKnightToArthas=Rect(- 2304.0, 4032.0, - 2208.0, 4128.0)
    set gg_rct_ExitMoveUnitArea=Rect(- 5184.0, 3680.0, - 3392.0, 5824.0)
    set gg_rct_ExitMuradinFacing=Rect(- 2240.0, 3744.0, - 2144.0, 3840.0)
    set gg_rct_ExitMuradinPosition=Rect(- 2016.0, 3616.0, - 1920.0, 3712.0)
    set gg_rct_IceTrollHut=Rect(2624.0, - 5056.0, 2752.0, - 4928.0)
    set gg_rct_IceTrollPatrol01=Rect(1536.0, - 6112.0, 1664.0, - 5984.0)
    set gg_rct_IceTrollPatrol02=Rect(2208.0, - 7328.0, 2336.0, - 7200.0)
    set gg_rct_IntroArthasInitial=Rect(- 4000.0, - 5856.0, - 3872.0, - 5728.0)
    set gg_rct_IntroArthasInitialFacing=Rect(- 4064.0, - 6240.0, - 4000.0, - 6176.0)
    set gg_rct_IntroArthasMovementTarget=Rect(- 3872.0, - 5952.0, - 3808.0, - 5888.0)
    set gg_rct_IntroCaptainMovementTarget=Rect(- 3840.0, - 5728.0, - 3776.0, - 5664.0)
    set gg_rct_IntroPeonAPatrolReturn=Rect(- 3904.0, - 4608.0, - 3872.0, - 4576.0)
    set gg_rct_IntroPeonAPatrolShore=Rect(- 3840.0, - 5056.0, - 3808.0, - 5024.0)
    set gg_rct_IntroPeonBPatrolReturn=Rect(- 4576.0, - 4928.0, - 4544.0, - 4896.0)
    set gg_rct_IntroPeonBPatrolShore=Rect(- 4160.0, - 5024.0, - 4128.0, - 4992.0)
    set gg_rct_MainUndeadBase=Rect(- 5376.0, 2272.0, - 960.0, 6880.0)
    set we=AddWeatherEffect(gg_rct_MainUndeadBase, 'SNls')
    call EnableWeatherEffect(we, true)
    set gg_rct_MuradinArthasOffScreen=Rect(4736.0, - 3040.0, 4832.0, - 2944.0)
    set gg_rct_MuradinArthasToMuradin=Rect(4384.0, - 2848.0, 4480.0, - 2752.0)
    set gg_rct_MuradinBuildFarm01=Rect(4096.0, - 1920.0, 4224.0, - 1792.0)
    set gg_rct_MuradinBuildFarm02=Rect(4352.0, - 1920.0, 4480.0, - 1792.0)
    set gg_rct_MuradinBuildTownHall=Rect(4352.0, - 2560.0, 4864.0, - 2048.0)
    set gg_rct_MuradinIntro_ArthasMove=Rect(4864.0, - 4224.0, 4992.0, - 4096.0)
    set gg_rct_MuradinIntro_CaptainMove=Rect(4512.0, - 4640.0, 4576.0, - 4576.0)
    set gg_rct_MuradinIntro_CaptainMoveAfter=Rect(4864.0, - 3072.0, 4928.0, - 3008.0)
    set gg_rct_MuradinIntro_Footman01Move=Rect(4544.0, - 4448.0, 4608.0, - 4384.0)
    set gg_rct_MuradinIntro_Footman01MoveAfter=Rect(4576.0, - 3168.0, 4640.0, - 3104.0)
    set gg_rct_MuradinIntro_Footman02Move=Rect(4672.0, - 4544.0, 4736.0, - 4480.0)
    set gg_rct_MuradinIntro_Footman02MoveAfter=Rect(4768.0, - 3168.0, 4832.0, - 3104.0)
    set gg_rct_MuradinIntro_Footman03Move=Rect(4800.0, - 4672.0, 4864.0, - 4608.0)
    set gg_rct_MuradinIntro_Footman03MoveAfter=Rect(4960.0, - 3168.0, 5024.0, - 3104.0)
    set gg_rct_MuradinIntro_Peon01Move=Rect(4640.0, - 4320.0, 4704.0, - 4256.0)
    set gg_rct_MuradinIntro_Peon02Move=Rect(4768.0, - 4416.0, 4832.0, - 4352.0)
    set gg_rct_MuradinIntro_Peon03Move=Rect(4928.0, - 4512.0, 4992.0, - 4448.0)
    set gg_rct_MuradinIntro_PriestMove=Rect(4640.0, - 4736.0, 4704.0, - 4672.0)
    set gg_rct_MuradinIntro_PriestMoveAfter=Rect(4672.0, - 3232.0, 4736.0, - 3168.0)
    set gg_rct_MuradinIntroVisibility=Rect(4800.0, - 3936.0, 5440.0, - 2592.0)
    set gg_rct_MuradinPeon01Attacked=Rect(3872.0, - 2560.0, 3968.0, - 2464.0)
    set gg_rct_MuradinPeon01Corner=Rect(4928.0, - 3520.0, 4992.0, - 3456.0)
    set gg_rct_MuradinPeon01Goes=Rect(4736.0, - 4000.0, 4800.0, - 3936.0)
    set gg_rct_MuradinPeon01Retreat=Rect(4864.0, - 2560.0, 4960.0, - 2464.0)
    set gg_rct_MuradinPeon02Attacked=Rect(4000.0, - 2304.0, 4096.0, - 2208.0)
    set gg_rct_MuradinPeon02Corner=Rect(4992.0, - 3328.0, 5056.0, - 3264.0)
    set gg_rct_MuradinPeon02Goes=Rect(4896.0, - 4032.0, 4960.0, - 3968.0)
    set gg_rct_MuradinPeon02Retreat=Rect(4224.0, - 1920.0, 4320.0, - 1824.0)
    set gg_rct_MuradinPeon03Attacked=Rect(4256.0, - 2176.0, 4352.0, - 2080.0)
    set gg_rct_MuradinPeon03Corner=Rect(5184.0, - 3264.0, 5248.0, - 3200.0)
    set gg_rct_MuradinPeon03Goes=Rect(5056.0, - 4096.0, 5120.0, - 4032.0)
    set gg_rct_MuradinPeon03Retreat=Rect(4480.0, - 1920.0, 4576.0, - 1824.0)
    set gg_rct_MuradinToArthas=Rect(4160.0, - 2976.0, 4256.0, - 2880.0)
    set gg_rct_Ocean01=Rect(- 5504.0, - 6144.0, - 2720.0, 2656.0)
    set gg_rct_Ocean02=Rect(- 2752.0, - 6112.0, - 1856.0, 1568.0)
    set gg_rct_Ocean03=Rect(- 1856.0, - 3840.0, 640.0, 1504.0)
    set gg_rct_OrangeGreyFailsafe=Rect(2464.0, 3584.0, 5888.0, 7360.0)
    set gg_rct_PeonHammering=Rect(- 4128.0, - 5408.0, - 4032.0, - 5312.0)
    set gg_rct_SpawnCryptFiend=Rect(4480.0, 5472.0, 4608.0, 5600.0)
    set gg_rct_SpawnGhouls=Rect(4320.0, 5728.0, 4448.0, 5856.0)
    set gg_rct_SpiderlingPatrol=Rect(928.0, - 4096.0, 1024.0, - 4000.0)
    set gg_rct_TeleportArthas=Rect(4384.0, - 4928.0, 4448.0, - 4864.0)
    set gg_rct_TeleportCaptain=Rect(3904.0, - 5280.0, 4000.0, - 5184.0)
    set gg_rct_TeleportFootman01=Rect(3968.0, - 5088.0, 4064.0, - 4992.0)
    set gg_rct_TeleportFootman02=Rect(4096.0, - 5216.0, 4192.0, - 5120.0)
    set gg_rct_TeleportFootman03=Rect(4192.0, - 5344.0, 4288.0, - 5248.0)
    set gg_rct_TeleportPeon01=Rect(4096.0, - 4960.0, 4192.0, - 4864.0)
    set gg_rct_TeleportPeon02=Rect(4224.0, - 5088.0, 4320.0, - 4992.0)
    set gg_rct_TeleportPeon03=Rect(4352.0, - 5216.0, 4448.0, - 5120.0)
    set gg_rct_TeleportPriest=Rect(4064.0, - 5440.0, 4160.0, - 5344.0)
    set gg_rct_TriggerDwarvesFound=Rect(1920.0, 3232.0, 5600.0, 7072.0)
    set gg_rct_VisibilityDwarves01=Rect(3296.0, - 2848.0, 3360.0, - 2784.0)
    set gg_rct_VisibilityDwarves02=Rect(3808.0, - 3360.0, 3872.0, - 3296.0)
    set gg_rct_WhiteWolfPatrol=Rect(- 1280.0, - 5696.0, - 1088.0, - 5504.0)
    set gg_rct_WhiteWolfPatrolBegin=Rect(- 128.0, - 7552.0, 160.0, - 7232.0)
    set gg_rct_IceTroll138PatrolBegin=Rect(2272.0, - 5376.0, 2368.0, - 5280.0)
    set gg_rct_IceTroll140PatrolBegin=Rect(3232.0, - 5984.0, 3328.0, - 5888.0)
    set gg_rct_SpiderlingPatrolBegin=Rect(544.0, - 4608.0, 640.0, - 4512.0)
endfunction

//***************************************************************************
//*
//*  Cameras
//*
//***************************************************************************

function CreateCameras takes nothing returns nothing

    set gg_cam_ExitArthasCloseup=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_ExitArthasCloseup, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasCloseup, CAMERA_FIELD_ROTATION, 19.6, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasCloseup, CAMERA_FIELD_ANGLE_OF_ATTACK, 333.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasCloseup, CAMERA_FIELD_TARGET_DISTANCE, 1423.1, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasCloseup, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasCloseup, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasCloseup, CAMERA_FIELD_FARZ, 5872.1, 0.0)
    call CameraSetupSetDestPosition(gg_cam_ExitArthasCloseup, - 1665.1, 4116.5, 0.0)

    set gg_cam_ExitArthasMuradinTalk=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_ExitArthasMuradinTalk, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasMuradinTalk, CAMERA_FIELD_ROTATION, 355.4, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasMuradinTalk, CAMERA_FIELD_ANGLE_OF_ATTACK, 330.2, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasMuradinTalk, CAMERA_FIELD_TARGET_DISTANCE, 1459.6, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasMuradinTalk, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasMuradinTalk, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_ExitArthasMuradinTalk, CAMERA_FIELD_FARZ, 5872.1, 0.0)
    call CameraSetupSetDestPosition(gg_cam_ExitArthasMuradinTalk, - 1370.9, 3739.2, 0.0)

    set gg_cam_IntroArthasAfterMove=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroArthasAfterMove, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasAfterMove, CAMERA_FIELD_ROTATION, 148.4, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasAfterMove, CAMERA_FIELD_ANGLE_OF_ATTACK, 335.9, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasAfterMove, CAMERA_FIELD_TARGET_DISTANCE, 905.1, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasAfterMove, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasAfterMove, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasAfterMove, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroArthasAfterMove, - 3838.9, - 5926.9, 0.0)

    set gg_cam_IntroArthasCloseup=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroArthasCloseup, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasCloseup, CAMERA_FIELD_ROTATION, 135.5, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasCloseup, CAMERA_FIELD_ANGLE_OF_ATTACK, 336.2, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasCloseup, CAMERA_FIELD_TARGET_DISTANCE, 615.4, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasCloseup, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasCloseup, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroArthasCloseup, CAMERA_FIELD_FARZ, 4997.4, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroArthasCloseup, - 3912.3, - 5637.9, 0.0)

    set gg_cam_IntroCameraSweepTo=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroCameraSweepTo, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroCameraSweepTo, CAMERA_FIELD_ROTATION, 96.1, 0.0)
    call CameraSetupSetField(gg_cam_IntroCameraSweepTo, CAMERA_FIELD_ANGLE_OF_ATTACK, 342.9, 0.0)
    call CameraSetupSetField(gg_cam_IntroCameraSweepTo, CAMERA_FIELD_TARGET_DISTANCE, 962.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroCameraSweepTo, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroCameraSweepTo, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroCameraSweepTo, CAMERA_FIELD_FARZ, 3000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroCameraSweepTo, - 3855.0, - 5257.5, 0.0)

    set gg_cam_IntroCaptainCloseup=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_ROTATION, 100.5, 0.0)
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_ANGLE_OF_ATTACK, 334.8, 0.0)
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_TARGET_DISTANCE, 734.1, 0.0)
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroCaptainCloseup, CAMERA_FIELD_FARZ, 4997.4, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroCaptainCloseup, - 3837.3, - 5569.6, 0.0)

    set gg_cam_IntroInitialCamera=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroInitialCamera, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroInitialCamera, CAMERA_FIELD_ROTATION, 181.6, 0.0)
    call CameraSetupSetField(gg_cam_IntroInitialCamera, CAMERA_FIELD_ANGLE_OF_ATTACK, 314.3, 0.0)
    call CameraSetupSetField(gg_cam_IntroInitialCamera, CAMERA_FIELD_TARGET_DISTANCE, 1933.9, 0.0)
    call CameraSetupSetField(gg_cam_IntroInitialCamera, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroInitialCamera, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroInitialCamera, CAMERA_FIELD_FARZ, 3993.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroInitialCamera, - 4584.7, - 6022.4, 0.0)

    set gg_cam_MuradinGoldMineView=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_MuradinGoldMineView, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinGoldMineView, CAMERA_FIELD_ROTATION, 73.8, 0.0)
    call CameraSetupSetField(gg_cam_MuradinGoldMineView, CAMERA_FIELD_ANGLE_OF_ATTACK, 348.6, 0.0)
    call CameraSetupSetField(gg_cam_MuradinGoldMineView, CAMERA_FIELD_TARGET_DISTANCE, 1663.8, 0.0)
    call CameraSetupSetField(gg_cam_MuradinGoldMineView, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinGoldMineView, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinGoldMineView, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_MuradinGoldMineView, 4935.0, - 3614.1, 0.0)

    set gg_cam_MuradinInitialCamera=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_MuradinInitialCamera, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinInitialCamera, CAMERA_FIELD_ROTATION, 14.7, 0.0)
    call CameraSetupSetField(gg_cam_MuradinInitialCamera, CAMERA_FIELD_ANGLE_OF_ATTACK, 333.5, 0.0)
    call CameraSetupSetField(gg_cam_MuradinInitialCamera, CAMERA_FIELD_TARGET_DISTANCE, 1585.5, 0.0)
    call CameraSetupSetField(gg_cam_MuradinInitialCamera, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinInitialCamera, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinInitialCamera, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_MuradinInitialCamera, 4656.0, - 4870.1, 0.0)

    set gg_cam_MuradinTownIntro=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_MuradinTownIntro, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinTownIntro, CAMERA_FIELD_ROTATION, 132.7, 0.0)
    call CameraSetupSetField(gg_cam_MuradinTownIntro, CAMERA_FIELD_ANGLE_OF_ATTACK, 330.8, 0.0)
    call CameraSetupSetField(gg_cam_MuradinTownIntro, CAMERA_FIELD_TARGET_DISTANCE, 1109.3, 0.0)
    call CameraSetupSetField(gg_cam_MuradinTownIntro, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinTownIntro, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinTownIntro, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_MuradinTownIntro, 4709.9, - 3095.5, 0.0)

    set gg_cam_MuradinViewCaptiveDwarves=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_MuradinViewCaptiveDwarves, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinViewCaptiveDwarves, CAMERA_FIELD_ROTATION, 92.9, 0.0)
    call CameraSetupSetField(gg_cam_MuradinViewCaptiveDwarves, CAMERA_FIELD_ANGLE_OF_ATTACK, 311.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinViewCaptiveDwarves, CAMERA_FIELD_TARGET_DISTANCE, 2222.5, 0.0)
    call CameraSetupSetField(gg_cam_MuradinViewCaptiveDwarves, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinViewCaptiveDwarves, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinViewCaptiveDwarves, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_MuradinViewCaptiveDwarves, 4529.5, 5763.0, 0.0)

    set gg_cam_MuradinAttacks=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_MuradinAttacks, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinAttacks, CAMERA_FIELD_ROTATION, 223.9, 0.0)
    call CameraSetupSetField(gg_cam_MuradinAttacks, CAMERA_FIELD_ANGLE_OF_ATTACK, 325.4, 0.0)
    call CameraSetupSetField(gg_cam_MuradinAttacks, CAMERA_FIELD_TARGET_DISTANCE, 976.9, 0.0)
    call CameraSetupSetField(gg_cam_MuradinAttacks, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinAttacks, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinAttacks, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_MuradinAttacks, 4145.4, - 2864.7, 0.0)

    set gg_cam_MuradinFinalPeonMovementCamera=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_MuradinFinalPeonMovementCamera, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinFinalPeonMovementCamera, CAMERA_FIELD_ROTATION, 132.7, 0.0)
    call CameraSetupSetField(gg_cam_MuradinFinalPeonMovementCamera, CAMERA_FIELD_ANGLE_OF_ATTACK, 330.8, 0.0)
    call CameraSetupSetField(gg_cam_MuradinFinalPeonMovementCamera, CAMERA_FIELD_TARGET_DISTANCE, 1109.3, 0.0)
    call CameraSetupSetField(gg_cam_MuradinFinalPeonMovementCamera, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinFinalPeonMovementCamera, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinFinalPeonMovementCamera, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_MuradinFinalPeonMovementCamera, 4269.2, - 2633.2, 0.0)

    set gg_cam_MuradinConversationCloseup=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_MuradinConversationCloseup, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinConversationCloseup, CAMERA_FIELD_ROTATION, 295.6, 0.0)
    call CameraSetupSetField(gg_cam_MuradinConversationCloseup, CAMERA_FIELD_ANGLE_OF_ATTACK, 329.5, 0.0)
    call CameraSetupSetField(gg_cam_MuradinConversationCloseup, CAMERA_FIELD_TARGET_DISTANCE, 905.9, 0.0)
    call CameraSetupSetField(gg_cam_MuradinConversationCloseup, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinConversationCloseup, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinConversationCloseup, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_MuradinConversationCloseup, 4320.8, - 2907.3, 0.0)

    set gg_cam_MuradinFinal=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_MuradinFinal, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinFinal, CAMERA_FIELD_ROTATION, 90.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinFinal, CAMERA_FIELD_ANGLE_OF_ATTACK, 304.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinFinal, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinFinal, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinFinal, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_MuradinFinal, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_MuradinFinal, 4616.3, - 2833.1, 0.0)

    set gg_cam_IntroFinal=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroFinal, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroFinal, CAMERA_FIELD_ROTATION, 90.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroFinal, CAMERA_FIELD_ANGLE_OF_ATTACK, 304.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroFinal, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroFinal, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroFinal, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroFinal, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroFinal, - 3790.9, - 5626.3, 0.0)

    set gg_cam_IntroInitialCamera2=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_IntroInitialCamera2, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroInitialCamera2, CAMERA_FIELD_ROTATION, 181.6, 0.0)
    call CameraSetupSetField(gg_cam_IntroInitialCamera2, CAMERA_FIELD_ANGLE_OF_ATTACK, 314.3, 0.0)
    call CameraSetupSetField(gg_cam_IntroInitialCamera2, CAMERA_FIELD_TARGET_DISTANCE, 1933.9, 0.0)
    call CameraSetupSetField(gg_cam_IntroInitialCamera2, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroInitialCamera2, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_IntroInitialCamera2, CAMERA_FIELD_FARZ, 3993.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_IntroInitialCamera2, - 4523.2, - 4536.2, 0.0)

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
    call io_write(I2S(last_unlock_packet) + "," + I2S(last_location_packet) + "," + I2S(last_message_packet) + "," + I2S(last_hero_packet) + "," + I2S(last_item_packet) + "," + I2S(last_item_channel_packet) + ",-1")
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
    if bitmask >= 256 then
        // bitmask & 255
        set bitmask=bitmask - ( ( bitmask / 256 ) * 256 )
    endif
    if bitmask >= 128 then
        set bitmask=bitmask - 128
        // unused
    endif
    if bitmask >= 64 then
        set bitmask=bitmask - 64
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

function InitTrig_item_locations takes nothing returns nothing
    set t_location_found=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_location_found, USER_PLAYER, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(t_location_found, function trigger_function_pick_up_item)
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
// Trigger: StartInitializationSequence
//===========================================================================
function Trig_StartInitializationSequence_Actions takes nothing returns nothing
    call SetCampaignMenuRaceBJ(bj_CAMPAIGN_INDEX_H)
    call TriggerExecute(gg_trg_InitializeVariables)
    call TriggerExecute(gg_trg_ChangePeonOwner)
    call TriggerExecute(gg_trg_Load_Heroes)
    call TriggerExecute(gg_trg_SetMuradinLichLevelsSkills)
    call TriggerExecute(gg_trg_StartingResources)
    call TriggerExecute(gg_trg_StartingAlliances)
    call TriggerExecute(gg_trg_StartingTOD)
    call TriggerExecute(gg_trg_StartingQuest)
    call TriggerExecute(gg_trg_StartAI)
    call TriggerExecute(gg_trg_StartMusic)
    call TriggerExecute(gg_trg_Setup_Scorescreen)
    call TriggerExecute(gg_trg_TriggerIntroCinematic)
endfunction

//===========================================================================
function InitTrig_StartInitializationSequence takes nothing returns nothing
    set gg_trg_StartInitializationSequence=CreateTrigger()
    call TriggerAddAction(gg_trg_StartInitializationSequence, function Trig_StartInitializationSequence_Actions)
endfunction

//===========================================================================
// Trigger: InitializeVariables
//===========================================================================
function Trig_InitializeVariables_Actions takes nothing returns nothing
    set udg_Muradin=gg_unit_Hmbr_0038
    set udg_Captain=gg_unit_hcth_0023
endfunction

//===========================================================================
function InitTrig_InitializeVariables takes nothing returns nothing
    set gg_trg_InitializeVariables=CreateTrigger()
    call TriggerAddAction(gg_trg_InitializeVariables, function Trig_InitializeVariables_Actions)
endfunction

//===========================================================================
// Trigger: ChangePeonOwner
//===========================================================================
function Trig_ChangePeonOwner_Actions takes nothing returns nothing
    call SetUnitInvulnerable(gg_unit_hpea_0089, true)
    call SetUnitInvulnerable(gg_unit_hpea_0088, true)
    call SetUnitInvulnerable(gg_unit_hpea_0087, true)
    call SetUnitOwner(gg_unit_hpea_0089, Player(9), true)
    call SetUnitOwner(gg_unit_hpea_0088, Player(9), true)
    call SetUnitOwner(gg_unit_hpea_0087, Player(9), true)
endfunction

//===========================================================================
function InitTrig_ChangePeonOwner takes nothing returns nothing
    set gg_trg_ChangePeonOwner=CreateTrigger()
    call TriggerAddAction(gg_trg_ChangePeonOwner, function Trig_ChangePeonOwner_Actions)
endfunction

//===========================================================================
// Trigger: StartingResources
//
// Add resources to the players in the map.
//===========================================================================
function Trig_StartingResources_Actions takes nothing returns nothing
    call SetPlayerStateBJ(Player(1), PLAYER_STATE_RESOURCE_GOLD, 1000)
    call SetPlayerStateBJ(Player(1), PLAYER_STATE_RESOURCE_LUMBER, 400)
    call SetPlayerStateBJ(udg_PlayerCryptFiend, PLAYER_STATE_RESOURCE_GOLD, 1000)
    call SetPlayerStateBJ(udg_PlayerCryptFiend, PLAYER_STATE_RESOURCE_LUMBER, 500)
    call SetPlayerStateBJ(udg_PlayerMalganis, PLAYER_STATE_RESOURCE_GOLD, 1000)
    call SetPlayerStateBJ(udg_PlayerMalganis, PLAYER_STATE_RESOURCE_LUMBER, 500)
    call SetPlayerStateBJ(Player(8), PLAYER_STATE_RESOURCE_GOLD, 1000)
    call SetPlayerStateBJ(Player(8), PLAYER_STATE_RESOURCE_LUMBER, 500)
endfunction

//===========================================================================
function InitTrig_StartingResources takes nothing returns nothing
    set gg_trg_StartingResources=CreateTrigger()
    call TriggerAddAction(gg_trg_StartingResources, function Trig_StartingResources_Actions)
endfunction

//===========================================================================
// Trigger: StartingAlliances
//
// Setup initial alliances outside of Force Menu.
// In Force Menu Player 4 and 11 are setup as mutual Allies with Shared Vision.
//===========================================================================
function Trig_StartingAlliances_Actions takes nothing returns nothing
    call SetPlayerAllianceBJ(Player(1), ALLIANCE_PASSIVE, true, Player(8))
    call SetPlayerAllianceBJ(Player(1), ALLIANCE_PASSIVE, true, Player(7))
    call SetPlayerAllianceBJ(Player(1), ALLIANCE_PASSIVE, true, Player(9))
    call SetPlayerAllianceBJ(Player(3), ALLIANCE_PASSIVE, true, Player(8))
    call SetPlayerAllianceBJ(Player(3), ALLIANCE_PASSIVE, true, Player(6))
    call SetPlayerAllianceBJ(Player(3), ALLIANCE_PASSIVE, true, Player(PLAYER_NEUTRAL_AGGRESSIVE))
    call SetPlayerAllianceBJ(Player(6), ALLIANCE_PASSIVE, true, udg_PlayerCryptFiend)
    call SetPlayerAllianceBJ(Player(6), ALLIANCE_PASSIVE, true, Player(8))
    call SetPlayerAllianceBJ(Player(6), ALLIANCE_PASSIVE, true, Player(7))
    call SetPlayerAllianceBJ(Player(6), ALLIANCE_PASSIVE, true, Player(PLAYER_NEUTRAL_AGGRESSIVE))
    call SetPlayerAllianceBJ(Player(8), ALLIANCE_PASSIVE, true, Player(1))
    call SetPlayerAllianceBJ(Player(8), ALLIANCE_PASSIVE, true, Player(6))
    call SetPlayerAllianceBJ(Player(8), ALLIANCE_PASSIVE, true, Player(PLAYER_NEUTRAL_AGGRESSIVE))
    call SetPlayerAllianceBJ(Player(7), ALLIANCE_PASSIVE, true, Player(1))
    call SetPlayerAllianceBJ(Player(7), ALLIANCE_PASSIVE, true, Player(6))
    call SetPlayerAllianceBJ(Player(7), ALLIANCE_PASSIVE, true, Player(PLAYER_NEUTRAL_AGGRESSIVE))
endfunction

//===========================================================================
function InitTrig_StartingAlliances takes nothing returns nothing
    set gg_trg_StartingAlliances=CreateTrigger()
    call TriggerAddAction(gg_trg_StartingAlliances, function Trig_StartingAlliances_Actions)
endfunction

//===========================================================================
// Trigger: StartingTOD
//===========================================================================
function Trig_StartingTOD_Actions takes nothing returns nothing
    call SetTimeOfDay(6.05)
endfunction

//===========================================================================
function InitTrig_StartingTOD takes nothing returns nothing
    set gg_trg_StartingTOD=CreateTrigger()
    call TriggerAddAction(gg_trg_StartingTOD, function Trig_StartingTOD_Actions)
endfunction

//===========================================================================
// Trigger: StartingQuest
//===========================================================================
function Trig_StartingQuest_Actions takes nothing returns nothing
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_037", "TRIGSTR_038", "ReplaceableTextures\\CommandButtons\\BTNGoldMine.tga")
    set udg_QuestTownHall=GetLastCreatedQuestBJ()
    call CreateQuestItemBJ(udg_QuestTownHall, "TRIGSTR_044")
    set udg_QuestReqFindGold=GetLastCreatedQuestItemBJ()
    call CreateQuestItemBJ(udg_QuestTownHall, "TRIGSTR_025")
    set udg_QuestReqArthas=GetLastCreatedQuestItemBJ()
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_042", "TRIGSTR_043", "ReplaceableTextures\\CommandButtons\\BTNHeroDreadLord.tga")
    set udg_QuestUndeadCitadel=GetLastCreatedQuestBJ()
    call CreateQuestItemBJ(udg_QuestUndeadCitadel, "TRIGSTR_045")
    set udg_QuestReqDestroyMalGanis=GetLastCreatedQuestItemBJ()
    call CreateQuestBJ(bj_QUESTTYPE_OPT_UNDISCOVERED, "TRIGSTR_047", "TRIGSTR_048", "ReplaceableTextures\\CommandButtons\\BTNMortarTeam.tga")
    set udg_QuestMuradinMen=GetLastCreatedQuestBJ()
    call CreateQuestItemBJ(udg_QuestMuradinMen, "TRIGSTR_104")
    set udg_QuestReqRescueDwarves=GetLastCreatedQuestItemBJ()
endfunction

//===========================================================================
function InitTrig_StartingQuest takes nothing returns nothing
    set gg_trg_StartingQuest=CreateTrigger()
    call TriggerAddAction(gg_trg_StartingQuest, function Trig_StartingQuest_Actions)
endfunction

//===========================================================================
// Trigger: StartAI
//===========================================================================
function Trig_StartAI_Actions takes nothing returns nothing
    call SetPlayerColorBJ(Player(7), PLAYER_COLOR_LIGHT_GRAY, true)
    call TriggerSleepAction(2.00)
    call StartCampaignAI(Player(6), "h07_green.ai")
    call StartCampaignAI(udg_PlayerCryptFiend, "h07_purple.ai")
    call StartCampaignAI(Player(8), "h07_gray.ai")
endfunction

//===========================================================================
function InitTrig_StartAI takes nothing returns nothing
    set gg_trg_StartAI=CreateTrigger()
    call TriggerAddAction(gg_trg_StartAI, function Trig_StartAI_Actions)
endfunction

//===========================================================================
// Trigger: StartMusic
//===========================================================================
function Trig_StartMusic_Actions takes nothing returns nothing
    call ClearMapMusicBJ()
    call TriggerSleepAction(0.01)
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\DarkAgents.mp3")
    call SetMapMusicIndexedBJ("music", 0)
endfunction

//===========================================================================
function InitTrig_StartMusic takes nothing returns nothing
    set gg_trg_StartMusic=CreateTrigger()
    call TriggerAddAction(gg_trg_StartMusic, function Trig_StartMusic_Actions)
endfunction

//===========================================================================
// Trigger: Setup Scorescreen
//===========================================================================
function Trig_Setup_Scorescreen_Actions takes nothing returns nothing
    call SetPlayerOnScoreScreenBJ(false, Player(7))
    call SetPlayerOnScoreScreenBJ(false, Player(8))
    call SetPlayerOnScoreScreenBJ(false, Player(9))
endfunction

//===========================================================================
function InitTrig_Setup_Scorescreen takes nothing returns nothing
    set gg_trg_Setup_Scorescreen=CreateTrigger()
    call TriggerAddAction(gg_trg_Setup_Scorescreen, function Trig_Setup_Scorescreen_Actions)
endfunction

//===========================================================================
// Trigger: InitialCreepPatrols
//===========================================================================
function Trig_InitialCreepPatrols_Actions takes nothing returns nothing
    call IssuePointOrderLocBJ(gg_unit_nspd_0139, "patrol", GetRectCenter(gg_rct_SpiderlingPatrol))
    call UnitSetCanSleepBJ(gg_unit_nspd_0139, false)
    call IssuePointOrderLocBJ(gg_unit_nwwf_0122, "patrol", GetRandomLocInRect(gg_rct_WhiteWolfPatrol))
    call UnitSetCanSleepBJ(gg_unit_nwwf_0122, false)
    call IssuePointOrderLocBJ(gg_unit_nwwf_0106, "patrol", GetRandomLocInRect(gg_rct_WhiteWolfPatrol))
    call UnitSetCanSleepBJ(gg_unit_nwwf_0106, false)
    call IssuePointOrderLocBJ(gg_unit_nitr_0138, "patrol", GetRectCenter(gg_rct_IceTrollPatrol01))
    call UnitSetCanSleepBJ(gg_unit_nitr_0138, false)
    call IssuePointOrderLocBJ(gg_unit_nitr_0140, "patrol", GetRectCenter(gg_rct_IceTrollPatrol02))
    call UnitSetCanSleepBJ(gg_unit_nitr_0140, false)
endfunction

//===========================================================================
function InitTrig_InitialCreepPatrols takes nothing returns nothing
    set gg_trg_InitialCreepPatrols=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_InitialCreepPatrols, 1.00)
    call TriggerAddAction(gg_trg_InitialCreepPatrols, function Trig_InitialCreepPatrols_Actions)
endfunction

//===========================================================================
// Trigger: RestartCreepPatrols
//===========================================================================
function Trig_RestartCreepPatrols_Func001001 takes nothing returns boolean
    return ( IsUnitAliveBJ(gg_unit_nspd_0139) == true )
endfunction

function Trig_RestartCreepPatrols_Func002001 takes nothing returns boolean
    return ( IsUnitAliveBJ(gg_unit_nspd_0139) == true )
endfunction

function Trig_RestartCreepPatrols_Func003001 takes nothing returns boolean
    return ( IsUnitAliveBJ(gg_unit_nwwf_0122) == true )
endfunction

function Trig_RestartCreepPatrols_Func004001 takes nothing returns boolean
    return ( IsUnitAliveBJ(gg_unit_nwwf_0122) == true )
endfunction

function Trig_RestartCreepPatrols_Func005001 takes nothing returns boolean
    return ( IsUnitAliveBJ(gg_unit_nwwf_0106) == true )
endfunction

function Trig_RestartCreepPatrols_Func006001 takes nothing returns boolean
    return ( IsUnitAliveBJ(gg_unit_nwwf_0106) == true )
endfunction

function Trig_RestartCreepPatrols_Func007001 takes nothing returns boolean
    return ( IsUnitAliveBJ(gg_unit_nitr_0138) == true )
endfunction

function Trig_RestartCreepPatrols_Func008001 takes nothing returns boolean
    return ( IsUnitAliveBJ(gg_unit_nitr_0138) == true )
endfunction

function Trig_RestartCreepPatrols_Func009001 takes nothing returns boolean
    return ( IsUnitAliveBJ(gg_unit_nitr_0140) == true )
endfunction

function Trig_RestartCreepPatrols_Func010001 takes nothing returns boolean
    return ( IsUnitAliveBJ(gg_unit_nitr_0140) == true )
endfunction

function Trig_RestartCreepPatrols_Actions takes nothing returns nothing
    if ( Trig_RestartCreepPatrols_Func001001() ) then
        call SetUnitPositionLoc(gg_unit_nspd_0139, GetRectCenter(gg_rct_SpiderlingPatrolBegin))
    else
        call DoNothing()
    endif
    if ( Trig_RestartCreepPatrols_Func002001() ) then
        call IssuePointOrderLocBJ(gg_unit_nspd_0139, "patrol", GetRectCenter(gg_rct_SpiderlingPatrol))
    else
        call DoNothing()
    endif
    if ( Trig_RestartCreepPatrols_Func003001() ) then
        call SetUnitPositionLoc(gg_unit_nwwf_0122, GetRandomLocInRect(gg_rct_WhiteWolfPatrolBegin))
    else
        call DoNothing()
    endif
    if ( Trig_RestartCreepPatrols_Func004001() ) then
        call IssuePointOrderLocBJ(gg_unit_nwwf_0122, "patrol", GetRandomLocInRect(gg_rct_WhiteWolfPatrol))
    else
        call DoNothing()
    endif
    if ( Trig_RestartCreepPatrols_Func005001() ) then
        call SetUnitPositionLoc(gg_unit_nwwf_0106, GetRandomLocInRect(gg_rct_WhiteWolfPatrolBegin))
    else
        call DoNothing()
    endif
    if ( Trig_RestartCreepPatrols_Func006001() ) then
        call IssuePointOrderLocBJ(gg_unit_nwwf_0106, "patrol", GetRandomLocInRect(gg_rct_WhiteWolfPatrol))
    else
        call DoNothing()
    endif
    if ( Trig_RestartCreepPatrols_Func007001() ) then
        call SetUnitPositionLoc(gg_unit_nitr_0138, GetRandomLocInRect(gg_rct_IceTroll138PatrolBegin))
    else
        call DoNothing()
    endif
    if ( Trig_RestartCreepPatrols_Func008001() ) then
        call IssuePointOrderLocBJ(gg_unit_nitr_0138, "patrol", GetRectCenter(gg_rct_IceTrollPatrol01))
    else
        call DoNothing()
    endif
    if ( Trig_RestartCreepPatrols_Func009001() ) then
        call SetUnitPositionLoc(gg_unit_nitr_0140, GetRandomLocInRect(gg_rct_IceTroll140PatrolBegin))
    else
        call DoNothing()
    endif
    if ( Trig_RestartCreepPatrols_Func010001() ) then
        call IssuePointOrderLocBJ(gg_unit_nitr_0140, "patrol", GetRectCenter(gg_rct_IceTrollPatrol02))
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_RestartCreepPatrols takes nothing returns nothing
    set gg_trg_RestartCreepPatrols=CreateTrigger()
    call TriggerAddAction(gg_trg_RestartCreepPatrols, function Trig_RestartCreepPatrols_Actions)
endfunction

//===========================================================================
// Trigger: GreyGold
//===========================================================================
function Trig_GreyGold_Actions takes nothing returns nothing
    call AdjustPlayerStateBJ(1000, Player(8), PLAYER_STATE_RESOURCE_GOLD)
endfunction

//===========================================================================
function InitTrig_GreyGold takes nothing returns nothing
    set gg_trg_GreyGold=CreateTrigger()
    call TriggerRegisterPlayerStateEvent(gg_trg_GreyGold, Player(8), PLAYER_STATE_RESOURCE_GOLD, LESS_THAN_OR_EQUAL, 1000)
    call TriggerAddAction(gg_trg_GreyGold, function Trig_GreyGold_Actions)
endfunction

//===========================================================================
// Trigger: GreyLumber
//===========================================================================
function Trig_GreyLumber_Actions takes nothing returns nothing
    call AdjustPlayerStateBJ(1000, Player(8), PLAYER_STATE_RESOURCE_LUMBER)
endfunction

//===========================================================================
function InitTrig_GreyLumber takes nothing returns nothing
    set gg_trg_GreyLumber=CreateTrigger()
    call TriggerRegisterPlayerStateEvent(gg_trg_GreyLumber, Player(8), PLAYER_STATE_RESOURCE_LUMBER, LESS_THAN_OR_EQUAL, 1000)
    call TriggerAddAction(gg_trg_GreyLumber, function Trig_GreyLumber_Actions)
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
    call TriggerRegisterPlayerStateEvent(gg_trg_GreenGold, Player(6), PLAYER_STATE_RESOURCE_GOLD, LESS_THAN_OR_EQUAL, 1000)
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
    call TriggerRegisterPlayerStateEvent(gg_trg_GreenLumber, Player(6), PLAYER_STATE_RESOURCE_LUMBER, LESS_THAN_OR_EQUAL, 1000)
    call TriggerAddAction(gg_trg_GreenLumber, function Trig_GreenLumber_Actions)
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
    call TriggerRegisterPlayerStateEvent(gg_trg_PurpleGold, Player(3), PLAYER_STATE_RESOURCE_GOLD, LESS_THAN_OR_EQUAL, 1000)
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
    call TriggerRegisterPlayerStateEvent(gg_trg_PurpleLumber, Player(3), PLAYER_STATE_RESOURCE_LUMBER, LESS_THAN_OR_EQUAL, 1000)
    call TriggerAddAction(gg_trg_PurpleLumber, function Trig_PurpleLumber_Actions)
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
    // GREEN TOWN
    call RemoveUnit(gg_unit_usep_0049)
    // ICE TROLLS
    call RemoveUnit(gg_unit_nitr_0118)
    call RemoveUnit(gg_unit_nitr_0116)
    call RemoveUnit(gg_unit_nitr_0117)
    // NERUBIANS
    call RemoveUnit(gg_unit_nnwq_0090)
    call CreateNUnitsAtLoc(1, 'nnwr', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_DifficultyNerubianQueen), 0.00)
    set udg_NerubianSeer=GetLastCreatedUnit()
    // HANDICAP
    call SetPlayerHandicapBJ(Player(3), bj_HANDICAP_EASY)
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
    // GREEN TOWN
    call RemoveUnit(gg_unit_usep_0049)
    // ICE TROLLS
    call RemoveUnit(gg_unit_nitr_0118)
    call RemoveUnit(gg_unit_nitr_0116)
    call RemoveUnit(gg_unit_nitr_0117)
    // NERUBIANS
    call RemoveUnit(gg_unit_nnwq_0090)
    call CreateNUnitsAtLoc(1, 'nnwr', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_DifficultyNerubianQueen), 0.00)
    set udg_NerubianSeer=GetLastCreatedUnit()
endfunction

//===========================================================================
function InitTrig_Normal takes nothing returns nothing
    set gg_trg_Normal=CreateTrigger()
    call TriggerAddCondition(gg_trg_Normal, Condition(function Trig_Normal_Conditions))
    call TriggerAddAction(gg_trg_Normal, function Trig_Normal_Actions)
endfunction

//===========================================================================
// Trigger: NerubianSeerDeath
//
// This trigger exists for use by Normal and Easy difficulties, where the Nerubian Queen is replaced by a Nerubian Seer.
//===========================================================================
function Trig_NerubianSeerDeath_Conditions takes nothing returns boolean
    if ( not ( GetDyingUnit() == udg_NerubianSeer ) ) then
        return false
    endif
    return true
endfunction

function Trig_NerubianSeerDeath_Actions takes nothing returns nothing
    call CreateItemLoc('ofro', GetUnitLoc(GetDyingUnit()))
endfunction

//===========================================================================
function InitTrig_NerubianSeerDeath takes nothing returns nothing
    set gg_trg_NerubianSeerDeath=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_NerubianSeerDeath, Player(PLAYER_NEUTRAL_AGGRESSIVE), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_NerubianSeerDeath, Condition(function Trig_NerubianSeerDeath_Conditions))
    call TriggerAddAction(gg_trg_NerubianSeerDeath, function Trig_NerubianSeerDeath_Actions)
endfunction

//===========================================================================
// Trigger: Load Heroes
//===========================================================================
function Trig_Load_Heroes_Actions takes nothing returns nothing
    call SetPlayerHandicapXPBJ(Player(1), 50.00)
    call InitGameCacheBJ("Campaigns.w3v")
    call TriggerExecute(gg_trg_Load_Arthas)
endfunction

//===========================================================================
function InitTrig_Load_Heroes takes nothing returns nothing
    set gg_trg_Load_Heroes=CreateTrigger()
    call TriggerAddAction(gg_trg_Load_Heroes, function Trig_Load_Heroes_Actions)
endfunction

//===========================================================================
// Trigger: Load Arthas
//===========================================================================
function Trig_Load_Arthas_Func003001 takes nothing returns boolean
    return ( udg_Arthas != null )
endfunction

function Trig_Load_Arthas_Actions takes nothing returns nothing
    call RestoreUnitLocFacingPointBJ("Arthas", "Human07", GetLastCreatedGameCacheBJ(), Player(1), GetRectCenter(gg_rct_IntroArthasInitial), GetRectCenter(gg_rct_IntroArthasInitialFacing))
    set udg_Arthas=GetLastRestoredUnitBJ()
    if ( Trig_Load_Arthas_Func003001() ) then
        return
    else
        call DoNothing()
    endif
    call CreateNUnitsAtLocFacingLocBJ(1, 'Hart', Player(1), GetRectCenter(gg_rct_IntroArthasInitial), GetRectCenter(gg_rct_IntroArthasInitialFacing))
    set udg_Arthas=GetLastCreatedUnit()
    call TriggerExecute(gg_trg_SetArthasLevelsSkills)
endfunction

//===========================================================================
function InitTrig_Load_Arthas takes nothing returns nothing
    set gg_trg_Load_Arthas=CreateTrigger()
    call TriggerAddAction(gg_trg_Load_Arthas, function Trig_Load_Arthas_Actions)
endfunction

//===========================================================================
// Trigger: SetArthasLevelsSkills
//===========================================================================
function Trig_SetArthasLevelsSkills_Actions takes nothing returns nothing
    call SetHeroLevelBJ(udg_Arthas, 7, false)
    call SelectHeroSkill(udg_Arthas, 'AHhb')
    call SelectHeroSkill(udg_Arthas, 'AHhb')
    call SelectHeroSkill(udg_Arthas, 'AHad')
    call SelectHeroSkill(udg_Arthas, 'AHad')
    call SelectHeroSkill(udg_Arthas, 'AHds')
    call SelectHeroSkill(udg_Arthas, 'AHds')
    call SelectHeroSkill(udg_Arthas, 'AHre')
endfunction

//===========================================================================
function InitTrig_SetArthasLevelsSkills takes nothing returns nothing
    set gg_trg_SetArthasLevelsSkills=CreateTrigger()
    call TriggerAddAction(gg_trg_SetArthasLevelsSkills, function Trig_SetArthasLevelsSkills_Actions)
endfunction

//===========================================================================
// Trigger: SetMuradinLichLevelsSkills
//
// Set and define skills for level 5 Lich.
// Set and define skills for Level 6 Arthas.
// Set and definte skills for Level 3 Muradin.
//===========================================================================
function Trig_SetMuradinLichLevelsSkills_Actions takes nothing returns nothing
    call SetHeroLevelBJ(udg_Muradin, 5, false)
    call SelectHeroSkill(udg_Muradin, 'AHtc')
    call SelectHeroSkill(udg_Muradin, 'AHtc')
    call SelectHeroSkill(udg_Muradin, 'AHtb')
    call SelectHeroSkill(udg_Muradin, 'AHbh')
    call SetHeroLevelBJ(gg_unit_Ulic_0100, 5, false)
    call SelectHeroSkill(gg_unit_Ulic_0100, 'AUfn')
    call SelectHeroSkill(gg_unit_Ulic_0100, 'AUfn')
    call SelectHeroSkill(gg_unit_Ulic_0100, 'AUfa')
    call SelectHeroSkill(gg_unit_Ulic_0100, 'AUdr')
    call SelectHeroSkill(gg_unit_Ulic_0100, 'AUfa')
endfunction

//===========================================================================
function InitTrig_SetMuradinLichLevelsSkills takes nothing returns nothing
    set gg_trg_SetMuradinLichLevelsSkills=CreateTrigger()
    call TriggerAddAction(gg_trg_SetMuradinLichLevelsSkills, function Trig_SetMuradinLichLevelsSkills_Actions)
endfunction

//===========================================================================
// Trigger: LimitArthasXP
//===========================================================================
function Trig_LimitArthasXP_Conditions takes nothing returns boolean
    if ( not ( GetLevelingUnit() == udg_Arthas ) ) then
        return false
    endif
    if ( not ( GetHeroLevel(udg_Arthas) >= 8 ) ) then
        return false
    endif
    return true
endfunction

function Trig_LimitArthasXP_Actions takes nothing returns nothing
    call SuspendHeroXPBJ(false, udg_Arthas)
endfunction

//===========================================================================
function InitTrig_LimitArthasXP takes nothing returns nothing
    set gg_trg_LimitArthasXP=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_LimitArthasXP, Player(1), EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddCondition(gg_trg_LimitArthasXP, Condition(function Trig_LimitArthasXP_Conditions))
    call TriggerAddAction(gg_trg_LimitArthasXP, function Trig_LimitArthasXP_Actions)
endfunction

//===========================================================================
// Trigger: LimitMuradinXP
//===========================================================================
function Trig_LimitMuradinXP_Conditions takes nothing returns boolean
    if ( not ( GetLevelingUnit() == udg_Muradin ) ) then
        return false
    endif
    if ( not ( GetHeroLevel(udg_Muradin) >= 7 ) ) then
        return false
    endif
    return true
endfunction

function Trig_LimitMuradinXP_Actions takes nothing returns nothing
    call SuspendHeroXPBJ(false, udg_Muradin)
endfunction

//===========================================================================
function InitTrig_LimitMuradinXP takes nothing returns nothing
    set gg_trg_LimitMuradinXP=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_LimitMuradinXP, Player(1), EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddCondition(gg_trg_LimitMuradinXP, Condition(function Trig_LimitMuradinXP_Conditions))
    call TriggerAddAction(gg_trg_LimitMuradinXP, function Trig_LimitMuradinXP_Actions)
endfunction

//===========================================================================
// Trigger: TriggerIntroCinematic
//===========================================================================
function Trig_TriggerIntroCinematic_Actions takes nothing returns nothing
    call EnableTrigger(gg_trg_IntroCinematicEscape)
    call TriggerExecute(gg_trg_CinematicMode)
    call TriggerExecute(gg_trg_IntroInitialCamera)
    call TriggerExecute(gg_trg_BeginPeonMovement)
    set udg_IntroCinematicRunning=true
endfunction

//===========================================================================
function InitTrig_TriggerIntroCinematic takes nothing returns nothing
    set gg_trg_TriggerIntroCinematic=CreateTrigger()
    call TriggerAddAction(gg_trg_TriggerIntroCinematic, function Trig_TriggerIntroCinematic_Actions)
endfunction

//===========================================================================
// Trigger: CinematicMode
//===========================================================================
function Trig_CinematicMode_Actions takes nothing returns nothing
    call CinematicModeBJ(true, GetPlayersAll())
endfunction

//===========================================================================
function InitTrig_CinematicMode takes nothing returns nothing
    set gg_trg_CinematicMode=CreateTrigger()
    call TriggerAddAction(gg_trg_CinematicMode, function Trig_CinematicMode_Actions)
endfunction

//===========================================================================
// Trigger: IntroInitialCamera
//===========================================================================
function Trig_IntroInitialCamera_Conditions takes nothing returns boolean
    if ( not ( udg_IntroCinematicRunning == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_IntroInitialCamera_Func014001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroInitialCamera_Func017001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroInitialCamera_Func021001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroInitialCamera_Func023001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroInitialCamera_Func026001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroInitialCamera_Actions takes nothing returns nothing
    call SetSkyModel("Environment\\Sky\\LordaeronWinterSky\\LordaeronWinterSky.mdl")
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.00, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0.00, 0.00, 0.00, 0)
    call TriggerSleepAction(1.00)
    call SetSoundVolumeBJ(gg_snd_WaterWavesLoop1, 80.00)
    call SetStackedSoundBJ(true, gg_snd_WaterWavesLoop1, gg_rct_Ocean01)
    call SetStackedSoundBJ(true, gg_snd_WaterWavesLoop1, gg_rct_Ocean02)
    call SetStackedSoundBJ(true, gg_snd_WaterWavesLoop1, gg_rct_Ocean03)
    call SetTerrainFogExBJ(0, 1000.00, 5000.00, 0, 80.00, 80.00, 80.00)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.50, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0.00, 0.00, 0.00, 0)
    call CameraSetupApplyForPlayer(true, gg_cam_IntroInitialCamera, Player(1), 0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_IntroInitialCamera2, Player(1), 6.00)
    call TriggerSleepAction(5.60)
    if ( Trig_IntroInitialCamera_Func014001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.40, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.60)
    if ( Trig_IntroInitialCamera_Func017001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_IntroCameraSweepTo, Player(1), 0.00)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 0.40, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.40)
    if ( Trig_IntroInitialCamera_Func021001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(1.00)
    if ( Trig_IntroInitialCamera_Func023001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Captain, "move", GetRectCenter(gg_rct_IntroCaptainMovementTarget))
    call TriggerSleepAction(1.00)
    if ( Trig_IntroInitialCamera_Func026001() ) then
        return
    else
        call DoNothing()
    endif
    call ConditionalTriggerExecute(gg_trg_IntroCharactersTalk)
endfunction

//===========================================================================
function InitTrig_IntroInitialCamera takes nothing returns nothing
    set gg_trg_IntroInitialCamera=CreateTrigger()
    call TriggerAddCondition(gg_trg_IntroInitialCamera, Condition(function Trig_IntroInitialCamera_Conditions))
    call TriggerAddAction(gg_trg_IntroInitialCamera, function Trig_IntroInitialCamera_Actions)
endfunction

//===========================================================================
// Trigger: BeginPeonMovement
//===========================================================================
function Trig_BeginPeonMovement_Actions takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_BeginPeonAttack)
    call AddUnitAnimationPropertiesBJ(true, "gold", gg_unit_hpea_0089)
    call IssuePointOrderLocBJ(gg_unit_hpea_0089, "patrol", GetRectCenter(gg_rct_IntroPeonBPatrolReturn))
    call IssuePointOrderLocBJ(gg_unit_hpea_0087, "patrol", GetRectCenter(gg_rct_IntroPeonAPatrolShore))
endfunction

//===========================================================================
function InitTrig_BeginPeonMovement takes nothing returns nothing
    set gg_trg_BeginPeonMovement=CreateTrigger()
    call TriggerAddAction(gg_trg_BeginPeonMovement, function Trig_BeginPeonMovement_Actions)
endfunction

//===========================================================================
// Trigger: BeginPeonAttack
//===========================================================================
function Trig_BeginPeonAttack_Conditions takes nothing returns boolean
    if ( not ( udg_PeonsPatrolling == true ) ) then
        return false
    endif
    if ( not ( udg_CrateDead == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_BeginPeonAttack_Func005001 takes nothing returns boolean
    return ( GetRandomReal(0.00, 1.00) >= 0.30 )
endfunction

function Trig_BeginPeonAttack_Actions takes nothing returns nothing
    call SetUnitAnimation(gg_unit_hpea_0088, "stand work")
    if ( Trig_BeginPeonAttack_Func005001() ) then
        call SetUnitAnimation(gg_unit_hpea_0088, "stand work")
    else
        call ResetUnitAnimation(gg_unit_hpea_0088)
    endif
endfunction

//===========================================================================
function InitTrig_BeginPeonAttack takes nothing returns nothing
    set gg_trg_BeginPeonAttack=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(gg_trg_BeginPeonAttack, 1.80)
    call TriggerAddCondition(gg_trg_BeginPeonAttack, Condition(function Trig_BeginPeonAttack_Conditions))
    call TriggerAddAction(gg_trg_BeginPeonAttack, function Trig_BeginPeonAttack_Actions)
endfunction

//===========================================================================
// Trigger: PeonAReturn
//===========================================================================
function Trig_PeonAReturn_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == gg_unit_hpea_0087 ) ) then
        return false
    endif
    if ( not ( udg_PeonsPatrolling == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_PeonAReturn_Actions takes nothing returns nothing
    call AddUnitAnimationPropertiesBJ(true, "lumber", gg_unit_hpea_0087)
    call SetUnitMoveSpeed(gg_unit_hpea_0087, 80.00)
    call SetUnitTimeScalePercent(gg_unit_hpea_0087, 90.00)
endfunction

//===========================================================================
function InitTrig_PeonAReturn takes nothing returns nothing
    set gg_trg_PeonAReturn=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_PeonAReturn, gg_rct_IntroPeonAPatrolReturn)
    call TriggerAddCondition(gg_trg_PeonAReturn, Condition(function Trig_PeonAReturn_Conditions))
    call TriggerAddAction(gg_trg_PeonAReturn, function Trig_PeonAReturn_Actions)
endfunction

//===========================================================================
// Trigger: PeonAShore
//===========================================================================
function Trig_PeonAShore_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == gg_unit_hpea_0087 ) ) then
        return false
    endif
    if ( not ( udg_PeonsPatrolling == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_PeonAShore_Actions takes nothing returns nothing
    call AddUnitAnimationPropertiesBJ(false, "lumber", gg_unit_hpea_0087)
    call SetUnitMoveSpeed(gg_unit_hpea_0087, GetUnitDefaultMoveSpeed(gg_unit_hpea_0087))
    call SetUnitTimeScalePercent(gg_unit_hpea_0087, 100.00)
endfunction

//===========================================================================
function InitTrig_PeonAShore takes nothing returns nothing
    set gg_trg_PeonAShore=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_PeonAShore, gg_rct_IntroPeonAPatrolShore)
    call TriggerAddCondition(gg_trg_PeonAShore, Condition(function Trig_PeonAShore_Conditions))
    call TriggerAddAction(gg_trg_PeonAShore, function Trig_PeonAShore_Actions)
endfunction

//===========================================================================
// Trigger: PeonBReturn
//===========================================================================
function Trig_PeonBReturn_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == gg_unit_hpea_0089 ) ) then
        return false
    endif
    if ( not ( udg_PeonsPatrolling == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_PeonBReturn_Actions takes nothing returns nothing
    call AddUnitAnimationPropertiesBJ(true, "gold", gg_unit_hpea_0089)
    call SetUnitMoveSpeed(gg_unit_hpea_0089, 80.00)
    call SetUnitTimeScalePercent(gg_unit_hpea_0089, 90.00)
endfunction

//===========================================================================
function InitTrig_PeonBReturn takes nothing returns nothing
    set gg_trg_PeonBReturn=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_PeonBReturn, gg_rct_IntroPeonBPatrolReturn)
    call TriggerAddCondition(gg_trg_PeonBReturn, Condition(function Trig_PeonBReturn_Conditions))
    call TriggerAddAction(gg_trg_PeonBReturn, function Trig_PeonBReturn_Actions)
endfunction

//===========================================================================
// Trigger: PeonBShore
//===========================================================================
function Trig_PeonBShore_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == gg_unit_hpea_0089 ) ) then
        return false
    endif
    if ( not ( udg_PeonsPatrolling == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_PeonBShore_Actions takes nothing returns nothing
    call AddUnitAnimationPropertiesBJ(false, "gold", gg_unit_hpea_0089)
    call SetUnitMoveSpeed(gg_unit_hpea_0089, GetUnitDefaultMoveSpeed(gg_unit_hpea_0089))
    call SetUnitTimeScalePercent(gg_unit_hpea_0089, 100.00)
endfunction

//===========================================================================
function InitTrig_PeonBShore takes nothing returns nothing
    set gg_trg_PeonBShore=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_PeonBShore, gg_rct_IntroPeonBPatrolShore)
    call TriggerAddCondition(gg_trg_PeonBShore, Condition(function Trig_PeonBShore_Conditions))
    call TriggerAddAction(gg_trg_PeonBShore, function Trig_PeonBShore_Actions)
endfunction

//===========================================================================
// Trigger: IntroCharactersTalk
//===========================================================================
function Trig_IntroCharactersTalk_Conditions takes nothing returns boolean
    if ( not ( udg_IntroCinematicEscape == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_IntroCharactersTalk_Func005001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroCharactersTalk_Func009001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroCharactersTalk_Func012001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroCharactersTalk_Func018001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_IntroCharactersTalk_Actions takes nothing returns nothing
    call SetUnitAnimationWithRarity(udg_Captain, "stand", RARITY_FREQUENT)
    call SetUnitAnimationWithRarity(udg_Arthas, "stand", RARITY_FREQUENT)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Captain, "TRIGSTR_008", gg_snd_H07Captain01, "TRIGSTR_009", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_IntroCharactersTalk_Func005001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_IntroArthasCloseup, Player(1), 0.01)
    call SetUnitFacingToFaceLocTimed(udg_Arthas, GetUnitLoc(udg_Captain), 0.20)
    call TriggerSleepAction(0.20)
    if ( Trig_IntroCharactersTalk_Func009001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitLookAt(udg_Arthas, "bone_head", udg_Captain, 0.00, 0.00, 90.00)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_010", gg_snd_H07Arthas02, "TRIGSTR_012", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_IntroCharactersTalk_Func012001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_IntroCaptainCloseup, Player(1), 0.01)
    call SetUnitFacingToFaceLocTimed(udg_Captain, GetUnitLoc(gg_unit_hpea_0088), 0.20)
    call SetUnitLookAt(udg_Captain, "bone_head", gg_unit_hpea_0088, 0.00, 0.00, 90.00)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Captain, "TRIGSTR_020", gg_snd_H07Captain03, "TRIGSTR_021", bj_TIMETYPE_ADD, 0.00, false)
    call TriggerSleepAction(( GetSoundDurationBJ(gg_snd_H07Captain03) - 0.50 ))
    if ( Trig_IntroCharactersTalk_Func018001() ) then
        return
    else
        call DoNothing()
    endif
    call ResetUnitLookAt(udg_Arthas)
    call IssuePointOrderLocBJ(udg_Arthas, "move", GetRectCenter(gg_rct_IntroArthasMovementTarget))
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_091", gg_snd_H07Arthas04, "TRIGSTR_092", bj_TIMETYPE_ADD, 0.00, true)
endfunction

//===========================================================================
function InitTrig_IntroCharactersTalk takes nothing returns nothing
    set gg_trg_IntroCharactersTalk=CreateTrigger()
    call TriggerAddCondition(gg_trg_IntroCharactersTalk, Condition(function Trig_IntroCharactersTalk_Conditions))
    call TriggerAddAction(gg_trg_IntroCharactersTalk, function Trig_IntroCharactersTalk_Actions)
endfunction

//===========================================================================
// Trigger: ArthasSetsOff
//===========================================================================
function Trig_ArthasSetsOff_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == udg_Arthas ) ) then
        return false
    endif
    if ( not ( udg_IntroCinematicRunning == true ) ) then
        return false
    endif
    if ( not ( udg_IntroCinematicEscape == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_ArthasSetsOff_Func009001 takes nothing returns boolean
    return ( udg_IntroCinematicEscape == true )
endfunction

function Trig_ArthasSetsOff_Actions takes nothing returns nothing
    call SetUnitFacingToFaceLocTimed(udg_Arthas, GetRectCenter(gg_rct_ArthasIntroTurn02), 0)
    call CameraSetupApplyForPlayer(true, gg_cam_IntroArthasAfterMove, Player(1), 0.01)
    call ResetUnitLookAt(udg_Captain)
    call SetUnitFacingToFaceUnitTimed(udg_Captain, udg_Arthas, 0.20)
    call TriggerSleepAction(GetSoundDurationBJ(gg_snd_H07Arthas04))
    if ( Trig_ArthasSetsOff_Func009001() ) then
        return
    else
        call DoNothing()
    endif
    call ConditionalTriggerExecute(gg_trg_CinematicEnd)
endfunction

//===========================================================================
function InitTrig_ArthasSetsOff takes nothing returns nothing
    set gg_trg_ArthasSetsOff=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_ArthasSetsOff, gg_rct_IntroArthasMovementTarget)
    call TriggerAddCondition(gg_trg_ArthasSetsOff, Condition(function Trig_ArthasSetsOff_Conditions))
    call TriggerAddAction(gg_trg_ArthasSetsOff, function Trig_ArthasSetsOff_Actions)
endfunction

//===========================================================================
// Trigger: CinematicEnd
//===========================================================================
function Trig_CinematicEnd_Conditions takes nothing returns boolean
    if ( not ( udg_IntroCinematicEscape == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_CinematicEnd_Actions takes nothing returns nothing
    call DisableTrigger(gg_trg_IntroCinematicEscape)
    set udg_IntroCinematicRunning=false
    call ResetUnitLookAt(udg_Arthas)
    call ResetUnitLookAt(udg_Captain)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    call CameraSetupApplyForPlayer(true, gg_cam_IntroFinal, Player(1), 0.00)
    call TriggerSleepAction(1.00)
    call ResetToGameCameraForPlayer(Player(1), 0.00)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call SetSkyModel(null)
    call SetTerrainFogExBJ(0, 2000.00, 8000.00, 0, 30.00, 30.00, 30.00)
    call CinematicModeBJ(false, GetPlayersAll())
    call SelectUnitSingle(udg_Arthas)
    call SetSoundVolumeBJ(gg_snd_WaterWavesLoop1, 100)
    call QuestMessageBJ(bj_FORCE_PLAYER[1], bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_033")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call QuestMessageBJ(bj_FORCE_PLAYER[1], bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_041")
endfunction

//===========================================================================
function InitTrig_CinematicEnd takes nothing returns nothing
    set gg_trg_CinematicEnd=CreateTrigger()
    call TriggerAddCondition(gg_trg_CinematicEnd, Condition(function Trig_CinematicEnd_Conditions))
    call TriggerAddAction(gg_trg_CinematicEnd, function Trig_CinematicEnd_Actions)
endfunction

//===========================================================================
// Trigger: IntroCinematicEscape
//===========================================================================
function Trig_IntroCinematicEscape_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call StopSoundBJ(GetLastPlayedSound(), true)
    set udg_IntroCinematicRunning=false
    set udg_IntroCinematicEscape=true
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    call SetUnitPositionLocFacingLocBJ(udg_Arthas, GetRectCenter(gg_rct_IntroArthasMovementTarget), GetRectCenter(gg_rct_ArthasIntroTurn02))
    call SetUnitPositionLocFacingLocBJ(udg_Captain, GetRectCenter(gg_rct_IntroCaptainMovementTarget), GetUnitLoc(udg_Arthas))
    call CameraSetupApplyForPlayer(true, gg_cam_IntroFinal, Player(1), 0.00)
    call TriggerSleepAction(1.00)
    call ResetToGameCameraForPlayer(Player(1), 0.00)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call SetSkyModel(null)
    call SetTerrainFogExBJ(0, 2000.00, 8000.00, 0, 30.00, 30.00, 30.00)
    call SetSoundVolumeBJ(gg_snd_WaterWavesLoop1, 100)
    call ResetUnitLookAt(udg_Arthas)
    call ResetUnitLookAt(udg_Captain)
    call CinematicModeBJ(false, GetPlayersAll())
    call SelectUnitSingle(udg_Arthas)
    call QuestMessageBJ(bj_FORCE_PLAYER[1], bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_030")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call QuestMessageBJ(bj_FORCE_PLAYER[1], bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_031")
endfunction

//===========================================================================
function InitTrig_IntroCinematicEscape takes nothing returns nothing
    set gg_trg_IntroCinematicEscape=CreateTrigger()
    call DisableTrigger(gg_trg_IntroCinematicEscape)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_IntroCinematicEscape, Player(1))
    call TriggerAddAction(gg_trg_IntroCinematicEscape, function Trig_IntroCinematicEscape_Actions)
endfunction

//===========================================================================
// Trigger: DetectCrateDeath
//===========================================================================
function Trig_DetectCrateDeath_Conditions takes nothing returns boolean
    if ( not ( RectContainsUnit(gg_rct_PeonHammering, gg_unit_hpea_0088) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_DetectCrateDeath_Actions takes nothing returns nothing
    call ResetUnitAnimation(gg_unit_hpea_0088)
    set udg_CrateDead=true
endfunction

//===========================================================================
function InitTrig_DetectCrateDeath takes nothing returns nothing
    set gg_trg_DetectCrateDeath=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_DetectCrateDeath, gg_dest_LTcr_0274)
    call TriggerAddCondition(gg_trg_DetectCrateDeath, Condition(function Trig_DetectCrateDeath_Conditions))
    call TriggerAddAction(gg_trg_DetectCrateDeath, function Trig_DetectCrateDeath_Actions)
endfunction

//===========================================================================
// Trigger: Ice Troll Attacks
//===========================================================================
function Trig_Ice_Troll_Attacks_Func003001 takes nothing returns boolean
    return ( GetUnitTypeId(GetAttacker()) == 'nitr' )
endfunction

function Trig_Ice_Troll_Attacks_Func003002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetAttacker()) == 'nitp' )
endfunction

function Trig_Ice_Troll_Attacks_Func003002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetAttacker()) == 'nits' )
endfunction

function Trig_Ice_Troll_Attacks_Func003002 takes nothing returns boolean
    return GetBooleanOr(Trig_Ice_Troll_Attacks_Func003002001(), Trig_Ice_Troll_Attacks_Func003002002())
endfunction

function Trig_Ice_Troll_Attacks_Conditions takes nothing returns boolean
    if ( not GetBooleanOr(Trig_Ice_Troll_Attacks_Func003001(), Trig_Ice_Troll_Attacks_Func003002()) ) then
        return false
    endif
    if ( not ( DistanceBetweenPoints(GetUnitLoc(udg_Arthas), GetUnitLoc(GetAttackedUnitBJ())) <= 1024.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Ice_Troll_Attacks_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_Ice_Troll_Message, true)
endfunction

//===========================================================================
function InitTrig_Ice_Troll_Attacks takes nothing returns nothing
    set gg_trg_Ice_Troll_Attacks=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Ice_Troll_Attacks, Player(1), EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_Ice_Troll_Attacks, Condition(function Trig_Ice_Troll_Attacks_Conditions))
    call TriggerAddAction(gg_trg_Ice_Troll_Attacks, function Trig_Ice_Troll_Attacks_Actions)
endfunction

//===========================================================================
// Trigger: Ice Troll Message
//===========================================================================
function Trig_Ice_Troll_Message_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Ice_Troll_Message_Actions takes nothing returns nothing
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_029", gg_snd_H07Arthas06, "TRIGSTR_034", bj_TIMETYPE_ADD, 0.00, true)
    call VolumeGroupResetBJ()
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Ice_Troll_Message takes nothing returns nothing
    set gg_trg_Ice_Troll_Message=CreateTrigger()
    call TriggerAddCondition(gg_trg_Ice_Troll_Message, Condition(function Trig_Ice_Troll_Message_Conditions))
    call TriggerAddAction(gg_trg_Ice_Troll_Message, function Trig_Ice_Troll_Message_Actions)
endfunction

//===========================================================================
// Trigger: HutDies
//===========================================================================
function Trig_HutDies_Actions takes nothing returns nothing
    call TriggerSleepAction(0.20)
    call CreateItemLoc('pman', GetRandomLocInRect(gg_rct_IceTrollHut))
endfunction

//===========================================================================
function InitTrig_HutDies takes nothing returns nothing
    set gg_trg_HutDies=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_HutDies, gg_unit_nth0_0076, EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_HutDies, function Trig_HutDies_Actions)
endfunction

//===========================================================================
// Trigger: Gyrocopter
//===========================================================================
function Trig_Gyrocopter_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_GyrocopterMessage, true)
endfunction

//===========================================================================
function InitTrig_Gyrocopter takes nothing returns nothing
    set gg_trg_Gyrocopter=CreateTrigger()
    call TriggerRegisterTimerExpireEventBJ(gg_trg_Gyrocopter, udg_TimerGyroAcquired)
    call TriggerAddAction(gg_trg_Gyrocopter, function Trig_Gyrocopter_Actions)
endfunction

//===========================================================================
// Trigger: GyrocopterMessage
//===========================================================================
function Trig_GyrocopterMessage_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_GyrocopterMessage_Actions takes nothing returns nothing
    call QuestMessageBJ(bj_FORCE_PLAYER[1], bj_QUESTMESSAGE_HINT, "TRIGSTR_163")
    call TriggerSleepAction(bj_QUEUE_DELAY_HINT)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
    call StartTimerBJ(udg_TimerGyroRepairHint, false, 10.00)
endfunction

//===========================================================================
function InitTrig_GyrocopterMessage takes nothing returns nothing
    set gg_trg_GyrocopterMessage=CreateTrigger()
    call TriggerAddCondition(gg_trg_GyrocopterMessage, Condition(function Trig_GyrocopterMessage_Conditions))
    call TriggerAddAction(gg_trg_GyrocopterMessage, function Trig_GyrocopterMessage_Actions)
endfunction

//===========================================================================
// Trigger: GyroRepair
//===========================================================================
function Trig_GyroRepair_Actions takes nothing returns nothing
    call QueuedTriggerAddBJ(gg_trg_GyroRepairMessage, true)
endfunction

//===========================================================================
function InitTrig_GyroRepair takes nothing returns nothing
    set gg_trg_GyroRepair=CreateTrigger()
    call TriggerRegisterTimerExpireEventBJ(gg_trg_GyroRepair, udg_TimerGyroRepairHint)
    call TriggerAddAction(gg_trg_GyroRepair, function Trig_GyroRepair_Actions)
endfunction

//===========================================================================
// Trigger: GyroRepairMessage
//===========================================================================
function Trig_GyroRepairMessage_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_GyroRepairMessage_Actions takes nothing returns nothing
    call QuestMessageBJ(bj_FORCE_PLAYER[1], bj_QUESTMESSAGE_HINT, "TRIGSTR_035")
    call TriggerSleepAction(bj_QUEUE_DELAY_HINT)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_GyroRepairMessage takes nothing returns nothing
    set gg_trg_GyroRepairMessage=CreateTrigger()
    call TriggerAddCondition(gg_trg_GyroRepairMessage, Condition(function Trig_GyroRepairMessage_Conditions))
    call TriggerAddAction(gg_trg_GyroRepairMessage, function Trig_GyroRepairMessage_Actions)
endfunction

//===========================================================================
// Trigger: SteamTankMessage
//===========================================================================
function Trig_SteamTankMessage_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_SteamTankMessage_Actions takes nothing returns nothing
    call SetPlayerUnitAvailableBJ('hmtt', true, Player(1))
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_HINT, "TRIGSTR_049")
    call TriggerSleepAction(bj_QUEUE_DELAY_HINT)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_SteamTankMessage takes nothing returns nothing
    set gg_trg_SteamTankMessage=CreateTrigger()
    call TriggerAddCondition(gg_trg_SteamTankMessage, Condition(function Trig_SteamTankMessage_Conditions))
    call TriggerAddAction(gg_trg_SteamTankMessage, function Trig_SteamTankMessage_Actions)
endfunction

//===========================================================================
// Trigger: TriggerMuradinIntroCinematic
//===========================================================================
function Trig_TriggerMuradinIntroCinematic_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnteringUnit()) == Player(1) ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_TriggerMuradinIntroCinematic_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_PlayMuradinIntroCinematic, true)
endfunction

//===========================================================================
function InitTrig_TriggerMuradinIntroCinematic takes nothing returns nothing
    set gg_trg_TriggerMuradinIntroCinematic=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_TriggerMuradinIntroCinematic, gg_rct_BeginMuradinIntro)
    call TriggerAddCondition(gg_trg_TriggerMuradinIntroCinematic, Condition(function Trig_TriggerMuradinIntroCinematic_Conditions))
    call TriggerAddAction(gg_trg_TriggerMuradinIntroCinematic, function Trig_TriggerMuradinIntroCinematic_Actions)
endfunction

//===========================================================================
// Trigger: PlayMuradinIntroCinematic
//===========================================================================
function Trig_PlayMuradinIntroCinematic_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_PlayMuradinIntroCinematic_Actions takes nothing returns nothing
    set udg_MuradinCinematicRunning=true
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\DarkAgents.mp3")
    call SetUnitInvulnerable(udg_Arthas, true)
    call TriggerExecute(gg_trg_Muradin_DwarfVisibilityMods)
    call TriggerExecute(gg_trg_Muradin_InitialCamera)
endfunction

//===========================================================================
function InitTrig_PlayMuradinIntroCinematic takes nothing returns nothing
    set gg_trg_PlayMuradinIntroCinematic=CreateTrigger()
    call TriggerAddCondition(gg_trg_PlayMuradinIntroCinematic, Condition(function Trig_PlayMuradinIntroCinematic_Conditions))
    call TriggerAddAction(gg_trg_PlayMuradinIntroCinematic, function Trig_PlayMuradinIntroCinematic_Actions)
endfunction

//===========================================================================
// Trigger: Muradin DwarfVisibilityMods
//===========================================================================
function Trig_Muradin_DwarfVisibilityMods_Actions takes nothing returns nothing
    call CreateFogModifierRadiusLocSimple(Player(1), FOG_OF_WAR_MASKED, GetRectCenter(gg_rct_VisibilityDwarves01), 640.00, true)
    set udg_VisibilityDwarf01=GetLastCreatedFogModifier()
    call FogModifierStart(udg_VisibilityDwarf01)
    call CreateFogModifierRadiusLocSimple(Player(1), FOG_OF_WAR_MASKED, GetRectCenter(gg_rct_VisibilityDwarves02), 512.00, true)
    set udg_VisibilityDwarf02=GetLastCreatedFogModifier()
    call FogModifierStart(udg_VisibilityDwarf02)
endfunction

//===========================================================================
function InitTrig_Muradin_DwarfVisibilityMods takes nothing returns nothing
    set gg_trg_Muradin_DwarfVisibilityMods=CreateTrigger()
    call TriggerAddAction(gg_trg_Muradin_DwarfVisibilityMods, function Trig_Muradin_DwarfVisibilityMods_Actions)
endfunction//===========================================================================
// Trigger: Muradin InitialCamera
//===========================================================================
function Trig_Muradin_InitialCamera_Func012001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_InitialCamera_Func015001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_InitialCamera_Func018001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_InitialCamera_Actions takes nothing returns nothing
    call CreateFogModifierRectBJ(true, Player(1), FOG_OF_WAR_VISIBLE, gg_rct_MuradinIntroVisibility)
    set udg_Vis3=GetLastCreatedFogModifier()
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    call TriggerExecute(gg_trg_Muradin_CinematicMode)
    call CameraSetupApplyForPlayer(true, gg_cam_MuradinInitialCamera, Player(1), 0.00)
    call TriggerExecute(gg_trg_Muradin_ResetPeons)
    call EnableTrigger(gg_trg_Muradin_CinematicEscape)
    call TriggerSleepAction(1.90)
    call TriggerExecute(gg_trg_Muradin_PositionActors)
    call TriggerSleepAction(0.10)
    if ( Trig_Muradin_InitialCamera_Func012001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.05)
    if ( Trig_Muradin_InitialCamera_Func015001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_MuradinGoldMineView, Player(1), 6.00)
    call TriggerSleepAction(6.00)
    if ( Trig_Muradin_InitialCamera_Func018001() ) then
        return
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_Muradin_InitialCamera takes nothing returns nothing
    set gg_trg_Muradin_InitialCamera=CreateTrigger()
    call TriggerAddAction(gg_trg_Muradin_InitialCamera, function Trig_Muradin_InitialCamera_Actions)
endfunction

//===========================================================================
// Trigger: Muradin CinematicMode
//===========================================================================
function Trig_Muradin_CinematicMode_Actions takes nothing returns nothing
    call CinematicModeBJ(true, GetPlayersAll())
    call SetSkyModel("Environment\\Sky\\LordaeronWinterSky\\LordaeronWinterSky.mdl")
    call FogEnableOn()
    call UseTimeOfDayBJ(false)
endfunction

//===========================================================================
function InitTrig_Muradin_CinematicMode takes nothing returns nothing
    set gg_trg_Muradin_CinematicMode=CreateTrigger()
    call TriggerAddAction(gg_trg_Muradin_CinematicMode, function Trig_Muradin_CinematicMode_Actions)
endfunction

//===========================================================================
// Trigger: Muradin PositionActors
//===========================================================================
function Trig_Muradin_PositionActors_Func001002 takes nothing returns nothing
    call GroupAddUnitSimple(GetEnumUnit(), udg_UnitGroupSelection)
endfunction

function Trig_Muradin_PositionActors_Func005002 takes nothing returns nothing
    call IssueImmediateOrderBJ(GetEnumUnit(), "stop")
endfunction

function Trig_Muradin_PositionActors_Func006002 takes nothing returns nothing
    call GroupAddUnitSimple(GetEnumUnit(), udg_ArthasGroup)
endfunction

function Trig_Muradin_PositionActors_Func007002 takes nothing returns nothing
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, GetEnumUnit())
endfunction

function Trig_Muradin_PositionActors_Func008002 takes nothing returns nothing
    call SetUnitMoveSpeed(GetEnumUnit(), 240.00)
endfunction

function Trig_Muradin_PositionActors_Actions takes nothing returns nothing
    call ForGroupBJ(GetUnitsSelectedAll(Player(1)), function Trig_Muradin_PositionActors_Func001002)
    call ClearSelection()
    call SetPlayerAllianceBJ(Player(1), ALLIANCE_PASSIVE, true, Player(PLAYER_NEUTRAL_AGGRESSIVE))
    call SetPlayerAllianceBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), ALLIANCE_PASSIVE, true, Player(1))
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(PLAYER_NEUTRAL_AGGRESSIVE)), function Trig_Muradin_PositionActors_Func005002)
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(1)), function Trig_Muradin_PositionActors_Func006002)
    call ForGroupBJ(udg_ArthasGroup, function Trig_Muradin_PositionActors_Func007002)
    call ForGroupBJ(udg_ArthasGroup, function Trig_Muradin_PositionActors_Func008002)
    call SetUnitPositionLoc(udg_Arthas, GetRectCenter(gg_rct_TeleportArthas))
    call SetUnitPositionLoc(udg_Captain, GetRectCenter(gg_rct_TeleportCaptain))
    call SetUnitPositionLoc(gg_unit_hpea_0087, GetRectCenter(gg_rct_TeleportPeon01))
    call SetUnitPositionLoc(gg_unit_hpea_0088, GetRectCenter(gg_rct_TeleportPeon02))
    call SetUnitPositionLoc(gg_unit_hpea_0089, GetRectCenter(gg_rct_TeleportPeon03))
    call SetUnitPositionLoc(gg_unit_hfoo_0020, GetRectCenter(gg_rct_TeleportFootman01))
    call SetUnitPositionLoc(gg_unit_hfoo_0022, GetRectCenter(gg_rct_TeleportFootman02))
    call SetUnitPositionLoc(gg_unit_hfoo_0110, GetRectCenter(gg_rct_TeleportFootman03))
    call SetUnitPositionLoc(gg_unit_hmpr_0019, GetRectCenter(gg_rct_TeleportPriest))
    call IssuePointOrderLocBJ(udg_Arthas, "move", GetRectCenter(gg_rct_MuradinIntro_ArthasMove))
    call IssuePointOrderLocBJ(gg_unit_hpea_0087, "move", GetRectCenter(gg_rct_MuradinIntro_Peon01Move))
    call IssuePointOrderLocBJ(gg_unit_hpea_0088, "move", GetRectCenter(gg_rct_MuradinIntro_Peon02Move))
    call IssuePointOrderLocBJ(gg_unit_hpea_0089, "move", GetRectCenter(gg_rct_MuradinIntro_Peon03Move))
    call IssuePointOrderLocBJ(udg_Captain, "move", GetRectCenter(gg_rct_MuradinIntro_CaptainMove))
    call IssuePointOrderLocBJ(gg_unit_hfoo_0020, "move", GetRectCenter(gg_rct_MuradinIntro_Footman01Move))
    call IssuePointOrderLocBJ(gg_unit_hfoo_0022, "move", GetRectCenter(gg_rct_MuradinIntro_Footman02Move))
    call IssuePointOrderLocBJ(gg_unit_hfoo_0110, "move", GetRectCenter(gg_rct_MuradinIntro_Footman03Move))
    call IssuePointOrderLocBJ(gg_unit_hmpr_0019, "move", GetRectCenter(gg_rct_MuradinIntro_PriestMove))
endfunction

//===========================================================================
function InitTrig_Muradin_PositionActors takes nothing returns nothing
    set gg_trg_Muradin_PositionActors=CreateTrigger()
    call TriggerAddAction(gg_trg_Muradin_PositionActors, function Trig_Muradin_PositionActors_Actions)
endfunction

//===========================================================================
// Trigger: Muradin ResetPeons
//===========================================================================
function Trig_Muradin_ResetPeons_Actions takes nothing returns nothing
    call SetUnitOwner(gg_unit_hpea_0089, Player(1), true)
    call SetUnitOwner(gg_unit_hpea_0088, Player(1), true)
    call SetUnitOwner(gg_unit_hpea_0087, Player(1), true)
    set udg_PeonsPatrolling=false
    call SetUnitTimeScalePercent(gg_unit_hpea_0087, 100.00)
    call SetUnitMoveSpeed(gg_unit_hpea_0087, GetUnitDefaultMoveSpeed(gg_unit_hpea_0087))
    call ResetUnitAnimation(gg_unit_hpea_0087)
    call SetUnitTimeScalePercent(gg_unit_hpea_0088, 100.00)
    call SetUnitMoveSpeed(gg_unit_hpea_0088, GetUnitDefaultMoveSpeed(gg_unit_hpea_0088))
    call ResetUnitAnimation(gg_unit_hpea_0088)
    call SetUnitTimeScalePercent(gg_unit_hpea_0089, 100.00)
    call SetUnitMoveSpeed(gg_unit_hpea_0089, GetUnitDefaultMoveSpeed(gg_unit_hpea_0089))
    call ResetUnitAnimation(gg_unit_hpea_0089)
    call AddUnitAnimationPropertiesBJ(false, "lumber", gg_unit_hpea_0087)
    call AddUnitAnimationPropertiesBJ(false, "gold", gg_unit_hpea_0089)
    call SetUnitInvulnerable(gg_unit_hpea_0087, false)
    call SetUnitInvulnerable(gg_unit_hpea_0088, false)
    call SetUnitInvulnerable(gg_unit_hpea_0089, false)
endfunction

//===========================================================================
function InitTrig_Muradin_ResetPeons takes nothing returns nothing
    set gg_trg_Muradin_ResetPeons=CreateTrigger()
    call TriggerAddAction(gg_trg_Muradin_ResetPeons, function Trig_Muradin_ResetPeons_Actions)
endfunction

//===========================================================================
// Trigger: Muradin FindGoldMine
//===========================================================================
function Trig_Muradin_FindGoldMine_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == udg_Arthas ) ) then
        return false
    endif
    if ( not ( udg_MuradinCinematicRunning == true ) ) then
        return false
    endif
    if ( not ( udg_MuradinCinematicEscape == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Muradin_FindGoldMine_Func006001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func007002 takes nothing returns nothing
    call SetUnitMoveSpeed(GetEnumUnit(), GetUnitDefaultMoveSpeed(GetEnumUnit()))
endfunction

function Trig_Muradin_FindGoldMine_Func012001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func015001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func025001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func028001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func033001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func036001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func039001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func044001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func048001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func059001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func062001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func066001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func076001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func078001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func082001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func093001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func096001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func099001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Func101001 takes nothing returns boolean
    return ( udg_MuradinCinematicEscape == true )
endfunction

function Trig_Muradin_FindGoldMine_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call IssueImmediateOrderBJ(udg_Arthas, "stop")
    call SetUnitAnimationWithRarity(udg_Arthas, "stand", RARITY_FREQUENT)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_027", gg_snd_H07Arthas07, "TRIGSTR_028", bj_TIMETYPE_ADD, 0.00, true)
    call VolumeGroupResetBJ()
    if ( Trig_Muradin_FindGoldMine_Func006001() ) then
        return
    else
        call DoNothing()
    endif
    call ForGroupBJ(udg_ArthasGroup, function Trig_Muradin_FindGoldMine_Func007002)
    call IssuePointOrderLocBJ(gg_unit_hpea_0087, "move", GetRectCenter(gg_rct_MuradinPeon01Goes))
    call IssuePointOrderLocBJ(gg_unit_hpea_0088, "move", GetRectCenter(gg_rct_MuradinPeon02Goes))
    call IssuePointOrderLocBJ(gg_unit_hpea_0089, "move", GetRectCenter(gg_rct_MuradinPeon03Goes))
    call TriggerSleepAction(1.00)
    if ( Trig_Muradin_FindGoldMine_Func012001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.40, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.80)
    if ( Trig_Muradin_FindGoldMine_Func015001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 0.40, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call SetUnitPositionLocFacingBJ(gg_unit_hpea_0087, GetRectCenter(gg_rct_MuradinPeon01Corner), 135.00)
    call SetUnitPositionLocFacingBJ(gg_unit_hpea_0088, GetRectCenter(gg_rct_MuradinPeon02Corner), 135.00)
    call SetUnitPositionLocFacingBJ(gg_unit_hpea_0089, GetRectCenter(gg_rct_MuradinPeon03Corner), 135.00)
    call CameraSetupApplyForPlayer(true, gg_cam_MuradinTownIntro, Player(1), 0)
    call IssuePointOrderLocBJ(gg_unit_hpea_0087, "move", GetRectCenter(gg_rct_MuradinPeon01Attacked))
    call IssuePointOrderLocBJ(gg_unit_hpea_0088, "move", GetRectCenter(gg_rct_MuradinPeon02Attacked))
    call IssuePointOrderLocBJ(gg_unit_hpea_0089, "move", GetRectCenter(gg_rct_MuradinPeon03Attacked))
    call TriggerSleepAction(0.01)
    if ( Trig_Muradin_FindGoldMine_Func025001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_MuradinFinalPeonMovementCamera, Player(1), 6.00)
    call TriggerSleepAction(4.00)
    if ( Trig_Muradin_FindGoldMine_Func028001() ) then
        return
    else
        call DoNothing()
    endif
    call EnableTrigger(gg_trg_Muradin_KeepPeasantAlive)
    call IssueTargetOrderBJ(gg_unit_hrif_0044, "attack", gg_unit_hpea_0087)
    call IssueTargetOrderBJ(gg_unit_hrif_0039, "attack", gg_unit_hpea_0087)
    call TriggerSleepAction(0.50)
    if ( Trig_Muradin_FindGoldMine_Func033001() ) then
        return
    else
        call DoNothing()
    endif
    call IssueTargetOrderBJ(udg_Muradin, "thunderbolt", gg_unit_hpea_0087)
    call TriggerSleepAction(1.00)
    if ( Trig_Muradin_FindGoldMine_Func036001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_003", gg_snd_H07Arthas08, "TRIGSTR_004", bj_TIMETYPE_ADD, 0, false)
    call TriggerSleepAction(0.50)
    if ( Trig_Muradin_FindGoldMine_Func039001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(gg_unit_hpea_0087, "move", GetRectCenter(gg_rct_MuradinPeon01Retreat))
    call IssuePointOrderLocBJ(gg_unit_hpea_0088, "move", GetRectCenter(gg_rct_MuradinPeon02Retreat))
    call IssuePointOrderLocBJ(gg_unit_hpea_0089, "move", GetRectCenter(gg_rct_MuradinPeon03Retreat))
    call TriggerSleepAction(1.50)
    if ( Trig_Muradin_FindGoldMine_Func044001() ) then
        return
    else
        call DoNothing()
    endif
    call GroupImmediateOrderBJ(GetUnitsOfPlayerAll(Player(7)), "stop")
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.20, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.40)
    if ( Trig_Muradin_FindGoldMine_Func048001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 0.20, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call SetPlayerAllianceBJ(Player(7), ALLIANCE_SHARED_VISION, true, Player(1))
    call DestroyFogModifier(udg_VisibilityDwarf01)
    call DestroyFogModifier(udg_VisibilityDwarf02)
    call CameraSetupApplyForPlayer(true, gg_cam_MuradinAttacks, Player(1), 0)
    call DisableTrigger(gg_trg_Muradin_KeepPeasantAlive)
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Muradin, "TRIGSTR_007", gg_snd_H07Muradin09, "TRIGSTR_023", bj_TIMETYPE_ADD, 0, false)
    call SetUnitPositionLocFacingBJ(udg_Arthas, GetRectCenter(gg_rct_MuradinArthasOffScreen), 180.00)
    call TriggerSleepAction(3.00)
    if ( Trig_Muradin_FindGoldMine_Func059001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Arthas, "move", GetRectCenter(gg_rct_MuradinArthasToMuradin))
    call TriggerSleepAction(( GetSoundDurationBJ(gg_snd_H07Muradin09) - 3.00 ))
    if ( Trig_Muradin_FindGoldMine_Func062001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, udg_Muradin, 0.40)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_024", gg_snd_H07Arthas10, "TRIGSTR_039", bj_TIMETYPE_ADD, 0, false)
    call TriggerSleepAction(GetSoundDurationBJ(gg_snd_H07Arthas12))
    if ( Trig_Muradin_FindGoldMine_Func066001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Muradin, "TRIGSTR_040", gg_snd_H07Muradin13, "TRIGSTR_057", bj_TIMETYPE_ADD, 0, false)
    call IssuePointOrderLocBJ(udg_Muradin, "move", GetRectCenter(gg_rct_MuradinToArthas))
    call CameraSetupApplyForPlayer(true, gg_cam_MuradinConversationCloseup, Player(1), 4.00)
    call IssuePointOrderLocBJ(gg_unit_hfoo_0020, "move", GetRectCenter(gg_rct_MuradinIntro_Footman01MoveAfter))
    call IssuePointOrderLocBJ(gg_unit_hfoo_0022, "move", GetRectCenter(gg_rct_MuradinIntro_Footman02MoveAfter))
    call IssuePointOrderLocBJ(gg_unit_hfoo_0110, "move", GetRectCenter(gg_rct_MuradinIntro_Footman03MoveAfter))
    call IssuePointOrderLocBJ(gg_unit_hcth_0023, "move", GetRectCenter(gg_rct_MuradinIntro_CaptainMoveAfter))
    call IssuePointOrderLocBJ(gg_unit_hmpr_0019, "move", GetRectCenter(gg_rct_MuradinIntro_PriestMoveAfter))
    call TriggerSleepAction(GetSoundDurationBJ(gg_snd_H07Muradin13))
    if ( Trig_Muradin_FindGoldMine_Func076001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_058", gg_snd_H07Arthas14, "TRIGSTR_059", bj_TIMETYPE_ADD, 0, true)
    if ( Trig_Muradin_FindGoldMine_Func078001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Muradin, "TRIGSTR_060", gg_snd_H07Muradin15, "TRIGSTR_061", bj_TIMETYPE_ADD, 0.00, false)
    call SetPlayerAllianceBJ(Player(8), ALLIANCE_SHARED_VISION, true, Player(1))
    call TriggerSleepAction(4.00)
    if ( Trig_Muradin_FindGoldMine_Func082001() ) then
        return
    else
        call DoNothing()
    endif
    call SetPlayerAllianceBJ(Player(3), ALLIANCE_PASSIVE, false, Player(8))
    call SetPlayerAllianceBJ(Player(8), ALLIANCE_PASSIVE, false, Player(3))
    call CreateNUnitsAtLoc(1, 'ucry', udg_PlayerCryptFiend, GetRectCenter(gg_rct_SpawnCryptFiend), 0.00)
    call RemoveGuardPosition(GetLastCreatedUnit())
    call IssueTargetOrderBJ(GetLastCreatedUnit(), "attack", gg_unit_hgtw_0005)
    call CreateNUnitsAtLoc(1, 'ugho', udg_PlayerCryptFiend, GetRectCenter(gg_rct_SpawnGhouls), 0.00)
    call RemoveGuardPosition(GetLastCreatedUnit())
    call IssueTargetOrderBJ(GetLastCreatedUnit(), "attack", gg_unit_hgtw_0005)
    call CameraSetupApplyForPlayer(true, gg_cam_MuradinViewCaptiveDwarves, Player(1), 0.01)
    call TriggerSleepAction(0.01)
    if ( Trig_Muradin_FindGoldMine_Func093001() ) then
        return
    else
        call DoNothing()
    endif
    call SetCameraFieldForPlayer(Player(1), CAMERA_FIELD_ROTATION, 60.00, 5.00)
    call WaitForSoundBJ(gg_snd_H07Muradin15, 0)
    if ( Trig_Muradin_FindGoldMine_Func096001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_MuradinConversationCloseup, Player(1), 0.01)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_062", gg_snd_H07Arthas16, "TRIGSTR_063", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Muradin_FindGoldMine_Func099001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.50)
    if ( Trig_Muradin_FindGoldMine_Func101001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg_Muradin_End)
endfunction

//===========================================================================
function InitTrig_Muradin_FindGoldMine takes nothing returns nothing
    set gg_trg_Muradin_FindGoldMine=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Muradin_FindGoldMine, gg_rct_MuradinIntro_ArthasMove)
    call TriggerAddCondition(gg_trg_Muradin_FindGoldMine, Condition(function Trig_Muradin_FindGoldMine_Conditions))
    call TriggerAddAction(gg_trg_Muradin_FindGoldMine, function Trig_Muradin_FindGoldMine_Actions)
endfunction

//===========================================================================
// Trigger: Muradin KeepPeasantAlive
//===========================================================================
function Trig_Muradin_KeepPeasantAlive_Actions takes nothing returns nothing
    call SetUnitLifePercentBJ(GetAttackedUnitBJ(), 100)
endfunction

//===========================================================================
function InitTrig_Muradin_KeepPeasantAlive takes nothing returns nothing
    set gg_trg_Muradin_KeepPeasantAlive=CreateTrigger()
    call DisableTrigger(gg_trg_Muradin_KeepPeasantAlive)
    call TriggerRegisterUnitEvent(gg_trg_Muradin_KeepPeasantAlive, gg_unit_hpea_0087, EVENT_UNIT_ATTACKED)
    call TriggerAddAction(gg_trg_Muradin_KeepPeasantAlive, function Trig_Muradin_KeepPeasantAlive_Actions)
endfunction

//===========================================================================
// Trigger: Muradin End
//===========================================================================
function Trig_Muradin_End_Func026002 takes nothing returns nothing
    call SetUnitOwner(GetEnumUnit(), Player(1), true)
endfunction

function Trig_Muradin_End_Actions takes nothing returns nothing
    call DisableTrigger(gg_trg_Muradin_CinematicEscape)
    set udg_MuradinCinematicRunning=false
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    call CameraSetupApplyForPlayer(true, gg_cam_MuradinFinal, Player(1), 0.00)
    call TriggerSleepAction(1.00)
    call ResetToGameCameraForPlayer(Player(1), 0.00)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call SetUnitPositionLoc(gg_unit_hpea_0087, GetRectCenter(gg_rct_MuradinPeon01Retreat))
    call SetUnitLifeBJ(gg_unit_hpea_0087, 50.00)
    call SetUnitPositionLoc(gg_unit_hpea_0088, GetRectCenter(gg_rct_MuradinPeon02Retreat))
    call SetUnitPositionLoc(gg_unit_hpea_0089, GetRectCenter(gg_rct_MuradinPeon03Retreat))
    // CREATE STRUCTURES
    call CreateNUnitsAtLoc(1, 'htow', Player(1), GetRectCenter(gg_rct_MuradinBuildTownHall), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'hhou', Player(1), GetRectCenter(gg_rct_MuradinBuildFarm01), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'hhou', Player(1), GetRectCenter(gg_rct_MuradinBuildFarm02), bj_UNIT_FACING)
    call IssueTargetOrderBJ(gg_unit_hpea_0087, "harvest", gg_unit_ngol_0004)
    call IssueTargetOrderBJ(gg_unit_hpea_0088, "harvest", gg_unit_ngol_0004)
    call IssueTargetOrderBJ(gg_unit_hpea_0089, "harvest", gg_unit_ngol_0004)
    call SetSkyModel(null)
    call UseTimeOfDayBJ(true)
    call CinematicModeBJ(false, GetPlayersAll())
    // RESET PATROLS
    call ConditionalTriggerExecute(gg_trg_RestartCreepPatrols)
    // GIVE MURADIN TO PLAYER
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(7)), function Trig_Muradin_End_Func026002)
    call SelectHeroSkill(udg_Muradin, 'AHtb')
    // ACTIVATE AI
    call CommandAI(Player(6), 0, 0)
    call CommandAI(udg_PlayerCryptFiend, 0, 0)
    // RESET ALLIANCES
    call SetPlayerAllianceBJ(Player(8), ALLIANCE_SHARED_VISION, true, Player(1))
    call SetPlayerAllianceStateBJ(Player(8), udg_PlayerCryptFiend, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(udg_PlayerCryptFiend, Player(8), bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceBJ(Player(1), ALLIANCE_PASSIVE, false, Player(PLAYER_NEUTRAL_AGGRESSIVE))
    call SetPlayerAllianceBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), ALLIANCE_PASSIVE, false, Player(1))
    // RESET HEROES
    call SetUnitInvulnerable(udg_Arthas, false)
    call SetUnitInvulnerable(udg_Muradin, false)
    call ResetUnitAnimation(udg_Arthas)
    call ResetUnitAnimation(udg_Muradin)
    // RESET SELECTION
    call SelectGroupBJ(udg_UnitGroupSelection)
    // QUEST SETUP
    call TriggerExecute(gg_trg_ChangeDefeatConditions)
    call QuestSetCompletedBJ(udg_QuestTownHall, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_064")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call PingMinimapLocForForce(GetPlayersAll(), GetRectCenter(gg_rct_CaptiveDwarves), 1.00)
    call SetCameraQuickPositionLocForPlayer(Player(1), GetRectCenter(gg_rct_CaptiveDwarves))
    call QuestSetDiscoveredBJ(udg_QuestMuradinMen, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_065")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call StartTimerBJ(udg_TimerGyroAcquired, false, 5.00)
    call QueuedTriggerRemoveBJ(gg_trg_PlayMuradinIntroCinematic)
endfunction

//===========================================================================
function InitTrig_Muradin_End takes nothing returns nothing
    set gg_trg_Muradin_End=CreateTrigger()
    call TriggerAddAction(gg_trg_Muradin_End, function Trig_Muradin_End_Actions)
endfunction

//===========================================================================
// Trigger: Muradin CinematicEscape
//===========================================================================
function Trig_Muradin_CinematicEscape_Func021002 takes nothing returns nothing
    call SetUnitOwner(GetEnumUnit(), Player(1), true)
endfunction

function Trig_Muradin_CinematicEscape_Actions takes nothing returns nothing
    // COMMON ESCAPE
    call DisableTrigger(GetTriggeringTrigger())
    call StopSoundBJ(GetLastPlayedSound(), true)
    set udg_MuradinCinematicEscape=true
    set udg_MuradinCinematicRunning=false
    call DisableTrigger(gg_trg_Muradin_KeepPeasantAlive)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(2.00)
    call CameraSetupApplyForPlayer(true, gg_cam_MuradinFinal, Player(1), 0.00)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.05)
    call ResetToGameCameraForPlayer(Player(1), 0.00)
    call SetSkyModel(null)
    call UseTimeOfDayBJ(true)
    call CinematicModeBJ(false, GetPlayersAll())
    call FogModifierStop(udg_VisibilityDwarf01)
    call FogModifierStop(udg_VisibilityDwarf02)
    // RESET PATROLS
    call ConditionalTriggerExecute(gg_trg_RestartCreepPatrols)
    // GIVE MURADIN TO PLAYER
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(7)), function Trig_Muradin_CinematicEscape_Func021002)
    call SelectHeroSkill(udg_Muradin, 'AHtb')
    // MOVE UNITS
    call SetUnitPositionLoc(gg_unit_hpea_0087, GetRectCenter(gg_rct_MuradinPeon01Retreat))
    call SetUnitLifeBJ(gg_unit_hpea_0087, 50.00)
    call SetUnitPositionLoc(gg_unit_hpea_0088, GetRectCenter(gg_rct_MuradinPeon02Retreat))
    call SetUnitPositionLoc(gg_unit_hpea_0089, GetRectCenter(gg_rct_MuradinPeon03Retreat))
    call IssueTargetOrderBJ(gg_unit_hpea_0087, "harvest", gg_unit_ngol_0004)
    call IssueTargetOrderBJ(gg_unit_hpea_0088, "harvest", gg_unit_ngol_0004)
    call IssueTargetOrderBJ(gg_unit_hpea_0089, "harvest", gg_unit_ngol_0004)
    call SetUnitPositionLocFacingLocBJ(udg_Arthas, GetRectCenter(gg_rct_MuradinArthasToMuradin), GetRectCenter(gg_rct_MuradinToArthas))
    call SetUnitPositionLocFacingLocBJ(udg_Muradin, GetRectCenter(gg_rct_MuradinToArthas), GetRectCenter(gg_rct_MuradinArthasToMuradin))
    call SetUnitPositionLoc(gg_unit_hfoo_0020, GetRectCenter(gg_rct_MuradinIntro_Footman01MoveAfter))
    call SetUnitPositionLoc(gg_unit_hfoo_0022, GetRectCenter(gg_rct_MuradinIntro_Footman02MoveAfter))
    call SetUnitPositionLoc(gg_unit_hfoo_0110, GetRectCenter(gg_rct_MuradinIntro_Footman03MoveAfter))
    call SetUnitPositionLoc(udg_Captain, GetRectCenter(gg_rct_MuradinIntro_CaptainMoveAfter))
    call SetUnitPositionLoc(gg_unit_hmpr_0019, GetRectCenter(gg_rct_MuradinIntro_PriestMoveAfter))
    // CREATE STRUCTURES
    call CreateNUnitsAtLoc(1, 'htow', Player(1), GetRectCenter(gg_rct_MuradinBuildTownHall), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'hhou', Player(1), GetRectCenter(gg_rct_MuradinBuildFarm01), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'hhou', Player(1), GetRectCenter(gg_rct_MuradinBuildFarm02), bj_UNIT_FACING)
    // ACTIVATE AI
    call CommandAI(Player(6), 0, 0)
    call CommandAI(udg_PlayerCryptFiend, 0, 0)
    // RESET ALLIANCES
    call SetPlayerAllianceBJ(Player(8), ALLIANCE_SHARED_VISION, true, Player(1))
    call SetPlayerAllianceStateBJ(Player(8), udg_PlayerCryptFiend, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(udg_PlayerCryptFiend, Player(8), bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceBJ(Player(1), ALLIANCE_PASSIVE, false, Player(PLAYER_NEUTRAL_AGGRESSIVE))
    call SetPlayerAllianceBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), ALLIANCE_PASSIVE, false, Player(1))
    // RESET HEROES
    call SetUnitManaBJ(udg_Muradin, 282.00)
    call SetUnitInvulnerable(udg_Arthas, false)
    call SetUnitInvulnerable(udg_Muradin, false)
    call ResetUnitAnimation(udg_Arthas)
    call ResetUnitAnimation(udg_Muradin)
    // RESET SELECTION
    call SelectGroupBJ(udg_UnitGroupSelection)
    // QUEST SETUP
    call TriggerExecute(gg_trg_ChangeDefeatConditions)
    call QuestSetCompletedBJ(udg_QuestTownHall, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_053")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call PingMinimapLocForForce(GetPlayersAll(), GetRectCenter(gg_rct_CaptiveDwarves), 1.00)
    call SetCameraQuickPositionLocForPlayer(Player(1), GetRectCenter(gg_rct_CaptiveDwarves))
    call QuestSetDiscoveredBJ(udg_QuestMuradinMen, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_054")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call StartTimerBJ(udg_TimerGyroAcquired, false, 5.00)
    call QueuedTriggerRemoveBJ(gg_trg_PlayMuradinIntroCinematic)
endfunction

//===========================================================================
function InitTrig_Muradin_CinematicEscape takes nothing returns nothing
    set gg_trg_Muradin_CinematicEscape=CreateTrigger()
    call DisableTrigger(gg_trg_Muradin_CinematicEscape)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Muradin_CinematicEscape, Player(1))
    call TriggerAddAction(gg_trg_Muradin_CinematicEscape, function Trig_Muradin_CinematicEscape_Actions)
endfunction

//===========================================================================
// Trigger: KillOrangeTroopsLeaving
//===========================================================================
function Trig_KillOrangeTroopsLeaving_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetLeavingUnit()) == udg_PlayerCryptFiend ) ) then
        return false
    endif
    if ( not ( CountUnitsInGroup(GetUnitsInRectOfPlayer(gg_rct_OrangeGreyFailsafe, Player(1))) == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_KillOrangeTroopsLeaving_Actions takes nothing returns nothing
    call KillUnit(GetLeavingUnit())
endfunction

//===========================================================================
function InitTrig_KillOrangeTroopsLeaving takes nothing returns nothing
    set gg_trg_KillOrangeTroopsLeaving=CreateTrigger()
    call TriggerRegisterLeaveRectSimple(gg_trg_KillOrangeTroopsLeaving, gg_rct_CaptiveDwarves)
    call TriggerAddCondition(gg_trg_KillOrangeTroopsLeaving, Condition(function Trig_KillOrangeTroopsLeaving_Conditions))
    call TriggerAddAction(gg_trg_KillOrangeTroopsLeaving, function Trig_KillOrangeTroopsLeaving_Actions)
endfunction

//===========================================================================
// Trigger: MoveGreyBack
//===========================================================================
function Trig_MoveGreyBack_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetLeavingUnit()) == Player(8) ) ) then
        return false
    endif
    return true
endfunction

function Trig_MoveGreyBack_Actions takes nothing returns nothing
    call IssuePointOrderLocBJ(GetLeavingUnit(), "move", GetRectCenter(gg_rct_CaptiveDwarves))
endfunction

//===========================================================================
function InitTrig_MoveGreyBack takes nothing returns nothing
    set gg_trg_MoveGreyBack=CreateTrigger()
    call TriggerRegisterLeaveRectSimple(gg_trg_MoveGreyBack, gg_rct_CaptiveDwarves)
    call TriggerAddCondition(gg_trg_MoveGreyBack, Condition(function Trig_MoveGreyBack_Conditions))
    call TriggerAddAction(gg_trg_MoveGreyBack, function Trig_MoveGreyBack_Actions)
endfunction

//===========================================================================
// Trigger: Dwarves Spotted
//===========================================================================
function Trig_Dwarves_Spotted_Func004001 takes nothing returns boolean
    return ( GetEnteringUnit() == udg_Arthas )
endfunction

function Trig_Dwarves_Spotted_Func004002 takes nothing returns boolean
    return ( GetEnteringUnit() == udg_Muradin )
endfunction

function Trig_Dwarves_Spotted_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetTriggerUnit()) == Player(1) ) ) then
        return false
    endif
    if ( not GetBooleanOr(Trig_Dwarves_Spotted_Func004001(), Trig_Dwarves_Spotted_Func004002()) ) then
        return false
    endif
    return true
endfunction

function Trig_Dwarves_Spotted_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_Dwarves_Spotted_Message, true)
endfunction

//===========================================================================
function InitTrig_Dwarves_Spotted takes nothing returns nothing
    set gg_trg_Dwarves_Spotted=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Dwarves_Spotted, gg_rct_TriggerDwarvesFound)
    call TriggerAddCondition(gg_trg_Dwarves_Spotted, Condition(function Trig_Dwarves_Spotted_Conditions))
    call TriggerAddAction(gg_trg_Dwarves_Spotted, function Trig_Dwarves_Spotted_Actions)
endfunction

//===========================================================================
// Trigger: Dwarves Spotted Message
//===========================================================================
function Trig_Dwarves_Spotted_Message_Func001001001 takes nothing returns boolean
    return ( RectContainsUnit(gg_rct_TriggerDwarvesFound, udg_Arthas) == true )
endfunction

function Trig_Dwarves_Spotted_Message_Func001001002 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_Arthas) == true )
endfunction

function Trig_Dwarves_Spotted_Message_Func001001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Dwarves_Spotted_Message_Func001001001(), Trig_Dwarves_Spotted_Message_Func001001002())
endfunction

function Trig_Dwarves_Spotted_Message_Func001002001 takes nothing returns boolean
    return ( RectContainsUnit(gg_rct_TriggerDwarvesFound, udg_Muradin) == true )
endfunction

function Trig_Dwarves_Spotted_Message_Func001002002 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_Muradin) == true )
endfunction

function Trig_Dwarves_Spotted_Message_Func001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Dwarves_Spotted_Message_Func001002001(), Trig_Dwarves_Spotted_Message_Func001002002())
endfunction

function Trig_Dwarves_Spotted_Message_Conditions takes nothing returns boolean
    if ( not GetBooleanOr(Trig_Dwarves_Spotted_Message_Func001001(), Trig_Dwarves_Spotted_Message_Func001002()) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Dwarves_Spotted_Message_Func009001001 takes nothing returns boolean
    return ( DistanceBetweenPoints(GetUnitLoc(udg_Muradin), GetRectCenter(gg_rct_TriggerDwarvesFound)) <= 2560.00 )
endfunction

function Trig_Dwarves_Spotted_Message_Func009001002 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_Muradin) == true )
endfunction

function Trig_Dwarves_Spotted_Message_Func009001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Dwarves_Spotted_Message_Func009001001(), Trig_Dwarves_Spotted_Message_Func009001002())
endfunction

function Trig_Dwarves_Spotted_Message_Func010001001 takes nothing returns boolean
    return ( DistanceBetweenPoints(GetUnitLoc(udg_Arthas), GetRectCenter(gg_rct_TriggerDwarvesFound)) <= 2560.00 )
endfunction

function Trig_Dwarves_Spotted_Message_Func010001002 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_Arthas) == true )
endfunction

function Trig_Dwarves_Spotted_Message_Func010001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Dwarves_Spotted_Message_Func010001001(), Trig_Dwarves_Spotted_Message_Func010001002())
endfunction

function Trig_Dwarves_Spotted_Message_Actions takes nothing returns nothing
    call PingMinimapLocForForce(GetPlayersAll(), GetRectCenter(gg_rct_CaptiveDwarves), 1.00)
    call CreateNUnitsAtLoc(1, 'ugho', udg_PlayerCryptFiend, GetRectCenter(gg_rct_SpawnCryptFiend), 0.00)
    call RemoveGuardPosition(GetLastCreatedUnit())
    call CreateNUnitsAtLoc(1, 'ucry', udg_PlayerCryptFiend, GetRectCenter(gg_rct_SpawnGhouls), 0.00)
    call RemoveGuardPosition(GetLastCreatedUnit())
    call SetSpeechVolumeGroupsBJ()
    if ( Trig_Dwarves_Spotted_Message_Func009001() ) then
        call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Muradin, "TRIGSTR_145", gg_snd_H07Muradin18, "TRIGSTR_146", bj_TIMETYPE_ADD, 0, true)
    else
        call DoNothing()
    endif
    if ( Trig_Dwarves_Spotted_Message_Func010001() ) then
        call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_153", gg_snd_H07Arthas19, "TRIGSTR_154", bj_TIMETYPE_ADD, 0, true)
    else
        call DoNothing()
    endif
    call VolumeGroupResetBJ()
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Dwarves_Spotted_Message takes nothing returns nothing
    set gg_trg_Dwarves_Spotted_Message=CreateTrigger()
    call TriggerAddCondition(gg_trg_Dwarves_Spotted_Message, Condition(function Trig_Dwarves_Spotted_Message_Conditions))
    call TriggerAddAction(gg_trg_Dwarves_Spotted_Message, function Trig_Dwarves_Spotted_Message_Actions)
endfunction

//===========================================================================
// Trigger: RescueDwarves
//===========================================================================
function Trig_RescueDwarves_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetEnteringUnit()) != 'hgyr' ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(GetEnteringUnit()) == Player(1) ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_RescueDwarves_Func003002 takes nothing returns nothing
    call RescueUnitBJ(GetEnumUnit(), Player(1), true)
endfunction

function Trig_RescueDwarves_Func006001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetFilterUnit()) == 'hpea' )
endfunction

function Trig_RescueDwarves_Func006002 takes nothing returns nothing
    call IssueImmediateOrderBJ(GetEnumUnit(), "returnresources")
endfunction

function Trig_RescueDwarves_Func008001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetFilterUnit()) == 'hpea' )
endfunction

function Trig_RescueDwarves_Func008002 takes nothing returns nothing
    call IssueTargetOrderBJ(GetEnumUnit(), "harvest", gg_unit_ngol_0095)
endfunction

function Trig_RescueDwarves_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call FlashQuestDialogButtonBJ()
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(8)), function Trig_RescueDwarves_Func003002)
    call QueuedTriggerAddBJ(gg_trg_Rescue_Dwarves_Message, true)
    call TriggerSleepAction(0.50)
    call ForGroupBJ(GetUnitsInRectMatching(gg_rct_CaptiveDwarfPeasantsReharvest, Condition(function Trig_RescueDwarves_Func006001002)), function Trig_RescueDwarves_Func006002)
    call TriggerSleepAction(3.00)
    call ForGroupBJ(GetUnitsInRectMatching(gg_rct_CaptiveDwarfPeasantsReharvest, Condition(function Trig_RescueDwarves_Func008001002)), function Trig_RescueDwarves_Func008002)
    call QueuedTriggerAddBJ(gg_trg_SteamTankMessage, true)
endfunction

//===========================================================================
function InitTrig_RescueDwarves takes nothing returns nothing
    set gg_trg_RescueDwarves=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_RescueDwarves, gg_rct_CaptiveDwarves)
    call TriggerAddCondition(gg_trg_RescueDwarves, Condition(function Trig_RescueDwarves_Conditions))
    call TriggerAddAction(gg_trg_RescueDwarves, function Trig_RescueDwarves_Actions)
endfunction

//===========================================================================
// Trigger: Rescue Dwarves Message
//===========================================================================
function Trig_Rescue_Dwarves_Message_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Rescue_Dwarves_Message_Actions takes nothing returns nothing
    call QuestSetCompletedBJ(udg_QuestMuradinMen, true)
    call QuestItemSetCompletedBJ(udg_QuestReqRescueDwarves, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_077")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Rescue_Dwarves_Message takes nothing returns nothing
    set gg_trg_Rescue_Dwarves_Message=CreateTrigger()
    call TriggerAddCondition(gg_trg_Rescue_Dwarves_Message, Condition(function Trig_Rescue_Dwarves_Message_Conditions))
    call TriggerAddAction(gg_trg_Rescue_Dwarves_Message, function Trig_Rescue_Dwarves_Message_Actions)
endfunction

//===========================================================================
// Trigger: PlayerEntersBase
//===========================================================================
function Trig_PlayerEntersBase_Conditions takes nothing returns boolean
    if ( not ( udg_ExitCinematicRunning == false ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(GetTriggerUnit()) == Player(1) ) ) then
        return false
    endif
    return true
endfunction

function Trig_PlayerEntersBase_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_PlayerAttackedByBase)
    call QueuedTriggerAddBJ(gg_trg_PlayerEntersBaseMessage, true)
endfunction

//===========================================================================
function InitTrig_PlayerEntersBase takes nothing returns nothing
    set gg_trg_PlayerEntersBase=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_PlayerEntersBase, gg_rct_MainUndeadBase)
    call TriggerAddCondition(gg_trg_PlayerEntersBase, Condition(function Trig_PlayerEntersBase_Conditions))
    call TriggerAddAction(gg_trg_PlayerEntersBase, function Trig_PlayerEntersBase_Actions)
endfunction

//===========================================================================
// Trigger: PlayerEntersBaseMessage
//===========================================================================
function Trig_PlayerEntersBaseMessage_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_PlayerEntersBaseMessage_Actions takes nothing returns nothing
    call PingMinimapLocForForce(GetPlayersAll(), GetRectCenter(gg_rct_MainUndeadBase), 1.00)
    call CreateFogModifierRadiusLocBJ(true, Player(1), FOG_OF_WAR_VISIBLE, GetRectCenter(gg_rct_MainUndeadBase), 1800.00)
    set udg_MainUndeadBaseVis=GetLastCreatedFogModifier()
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_084", gg_snd_H07Arthas26, "TRIGSTR_085", bj_TIMETYPE_ADD, 0.00, true)
    call VolumeGroupResetBJ()
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_PlayerEntersBaseMessage takes nothing returns nothing
    set gg_trg_PlayerEntersBaseMessage=CreateTrigger()
    call TriggerAddCondition(gg_trg_PlayerEntersBaseMessage, Condition(function Trig_PlayerEntersBaseMessage_Conditions))
    call TriggerAddAction(gg_trg_PlayerEntersBaseMessage, function Trig_PlayerEntersBaseMessage_Actions)
endfunction

//===========================================================================
// Trigger: PlayerAttackedByBase
//===========================================================================
function Trig_PlayerAttackedByBase_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetAttacker()) == Player(6) ) ) then
        return false
    endif
    if ( not ( RectContainsUnit(gg_rct_MainUndeadBase, GetAttacker()) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_PlayerAttackedByBase_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_PlayerEntersBase)
    call QueuedTriggerAddBJ(gg_trg_PlayerAttackedByBaseMessage, true)
endfunction

//===========================================================================
function InitTrig_PlayerAttackedByBase takes nothing returns nothing
    set gg_trg_PlayerAttackedByBase=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_PlayerAttackedByBase, Player(1), EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_PlayerAttackedByBase, Condition(function Trig_PlayerAttackedByBase_Conditions))
    call TriggerAddAction(gg_trg_PlayerAttackedByBase, function Trig_PlayerAttackedByBase_Actions)
endfunction

//===========================================================================
// Trigger: PlayerAttackedByBaseMessage
//===========================================================================
function Trig_PlayerAttackedByBaseMessage_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_PlayerAttackedByBaseMessage_Actions takes nothing returns nothing
    call PingMinimapLocForForce(GetPlayersAll(), GetRectCenter(gg_rct_MainUndeadBase), 1.00)
    call CreateFogModifierRadiusLocBJ(true, Player(1), FOG_OF_WAR_VISIBLE, GetRectCenter(gg_rct_MainUndeadBase), 1800.00)
    set udg_MainUndeadBaseVis=GetLastCreatedFogModifier()
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_089", gg_snd_H07Arthas26, "TRIGSTR_090", bj_TIMETYPE_ADD, 0.00, true)
    call VolumeGroupResetBJ()
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_PlayerAttackedByBaseMessage takes nothing returns nothing
    set gg_trg_PlayerAttackedByBaseMessage=CreateTrigger()
    call TriggerAddCondition(gg_trg_PlayerAttackedByBaseMessage, Condition(function Trig_PlayerAttackedByBaseMessage_Conditions))
    call TriggerAddAction(gg_trg_PlayerAttackedByBaseMessage, function Trig_PlayerAttackedByBaseMessage_Actions)
endfunction

//===========================================================================
// Trigger: TriggerExitCinematic
//===========================================================================
function Trig_TriggerExitCinematic_Actions takes nothing returns nothing
    call QueuedTriggerAddBJ(gg_trg_PlayExitCinematic, false)
endfunction

//===========================================================================
function InitTrig_TriggerExitCinematic takes nothing returns nothing
    set gg_trg_TriggerExitCinematic=CreateTrigger()
    call TriggerAddAction(gg_trg_TriggerExitCinematic, function Trig_TriggerExitCinematic_Actions)
endfunction

//===========================================================================
// Trigger: PlayExitCinematic
//===========================================================================
function Trig_PlayExitCinematic_Actions takes nothing returns nothing
    call TriggerExecute(gg_trg_Level_Enable)
    set udg_ExitCinematicRunning=true
    call UseTimeOfDayBJ(false)
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\DarkAgents.mp3")
    call EnableTrigger(gg_trg_ExitCinematicEscape)
    call TriggerExecute(gg_trg_Exit_CinematicModeOn)
    call TriggerExecute(gg_trg_Exit_InitialCamera)
endfunction

//===========================================================================
function InitTrig_PlayExitCinematic takes nothing returns nothing
    set gg_trg_PlayExitCinematic=CreateTrigger()
    call TriggerAddAction(gg_trg_PlayExitCinematic, function Trig_PlayExitCinematic_Actions)
endfunction

//===========================================================================
// Trigger: Exit CinematicModeOn
//===========================================================================
function Trig_Exit_CinematicModeOn_Actions takes nothing returns nothing
    call CinematicModeBJ(true, GetPlayersAll())
endfunction

//===========================================================================
function InitTrig_Exit_CinematicModeOn takes nothing returns nothing
    set gg_trg_Exit_CinematicModeOn=CreateTrigger()
    call TriggerAddAction(gg_trg_Exit_CinematicModeOn, function Trig_Exit_CinematicModeOn_Actions)
endfunction

//===========================================================================
// Trigger: Exit InitialCamera
//===========================================================================
function Trig_Exit_InitialCamera_Func004001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_InitialCamera_Func007001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_InitialCamera_Func011001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_InitialCamera_Actions takes nothing returns nothing
    call SetSkyModel("Environment\\Sky\\Sky\\SkyLight.mdl")
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 2.00, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(2.00)
    if ( Trig_Exit_InitialCamera_Func004001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg_Exit_Position_Actors)
    call TriggerSleepAction(1.00)
    if ( Trig_Exit_InitialCamera_Func007001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 2.00, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call CameraSetupApplyForPlayer(true, gg_cam_ExitArthasMuradinTalk, Player(1), 0.01)
    call TriggerSleepAction(2.00)
    if ( Trig_Exit_InitialCamera_Func011001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg_Exit_KnightTalks)
endfunction

//===========================================================================
function InitTrig_Exit_InitialCamera takes nothing returns nothing
    set gg_trg_Exit_InitialCamera=CreateTrigger()
    call TriggerAddAction(gg_trg_Exit_InitialCamera, function Trig_Exit_InitialCamera_Actions)
endfunction

//===========================================================================
// Trigger: Exit Position Actors
//===========================================================================
function Trig_Exit_Position_Actors_Func002002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Exit_Position_Actors_Func006002 takes nothing returns nothing
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, GetEnumUnit())
endfunction

function Trig_Exit_Position_Actors_Func007001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_Captain) == true )
endfunction

function Trig_Exit_Position_Actors_Func008001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_Captain) == true )
endfunction

function Trig_Exit_Position_Actors_Func009001 takes nothing returns boolean
    return ( IsUnitDeadBJ(udg_Arthas) == true )
endfunction

function Trig_Exit_Position_Actors_Func010001 takes nothing returns boolean
    return ( IsUnitDeadBJ(udg_Muradin) == true )
endfunction

function Trig_Exit_Position_Actors_Func013001 takes nothing returns boolean
    return ( IsUnitDeadBJ(udg_Muradin) == true )
endfunction

function Trig_Exit_Position_Actors_Actions takes nothing returns nothing
    call ClearSelection()
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Exit_Position_Actors_Func002002)
    call ShowUnitShow(udg_Arthas)
    call ShowUnitShow(udg_Muradin)
    call ShowUnitShow(udg_Captain)
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(1)), function Trig_Exit_Position_Actors_Func006002)
    if ( Trig_Exit_Position_Actors_Func007001() ) then
        call SetUnitPositionLoc(udg_Captain, GetRectCenter(gg_rct_ExitKnightOffScreen))
    else
        call CreateNUnitsAtLoc(1, 'hcth', Player(1), GetRectCenter(gg_rct_ExitKnightOffScreen), 0.00)
    endif
    if ( Trig_Exit_Position_Actors_Func008001() ) then
        set udg_ExitKnight=udg_Captain
    else
        set udg_ExitKnight=GetLastCreatedUnit()
    endif
    if ( Trig_Exit_Position_Actors_Func009001() ) then
        call ReviveHeroLoc(udg_Arthas, GetRectCenter(gg_rct_ExitArthasLooking), false)
    else
        call SetUnitPositionLoc(udg_Arthas, GetRectCenter(gg_rct_ExitArthasLooking))
    endif
    if ( Trig_Exit_Position_Actors_Func010001() ) then
        call ReviveHeroLoc(udg_Muradin, GetRectCenter(gg_rct_ExitMuradinPosition), false)
    else
        call SetUnitPositionLoc(udg_Muradin, GetRectCenter(gg_rct_ExitMuradinPosition))
    endif
    call SetUnitFacingToFaceLocTimed(udg_Arthas, GetRectCenter(gg_rct_ExitArthasFacing), 0)
    call SetUnitAnimationWithRarity(udg_Arthas, "stand", RARITY_FREQUENT)
    if ( Trig_Exit_Position_Actors_Func013001() ) then
        call ReviveHeroLoc(udg_Muradin, GetRectCenter(gg_rct_ExitMuradinPosition), false)
    else
        call SetUnitPositionLoc(udg_Muradin, GetRectCenter(gg_rct_ExitMuradinPosition))
    endif
    call PauseAllUnitsBJ(true)
    call PauseUnitBJ(false, udg_Arthas)
    call PauseUnitBJ(false, udg_Captain)
    call PauseUnitBJ(false, udg_ExitKnight)
    call PauseUnitBJ(false, udg_Muradin)
    call SetUnitFacingToFaceLocTimed(udg_Muradin, GetRectCenter(gg_rct_ExitMuradinFacing), 0)
    call SetUnitAnimationWithRarity(udg_Muradin, "stand", RARITY_FREQUENT)
endfunction

//===========================================================================
function InitTrig_Exit_Position_Actors takes nothing returns nothing
    set gg_trg_Exit_Position_Actors=CreateTrigger()
    call TriggerAddAction(gg_trg_Exit_Position_Actors, function Trig_Exit_Position_Actors_Actions)
endfunction

//===========================================================================
// Trigger: Exit KnightTalks
//===========================================================================
function Trig_Exit_KnightTalks_Func001001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_KnightTalks_Func004001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_KnightTalks_Func006001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_KnightTalks_Func009001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_KnightTalks_Func011001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_KnightTalks_Func013001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_KnightTalks_Func017001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_KnightTalks_Func021001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_KnightTalks_Func023001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_KnightTalks_Func025001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_KnightTalks_Func027001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_KnightTalks_Func035001 takes nothing returns boolean
    return ( udg_ExitCinematicEscape == true )
endfunction

function Trig_Exit_KnightTalks_Actions takes nothing returns nothing
    if ( Trig_Exit_KnightTalks_Func001001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, udg_Muradin, 0.20)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_078", gg_snd_H07Arthas20, "TRIGSTR_079", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Exit_KnightTalks_Func004001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.50)
    if ( Trig_Exit_KnightTalks_Func006001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Muradin, udg_Arthas, 0.40)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Muradin, "TRIGSTR_080", gg_snd_H07Muradin21, "TRIGSTR_081", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Exit_KnightTalks_Func009001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.50)
    if ( Trig_Exit_KnightTalks_Func011001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Muradin, "TRIGSTR_082", gg_snd_H07Muradin22, "TRIGSTR_083", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Exit_KnightTalks_Func013001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_ExitKnight, "move", GetRectCenter(gg_rct_ExitKnightToArthas))
    call CameraSetupApplyForPlayer(true, gg_cam_ExitArthasCloseup, Player(1), 2.00)
    call TriggerSleepAction(2.00)
    if ( Trig_Exit_KnightTalks_Func017001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Muradin, udg_ExitKnight, 0.20)
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, udg_ExitKnight, 0.20)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ExitKnight, "TRIGSTR_093", gg_snd_H07Knight27, "TRIGSTR_094", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Exit_KnightTalks_Func021001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.50)
    if ( Trig_Exit_KnightTalks_Func023001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_095", gg_snd_H07Arthas28, "TRIGSTR_096", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Exit_KnightTalks_Func025001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.50)
    if ( Trig_Exit_KnightTalks_Func027001() ) then
        return
    else
        call DoNothing()
    endif
    call ResetUnitLookAt(udg_Arthas)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ExitKnight, "TRIGSTR_097", gg_snd_H07Knight29, "TRIGSTR_098", bj_TIMETYPE_ADD, 0.00, true)
    call IssuePointOrderLocBJ(udg_ExitKnight, "move", GetRectCenter(gg_rct_ExitKnightOffScreen))
    call SetStackedSoundBJ(false, gg_snd_WaterWavesLoop1, gg_rct_Ocean01)
    call SetStackedSoundBJ(false, gg_snd_WaterWavesLoop1, gg_rct_Ocean02)
    call SetStackedSoundBJ(false, gg_snd_WaterWavesLoop1, gg_rct_Ocean03)
    call TriggerSleepAction(2.00)
    if ( Trig_Exit_KnightTalks_Func035001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 2.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(2.00)
    call QueuedTriggerRemoveBJ(gg_trg_PlayExitCinematic)
    call TriggerExecute(gg_trg_Level_Victory)
endfunction

//===========================================================================
function InitTrig_Exit_KnightTalks takes nothing returns nothing
    set gg_trg_Exit_KnightTalks=CreateTrigger()
    call TriggerAddAction(gg_trg_Exit_KnightTalks, function Trig_Exit_KnightTalks_Actions)
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
    call QueuedTriggerRemoveBJ(gg_trg_PlayExitCinematic)
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
// Trigger: Level Enable
//===========================================================================
function Trig_Level_Enable_Actions takes nothing returns nothing
    call StoreUnitBJ(udg_Arthas, "Arthas", "Human08", GetLastCreatedGameCacheBJ())
    call StoreUnitBJ(udg_Muradin, "Muradin", "Human08", GetLastCreatedGameCacheBJ())
    call SaveGameCacheBJ(GetLastCreatedGameCacheBJ())
    call SetMissionAvailableBJ(true, bj_MISSION_INDEX_H10)
endfunction

//===========================================================================
function InitTrig_Level_Enable takes nothing returns nothing
    set gg_trg_Level_Enable=CreateTrigger()
    call TriggerAddAction(gg_trg_Level_Enable, function Trig_Level_Enable_Actions)
endfunction

//===========================================================================
// Trigger: Level Victory
//===========================================================================
function Trig_Level_Victory_Actions takes nothing returns nothing
    call SetNextLevelBJ("Maps\\Campaign\\Human08.w3m")
    call CustomVictoryBJ(Player(1), true, true)
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
    call CustomDefeatBJ(Player(1), "TRIGSTR_051")
endfunction

//===========================================================================
function InitTrig_Level_Defeat takes nothing returns nothing
    set gg_trg_Level_Defeat=CreateTrigger()
    call TriggerAddAction(gg_trg_Level_Defeat, function Trig_Level_Defeat_Actions)
endfunction

//===========================================================================
// Trigger: CheckGreenBuildings
//===========================================================================
function Trig_CheckGreenBuildings_Func003001001002001001 takes nothing returns boolean
    return ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == true )
endfunction

function Trig_CheckGreenBuildings_Func003001001002001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetFilterUnit()) != 'uzg1' )
endfunction

function Trig_CheckGreenBuildings_Func003001001002001 takes nothing returns boolean
    return GetBooleanAnd(Trig_CheckGreenBuildings_Func003001001002001001(), Trig_CheckGreenBuildings_Func003001001002001002())
endfunction

function Trig_CheckGreenBuildings_Func003001001002002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetFilterUnit()) != 'uzig' )
endfunction

function Trig_CheckGreenBuildings_Func003001001002002002 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_CheckGreenBuildings_Func003001001002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_CheckGreenBuildings_Func003001001002002001(), Trig_CheckGreenBuildings_Func003001001002002002())
endfunction

function Trig_CheckGreenBuildings_Func003001001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_CheckGreenBuildings_Func003001001002001(), Trig_CheckGreenBuildings_Func003001001002002())
endfunction

function Trig_CheckGreenBuildings_Conditions takes nothing returns boolean
    if ( not ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_STRUCTURE) == true ) ) then
        return false
    endif
    if ( not ( CountUnitsInGroup(GetUnitsOfPlayerMatching(Player(6), Condition(function Trig_CheckGreenBuildings_Func003001001002))) == 0 ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_CheckGreenBuildings_Actions takes nothing returns nothing
    set udg_GameOver=true
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_CheckPlayerBuildings)
    call QuestSetCompletedBJ(udg_QuestUndeadCitadel, true)
    call QuestItemSetCompletedBJ(udg_QuestReqDestroyMalGanis, true)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_164")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call TriggerExecute(gg_trg_TriggerExitCinematic)
endfunction

//===========================================================================
function InitTrig_CheckGreenBuildings takes nothing returns nothing
    set gg_trg_CheckGreenBuildings=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_CheckGreenBuildings, Player(6), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_CheckGreenBuildings, Condition(function Trig_CheckGreenBuildings_Conditions))
    call TriggerAddAction(gg_trg_CheckGreenBuildings, function Trig_CheckGreenBuildings_Actions)
endfunction

//===========================================================================
// Trigger: EarlyArthasDies
//===========================================================================
function Trig_EarlyArthasDies_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetDyingUnit()) == 'Hart' ) ) then
        return false
    endif
    if ( not ( udg_ArthasDefeatActive == true ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_EarlyArthasDies_Actions takes nothing returns nothing
    set udg_GameOver=true
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_MISSIONFAILED, "TRIGSTR_165")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call TriggerExecute(gg_trg_Level_Defeat)
endfunction

//===========================================================================
function InitTrig_EarlyArthasDies takes nothing returns nothing
    set gg_trg_EarlyArthasDies=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_EarlyArthasDies, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_EarlyArthasDies, Condition(function Trig_EarlyArthasDies_Conditions))
    call TriggerAddAction(gg_trg_EarlyArthasDies, function Trig_EarlyArthasDies_Actions)
endfunction

//===========================================================================
// Trigger: ChangeDefeatConditions
//===========================================================================
function Trig_ChangeDefeatConditions_Actions takes nothing returns nothing
    set udg_BuildingDefeatActive=true
    set udg_ArthasDefeatActive=false
endfunction

//===========================================================================
function InitTrig_ChangeDefeatConditions takes nothing returns nothing
    set gg_trg_ChangeDefeatConditions=CreateTrigger()
    call TriggerAddAction(gg_trg_ChangeDefeatConditions, function Trig_ChangeDefeatConditions_Actions)
endfunction

//===========================================================================
// Trigger: CheckPlayerBuildings
//===========================================================================
function Trig_CheckPlayerBuildings_Conditions takes nothing returns boolean
    if ( not ( GetPlayerStructureCount(Player(1), false) == 0 ) ) then
        return false
    endif
    if ( not ( udg_BuildingDefeatActive == true ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_CheckPlayerBuildings_Actions takes nothing returns nothing
    set udg_GameOver=true
    call DisableTrigger(gg_trg_CheckGreenBuildings)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_MISSIONFAILED, "TRIGSTR_166")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call TriggerExecute(gg_trg_Level_Defeat)
endfunction

//===========================================================================
function InitTrig_CheckPlayerBuildings takes nothing returns nothing
    set gg_trg_CheckPlayerBuildings=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_CheckPlayerBuildings, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_CheckPlayerBuildings, Condition(function Trig_CheckPlayerBuildings_Conditions))
    call TriggerAddAction(gg_trg_CheckPlayerBuildings, function Trig_CheckPlayerBuildings_Actions)
endfunction

//===========================================================================
// Trigger: Victory Cheat
//===========================================================================
function Trig_Victory_Cheat_Actions takes nothing returns nothing
    call TriggerExecute(gg_trg_Level_Enable)
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
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_fileio()
    call InitTrig_map_config()
    call InitTrig_status()
    call InitTrig_heroes()
    call InitTrig_item_locations()
    call InitTrig_debug()
    call InitTrig_zoom()
    call InitTrig_irregulars()
    call InitTrig_StartInitializationSequence()
    call InitTrig_InitializeVariables()
    call InitTrig_ChangePeonOwner()
    call InitTrig_StartingResources()
    call InitTrig_StartingAlliances()
    call InitTrig_StartingTOD()
    call InitTrig_StartingQuest()
    call InitTrig_StartAI()
    call InitTrig_StartMusic()
    call InitTrig_Setup_Scorescreen()
    call InitTrig_InitialCreepPatrols()
    call InitTrig_RestartCreepPatrols()
    call InitTrig_GreyGold()
    call InitTrig_GreyLumber()
    call InitTrig_GreenGold()
    call InitTrig_GreenLumber()
    call InitTrig_PurpleGold()
    call InitTrig_PurpleLumber()
    call InitTrig_Easy()
    call InitTrig_Normal()
    call InitTrig_NerubianSeerDeath()
    call InitTrig_Load_Heroes()
    call InitTrig_Load_Arthas()
    call InitTrig_SetArthasLevelsSkills()
    call InitTrig_SetMuradinLichLevelsSkills()
    call InitTrig_LimitArthasXP()
    call InitTrig_LimitMuradinXP()
    call InitTrig_TriggerIntroCinematic()
    call InitTrig_CinematicMode()
    call InitTrig_IntroInitialCamera()
    call InitTrig_BeginPeonMovement()
    call InitTrig_BeginPeonAttack()
    call InitTrig_PeonAReturn()
    call InitTrig_PeonAShore()
    call InitTrig_PeonBReturn()
    call InitTrig_PeonBShore()
    call InitTrig_IntroCharactersTalk()
    call InitTrig_ArthasSetsOff()
    call InitTrig_CinematicEnd()
    call InitTrig_IntroCinematicEscape()
    call InitTrig_DetectCrateDeath()
    call InitTrig_Ice_Troll_Attacks()
    call InitTrig_Ice_Troll_Message()
    call InitTrig_HutDies()
    call InitTrig_Gyrocopter()
    call InitTrig_GyrocopterMessage()
    call InitTrig_GyroRepair()
    call InitTrig_GyroRepairMessage()
    call InitTrig_SteamTankMessage()
    call InitTrig_TriggerMuradinIntroCinematic()
    call InitTrig_PlayMuradinIntroCinematic()
    call InitTrig_Muradin_DwarfVisibilityMods()
    call InitTrig_Muradin_InitialCamera()
    call InitTrig_Muradin_CinematicMode()
    call InitTrig_Muradin_PositionActors()
    call InitTrig_Muradin_ResetPeons()
    call InitTrig_Muradin_FindGoldMine()
    call InitTrig_Muradin_KeepPeasantAlive()
    call InitTrig_Muradin_End()
    call InitTrig_Muradin_CinematicEscape()
    call InitTrig_KillOrangeTroopsLeaving()
    call InitTrig_MoveGreyBack()
    call InitTrig_Dwarves_Spotted()
    call InitTrig_Dwarves_Spotted_Message()
    call InitTrig_RescueDwarves()
    call InitTrig_Rescue_Dwarves_Message()
    call InitTrig_PlayerEntersBase()
    call InitTrig_PlayerEntersBaseMessage()
    call InitTrig_PlayerAttackedByBase()
    call InitTrig_PlayerAttackedByBaseMessage()
    call InitTrig_TriggerExitCinematic()
    call InitTrig_PlayExitCinematic()
    call InitTrig_Exit_CinematicModeOn()
    call InitTrig_Exit_InitialCamera()
    call InitTrig_Exit_Position_Actors()
    call InitTrig_Exit_KnightTalks()
    call InitTrig_ExitCinematicEscape()
    call InitTrig_Level_Enable()
    call InitTrig_Level_Victory()
    call InitTrig_Level_Defeat()
    call InitTrig_CheckGreenBuildings()
    call InitTrig_EarlyArthasDies()
    call InitTrig_ChangeDefeatConditions()
    call InitTrig_CheckPlayerBuildings()
    call InitTrig_Victory_Cheat()
    call InitTrig_Defeat_Cheat()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_StartInitializationSequence)
    call ConditionalTriggerExecute(gg_trg_Easy)
    call ConditionalTriggerExecute(gg_trg_Normal)
endfunction

//***************************************************************************
//*
//*  Upgrades
//*
//***************************************************************************

function InitUpgrades_Player1 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(1), 'Rhhb', 0)
endfunction

function InitUpgrades_Player7 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(7), 'Rhgb', 0)
    call SetPlayerTechMaxAllowed(Player(7), 'Rhhb', 0)
endfunction

function InitUpgrades_Player8 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(8), 'Rhgb', 0)
    call SetPlayerTechMaxAllowed(Player(8), 'Rhhb', 0)
endfunction

function InitUpgrades takes nothing returns nothing
    call InitUpgrades_Player1()
    call InitUpgrades_Player7()
    call InitUpgrades_Player8()
endfunction

//***************************************************************************
//*
//*  TechTree
//*
//***************************************************************************

function InitTechTree_Player1 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(1), 'Hpal', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hamg', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hmkg', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hgry', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hgra', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hmtt', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hblm', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Oshd', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Ucrl', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Ewar', 0)
endfunction

function InitTechTree_Player3 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(3), 'ufro', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'uban', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'ugar', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'umtw', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'unec', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Hblm', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Oshd', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Ucrl', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Ewar', 0)
endfunction

function InitTechTree_Player6 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(6), 'ufro', 0)
    call SetPlayerTechMaxAllowed(Player(6), 'uban', 0)
    call SetPlayerTechMaxAllowed(Player(6), 'Udea', 0)
    call SetPlayerTechMaxAllowed(Player(6), 'Ulic', 0)
    call SetPlayerTechMaxAllowed(Player(6), 'Udre', 0)
endfunction

function InitTechTree_Player7 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(7), 'Hpal', 0)
    call SetPlayerTechMaxAllowed(Player(7), 'Hamg', 0)
    call SetPlayerTechMaxAllowed(Player(7), 'Hmkg', 0)
endfunction

function InitTechTree_Player8 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(8), 'Hpal', 0)
    call SetPlayerTechMaxAllowed(Player(8), 'Hamg', 0)
    call SetPlayerTechMaxAllowed(Player(8), 'Hmkg', 0)
    call SetPlayerTechMaxAllowed(Player(8), 'hgry', 0)
    call SetPlayerTechMaxAllowed(Player(8), 'hgra', 0)
endfunction

function InitTechTree takes nothing returns nothing
    call InitTechTree_Player1()
    call InitTechTree_Player3()
    call InitTechTree_Player6()
    call InitTechTree_Player7()
    call InitTechTree_Player8()
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

    // Player 3
    call SetPlayerStartLocation(Player(3), 1)
    call ForcePlayerStartLocation(Player(3), 1)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_COMPUTER)

    // Player 6
    call SetPlayerStartLocation(Player(6), 2)
    call ForcePlayerStartLocation(Player(6), 2)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(6), false)
    call SetPlayerController(Player(6), MAP_CONTROL_COMPUTER)

    // Player 7
    call SetPlayerStartLocation(Player(7), 3)
    call ForcePlayerStartLocation(Player(7), 3)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(7), false)
    call SetPlayerController(Player(7), MAP_CONTROL_COMPUTER)

    // Player 8
    call SetPlayerStartLocation(Player(8), 4)
    call ForcePlayerStartLocation(Player(8), 4)
    call SetPlayerColor(Player(8), ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(8), false)
    call SetPlayerController(Player(8), MAP_CONTROL_COMPUTER)

    // Player 9
    call SetPlayerStartLocation(Player(9), 5)
    call ForcePlayerStartLocation(Player(9), 5)
    call SetPlayerColor(Player(9), ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(9), false)
    call SetPlayerController(Player(9), MAP_CONTROL_NEUTRAL)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_167
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerTeam(Player(9), 0)

    // Force: TRIGSTR_172
    call SetPlayerTeam(Player(7), 1)
    call SetPlayerTeam(Player(8), 1)

    // Force: TRIGSTR_169
    call SetPlayerTeam(Player(3), 2)
    call SetPlayerTeam(Player(6), 2)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(3), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(3), true)

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount(2, 3)
    call SetStartLocPrio(2, 0, 4, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(2, 1, 5, MAP_LOC_PRIO_LOW)

    call SetStartLocPrioCount(3, 3)
    call SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(3, 1, 2, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(3, 2, 4, MAP_LOC_PRIO_LOW)

    call SetStartLocPrioCount(4, 3)
    call SetStartLocPrio(4, 0, 0, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(4, 1, 2, MAP_LOC_PRIO_LOW)
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 5120.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 7936.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 5632.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 6912.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 5120.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 6912.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 5632.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 7936.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("NorthrendDay")
    call SetAmbientNightSound("NorthrendNight")
    call SetMapMusic("Music", true, 0)
    call InitSounds()
    call CreateRegions()
    call CreateCameras()
    call InitUpgrades()
    call InitTechTree()
    call CreateAllDestructables()
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
    call SetMapName("TRIGSTR_011")
    call SetMapDescription("TRIGSTR_014")
    call SetPlayers(6)
    call SetTeams(6)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)

    call DefineStartLocation(0, - 3776.0, - 5504.0)
    call DefineStartLocation(1, 2432.0, 4672.0)
    call DefineStartLocation(2, - 3712.0, 4352.0)
    call DefineStartLocation(3, 1536.0, - 2112.0)
    call DefineStartLocation(4, 4992.0, 5504.0)
    call DefineStartLocation(5, - 3072.0, - 4992.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:

