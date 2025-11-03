globals
    // User-defined
unit udg_Arthas= null
unit udg_Uther= null
unit udg_Knight01= null
unit udg_Horse01= null
unit udg_Horse02= null
group udg_Dwarves= null
group udg_StartingBase01= null
fogmodifier udg_DragonVision= null
boolean udg_IntroSkipped= false
boolean udg_IntroHorse01Removed= false
unit udg_Blademaster= null
unit udg_DwarvenScout= null
boolean udg_IntroHorse02Removed= false
fogmodifier udg_VisibilityModifier01= null
fogmodifier udg_VisibilityModifier02= null
unit udg_Warlock= null
group udg_Villagers= null
unit udg_UnluckyFootman= null
unit udg_RandomVillager= null
unit udg_Searinox= null
item udg_HeartofSearinox= null
integer udg_UthersPosition= 0
boolean udg_UtherIsDefending= false
unit udg_UtherTarget= null
boolean udg_IntroCinematicDone= false
quest udg_QuestSearinox= null
quest udg_QuestBlademaster= null
quest udg_QuestBase= null
unit udg_DwarvenBlacksmith= null
questitem udg_QuestSearinoxRequirementSlay= null
questitem udg_QuestSearinoxRequirementReturn= null
unit udg_MirrorImage= null
sound udg_BlademasterAudio= null
unit udg_Handler= null
boolean udg_IntroHandlerRemoved= false
destructable udg_Crate01= null
destructable udg_Crate02= null
boolean udg_HasRedAIBegun= false
unit udg_Lumber01= null
unit udg_Lumber02= null
unit udg_Gold01= null
unit udg_Gold02= null
unit udg_Gold03= null
sound udg_Nightsound= null
sound udg_DaySound= null
fogmodifier udg_MirrorImageVision= null
unit udg_FeranorSteeltoe= null
unit udg_Skeleton01= null
unit udg_Skeleton02= null
unit udg_Skeleton03= null
unit udg_Skeleton04= null
fogmodifier udg_DwarfVision= null
location udg_LocationOfGold01= null
location udg_LocationOfGold02= null
location udg_LocationOfGold03= null
unit udg_UnfortunateMan= null
unit udg_UnfortunateWoman= null
effect udg_Net01= null
effect udg_Net02= null
effect udg_Net03= null
unit udg_StartingFootman01= null
unit udg_StartingFootman02= null
unit udg_StartingFootman03= null
effect udg_TalkFeranor= null
questitem udg_QuestBaseRequirementBarracks= null
questitem udg_QuestBaseRequirementFootmen= null
questitem udg_QuestBaseRequirementFarms= null
player udg_AAAP_Arthas= null
force udg_AAAPG_Arthas= null
boolean udg_BaseRequirement01= false
boolean udg_BaseRequirement02= false
boolean udg_BaseRequirement03= false
player udg_P_Blackrock= null
player udg_P_Blademaster= null
unit udg_TempBlademaster= null
unit udg_TempMirrorImage= null
integer udg_NumberOfFarms= 0
player udg_P_Blackrock2= null
player udg_P_Uther= null
player udg_P_Dwarves= null
player udg_P_Villagers= null
leaderboard udg_FootmenLeaderboard= null
integer udg_FootmenTrained= 0
boolean udg_InCinematic= false
boolean udg_VictoryCondition01= false
boolean udg_VictoryCondition02= false
boolean udg_BlademasterSkipped= false
boolean udg_BladeImageRemoved= false
boolean udg_VictorySkipped= false
questitem udg_QuestBladeRequirementSlay= null
boolean udg_BlademasterQuestRecieved= false
boolean udg_BlademasterHasBeenSlain= false
boolean udg_SearinoxQuestFailed= false
group udg_BuildingsUnderConstruction= null
boolean udg_Sacrifice01= false
boolean udg_Sacrifice02= false
boolean udg_Sacrifice03= false
boolean udg_Net01Removed= false
boolean udg_Net02Removed= false
boolean udg_Net03Removed= false
group udg_SelectionGroup= null
boolean udg_GameOver= false
group udg_HideUnitsGroup= null
unit udg_BlademasterToRemove= null
location udg_CameraPosition= null
boolean udg_BlacksmithDestroyed= false
timer udg_AltarHintTimer= null
integer udg_orc_buildings_killed= 0
string udg_footmen_trained_unit_name

    // Generated
rect gg_rct_Arthas_Destination= null
rect gg_rct_ArthasFinal= null
rect gg_rct_ArthasStart= null
rect gg_rct_Blademaster00= null
rect gg_rct_Blademaster01= null
rect gg_rct_Blademaster02= null
rect gg_rct_BlademasterOrigin= null
rect gg_rct_Crate01= null
rect gg_rct_Crate02= null
rect gg_rct_Dragon_001= null
rect gg_rct_DragonAttack01= null
rect gg_rct_Dwarf_Pan_Point= null
rect gg_rct_Dwarves= null
rect gg_rct_Feranor_Destination= null
rect gg_rct_Firepit01= null
rect gg_rct_Firepit02= null
rect gg_rct_Firepit03= null
rect gg_rct_HandlerDestination= null
rect gg_rct_HandlerStart= null
rect gg_rct_Horse_1= null
rect gg_rct_Horse_1_Destination= null
rect gg_rct_Horse_2= null
rect gg_rct_Horse_2_Destination= null
rect gg_rct_MirrorImage01= null
rect gg_rct_MirrorImage02= null
rect gg_rct_Remove_Horses= null
rect gg_rct_Skeleton01= null
rect gg_rct_Skeleton02= null
rect gg_rct_Skeleton03= null
rect gg_rct_Skeleton04= null
rect gg_rct_SpawnMirrorImage= null
rect gg_rct_Starting_Base_01= null
rect gg_rct_TriggerDwarves= null
rect gg_rct_TriggerMurlocs= null
rect gg_rct_Uther_Destination= null
rect gg_rct_Uther_Patrol_01= null
rect gg_rct_Uther_Patrol_02= null
rect gg_rct_Uther01= null
rect gg_rct_Uther02= null
rect gg_rct_UtherFinal= null
rect gg_rct_Villagers= null
rect gg_rct_LakeLoop01= null
rect gg_rct_LakeLoop02= null
rect gg_rct_CinematicHide02= null
rect gg_rct_CinematicHide01= null
rect gg_rct_BM_Cinematic_Hide_Player_Units_Here= null
rect gg_rct_Gold_Turnaround= null
rect gg_rct_Gold_Dropoff= null
camerasetup gg_cam_Blademaster01A= null
camerasetup gg_cam_Blademaster01B= null
camerasetup gg_cam_Blademaster02A= null
camerasetup gg_cam_Blademaster02B= null
camerasetup gg_cam_Blademaster03A= null
camerasetup gg_cam_Blademaster03B= null
camerasetup gg_cam_End01= null
camerasetup gg_cam_End02= null
camerasetup gg_cam_Intro01= null
camerasetup gg_cam_Intro02= null
camerasetup gg_cam_Intro03= null
camerasetup gg_cam_Intro04= null
camerasetup gg_cam_Intro05= null
camerasetup gg_cam_Intro06= null
camerasetup gg_cam_Intro07= null
camerasetup gg_cam_Intro08= null
camerasetup gg_cam_Intro09= null
camerasetup gg_cam_Intro10= null
camerasetup gg_cam_Blademaster01C= null
sound gg_snd_BlacksmithWhat1= null
sound gg_snd_GraveYardWhat1= null
sound gg_snd_H02Arthas03= null
sound gg_snd_H02Arthas05= null
sound gg_snd_H02Arthas07= null
sound gg_snd_H02Arthas09= null
sound gg_snd_H02Arthas15= null
sound gg_snd_H02Arthas18= null
sound gg_snd_H02Arthas20= null
sound gg_snd_H02Arthas24= null
sound gg_snd_H02Arthas26= null
sound gg_snd_H02Blademaster11= null
sound gg_snd_H02Dwarf21= null
sound gg_snd_H02DwarfHunter17= null
sound gg_snd_H02DwarfHunter18A= null
sound gg_snd_H02DwarfScout16= null
sound gg_snd_H02Footman23= null
sound gg_snd_H02Searinox19= null
sound gg_snd_H02Uther01= null
sound gg_snd_H02Uther02= null
sound gg_snd_H02Uther04= null
sound gg_snd_H02Uther06= null
sound gg_snd_H02Uther08= null
sound gg_snd_H02Uther10= null
sound gg_snd_H02Uther12= null
sound gg_snd_H02Uther13= null
sound gg_snd_H02Uther25= null
sound gg_snd_H02Uther27= null
sound gg_snd_H02VillagerM39= null
sound gg_snd_H02Warlock22= null
sound gg_snd_HeroBladeMasterDeath= null
sound gg_snd_HeroDropItem1= null
sound gg_snd_HorseLoop1= null
sound gg_snd_HorseLoop3= null
sound gg_snd_KnightNoRiderWarcry1= null
sound gg_snd_KnightNoRiderWhat2= null
sound gg_snd_KnightNoRiderWhat3= null
sound gg_snd_SkeletonYesAttack1= null
sound gg_snd_SkeletonYesAttack2= null
sound gg_snd_SkeletonYesAttack3= null
sound gg_snd_H02Footman38= null
sound gg_snd_FootmanDeath= null
sound gg_snd_SorceressDeath= null
sound gg_snd_VillagerMaleDeath1= null
sound gg_snd_RaiseSkeleton= null
sound gg_snd_WaterLakeLoop1= null
trigger gg_trg_irregulars= null
trigger gg_trg_fileio= null
trigger gg_trg_map_config= null
trigger gg_trg_status= null
trigger gg_trg_heroes= null
trigger gg_trg_item_locations= null
trigger gg_trg_debug= null
trigger gg_trg_zoom= null
trigger gg_trg_AP_Load_Arthas= null
trigger gg_trg_Map_Initialization= null
trigger gg_trg_Delayed_Special_FX= null
trigger gg_trg_Hard_Difficulty= null
trigger gg_trg_Handicap= null
trigger gg_trg_Intro_Cinematic= null
trigger gg_trg_Intro_Cinematic_Cancel= null
trigger gg_trg_Create_Gold_Peasants= null
trigger gg_trg_PeasantFakeHarvest= null
trigger gg_trg_PeasantFakeReturn= null
trigger gg_trg___Red_AI_Settings= null
trigger gg_trg___Horses_Leave= null
trigger gg_trg_Delete_Horse01= null
trigger gg_trg_Delete_Horse02= null
trigger gg_trg_Delete_Handler= null
trigger gg_trg_BarracksConstructed= null
trigger gg_trg_BarracksConstructed_Queue= null
trigger gg_trg_FarmsConstructed= null
trigger gg_trg_FarmsConstructed_Queue= null
trigger gg_trg___FarmCompletes= null
trigger gg_trg___FarmCancelled= null
trigger gg_trg___FarmDestroyed= null
trigger gg_trg_FootmenTrained= null
trigger gg_trg_FootmenTrained_Queue= null
trigger gg_trg___FootmanPopsOut= null
trigger gg_trg___Disable_Leaderboard= null
trigger gg_trg_BaseQuestCompleted= null
trigger gg_trg_BaseQuestCompleted_Queue= null
trigger gg_trg_Blademaster_Cinematic= null
trigger gg_trg_Blademaster_Cinematic_Failsafe= null
trigger gg_trg_Blademaster_Cinematic_Queue= null
trigger gg_trg_Blademaster_Animation= null
trigger gg_trg___UtherAnimation= null
trigger gg_trg___SpawnMirrorImage= null
trigger gg_trg_____SetMirrorImage= null
trigger gg_trg_Blademaster_Cancel= null
trigger gg_trg_AI_Gold= null
trigger gg_trg_AI_Lumber= null
trigger gg_trg_Uther_Patrol_to_01= null
trigger gg_trg_Uther_Reaches_01= null
trigger gg_trg_Uther_Patrol_to_02= null
trigger gg_trg_Uther_Reaches_02= null
trigger gg_trg_Base_Is_Attacked= null
trigger gg_trg_UtherTargetDies= null
trigger gg_trg_Look_for_enemies= null
trigger gg_trg_Crate01_Is_Destroyed= null
trigger gg_trg_Crate02_Is_Destroyed= null
trigger gg_trg_Trigger_Dwarves= null
trigger gg_trg_Trigger_Dwarves_Failsafe= null
trigger gg_trg_Dwarves_Queue= null
trigger gg_trg_Heart_Cinematic= null
trigger gg_trg_Heart_Cinematic_Queue= null
trigger gg_trg_Heart_Cinematic_Queue_B= null
trigger gg_trg_Heart_Cinematic_Queue_C= null
trigger gg_trg_Fail_Searinox_Quest_01= null
trigger gg_trg_Fail_Searinox_Quest_02= null
trigger gg_trg_Blacksmith_Dies= null
trigger gg_trg_Dragon_Intro= null
trigger gg_trg_Dragon_Intro_Queue= null
trigger gg_trg_Spawn_Skeletons= null
trigger gg_trg_Drop_Heart_of_Searinox= null
trigger gg_trg_Heart_of_Searinox_Queue= null
trigger gg_trg_Player_Gets_the_Heart_of_Searinox= null
trigger gg_trg_Murlocs= null
trigger gg_trg_Murlocs_Queue= null
trigger gg_trg_BlademasterDies= null
trigger gg_trg_HINTAltar= null
trigger gg_trg_HINTAltar_Queue= null
trigger gg_trg_HINTArthasDies= null
trigger gg_trg_HINTArthasDies_Queue= null
trigger gg_trg_HINTUpgradeTowers= null
trigger gg_trg_HINTUpgradeTowers_Queue= null
trigger gg_trg_HINTMultiple_Builders= null
trigger gg_trg_HINTMultiple_Builders_Queue= null
trigger gg_trg_HINTMilitia= null
trigger gg_trg_HINTMilitia_Queue= null
trigger gg_trg_BuildingUnderConstruction= null
trigger gg_trg_BuildingCompletesConstruction= null
trigger gg_trg_BuildingCancelled= null
trigger gg_trg_Nightfall= null
trigger gg_trg_Daybreak= null
trigger gg_trg_Victory_Cinematic= null
trigger gg_trg_Victory_Queue= null
trigger gg_trg_Victory_Cinematic_Cancel= null
trigger gg_trg_All_Buildings_Destroyed= null
trigger gg_trg_Stop_Scripted_Events= null
trigger gg_trg_Next_Level_Run= null
trigger gg_trg_Victory_Cheat= null
trigger gg_trg_Defeat_Cheat= null
trigger gg_trg_Orc_Base_Dies= null
unit gg_unit_Huth_0002= null
unit gg_unit_hwtw_0008= null
unit gg_unit_nvlw_0054= null
unit gg_unit_hwtw_0142= null
unit gg_unit_hpea_0045= null
unit gg_unit_ogru_0090= null
unit gg_unit_obar_0118= null
unit gg_unit_ngol_0009= null
unit gg_unit_hpea_0044= null
unit gg_unit_hrif_0017= null
unit gg_unit_ohun_0063= null
unit gg_unit_Obla_0071= null
unit gg_unit_nvil_0080= null
unit gg_unit_ohun_0065= null
unit gg_unit_hC02_0049= null
unit gg_unit_hbla_0012= null
unit gg_unit_obea_0117= null
unit gg_unit_nser_0048= null
unit gg_unit_hfoo_0096= null
unit gg_unit_nshe_0026= null
unit gg_unit_nshe_0027= null
unit gg_unit_ofor_0059= null
unit gg_unit_hpea_0020= null
destructable gg_dest_LTcr_2868= null
destructable gg_dest_LTcr_2866= null
trigger t_irregulars_on_cast
sound human_no_gold_sound
string array p_original_names
string array io_lines
constant integer NUM_FILE_LINES= 10
string last_filename= ""
constant integer MISSION_ID= 102
integer NUM_HEROES= 1
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


//JASSHelper struct globals:

endglobals


//===========================================================================
// 
// Human02
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sun Nov  2 23:12:43 2025
//   Map Author: Blizzard Entertainment
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    set udg_Dwarves=CreateGroup()
    set udg_StartingBase01=CreateGroup()
    set udg_IntroSkipped=false
    set udg_IntroHorse01Removed=false
    set udg_IntroHorse02Removed=false
    set udg_Villagers=CreateGroup()
    set udg_UthersPosition=0
    set udg_UtherIsDefending=false
    set udg_UtherTarget=null
    set udg_IntroCinematicDone=false
    set udg_IntroHandlerRemoved=true
    set udg_HasRedAIBegun=false
    set udg_Gold01=null
    set udg_AAAP_Arthas=Player(1)
    set udg_AAAPG_Arthas=bj_FORCE_PLAYER[1]
    set udg_BaseRequirement01=false
    set udg_BaseRequirement02=false
    set udg_BaseRequirement03=false
    set udg_P_Blackrock=Player(0)
    set udg_P_Blademaster=Player(4)
    set udg_NumberOfFarms=0
    set udg_P_Blackrock2=Player(3)
    set udg_P_Uther=Player(9)
    set udg_P_Dwarves=Player(2)
    set udg_P_Villagers=Player(8)
    set udg_FootmenTrained=0
    set udg_InCinematic=false
    set udg_VictoryCondition01=false
    set udg_VictoryCondition02=false
    set udg_BlademasterSkipped=false
    set udg_BladeImageRemoved=true
    set udg_VictorySkipped=false
    set udg_BlademasterQuestRecieved=false
    set udg_BlademasterHasBeenSlain=false
    set udg_SearinoxQuestFailed=false
    set udg_BuildingsUnderConstruction=CreateGroup()
    set udg_Sacrifice01=false
    set udg_Sacrifice02=false
    set udg_Sacrifice03=false
    set udg_Net01Removed=false
    set udg_Net02Removed=false
    set udg_Net03Removed=false
    set udg_SelectionGroup=CreateGroup()
    set udg_GameOver=false
    set udg_HideUnitsGroup=CreateGroup()
    set udg_BlacksmithDestroyed=false
    set udg_AltarHintTimer=CreateTimer()
    set udg_orc_buildings_killed=0
    set udg_footmen_trained_unit_name="Footmen"
endfunction

//***************************************************************************
//*
//*  Unit Item Tables
//*
//***************************************************************************

function Unit000014_DropItems takes nothing returns nothing
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
        call RandomDistAddItem('I01a', 100)
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

function Unit000023_DropItems takes nothing returns nothing
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

function Unit000036_DropItems takes nothing returns nothing
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

function Unit000038_DropItems takes nothing returns nothing
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

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000044_DropItems takes nothing returns nothing
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

function Unit000075_DropItems takes nothing returns nothing
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


//***************************************************************************
//*
//*  Sounds
//*
//***************************************************************************

function InitSounds takes nothing returns nothing
    set gg_snd_BlacksmithWhat1=CreateSound("Buildings\\Human\\Blacksmith\\BlacksmithWhat1.wav", false, true, true, 12700, 12700, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_BlacksmithWhat1, "BlacksmithWhat")
    call SetSoundDuration(gg_snd_BlacksmithWhat1, 3059)
    set gg_snd_GraveYardWhat1=CreateSound("Buildings\\Undead\\Graveyard\\GraveYardWhat1.wav", false, true, true, 12700, 12700, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_GraveYardWhat1, "GraveyardWhat")
    call SetSoundDuration(gg_snd_GraveYardWhat1, 3703)
    set gg_snd_H02Arthas03=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Arthas03.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Arthas03, "H02Arthas03")
    call SetSoundDuration(gg_snd_H02Arthas03, 2089)
    set gg_snd_H02Arthas05=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Arthas05.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Arthas05, "H02Arthas05")
    call SetSoundDuration(gg_snd_H02Arthas05, 1123)
    set gg_snd_H02Arthas07=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Arthas07.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Arthas07, "H02Arthas07")
    call SetSoundDuration(gg_snd_H02Arthas07, 2638)
    set gg_snd_H02Arthas09=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Arthas09.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Arthas09, "H02Arthas09")
    call SetSoundDuration(gg_snd_H02Arthas09, 1201)
    set gg_snd_H02Arthas15=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Arthas15.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Arthas15, "H02Arthas15")
    call SetSoundDuration(gg_snd_H02Arthas15, 2037)
    set gg_snd_H02Arthas18=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Arthas18.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Arthas18, "H02Arthas18")
    call SetSoundDuration(gg_snd_H02Arthas18, 2560)
    set gg_snd_H02Arthas20=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Arthas20.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H02Arthas20, "H02Arthas20")
    call SetSoundDuration(gg_snd_H02Arthas20, 2011)
    set gg_snd_H02Arthas24=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Arthas24.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Arthas24, "H02Arthas24")
    call SetSoundDuration(gg_snd_H02Arthas24, 2847)
    set gg_snd_H02Arthas26=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Arthas26.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Arthas26, "H02Arthas26")
    call SetSoundDuration(gg_snd_H02Arthas26, 6791)
    set gg_snd_H02Blademaster11=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Blademaster11.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Blademaster11, "H02Blademaster11")
    call SetSoundDuration(gg_snd_H02Blademaster11, 10919)
    set gg_snd_H02Dwarf21=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Dwarf21.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Dwarf21, "H02Dwarf21")
    call SetSoundDuration(gg_snd_H02Dwarf21, 3813)
    set gg_snd_H02DwarfHunter17=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02DwarfHunter17.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02DwarfHunter17, "H02DwarfHunter17")
    call SetSoundDuration(gg_snd_H02DwarfHunter17, 3500)
    set gg_snd_H02DwarfHunter18A=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02DwarfHunter18A.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H02DwarfHunter18A, "H02DwarfHunter18A")
    call SetSoundDuration(gg_snd_H02DwarfHunter18A, 6504)
    set gg_snd_H02DwarfScout16=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02DwarfScout16.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02DwarfScout16, "H02DwarfScout16")
    call SetSoundDuration(gg_snd_H02DwarfScout16, 6661)
    set gg_snd_H02Footman23=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Footman23.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Footman23, "H02Footman23")
    call SetSoundDuration(gg_snd_H02Footman23, 3683)
    set gg_snd_H02Searinox19=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Searinox19.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H02Searinox19, "H02Searinox19")
    call SetSoundDuration(gg_snd_H02Searinox19, 9221)
    set gg_snd_H02Uther01=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Uther01.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Uther01, "H02Uther01")
    call SetSoundDuration(gg_snd_H02Uther01, 7575)
    set gg_snd_H02Uther02=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Uther02.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Uther02, "H02Uther02")
    call SetSoundDuration(gg_snd_H02Uther02, 2873)
    set gg_snd_H02Uther04=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Uther04.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Uther04, "H02Uther04")
    call SetSoundDuration(gg_snd_H02Uther04, 12225)
    set gg_snd_H02Uther06=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Uther06.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Uther06, "H02Uther06")
    call SetSoundDuration(gg_snd_H02Uther06, 5146)
    set gg_snd_H02Uther08=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Uther08.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Uther08, "H02Uther08")
    call SetSoundDuration(gg_snd_H02Uther08, 4075)
    set gg_snd_H02Uther10=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Uther10.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Uther10, "H02Uther10")
    call SetSoundDuration(gg_snd_H02Uther10, 1671)
    set gg_snd_H02Uther12=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Uther12.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Uther12, "H02Uther12")
    call SetSoundDuration(gg_snd_H02Uther12, 5250)
    set gg_snd_H02Uther13=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Uther13.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Uther13, "H02Uther13")
    call SetSoundDuration(gg_snd_H02Uther13, 5041)
    set gg_snd_H02Uther25=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Uther25.mp3", false, false, false, 12700, 12700, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_H02Uther25, "H02Uther25")
    call SetSoundDuration(gg_snd_H02Uther25, 3213)
    set gg_snd_H02Uther27=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Uther27.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02Uther27, "H02Uther27")
    call SetSoundDuration(gg_snd_H02Uther27, 12695)
    set gg_snd_H02VillagerM39=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02VillagerM39.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H02VillagerM39, "H02VillagerM39")
    call SetSoundDuration(gg_snd_H02VillagerM39, 3813)
    set gg_snd_H02Warlock22=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Warlock22.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H02Warlock22, "H02Warlock22")
    call SetSoundDuration(gg_snd_H02Warlock22, 7575)
    set gg_snd_HeroBladeMasterDeath=CreateSound("Units\\Orc\\HeroBladeMaster\\HeroBladeMasterDeath.wav", false, true, true, 12700, 12700, "HeroAcksEAX")
    call SetSoundParamsFromLabel(gg_snd_HeroBladeMasterDeath, "HeroBladeMasterDeath")
    call SetSoundDuration(gg_snd_HeroBladeMasterDeath, 2348)
    set gg_snd_HeroDropItem1=CreateSound("Sound\\Interface\\HeroDropItem1.wav", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_HeroDropItem1, "ItemDrop")
    call SetSoundDuration(gg_snd_HeroDropItem1, 486)
    set gg_snd_HorseLoop1=CreateSound("Units\\Human\\Knight\\HorseLoop1.wav", false, true, true, 12700, 12700, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_HorseLoop1, "HumanKnightMovement")
    call SetSoundDuration(gg_snd_HorseLoop1, 2101)
    set gg_snd_HorseLoop3=CreateSound("Units\\Human\\Knight\\HorseLoop3.wav", false, true, true, 12700, 12700, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_HorseLoop3, "HumanKnightMovement")
    call SetSoundDuration(gg_snd_HorseLoop3, 5317)
    set gg_snd_KnightNoRiderWarcry1=CreateSound("Units\\Human\\KnightNoRider\\KnightNoRiderWarcry1.wav", false, true, true, 12700, 12700, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_KnightNoRiderWarcry1, "KnightNoRiderWarcry")
    call SetSoundDuration(gg_snd_KnightNoRiderWarcry1, 2217)
    set gg_snd_KnightNoRiderWhat2=CreateSound("Units\\Human\\KnightNoRider\\KnightNoRiderWhat2.wav", false, true, true, 12700, 12700, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_KnightNoRiderWhat2, "KnightNoRiderWhat")
    call SetSoundDuration(gg_snd_KnightNoRiderWhat2, 1973)
    set gg_snd_KnightNoRiderWhat3=CreateSound("Units\\Human\\KnightNoRider\\KnightNoRiderWhat3.wav", false, true, true, 12700, 12700, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_KnightNoRiderWhat3, "KnightNoRiderWhat")
    call SetSoundDuration(gg_snd_KnightNoRiderWhat3, 1857)
    set gg_snd_SkeletonYesAttack1=CreateSound("Units\\Undead\\Skeleton\\SkeletonYesAttack1.wav", false, true, true, 12700, 12700, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_SkeletonYesAttack1, "SkeletonYesAttack")
    call SetSoundDuration(gg_snd_SkeletonYesAttack1, 1700)
    set gg_snd_SkeletonYesAttack2=CreateSound("Units\\Undead\\Skeleton\\SkeletonYesAttack2.wav", false, true, true, 12700, 12700, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_SkeletonYesAttack2, "SkeletonYesAttack")
    call SetSoundDuration(gg_snd_SkeletonYesAttack2, 1114)
    set gg_snd_SkeletonYesAttack3=CreateSound("Units\\Undead\\Skeleton\\SkeletonYesAttack3.wav", false, true, true, 12700, 12700, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_SkeletonYesAttack3, "SkeletonYesAttack")
    call SetSoundDuration(gg_snd_SkeletonYesAttack3, 2237)
    set gg_snd_H02Footman38=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human02\\H02Footman38.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_H02Footman38, "H02Footman38")
    call SetSoundDuration(gg_snd_H02Footman38, 9534)
    set gg_snd_FootmanDeath=CreateSound("Units\\Human\\Footman\\FootmanDeath.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_FootmanDeath, "FootmanDeath")
    call SetSoundDuration(gg_snd_FootmanDeath, 1245)
    set gg_snd_SorceressDeath=CreateSound("Units\\Human\\Sorceress\\SorceressDeath.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_SorceressDeath, "SorceressDeath")
    call SetSoundDuration(gg_snd_SorceressDeath, 1909)
    set gg_snd_VillagerMaleDeath1=CreateSound("Units\\Critters\\VillagerMan\\VillagerMaleDeath1.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_VillagerMaleDeath1, "VillagerManDeath")
    call SetSoundDuration(gg_snd_VillagerMaleDeath1, 1590)
    set gg_snd_RaiseSkeleton=CreateSound("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(gg_snd_RaiseSkeleton, "RaiseSkeletonArcher")
    call SetSoundDuration(gg_snd_RaiseSkeleton, 2329)
    set gg_snd_WaterLakeLoop1=CreateSound("Sound\\Ambient\\DoodadEffects\\WaterLakeLoop1.wav", true, true, true, 10, 10, "DoodadsEAX")
    call SetSoundParamsFromLabel(gg_snd_WaterLakeLoop1, "LakeLoop")
    call SetSoundDuration(gg_snd_WaterLakeLoop1, 3297)
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
    set gg_dest_LTcr_2866=CreateDestructable('LTcr', - 4608.0, - 3264.0, 0.000, 1.200, 1)
    set gg_dest_LTcr_2868=CreateDestructable('LTcr', - 2112.0, - 4800.0, 0.000, 1.023, 1)
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'npgf', - 224.0, 2464.0, 270.000)
    set u=CreateUnit(p, 'npgf', - 2016.0, 2272.0, 270.000)
    set u=CreateUnit(p, 'npgf', 224.0, 1952.0, 270.000)
    set u=CreateUnit(p, 'npgf', - 1248.0, 3360.0, 270.000)
    set gg_unit_ofor_0059=CreateUnit(p, 'ofor', - 672.0, 3488.0, 270.000)
    set gg_unit_obea_0117=CreateUnit(p, 'obea', - 1280.0, 2304.0, 270.000)
    set gg_unit_obar_0118=CreateUnit(p, 'obar', - 832.0, 2816.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ohun', - 1374.7, 1910.4, 283.246)
    set u=CreateUnit(p, 'ohun', - 923.0, 3233.9, 290.228)
    set u=CreateUnit(p, 'ogru', - 1113.0, 1790.0, 267.290)
    set u=CreateUnit(p, 'orai', - 1237.6, 3078.1, 216.662)
    set gg_unit_ohun_0063=CreateUnit(p, 'ohun', - 449.6, 2093.7, 271.553)
    set u=CreateUnit(p, 'orai', - 1774.7, 2464.1, 299.235)
    set u=CreateUnit(p, 'orai', 405.5, 2239.8, 216.662)
endfunction

//===========================================================================
function CreateBuildingsForPlayer2 takes nothing returns nothing
    local player p= Player(2)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_hbla_0012=CreateUnit(p, 'hbla', 0.0, - 2560.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer2 takes nothing returns nothing
    local player p= Player(2)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'hrif', - 226.2, - 2736.4, 285.686)
    set u=CreateUnit(p, 'hA00', - 252.8, - 2576.7, 258.524)
    set gg_unit_hrif_0017=CreateUnit(p, 'hrif', 71.5, - 2893.5, 264.006)
    set u=CreateUnit(p, 'hA00', 184.0, - 2803.2, 255.660)
    set gg_unit_hC02_0049=CreateUnit(p, 'hC02', - 98.6, - 2863.5, 291.426)
endfunction

//===========================================================================
function CreateUnitsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ogru', 2032.1, 1259.6, 258.032)
    set u=CreateUnit(p, 'ogru', 2250.6, 1043.6, 182.052)
    set u=CreateUnit(p, 'ohun', 1267.6, 533.2, 307.324)
    set u=CreateUnit(p, 'ohun', 1597.3, 532.0, 247.595)
    set u=CreateUnit(p, 'orai', 1451.3, 275.1, 117.953)
    set gg_unit_ohun_0065=CreateUnit(p, 'ohun', - 1118.2, - 1029.4, 274.627)
    set gg_unit_ogru_0090=CreateUnit(p, 'ogru', - 859.3, - 1126.0, 240.133)
endfunction

//===========================================================================
function CreateUnitsForPlayer4 takes nothing returns nothing
    local player p= Player(4)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_Obla_0071=CreateUnit(p, 'Obla', 3099.7, 2137.3, 317.930)
    call SetHeroLevel(gg_unit_Obla_0071, 2, false)
    call SetUnitState(gg_unit_Obla_0071, UNIT_STATE_MANA, 270)
    call SelectHeroSkill(gg_unit_Obla_0071, 'AOmi')
    call SelectHeroSkill(gg_unit_Obla_0071, 'AOcr')
endfunction

//===========================================================================
function CreateUnitsForPlayer8 takes nothing returns nothing
    local player p= Player(8)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_hfoo_0096=CreateUnit(p, 'hfoo', 3252.4, 2036.4, 209.300)
    set life=GetUnitState(gg_unit_hfoo_0096, UNIT_STATE_LIFE)
    call SetUnitState(gg_unit_hfoo_0096, UNIT_STATE_LIFE, 0.01 * life)
endfunction

//===========================================================================
function CreateBuildingsForPlayer9 takes nothing returns nothing
    local player p= Player(9)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'htow', - 3776.0, - 4032.0, 270.000)
    set gg_unit_hwtw_0008=CreateUnit(p, 'hwtw', - 3648.0, - 3008.0, 270.000)
    set u=CreateUnit(p, 'hlum', - 4384.0, - 4768.0, 270.000)
    set u=CreateUnit(p, 'hwtw', - 1728.0, - 3968.0, 270.000)
    set u=CreateUnit(p, 'halt', - 2912.0, - 3360.0, 270.000)
    set gg_unit_hwtw_0142=CreateUnit(p, 'hwtw', - 4352.0, - 2496.0, 270.000)
    set u=CreateUnit(p, 'hwtw', - 2240.0, - 3328.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer9 takes nothing returns nothing
    local player p= Player(9)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_Huth_0002=CreateUnit(p, 'Huth', - 3819.5, - 3277.9, 312.200)
    call SetHeroLevel(gg_unit_Huth_0002, 10, false)
    call SetUnitState(gg_unit_Huth_0002, UNIT_STATE_MANA, 495)
    call SelectHeroSkill(gg_unit_Huth_0002, 'AHhb')
    call SelectHeroSkill(gg_unit_Huth_0002, 'AHds')
    call SelectHeroSkill(gg_unit_Huth_0002, 'AHds')
    call SelectHeroSkill(gg_unit_Huth_0002, 'AHds')
    call SelectHeroSkill(gg_unit_Huth_0002, 'AHre')
    call SelectHeroSkill(gg_unit_Huth_0002, 'AHad')
    call SelectHeroSkill(gg_unit_Huth_0002, 'AHad')
    call SelectHeroSkill(gg_unit_Huth_0002, 'AHad')
    set gg_unit_hpea_0020=CreateUnit(p, 'hpea', - 4268.4, - 3938.1, 279.874)
    set gg_unit_hpea_0044=CreateUnit(p, 'hpea', - 3862.2, - 4799.2, 232.441)
    set gg_unit_hpea_0045=CreateUnit(p, 'hpea', - 3537.9, - 4775.7, 193.882)
endfunction

//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'nmrl', - 3242.2, 304.0, 232.297)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'ngno', 2995.9, - 1068.7, 263.493)
    call SetUnitAcquireRange(u, 200.0)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000075_DropItems)
    set u=CreateUnit(p, 'ngna', 3104.0, - 1188.4, 256.708)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'nmrl', - 4256.1, 875.4, 190.626)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'nmrl', - 4172.5, 1123.0, 261.191)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'nmrl', - 4453.3, 402.6, 147.362)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'ngna', 2969.6, - 902.3, 269.871)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'nogr', - 5748.5, 3230.9, 250.771)
    set u=CreateUnit(p, 'ngno', - 4688.2, - 1274.0, 273.861)
    call SetUnitAcquireRange(u, 200.0)
    set gg_unit_nser_0048=CreateUnit(p, 'nser', 2612.3, - 5883.1, 0.000)
    call SetUnitAcquireRange(gg_unit_nser_0048, 200.0)
    set u=CreateUnit(p, 'ngno', - 4808.8, - 1366.5, 301.179)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'ngna', - 4811.7, - 1220.9, 0.000)
    call SetUnitAcquireRange(u, 200.0)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000038_DropItems)
    set u=CreateUnit(p, 'nomg', - 5430.1, 3042.0, 264.870)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000036_DropItems)
    set u=CreateUnit(p, 'nogr', - 5235.2, 3313.1, 338.983)
    set u=CreateUnit(p, 'nmrm', 5343.5, 1718.1, 155.070)
    set u=CreateUnit(p, 'nmrl', 4952.3, 1449.2, 333.676)
    set u=CreateUnit(p, 'nmrl', 4976.0, 1954.3, 249.991)
    set u=CreateUnit(p, 'nmrl', 4982.8, 675.8, 6.032)
    set u=CreateUnit(p, 'nmrl', 4747.3, 2215.3, 237.422)
    set u=CreateUnit(p, 'ngnw', 733.6, - 5943.7, 0.000)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000014_DropItems)
    set u=CreateUnit(p, 'nC03', 4149.9, - 6087.1, 95.023)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'nC03', 4287.6, - 6132.2, 195.387)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'nC03', 4254.8, - 5768.8, 52.766)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'nC03', 4391.8, - 4183.6, 195.390)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'nmrr', - 4438.6, 822.5, 290.670)
    call SetUnitAcquireRange(u, 200.0)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000023_DropItems)
    set u=CreateUnit(p, 'nmrl', - 4588.0, 535.7, 306.938)
    call SetUnitAcquireRange(u, 200.0)
    set u=CreateUnit(p, 'nmrl', - 3537.4, 292.0, 263.153)
    call SetUnitAcquireRange(u, 200.0)
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ngnh', - 5216.0, - 1376.0, 270.000)
    set u=CreateUnit(p, 'ngnh', - 4960.0, - 928.0, 270.000)
    set gg_unit_ngol_0009=CreateUnit(p, 'ngol', - 4736.0, - 3840.0, 270.000)
    call SetResourceAmount(gg_unit_ngol_0009, 20000)
    set u=CreateUnit(p, 'ngnh', - 5216.0, 3616.0, 270.000)
    set u=CreateUnit(p, 'ngt2', - 5664.0, 3552.0, 270.000)
    set u=CreateUnit(p, 'ngt2', - 5984.0, 3168.0, 270.000)
    set u=CreateUnit(p, 'ngnh', - 4960.0, 3232.0, 270.000)
    set u=CreateUnit(p, 'ngnh', 3168.0, - 800.0, 270.000)
    set u=CreateUnit(p, 'ngt2', 3424.0, - 1184.0, 270.000)
    set u=CreateUnit(p, 'nmh1', - 4256.0, 1312.0, 270.000)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000044_DropItems)
    set u=CreateUnit(p, 'nmh1', - 4768.0, 672.0, 270.000)
    set u=CreateUnit(p, 'nmh0', - 4000.0, 1184.0, 270.000)
    set u=CreateUnit(p, 'nmh0', - 4384.0, 1120.0, 270.000)
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_nshe_0026=CreateUnit(p, 'nshe', - 4173.3, - 4475.2, 359.495)
    set gg_unit_nshe_0027=CreateUnit(p, 'nshe', - 4694.8, - 2825.0, 317.701)
    set gg_unit_nvlw_0054=CreateUnit(p, 'nvlw', 3353.9, 2021.2, 0.000)
    set u=CreateUnit(p, 'npig', - 403.9, - 3551.0, 102.000)
    set u=CreateUnit(p, 'npig', - 725.2, - 3265.9, 214.000)
    set gg_unit_nvil_0080=CreateUnit(p, 'nvil', 3308.8, 2126.1, 251.540)
    set u=CreateUnit(p, 'npig', 2545.5, 3129.6, 228.512)
    set u=CreateUnit(p, 'npig', 2522.1, 3325.6, 155.406)
    set u=CreateUnit(p, 'npig', 2750.4, 3098.9, 299.420)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0()
    call CreateBuildingsForPlayer2()
    call CreateBuildingsForPlayer9()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
    call CreateUnitsForPlayer2()
    call CreateUnitsForPlayer3()
    call CreateUnitsForPlayer4()
    call CreateUnitsForPlayer8()
    call CreateUnitsForPlayer9()
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

    set gg_rct_Arthas_Destination=Rect(- 3040.0, - 4256.0, - 2944.0, - 4160.0)
    set gg_rct_ArthasFinal=Rect(- 4608.0, - 2848.0, - 4512.0, - 2752.0)
    set gg_rct_ArthasStart=Rect(- 2400.0, - 5792.0, - 2304.0, - 5696.0)
    set gg_rct_Blademaster00=Rect(3168.0, 2048.0, 3232.0, 2112.0)
    set gg_rct_Blademaster01=Rect(3232.0, 2080.0, 3296.0, 2144.0)
    set gg_rct_Blademaster02=Rect(3264.0, 2016.0, 3328.0, 2080.0)
    set gg_rct_BlademasterOrigin=Rect(3040.0, 2048.0, 3168.0, 2176.0)
    set gg_rct_Crate01=Rect(- 4640.0, - 3296.0, - 4576.0, - 3232.0)
    set gg_rct_Crate02=Rect(- 2144.0, - 4832.0, - 2080.0, - 4768.0)
    set gg_rct_Dragon_001=Rect(2336.0, - 6176.0, 2880.0, - 5536.0)
    set gg_rct_DragonAttack01=Rect(3296.0, - 6880.0, 3456.0, - 4896.0)
    set gg_rct_Dwarf_Pan_Point=Rect(160.0, - 2880.0, 256.0, - 2784.0)
    set gg_rct_Dwarves=Rect(- 448.0, - 2976.0, 320.0, - 2304.0)
    set gg_rct_Feranor_Destination=Rect(- 64.0, - 2592.0, 0.0, - 2528.0)
    set gg_rct_Firepit01=Rect(- 3488.0, - 4256.0, - 3296.0, - 4064.0)
    set gg_rct_Firepit02=Rect(- 192.0, - 3136.0, - 64.0, - 3008.0)
    set gg_rct_Firepit03=Rect(- 1120.0, - 1312.0, - 928.0, - 1120.0)
    set gg_rct_HandlerDestination=Rect(- 2816.0, - 4224.0, - 2752.0, - 4160.0)
    set gg_rct_HandlerStart=Rect(- 2368.0, - 4032.0, - 2304.0, - 3968.0)
    set gg_rct_Horse_1=Rect(- 1792.0, - 3232.0, - 1696.0, - 3136.0)
    set gg_rct_Horse_1_Destination=Rect(- 2880.0, - 4032.0, - 2784.0, - 3936.0)
    set gg_rct_Horse_2=Rect(- 1504.0, - 3392.0, - 1408.0, - 3296.0)
    set gg_rct_Horse_2_Destination=Rect(- 2816.0, - 4160.0, - 2720.0, - 4064.0)
    set gg_rct_MirrorImage01=Rect(- 3136.0, - 2368.0, - 3008.0, - 2240.0)
    set gg_rct_MirrorImage02=Rect(- 3872.0, - 2656.0, - 3744.0, - 2528.0)
    set gg_rct_Remove_Horses=Rect(- 2688.0, - 5888.0, - 2176.0, - 5664.0)
    set gg_rct_Skeleton01=Rect(2560.0, - 5504.0, 2624.0, - 5440.0)
    set gg_rct_Skeleton02=Rect(2784.0, - 5440.0, 2848.0, - 5376.0)
    set gg_rct_Skeleton03=Rect(2496.0, - 6208.0, 2560.0, - 6144.0)
    set gg_rct_Skeleton04=Rect(2688.0, - 6368.0, 2752.0, - 6304.0)
    set gg_rct_SpawnMirrorImage=Rect(3648.0, 4640.0, 3744.0, 4736.0)
    set gg_rct_Starting_Base_01=Rect(- 5056.0, - 5344.0, - 1664.0, - 2432.0)
    set gg_rct_TriggerDwarves=Rect(768.0, - 4512.0, 1984.0, - 3072.0)
    set gg_rct_TriggerMurlocs=Rect(- 3744.0, - 96.0, - 3072.0, 128.0)
    set gg_rct_Uther_Destination=Rect(- 3136.0, - 4032.0, - 3040.0, - 3936.0)
    set gg_rct_Uther_Patrol_01=Rect(- 4032.0, - 2880.0, - 3872.0, - 2720.0)
    set gg_rct_Uther_Patrol_02=Rect(- 2144.0, - 3776.0, - 1984.0, - 3616.0)
    set gg_rct_Uther01=Rect(- 4512.0, - 3072.0, - 4384.0, - 2944.0)
    set gg_rct_Uther02=Rect(- 4192.0, - 2816.0, - 4064.0, - 2688.0)
    set gg_rct_UtherFinal=Rect(- 4768.0, - 3040.0, - 4672.0, - 2944.0)
    set gg_rct_Villagers=Rect(3136.0, 1920.0, 3456.0, 2208.0)
    set gg_rct_LakeLoop01=Rect(- 4928.0, 32.0, - 2592.0, 1536.0)
    set gg_rct_LakeLoop02=Rect(3488.0, - 1376.0, 4352.0, - 256.0)
    set gg_rct_CinematicHide02=Rect(- 4608.0, - 3328.0, - 3712.0, - 2592.0)
    set gg_rct_CinematicHide01=Rect(- 4256.0, - 2944.0, - 2464.0, - 1376.0)
    set gg_rct_BM_Cinematic_Hide_Player_Units_Here=Rect(1632.0, 576.0, 4576.0, 4544.0)
    set gg_rct_Gold_Turnaround=Rect(- 4640.0, - 4032.0, - 4544.0, - 3680.0)
    set gg_rct_Gold_Dropoff=Rect(- 4032.0, - 4160.0, - 3968.0, - 3776.0)
endfunction

//***************************************************************************
//*
//*  Cameras
//*
//***************************************************************************

function CreateCameras takes nothing returns nothing

    set gg_cam_Blademaster01A=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Blademaster01A, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01A, CAMERA_FIELD_ROTATION, 81.9, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01A, CAMERA_FIELD_ANGLE_OF_ATTACK, 322.6, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01A, CAMERA_FIELD_TARGET_DISTANCE, 1239.7, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01A, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01A, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01A, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Blademaster01A, - 3924.7, - 2645.4, 0.0)

    set gg_cam_Blademaster01B=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Blademaster01B, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01B, CAMERA_FIELD_ROTATION, 97.4, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01B, CAMERA_FIELD_ANGLE_OF_ATTACK, 314.1, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01B, CAMERA_FIELD_TARGET_DISTANCE, 1239.7, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01B, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01B, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01B, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Blademaster01B, - 3924.7, - 2645.4, 0.0)

    set gg_cam_Blademaster02A=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Blademaster02A, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster02A, CAMERA_FIELD_ROTATION, 42.8, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster02A, CAMERA_FIELD_ANGLE_OF_ATTACK, 320.4, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster02A, CAMERA_FIELD_TARGET_DISTANCE, 1815.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster02A, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster02A, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster02A, CAMERA_FIELD_FARZ, 4132.2, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Blademaster02A, 3077.4, 2075.6, 0.0)

    set gg_cam_Blademaster02B=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Blademaster02B, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster02B, CAMERA_FIELD_ROTATION, 83.5, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster02B, CAMERA_FIELD_ANGLE_OF_ATTACK, 323.6, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster02B, CAMERA_FIELD_TARGET_DISTANCE, 1815.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster02B, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster02B, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster02B, CAMERA_FIELD_FARZ, 4132.2, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Blademaster02B, 3217.4, 2003.5, 0.0)

    set gg_cam_Blademaster03A=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Blademaster03A, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster03A, CAMERA_FIELD_ROTATION, 119.3, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster03A, CAMERA_FIELD_ANGLE_OF_ATTACK, 333.6, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster03A, CAMERA_FIELD_TARGET_DISTANCE, 1363.6, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster03A, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster03A, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster03A, CAMERA_FIELD_FARZ, 4132.2, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Blademaster03A, 3147.8, 2245.3, 0.0)

    set gg_cam_Blademaster03B=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Blademaster03B, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster03B, CAMERA_FIELD_ROTATION, 119.3, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster03B, CAMERA_FIELD_ANGLE_OF_ATTACK, 333.6, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster03B, CAMERA_FIELD_TARGET_DISTANCE, 1363.6, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster03B, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster03B, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster03B, CAMERA_FIELD_FARZ, 4132.2, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Blademaster03B, 3147.8, 2245.3, 0.0)

    set gg_cam_End01=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_End01, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_End01, CAMERA_FIELD_ROTATION, 128.4, 0.0)
    call CameraSetupSetField(gg_cam_End01, CAMERA_FIELD_ANGLE_OF_ATTACK, 322.2, 0.0)
    call CameraSetupSetField(gg_cam_End01, CAMERA_FIELD_TARGET_DISTANCE, 918.7, 0.0)
    call CameraSetupSetField(gg_cam_End01, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_End01, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_End01, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_End01, - 4684.1, - 2859.0, 0.0)

    set gg_cam_End02=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_End02, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_End02, CAMERA_FIELD_ROTATION, 166.9, 0.0)
    call CameraSetupSetField(gg_cam_End02, CAMERA_FIELD_ANGLE_OF_ATTACK, 327.2, 0.0)
    call CameraSetupSetField(gg_cam_End02, CAMERA_FIELD_TARGET_DISTANCE, 918.7, 0.0)
    call CameraSetupSetField(gg_cam_End02, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_End02, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_End02, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_End02, - 4684.1, - 2859.0, 0.0)

    set gg_cam_Intro01=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Intro01, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro01, CAMERA_FIELD_ROTATION, 199.9, 0.0)
    call CameraSetupSetField(gg_cam_Intro01, CAMERA_FIELD_ANGLE_OF_ATTACK, 342.2, 0.0)
    call CameraSetupSetField(gg_cam_Intro01, CAMERA_FIELD_TARGET_DISTANCE, 1500.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro01, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro01, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro01, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Intro01, - 1039.5, - 3193.3, 0.0)

    set gg_cam_Intro02=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Intro02, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro02, CAMERA_FIELD_ROTATION, 205.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro02, CAMERA_FIELD_ANGLE_OF_ATTACK, 334.7, 0.0)
    call CameraSetupSetField(gg_cam_Intro02, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro02, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro02, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro02, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Intro02, - 3002.5, - 4133.1, 0.0)

    set gg_cam_Intro03=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Intro03, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro03, CAMERA_FIELD_ROTATION, 166.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro03, CAMERA_FIELD_ANGLE_OF_ATTACK, 316.8, 0.0)
    call CameraSetupSetField(gg_cam_Intro03, CAMERA_FIELD_TARGET_DISTANCE, 931.4, 0.0)
    call CameraSetupSetField(gg_cam_Intro03, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro03, CAMERA_FIELD_FIELD_OF_VIEW, 93.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro03, CAMERA_FIELD_FARZ, 4545.4, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Intro03, - 2537.3, - 5168.9, 0.0)

    set gg_cam_Intro04=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Intro04, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro04, CAMERA_FIELD_ROTATION, 168.8, 0.0)
    call CameraSetupSetField(gg_cam_Intro04, CAMERA_FIELD_ANGLE_OF_ATTACK, 326.3, 0.0)
    call CameraSetupSetField(gg_cam_Intro04, CAMERA_FIELD_TARGET_DISTANCE, 769.7, 0.0)
    call CameraSetupSetField(gg_cam_Intro04, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro04, CAMERA_FIELD_FIELD_OF_VIEW, 93.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro04, CAMERA_FIELD_FARZ, 4545.4, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Intro04, - 3139.1, - 4076.2, 0.0)

    set gg_cam_Intro05=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Intro05, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro05, CAMERA_FIELD_ROTATION, 154.7, 0.0)
    call CameraSetupSetField(gg_cam_Intro05, CAMERA_FIELD_ANGLE_OF_ATTACK, 325.7, 0.0)
    call CameraSetupSetField(gg_cam_Intro05, CAMERA_FIELD_TARGET_DISTANCE, 1072.1, 0.0)
    call CameraSetupSetField(gg_cam_Intro05, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro05, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro05, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Intro05, - 1597.1, - 3272.4, 0.0)

    set gg_cam_Intro06=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Intro06, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro06, CAMERA_FIELD_ROTATION, 150.2, 0.0)
    call CameraSetupSetField(gg_cam_Intro06, CAMERA_FIELD_ANGLE_OF_ATTACK, 324.6, 0.0)
    call CameraSetupSetField(gg_cam_Intro06, CAMERA_FIELD_TARGET_DISTANCE, 974.7, 0.0)
    call CameraSetupSetField(gg_cam_Intro06, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro06, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro06, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Intro06, - 2917.4, - 4021.0, 0.0)

    set gg_cam_Intro07=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Intro07, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro07, CAMERA_FIELD_ROTATION, 38.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro07, CAMERA_FIELD_ANGLE_OF_ATTACK, 325.5, 0.0)
    call CameraSetupSetField(gg_cam_Intro07, CAMERA_FIELD_TARGET_DISTANCE, 846.7, 0.0)
    call CameraSetupSetField(gg_cam_Intro07, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro07, CAMERA_FIELD_FIELD_OF_VIEW, 80.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro07, CAMERA_FIELD_FARZ, 4200.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Intro07, - 2755.8, - 3960.4, 0.0)

    set gg_cam_Intro08=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Intro08, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro08, CAMERA_FIELD_ROTATION, 171.8, 0.0)
    call CameraSetupSetField(gg_cam_Intro08, CAMERA_FIELD_ANGLE_OF_ATTACK, 327.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro08, CAMERA_FIELD_TARGET_DISTANCE, 874.6, 0.0)
    call CameraSetupSetField(gg_cam_Intro08, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro08, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro08, CAMERA_FIELD_FARZ, 4545.4, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Intro08, - 3036.5, - 4059.7, 0.0)

    set gg_cam_Intro09=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Intro09, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro09, CAMERA_FIELD_ROTATION, 229.8, 0.0)
    call CameraSetupSetField(gg_cam_Intro09, CAMERA_FIELD_ANGLE_OF_ATTACK, 332.7, 0.0)
    call CameraSetupSetField(gg_cam_Intro09, CAMERA_FIELD_TARGET_DISTANCE, 1034.7, 0.0)
    call CameraSetupSetField(gg_cam_Intro09, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro09, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro09, CAMERA_FIELD_FARZ, 4545.4, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Intro09, - 3035.1, - 4175.6, 0.0)

    set gg_cam_Intro10=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Intro10, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro10, CAMERA_FIELD_ROTATION, 174.9, 0.0)
    call CameraSetupSetField(gg_cam_Intro10, CAMERA_FIELD_ANGLE_OF_ATTACK, 334.1, 0.0)
    call CameraSetupSetField(gg_cam_Intro10, CAMERA_FIELD_TARGET_DISTANCE, 962.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro10, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro10, CAMERA_FIELD_FIELD_OF_VIEW, 75.0, 0.0)
    call CameraSetupSetField(gg_cam_Intro10, CAMERA_FIELD_FARZ, 4545.4, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Intro10, - 3203.5, - 4060.7, 0.0)

    set gg_cam_Blademaster01C=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Blademaster01C, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01C, CAMERA_FIELD_ROTATION, 154.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01C, CAMERA_FIELD_ANGLE_OF_ATTACK, 331.1, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01C, CAMERA_FIELD_TARGET_DISTANCE, 1024.5, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01C, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01C, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Blademaster01C, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Blademaster01C, - 4088.9, - 2627.7, 0.0)

endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

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
        return udg_Arthas
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
        set udg_Arthas=hero
    elseif slot == 2 then
        set udg_Arthas=hero
    else
        set udg_Arthas=hero
    endif
endfunction

function InitTrig_map_config takes nothing returns nothing
    set hero_global_slots[0]=HERO_ID_PALADIN_ARTHAS
    set hero_global_slots[1]=HERO_ID_NONE
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

function hero_load takes integer hero_slot returns boolean
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

    call SetPlayerTechMaxAllowed(p, 'nalb', hero_global_slots[hero_slot])
    call io_read_file("heroes.txt")

    if GetPlayerTechMaxAllowed(p, 'nske') == 1 then
        set HERO_MAX_LEVEL[hero_slot]=GetPlayerTechMaxAllowed(p, 'nder')
        set hero_abil_1[hero_slot]=GetPlayerTechMaxAllowed(Player(0), 'nfro')
        set hero_abil_2[hero_slot]=GetPlayerTechMaxAllowed(Player(1), 'nfro')
        set hero_abil_3[hero_slot]=GetPlayerTechMaxAllowed(Player(2), 'nfro')
        set hero_abil_4[hero_slot]=GetPlayerTechMaxAllowed(Player(3), 'nfro')
        set last_hero_packet=GetPlayerTechMaxAllowed(p, 'nech')
    endif

    return GetPlayerTechMaxAllowed(p, 'nske') == 1
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

function trigger_function_item_locations takes nothing returns nothing
    local integer item_id= GetItemTypeId(GetManipulatedItem())
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
    elseif ( item_id == 'I01A' ) then
        call status_check_location(10)
    elseif ( item_id == 'I01B' ) then
        call status_check_location(11)
    elseif ( item_id == 'I01C' ) then
        call status_check_location(12)
    elseif ( item_id == 'I01D' ) then
        call status_check_location(13)
    elseif ( item_id == 'I01E' ) then
        call status_check_location(14)
    elseif ( item_id == 'I01F' ) then
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
    elseif ( item_id == 'I02A' ) then
        call status_check_location(26)
    elseif ( item_id == 'I02B' ) then
        call status_check_location(27)
    elseif ( item_id == 'I02C' ) then
        call status_check_location(28)
    elseif ( item_id == 'I02D' ) then
        call status_check_location(29)
    elseif ( item_id == 'I02E' ) then
        call status_check_location(30)
    elseif ( item_id == 'I02F' ) then
        call status_check_location(31)
    endif
endfunction

function InitTrig_item_locations takes nothing returns nothing
    set t_location_found=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_location_found, USER_PLAYER, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(t_location_found, function trigger_function_item_locations)
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
// Trigger: AP Load Arthas
//===========================================================================
function Trig_AP_Load_Arthas_Func003001 takes nothing returns boolean
    return ( udg_Arthas != null )
endfunction

function Trig_AP_Load_Arthas_Actions takes nothing returns nothing
    // Load the hero data
    set udg_Arthas=hero_create(0 , USER_PLAYER , GetRectCenterX(gg_rct_ArthasStart) , GetRectCenterY(gg_rct_ArthasStart) , 90.0)
    if ( Trig_AP_Load_Arthas_Func003001() ) then
        return
    else
        call DoNothing()
    endif
    // If the hero data wasn't found, create a default hero
    call CreateNUnitsAtLoc(1, 'Hart', Player(1), GetRectCenter(gg_rct_ArthasStart), 90.00)
    set udg_Arthas=GetLastCreatedUnit()
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
// Trigger: Map Initialization
//===========================================================================
function Trig_Map_Initialization_Func111001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Map_Initialization_Func117002 takes nothing returns nothing
    call IssueImmediateOrderBJ(GetEnumUnit(), "holdposition")
endfunction

function Trig_Map_Initialization_Actions takes nothing returns nothing
    call SetCampaignMenuRaceBJ(bj_CAMPAIGN_INDEX_H)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.00, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call CameraSetupApplyForPlayer(true, gg_cam_Intro01, Player(1), 0.00)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 3.00, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    // Set Variables
    set udg_FeranorSteeltoe=gg_unit_hC02_0049
    call SetUnitInvulnerable(udg_FeranorSteeltoe, true)
    set udg_DwarvenBlacksmith=gg_unit_hbla_0012
    set udg_Dwarves=GetUnitsInRectAll(gg_rct_Dwarves)
    call GroupRemoveUnitSimple(udg_FeranorSteeltoe, udg_Dwarves)
    set udg_DwarvenScout=gg_unit_hrif_0017
    set udg_Uther=gg_unit_Huth_0002
    set udg_Blademaster=gg_unit_Obla_0071
    set udg_StartingBase01=GetUnitsInRectAll(gg_rct_Starting_Base_01)
    call GroupRemoveUnitSimple(gg_unit_nshe_0026, udg_StartingBase01)
    call GroupRemoveUnitSimple(gg_unit_nshe_0027, udg_StartingBase01)
    call GroupRemoveUnitSimple(gg_unit_ngol_0009, udg_StartingBase01)
    call GroupRemoveUnitSimple(udg_Uther, udg_StartingBase01)
    set udg_Villagers=GetUnitsInRectAll(gg_rct_Villagers)
    set udg_UnluckyFootman=gg_unit_hfoo_0096
    set udg_UnfortunateMan=gg_unit_nvil_0080
    set udg_UnfortunateWoman=gg_unit_nvlw_0054
    set udg_Searinox=gg_unit_nser_0048
    set udg_UthersPosition=1
    set udg_Crate01=gg_dest_LTcr_2866
    set udg_Crate02=gg_dest_LTcr_2868
    set udg_Lumber01=gg_unit_hpea_0045
    set udg_Lumber02=gg_unit_hpea_0044
    set udg_Gold01=gg_unit_hpea_0020
    // Uther's Inventory
    call UnitAddItemByIdSwapped('rde4', udg_Uther)
    call SetItemDroppableBJ(GetLastCreatedItem(), false)
    call UnitAddItemByIdSwapped('ratf', udg_Uther)
    call SetItemDroppableBJ(GetLastCreatedItem(), false)
    call UnitAddItemByIdSwapped('rlif', udg_Uther)
    call SetItemDroppableBJ(GetLastCreatedItem(), false)
    call UnitAddItemByIdSwapped('rwiz', udg_Uther)
    call SetItemDroppableBJ(GetLastCreatedItem(), false)
    call UnitAddItemByIdSwapped('prvt', udg_Uther)
    call SetItemDroppableBJ(GetLastCreatedItem(), false)
    call UnitAddItemByIdSwapped('ckng', udg_Uther)
    call SetItemDroppableBJ(GetLastCreatedItem(), false)
    // Player Settings
    call SetPlayerStateBJ(udg_P_Blackrock, PLAYER_STATE_RESOURCE_GOLD, 5000)
    call SetPlayerStateBJ(udg_P_Blackrock, PLAYER_STATE_RESOURCE_LUMBER, 800)
    call SetPlayerStateBJ(udg_AAAP_Arthas, PLAYER_STATE_RESOURCE_GOLD, 0)
    call SetPlayerStateBJ(udg_AAAP_Arthas, PLAYER_STATE_RESOURCE_LUMBER, 0)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock, udg_AAAP_Arthas, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock, udg_P_Uther, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock, udg_P_Blackrock2, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock, udg_P_Blademaster, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock, udg_P_Dwarves, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock, udg_P_Villagers, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock, Player(PLAYER_NEUTRAL_AGGRESSIVE), bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock2, udg_AAAP_Arthas, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock2, udg_P_Uther, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock2, udg_P_Blackrock, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock2, udg_P_Blademaster, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock2, udg_P_Dwarves, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock2, udg_P_Villagers, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blackrock2, Player(PLAYER_NEUTRAL_AGGRESSIVE), bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blademaster, udg_AAAP_Arthas, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blademaster, udg_P_Uther, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blademaster, udg_P_Blackrock, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blademaster, udg_P_Blackrock2, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blademaster, udg_P_Dwarves, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blademaster, udg_P_Villagers, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Blademaster, Player(PLAYER_NEUTRAL_AGGRESSIVE), bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_AAAP_Arthas, udg_P_Uther, bj_ALLIANCE_ALLIED_VISION)
    call SetPlayerAllianceStateBJ(udg_AAAP_Arthas, udg_P_Dwarves, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_AAAP_Arthas, udg_P_Villagers, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_AAAP_Arthas, udg_P_Blackrock, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(udg_AAAP_Arthas, udg_P_Blackrock2, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(udg_AAAP_Arthas, udg_P_Blademaster, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceBJ(udg_AAAP_Arthas, ALLIANCE_SHARED_SPELLS, false, udg_P_Dwarves)
    call SetPlayerAllianceStateBJ(udg_P_Uther, udg_AAAP_Arthas, bj_ALLIANCE_ALLIED_VISION)
    call SetPlayerAllianceStateBJ(udg_P_Uther, udg_P_Dwarves, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Uther, udg_P_Villagers, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Uther, udg_P_Blackrock, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Uther, udg_P_Blackrock2, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Uther, udg_P_Blademaster, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceBJ(udg_P_Uther, ALLIANCE_SHARED_SPELLS, false, udg_P_Dwarves)
    call SetPlayerAllianceStateBJ(udg_P_Dwarves, udg_AAAP_Arthas, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Dwarves, udg_P_Uther, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Dwarves, udg_P_Villagers, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Dwarves, udg_P_Blackrock, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Dwarves, udg_P_Blackrock2, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Dwarves, udg_P_Blademaster, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Villagers, udg_AAAP_Arthas, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Villagers, udg_P_Uther, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Villagers, udg_P_Dwarves, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Villagers, udg_P_Blackrock, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Villagers, udg_P_Blackrock2, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Villagers, udg_P_Blademaster, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(udg_P_Villagers, Player(PLAYER_NEUTRAL_AGGRESSIVE), bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), udg_P_Blackrock, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), udg_P_Blackrock2, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), udg_P_Blademaster, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), udg_P_Villagers, bj_ALLIANCE_ALLIED)
    call SetPlayerAllianceStateBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), udg_AAAP_Arthas, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), udg_P_Uther, bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceStateBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), udg_P_Dwarves, bj_ALLIANCE_UNALLIED)
    call SetPlayerColorBJ(udg_P_Blackrock2, PLAYER_COLOR_RED, true)
    call SetPlayerColorBJ(udg_P_Blademaster, PLAYER_COLOR_RED, true)
    call SetPlayerOnScoreScreenBJ(false, Player(2))
    call SetPlayerOnScoreScreenBJ(false, Player(3))
    call SetPlayerOnScoreScreenBJ(false, Player(4))
    call SetPlayerOnScoreScreenBJ(false, Player(8))
    // Difficulty Settings
    call SetPlayerHandicapXPBJ(udg_AAAP_Arthas, 60.00)
    if ( Trig_Map_Initialization_Func111001() ) then
        call ConditionalTriggerExecute(gg_trg_Hard_Difficulty)
    else
        call DoNothing()
    endif
    // Unit Settings
    call IssueImmediateOrderBJ(udg_UnluckyFootman, "holdposition")
    call IssueImmediateOrderBJ(udg_UnfortunateMan, "holdposition")
    call IssueImmediateOrderBJ(udg_UnfortunateWoman, "holdposition")
    call IssuePointOrderLocBJ(udg_Uther, "move", GetRectCenter(gg_rct_Uther_Destination))
    call ForGroupBJ(udg_Villagers, function Trig_Map_Initialization_Func117002)
    call IssueImmediateOrderBJ(udg_Lumber01, "autoharvestlumber")
    call IssueImmediateOrderBJ(udg_Lumber02, "autoharvestlumber")
    call AddSpecialEffectTargetUnitBJ("overhead", udg_FeranorSteeltoe, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    set udg_TalkFeranor=GetLastCreatedEffectBJ()
    call SuspendHeroXPBJ(false, udg_Blademaster)
    // Quest Settings
    call CreateQuestBJ(bj_QUESTTYPE_OPT_UNDISCOVERED, "TRIGSTR_077", "TRIGSTR_078", "ReplaceableTextures\\CommandButtons\\BTNBlackDragon.tga")
    set udg_QuestSearinox=GetLastCreatedQuestBJ()
    call CreateQuestItemBJ(udg_QuestSearinox, "TRIGSTR_079")
    set udg_QuestSearinoxRequirementSlay=GetLastCreatedQuestItemBJ()
    call CreateQuestItemBJ(udg_QuestSearinox, "TRIGSTR_183")
    set udg_QuestSearinoxRequirementReturn=GetLastCreatedQuestItemBJ()
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_081", "TRIGSTR_082", "ReplaceableTextures\\CommandButtons\\BTNHumanBarracks.tga")
    set udg_QuestBase=GetLastCreatedQuestBJ()
    call CreateQuestItemBJ(udg_QuestBase, "TRIGSTR_114")
    set udg_QuestBaseRequirementBarracks=GetLastCreatedQuestItemBJ()
    call CreateQuestItemBJ(udg_QuestBase, "TRIGSTR_115")
    set udg_QuestBaseRequirementFarms=GetLastCreatedQuestItemBJ()
    call CreateQuestItemBJ(udg_QuestBase, "TRIGSTR_116")
    set udg_QuestBaseRequirementFootmen=GetLastCreatedQuestItemBJ()
    call CreateQuestBJ(bj_QUESTTYPE_REQ_UNDISCOVERED, "TRIGSTR_109", "TRIGSTR_110", "ReplaceableTextures\\CommandButtons\\BTNHeroBlademaster.tga")
    set udg_QuestBlademaster=GetLastCreatedQuestBJ()
    call CreateQuestItemBJ(udg_QuestBlademaster, "TRIGSTR_118")
    set udg_QuestBladeRequirementSlay=GetLastCreatedQuestItemBJ()
    // Map Settings
    call SetSkyModel("Environment\\Sky\\LordaeronSummerSky\\LordaeronSummerSky.mdl")
    call SetTerrainFogExBJ(0, 4000.00, 8000, 0.00, 100, 100, 100)
    call SetTimeOfDay(6.50)
    // Run Triggers
    call InitGameCacheBJ("Campaigns.w3v")
    call ConditionalTriggerExecute(gg_trg_AP_Load_Arthas)
    call ConditionalTriggerExecute(gg_trg_Intro_Cinematic)
    call ConditionalTriggerExecute(gg_trg_Handicap)
endfunction

//===========================================================================
function InitTrig_Map_Initialization takes nothing returns nothing
    set gg_trg_Map_Initialization=CreateTrigger()
    call TriggerAddAction(gg_trg_Map_Initialization, function Trig_Map_Initialization_Actions)
endfunction

//===========================================================================
// Trigger: Delayed Special FX
//===========================================================================
function Trig_Delayed_Special_FX_Actions takes nothing returns nothing
    call AddSpecialEffectTargetUnitBJ("origin", udg_UnfortunateMan, "Abilities\\Spells\\Orc\\Ensnare\\ensnareTarget.mdl")
    set udg_Net02=GetLastCreatedEffectBJ()
    call AddSpecialEffectTargetUnitBJ("origin", udg_UnfortunateWoman, "Abilities\\Spells\\Orc\\Ensnare\\ensnareTarget.mdl")
    set udg_Net03=GetLastCreatedEffectBJ()
    call AddSpecialEffectTargetUnitBJ("origin", udg_UnluckyFootman, "Abilities\\Spells\\Orc\\Ensnare\\ensnareTarget.mdl")
    set udg_Net01=GetLastCreatedEffectBJ()
endfunction

//===========================================================================
function InitTrig_Delayed_Special_FX takes nothing returns nothing
    set gg_trg_Delayed_Special_FX=CreateTrigger()
    call TriggerAddAction(gg_trg_Delayed_Special_FX, function Trig_Delayed_Special_FX_Actions)
endfunction

//===========================================================================
// Trigger: Hard Difficulty
//===========================================================================
function Trig_Hard_Difficulty_Conditions takes nothing returns boolean
    if ( not ( GetGameDifficulty() == MAP_DIFFICULTY_HARD ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hard_Difficulty_Actions takes nothing returns nothing
    call SuspendHeroXPBJ(true, udg_Blademaster)
    call SetHeroLevelBJ(udg_Blademaster, 6, false)
    call SelectHeroSkill(udg_Blademaster, 'AOww')
    call SelectHeroSkill(udg_Blademaster, 'AOcr')
    call SelectHeroSkill(udg_Blademaster, 'AOmi')
    call SelectHeroSkill(udg_Blademaster, 'AOmi')
    call SuspendHeroXPBJ(false, udg_Blademaster)
endfunction

//===========================================================================
function InitTrig_Hard_Difficulty takes nothing returns nothing
    set gg_trg_Hard_Difficulty=CreateTrigger()
    call TriggerAddCondition(gg_trg_Hard_Difficulty, Condition(function Trig_Hard_Difficulty_Conditions))
    call TriggerAddAction(gg_trg_Hard_Difficulty, function Trig_Hard_Difficulty_Actions)
endfunction

//===========================================================================
// Trigger: Handicap
//===========================================================================
function Trig_Handicap_Conditions takes nothing returns boolean
    if ( not ( GetGameDifficulty() == MAP_DIFFICULTY_EASY ) ) then
        return false
    endif
    return true
endfunction

function Trig_Handicap_Actions takes nothing returns nothing
    call SetPlayerHandicapBJ(udg_P_Blackrock, bj_HANDICAP_EASY)
    call SetPlayerHandicapBJ(udg_P_Blackrock2, bj_HANDICAP_EASY)
    call SetPlayerHandicapBJ(udg_P_Blademaster, bj_HANDICAP_EASY)
    call SetPlayerHandicapBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), bj_HANDICAP_EASY)
endfunction

//===========================================================================
function InitTrig_Handicap takes nothing returns nothing
    set gg_trg_Handicap=CreateTrigger()
    call TriggerAddCondition(gg_trg_Handicap, Condition(function Trig_Handicap_Conditions))
    call TriggerAddAction(gg_trg_Handicap, function Trig_Handicap_Actions)
endfunction

//===========================================================================
// Trigger: Intro Cinematic
//===========================================================================
function Trig_Intro_Cinematic_Func018001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func021001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func024001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func029001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func036001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func051001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func055001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func057001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func060001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func063001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func065001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func069001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func071001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func077001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func079001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func088001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func091001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func093001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func095001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func103001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func108001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func110001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func112001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func114001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func118001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func121001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func123001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func128001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func129002 takes nothing returns nothing
    call SetUnitOwner(GetEnumUnit(), udg_AAAP_Arthas, true)
endfunction

function Trig_Intro_Cinematic_Func132001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func144001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Func146001 takes nothing returns boolean
    return ( udg_IntroSkipped == true )
endfunction

function Trig_Intro_Cinematic_Actions takes nothing returns nothing
    call CinematicModeBJ(true, udg_AAAPG_Arthas)
    call CameraSetSmoothingFactorBJ(0.01)
    call SetUnitMoveSpeed(udg_Arthas, 300.00)
    call SetTerrainFogExBJ(0, 800.00, 3500.00, 0, 20.00, 30.00, 40.00)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.10, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call CameraSetupApplyForPlayer(true, gg_cam_Intro01, udg_AAAP_Arthas, 0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_Intro02, udg_AAAP_Arthas, 7.00)
    // Sound Settings
    call ClearMapMusicBJ()
    call TriggerSleepAction(0.01)
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\Comradeship.mp3")
    call SetMapMusicIndexedBJ("music", 1)
    call SetStackedSoundBJ(true, gg_snd_WaterLakeLoop1, gg_rct_LakeLoop01)
    call SetStackedSoundBJ(true, gg_snd_WaterLakeLoop1, gg_rct_LakeLoop02)
    // NOW SKIPPABLE
    call EnableTrigger(gg_trg_Intro_Cinematic_Cancel)
    call TriggerSleepAction(2.00)
    if ( Trig_Intro_Cinematic_Func018001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Arthas, "move", GetRectCenter(gg_rct_Arthas_Destination))
    call TriggerSleepAction(2.00)
    if ( Trig_Intro_Cinematic_Func021001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Uther, "move", GetRectCenter(gg_rct_Uther_Destination))
    call TriggerSleepAction(3.00)
    if ( Trig_Intro_Cinematic_Func024001() ) then
        return
    else
        call DoNothing()
    endif
    call IssueImmediateOrderBJ(udg_Uther, "stop")
    call SetUnitFacingToFaceUnitTimed(udg_Uther, udg_Arthas, 0.20)
    call CameraSetupApplyForPlayer(true, gg_cam_Intro04, udg_AAAP_Arthas, 0.00)
    call TriggerSleepAction(0.20)
    if ( Trig_Intro_Cinematic_Func029001() ) then
        return
    else
        call DoNothing()
    endif
    call IssueImmediateOrderBJ(udg_Arthas, "stop")
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, udg_Uther, 0.20)
    call StartCampaignAI(udg_P_Blackrock, "h02_red.ai")
    call ConditionalTriggerExecute(gg_trg___Red_AI_Settings)
    set udg_HasRedAIBegun=true
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Uther, "TRIGSTR_035", gg_snd_H02Uther01, "TRIGSTR_036", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Intro_Cinematic_Func036001() ) then
        return
    else
        call DoNothing()
    endif
    call CreateNUnitsAtLoc(1, 'hhdl', udg_P_Uther, GetRectCenter(gg_rct_Horse_1), 0.00)
    set udg_Horse01=GetLastCreatedUnit()
    call CreateNUnitsAtLoc(1, 'hhdl', udg_P_Uther, GetRectCenter(gg_rct_Horse_2), 0.00)
    set udg_Horse02=GetLastCreatedUnit()
    call SetUnitFacingToFaceUnitTimed(udg_Uther, udg_Knight01, 0.30)
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, udg_Knight01, 0.30)
    call IssuePointOrderLocBJ(udg_Horse02, "move", GetRectCenter(gg_rct_Horse_2_Destination))
    call IssuePointOrderLocBJ(udg_Horse01, "move", GetRectCenter(gg_rct_Horse_1_Destination))
    call AttachSoundToUnitBJ(gg_snd_HorseLoop3, udg_Horse01)
    call PlaySoundBJ(gg_snd_HorseLoop3)
    call CameraSetSmoothingFactorBJ(0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_Intro05, udg_AAAP_Arthas, 0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_Intro06, udg_AAAP_Arthas, 5.00)
    call TriggerSleepAction(( GetSoundDurationBJ(GetLastPlayedSound()) - 0.00 ))
    if ( Trig_Intro_Cinematic_Func051001() ) then
        return
    else
        call DoNothing()
    endif
    call AttachSoundToUnitBJ(gg_snd_KnightNoRiderWhat2, udg_Horse02)
    call PlaySoundBJ(gg_snd_KnightNoRiderWhat2)
    call TriggerSleepAction(( GetSoundDurationBJ(GetLastPlayedSound()) - 0.00 ))
    if ( Trig_Intro_Cinematic_Func055001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.50)
    if ( Trig_Intro_Cinematic_Func057001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_Intro07, Player(1), 0.00)
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Uther, "TRIGSTR_037", gg_snd_H02Uther02, "TRIGSTR_038", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Intro_Cinematic_Func060001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, udg_Uther, 0.20)
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Arthas, "TRIGSTR_056", gg_snd_H02Arthas03, "TRIGSTR_058", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Intro_Cinematic_Func063001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.40)
    if ( Trig_Intro_Cinematic_Func065001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Uther, udg_Arthas, 0.20)
    call CameraSetupApplyForPlayer(true, gg_cam_Intro08, udg_AAAP_Arthas, 0.00)
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Uther, "TRIGSTR_059", gg_snd_H02Uther04, "TRIGSTR_064", bj_TIMETYPE_ADD, 0.00, false)
    if ( Trig_Intro_Cinematic_Func069001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.30)
    if ( Trig_Intro_Cinematic_Func071001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitAnimation(udg_Horse01, "stand victory")
    call QueueUnitAnimationBJ(udg_Horse01, "stand")
    call AttachSoundToUnitBJ(gg_snd_KnightNoRiderWarcry1, udg_Horse01)
    call PlaySoundBJ(gg_snd_KnightNoRiderWarcry1)
    call TriggerSleepAction(1.30)
    if ( Trig_Intro_Cinematic_Func077001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(7.00)
    if ( Trig_Intro_Cinematic_Func079001() ) then
        return
    else
        call DoNothing()
    endif
    call CreateNUnitsAtLoc(1, 'hkni', udg_P_Uther, GetRectCenter(gg_rct_HandlerStart), 0.00)
    set udg_Handler=GetLastCreatedUnit()
    call RemoveGuardPosition(udg_Handler)
    set udg_IntroHandlerRemoved=false
    call IssuePointOrderLocBJ(udg_Handler, "move", GetRectCenter(gg_rct_HandlerDestination))
    call AttachSoundToUnitBJ(gg_snd_HorseLoop1, udg_Handler)
    call PlaySoundBJ(gg_snd_HorseLoop1)
    call TriggerSleepAction(2.00)
    if ( Trig_Intro_Cinematic_Func088001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Handler, udg_Uther, 0.30)
    call TriggerSleepAction(0.50)
    if ( Trig_Intro_Cinematic_Func091001() ) then
        return
    else
        call DoNothing()
    endif
    call WaitForSoundBJ(gg_snd_H02Uther04, 0)
    if ( Trig_Intro_Cinematic_Func093001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Arthas, "TRIGSTR_065", gg_snd_H02Arthas05, "TRIGSTR_066", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Intro_Cinematic_Func095001() ) then
        return
    else
        call DoNothing()
    endif
    call ConditionalTriggerExecute(gg_trg___Horses_Leave)
    call PlaySoundBJ(gg_snd_KnightNoRiderWhat2)
    call PlaySoundBJ(gg_snd_HorseLoop1)
    call TriggerSleepAction(0.10)
    call AttachSoundToUnitBJ(gg_snd_HorseLoop3, udg_Handler)
    call PlaySoundBJ(gg_snd_HorseLoop3)
    call TriggerSleepAction(1.00)
    if ( Trig_Intro_Cinematic_Func103001() ) then
        return
    else
        call DoNothing()
    endif
    call AttachSoundToUnitBJ(gg_snd_KnightNoRiderWhat3, udg_Horse01)
    call PlaySoundBJ(gg_snd_KnightNoRiderWhat3)
    call CameraSetupApplyForPlayer(true, gg_cam_Intro09, udg_AAAP_Arthas, 0.00)
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Uther, "TRIGSTR_067", gg_snd_H02Uther06, "TRIGSTR_068", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Intro_Cinematic_Func108001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Arthas, "TRIGSTR_069", gg_snd_H02Arthas07, "TRIGSTR_070", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Intro_Cinematic_Func110001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.50)
    if ( Trig_Intro_Cinematic_Func112001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Uther, "TRIGSTR_071", gg_snd_H02Uther08, "TRIGSTR_072", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Intro_Cinematic_Func114001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_Intro10, udg_AAAP_Arthas, 0.00)
    call SetTerrainFogExBJ(0, 2200.00, 6000.00, 0, 20.00, 30.00, 40.00)
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Arthas, "TRIGSTR_073", gg_snd_H02Arthas09, "TRIGSTR_074", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Intro_Cinematic_Func118001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.30)
    call CameraResetSmoothingFactorBJ()
    if ( Trig_Intro_Cinematic_Func121001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Uther, "TRIGSTR_075", gg_snd_H02Uther10, "TRIGSTR_076", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Intro_Cinematic_Func123001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicModeBJ(false, udg_AAAPG_Arthas)
    call ResetToGameCameraForPlayer(udg_AAAP_Arthas, 2.00)
    call SelectUnitSingle(udg_Arthas)
    call TriggerSleepAction(2.00)
    if ( Trig_Intro_Cinematic_Func128001() ) then
        return
    else
        call DoNothing()
    endif
    call ForGroupBJ(udg_StartingBase01, function Trig_Intro_Cinematic_Func129002)
    call SetUnitOwner(udg_Gold03, udg_AAAP_Arthas, true)
    call TriggerSleepAction(0.05)
    if ( Trig_Intro_Cinematic_Func132001() ) then
        return
    else
        call DoNothing()
    endif
    call RemoveUnit(gg_unit_hpea_0020)
    call ConditionalTriggerExecute(gg_trg_Create_Gold_Peasants)
    call IssueImmediateOrderBJ(udg_Lumber02, "autoharvestlumber")
    call IssueImmediateOrderBJ(udg_Lumber01, "autoharvestlumber")
    call SetPlayerStateBJ(udg_AAAP_Arthas, PLAYER_STATE_RESOURCE_GOLD, 300)
    call SetPlayerStateBJ(udg_AAAP_Arthas, PLAYER_STATE_RESOURCE_LUMBER, 50)
    call ConditionalTriggerExecute(gg_trg_Uther_Patrol_to_01)
    set udg_UtherIsDefending=false
    set udg_IntroCinematicDone=true
    call SetSkyModel(null)
    call TriggerSleepAction(0.50)
    if ( Trig_Intro_Cinematic_Func144001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.01)
    if ( Trig_Intro_Cinematic_Func146001() ) then
        return
    else
        call DoNothing()
    endif
    // NO LONGER SKIPPABLE
    call DisableTrigger(gg_trg_Intro_Cinematic_Cancel)
    call ConditionalTriggerExecute(gg_trg_Delayed_Special_FX)
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_018")
    call FlashQuestDialogButtonBJ()
    call ResetTerrainFogBJ()
    call StartTimerBJ(udg_AltarHintTimer, false, 30)
endfunction

//===========================================================================
function InitTrig_Intro_Cinematic takes nothing returns nothing
    set gg_trg_Intro_Cinematic=CreateTrigger()
    call TriggerAddAction(gg_trg_Intro_Cinematic, function Trig_Intro_Cinematic_Actions)
endfunction

//===========================================================================
// Trigger: Intro Cinematic Cancel
//===========================================================================
function Trig_Intro_Cinematic_Cancel_Func013001 takes nothing returns boolean
    return ( udg_IntroHorse01Removed == false )
endfunction

function Trig_Intro_Cinematic_Cancel_Func014001 takes nothing returns boolean
    return ( udg_IntroHorse02Removed == false )
endfunction

function Trig_Intro_Cinematic_Cancel_Func015001 takes nothing returns boolean
    return ( udg_IntroHandlerRemoved == false )
endfunction

function Trig_Intro_Cinematic_Cancel_Func019002 takes nothing returns nothing
    call SetUnitOwner(GetEnumUnit(), udg_AAAP_Arthas, true)
endfunction

function Trig_Intro_Cinematic_Cancel_Func022001 takes nothing returns boolean
    return ( udg_HasRedAIBegun == true )
endfunction

function Trig_Intro_Cinematic_Cancel_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_IntroSkipped=true
    set udg_IntroCinematicDone=true
    call SetSkyModel(null)
    call ResetTerrainFogBJ()
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 0.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call ResetToGameCameraForPlayer(udg_AAAP_Arthas, 0.00)
    call CinematicModeBJ(false, udg_AAAPG_Arthas)
    call SetUnitPositionLoc(udg_Arthas, GetRectCenter(gg_rct_Arthas_Destination))
    call ConditionalTriggerExecute(gg_trg_Delayed_Special_FX)
    call PanCameraToTimedLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(udg_Arthas), 0.00)
    if ( Trig_Intro_Cinematic_Cancel_Func013001() ) then
        call RemoveUnit(udg_Horse01)
    else
        call DoNothing()
    endif
    if ( Trig_Intro_Cinematic_Cancel_Func014001() ) then
        call RemoveUnit(udg_Horse02)
    else
        call DoNothing()
    endif
    if ( Trig_Intro_Cinematic_Cancel_Func015001() ) then
        call RemoveUnit(udg_Handler)
    else
        call DoNothing()
    endif
    call ResetUnitLookAt(udg_Arthas)
    call ResetUnitLookAt(udg_Uther)
    call SelectUnitSingle(udg_Arthas)
    call ForGroupBJ(udg_StartingBase01, function Trig_Intro_Cinematic_Cancel_Func019002)
    call SetPlayerStateBJ(udg_AAAP_Arthas, PLAYER_STATE_RESOURCE_GOLD, 300)
    call SetPlayerStateBJ(udg_AAAP_Arthas, PLAYER_STATE_RESOURCE_LUMBER, 50)
    if ( Trig_Intro_Cinematic_Cancel_Func022001() ) then
        call DoNothing()
    else
        call StartCampaignAI(udg_P_Blackrock, "h02_red.ai")
    endif
    set udg_HasRedAIBegun=true
    call TriggerExecute(gg_trg_Uther_Patrol_to_01)
    set udg_UtherIsDefending=false
    set udg_IntroCinematicDone=true
    call RemoveUnit(gg_unit_hpea_0020)
    call ConditionalTriggerExecute(gg_trg_Create_Gold_Peasants)
    call TriggerSleepAction(1.00)
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_017")
    call FlashQuestDialogButtonBJ()
    call IssueImmediateOrderBJ(udg_Lumber01, "autoharvestlumber")
    call IssueImmediateOrderBJ(udg_Lumber02, "autoharvestlumber")
    call TriggerSleepAction(0.01)
    call StartTimerBJ(udg_AltarHintTimer, false, 30)
endfunction

//===========================================================================
function InitTrig_Intro_Cinematic_Cancel takes nothing returns nothing
    set gg_trg_Intro_Cinematic_Cancel=CreateTrigger()
    call DisableTrigger(gg_trg_Intro_Cinematic_Cancel)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Intro_Cinematic_Cancel, Player(1))
    call TriggerAddAction(gg_trg_Intro_Cinematic_Cancel, function Trig_Intro_Cinematic_Cancel_Actions)
endfunction

//===========================================================================
// Trigger: Create Gold Peasants
//===========================================================================
function Trig_Create_Gold_Peasants_Actions takes nothing returns nothing
    set udg_Gold01=CreateUnit(udg_AAAP_Arthas, 'hpea', - 4276.2, - 3938.2, 241.047)
    set udg_Gold02=CreateUnit(udg_AAAP_Arthas, 'hpea', - 4147.5, - 3873.2, 255.484)
    set udg_Gold03=CreateUnit(udg_AAAP_Arthas, 'hpea', - 4067.4, - 3981.1, 343.377)
    call IssueTargetOrderBJ(udg_Gold01, "harvest", gg_unit_ngol_0009)
    call IssueTargetOrderBJ(udg_Gold02, "harvest", gg_unit_ngol_0009)
    call IssueTargetOrderBJ(udg_Gold03, "harvest", gg_unit_ngol_0009)
    call DisableTrigger(gg_trg_PeasantFakeHarvest)
    call DisableTrigger(gg_trg_PeasantFakeReturn)
    call DisableTrigger(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Create_Gold_Peasants takes nothing returns nothing
    set gg_trg_Create_Gold_Peasants=CreateTrigger()
    call TriggerAddAction(gg_trg_Create_Gold_Peasants, function Trig_Create_Gold_Peasants_Actions)
endfunction

//===========================================================================
// Trigger: PeasantFakeHarvest
//===========================================================================
function Trig_PeasantFakeHarvest_Conditions takes nothing returns boolean
    if ( not ( GetTriggerUnit() == gg_unit_hpea_0020 ) ) then
        return false
    endif
    return true
endfunction

function Trig_PeasantFakeHarvest_Actions takes nothing returns nothing
    // The original map had allied peasants harvesting gold that were replaced with player ones
    // If the replacement happened while a peasant was in the mine, the player peasants would not properly start mining
    // So, we fake it with some animations. This rough setup is based on the one in H7
    call AddUnitAnimationPropertiesBJ(true, "gold", GetTriggerUnit())
    call IssuePointOrderLocBJ(GetTriggerUnit(), "move", GetRectCenter(gg_rct_Gold_Dropoff))
    call SetUnitMoveSpeed(GetTriggerUnit(), 8.00)
endfunction

//===========================================================================
function InitTrig_PeasantFakeHarvest takes nothing returns nothing
    set gg_trg_PeasantFakeHarvest=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_PeasantFakeHarvest, gg_rct_Gold_Turnaround)
    call TriggerAddCondition(gg_trg_PeasantFakeHarvest, Condition(function Trig_PeasantFakeHarvest_Conditions))
    call TriggerAddAction(gg_trg_PeasantFakeHarvest, function Trig_PeasantFakeHarvest_Actions)
endfunction

//===========================================================================
// Trigger: PeasantFakeReturn
//===========================================================================
function Trig_PeasantFakeReturn_Conditions takes nothing returns boolean
    if ( not ( GetTriggerUnit() == gg_unit_hpea_0020 ) ) then
        return false
    endif
    return true
endfunction

function Trig_PeasantFakeReturn_Actions takes nothing returns nothing
    call AddUnitAnimationPropertiesBJ(false, "gold", GetTriggerUnit())
    call IssuePointOrderLocBJ(GetTriggerUnit(), "move", GetRectCenter(gg_rct_Gold_Turnaround))
    call SetUnitMoveSpeed(GetTriggerUnit(), GetUnitDefaultMoveSpeed(GetTriggerUnit()))
endfunction

//===========================================================================
function InitTrig_PeasantFakeReturn takes nothing returns nothing
    set gg_trg_PeasantFakeReturn=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_PeasantFakeReturn, gg_rct_Gold_Dropoff)
    call TriggerAddCondition(gg_trg_PeasantFakeReturn, Condition(function Trig_PeasantFakeReturn_Conditions))
    call TriggerAddAction(gg_trg_PeasantFakeReturn, function Trig_PeasantFakeReturn_Actions)
endfunction

//===========================================================================
// Trigger:   Red AI Settings
//===========================================================================
function Trig___Red_AI_Settings_Actions takes nothing returns nothing
    call RemoveGuardPosition(gg_unit_ogru_0090)
    call RemoveGuardPosition(gg_unit_ohun_0065)
    call RemoveGuardPosition(gg_unit_ohun_0063)
endfunction

//===========================================================================
function InitTrig___Red_AI_Settings takes nothing returns nothing
    set gg_trg___Red_AI_Settings=CreateTrigger()
    call TriggerAddAction(gg_trg___Red_AI_Settings, function Trig___Red_AI_Settings_Actions)
endfunction

//===========================================================================
// Trigger:   Horses Leave
//===========================================================================
function Trig___Horses_Leave_Conditions takes nothing returns boolean
    if ( not ( udg_IntroSkipped == false ) ) then
        return false
    endif
    return true
endfunction

function Trig___Horses_Leave_Actions takes nothing returns nothing
    call IssuePointOrderLocBJ(udg_Handler, "move", GetRectCenter(gg_rct_Remove_Horses))
    call TriggerSleepAction(0.15)
    call IssuePointOrderLocBJ(udg_Horse02, "move", GetRectCenter(gg_rct_Remove_Horses))
    call TriggerSleepAction(0.30)
    call ResetUnitAnimation(udg_Horse01)
    call IssuePointOrderLocBJ(udg_Horse01, "move", GetRectCenter(gg_rct_Remove_Horses))
endfunction

//===========================================================================
function InitTrig___Horses_Leave takes nothing returns nothing
    set gg_trg___Horses_Leave=CreateTrigger()
    call TriggerAddCondition(gg_trg___Horses_Leave, Condition(function Trig___Horses_Leave_Conditions))
    call TriggerAddAction(gg_trg___Horses_Leave, function Trig___Horses_Leave_Actions)
endfunction

//===========================================================================
// Trigger: Delete Horse01
//===========================================================================
function Trig_Delete_Horse01_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == udg_Horse01 ) ) then
        return false
    endif
    if ( not ( udg_IntroSkipped == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Delete_Horse01_Actions takes nothing returns nothing
    call RemoveUnit(udg_Horse01)
    set udg_IntroHorse01Removed=true
endfunction

//===========================================================================
function InitTrig_Delete_Horse01 takes nothing returns nothing
    set gg_trg_Delete_Horse01=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Delete_Horse01, gg_rct_Remove_Horses)
    call TriggerAddCondition(gg_trg_Delete_Horse01, Condition(function Trig_Delete_Horse01_Conditions))
    call TriggerAddAction(gg_trg_Delete_Horse01, function Trig_Delete_Horse01_Actions)
endfunction

//===========================================================================
// Trigger: Delete Horse02
//===========================================================================
function Trig_Delete_Horse02_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == udg_Horse02 ) ) then
        return false
    endif
    if ( not ( udg_IntroSkipped == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Delete_Horse02_Actions takes nothing returns nothing
    call RemoveUnit(udg_Horse02)
    set udg_IntroHorse01Removed=false
endfunction

//===========================================================================
function InitTrig_Delete_Horse02 takes nothing returns nothing
    set gg_trg_Delete_Horse02=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Delete_Horse02, gg_rct_Remove_Horses)
    call TriggerAddCondition(gg_trg_Delete_Horse02, Condition(function Trig_Delete_Horse02_Conditions))
    call TriggerAddAction(gg_trg_Delete_Horse02, function Trig_Delete_Horse02_Actions)
endfunction

//===========================================================================
// Trigger: Delete Handler
//===========================================================================
function Trig_Delete_Handler_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == udg_Handler ) ) then
        return false
    endif
    if ( not ( udg_IntroSkipped == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Delete_Handler_Actions takes nothing returns nothing
    call RemoveUnit(udg_Handler)
    set udg_IntroHandlerRemoved=true
endfunction

//===========================================================================
function InitTrig_Delete_Handler takes nothing returns nothing
    set gg_trg_Delete_Handler=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Delete_Handler, gg_rct_Remove_Horses)
    call TriggerAddCondition(gg_trg_Delete_Handler, Condition(function Trig_Delete_Handler_Conditions))
    call TriggerAddAction(gg_trg_Delete_Handler, function Trig_Delete_Handler_Actions)
endfunction

//===========================================================================
// Trigger: BarracksConstructed
//===========================================================================
function Trig_BarracksConstructed_Func004C takes nothing returns boolean
    if ( ( GetUnitTypeId(GetTriggerUnit()) == 'hbar' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetTriggerUnit()) == 'harm' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetTriggerUnit()) == 'hars' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetTriggerUnit()) == 'hgra' ) ) then
        return true
    endif
    return false
endfunction

function Trig_BarracksConstructed_Conditions takes nothing returns boolean
    if ( not ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_STRUCTURE) == true ) ) then
        return false
    endif
    if ( not Trig_BarracksConstructed_Func004C() ) then
        return false
    endif
    return true
endfunction

function Trig_BarracksConstructed_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_BarracksConstructed_Queue, true)
endfunction

//===========================================================================
function InitTrig_BarracksConstructed takes nothing returns nothing
    set gg_trg_BarracksConstructed=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_BarracksConstructed, Player(1), EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
    call TriggerAddCondition(gg_trg_BarracksConstructed, Condition(function Trig_BarracksConstructed_Conditions))
    call TriggerAddAction(gg_trg_BarracksConstructed, function Trig_BarracksConstructed_Actions)
endfunction

//===========================================================================
// Trigger: BarracksConstructed Queue
//===========================================================================
function Trig_BarracksConstructed_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_BarracksConstructed_Queue_Func007001001 takes nothing returns boolean
    return ( udg_BaseRequirement02 == true )
endfunction

function Trig_BarracksConstructed_Queue_Func007001002 takes nothing returns boolean
    return ( udg_BaseRequirement03 == false )
endfunction

function Trig_BarracksConstructed_Queue_Func007001 takes nothing returns boolean
    return GetBooleanAnd(Trig_BarracksConstructed_Queue_Func007001001(), Trig_BarracksConstructed_Queue_Func007001002())
endfunction

function Trig_BarracksConstructed_Queue_Func008001001 takes nothing returns boolean
    return ( udg_BaseRequirement02 == false )
endfunction

function Trig_BarracksConstructed_Queue_Func008001002 takes nothing returns boolean
    return ( udg_BaseRequirement03 == false )
endfunction

function Trig_BarracksConstructed_Queue_Func008001 takes nothing returns boolean
    return GetBooleanAnd(Trig_BarracksConstructed_Queue_Func008001001(), Trig_BarracksConstructed_Queue_Func008001002())
endfunction

function Trig_BarracksConstructed_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_BaseRequirement01=true
    call QuestItemSetCompletedBJ(udg_QuestBaseRequirementBarracks, true)
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetUnitLoc(GetConstructedStructure()), 7.00)
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(GetConstructedStructure()))
    if ( Trig_BarracksConstructed_Queue_Func007001() ) then
        call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UPDATED, "TRIGSTR_535")
    else
        call DoNothing()
    endif
    if ( Trig_BarracksConstructed_Queue_Func008001() ) then
        call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UPDATED, "TRIGSTR_540")
    else
        call DoNothing()
    endif
    call TriggerSleepAction(2)
    call CreateLeaderboardBJ(udg_AAAPG_Arthas, "TRIGSTR_201")
    set udg_FootmenLeaderboard=GetLastCreatedLeaderboard()
    call LeaderboardAddItemBJ(udg_AAAP_Arthas, udg_FootmenLeaderboard, "TRIGSTR_202", 0)
    call LeaderboardSetStyleBJ(udg_FootmenLeaderboard, false, true, false, false)
    call LeaderboardSetValueColorBJ(udg_FootmenLeaderboard, 100, 100, 100, 0)
    call LeaderboardSetLabelColorBJ(udg_FootmenLeaderboard, 100, 80.00, 0.00, 0)
    call LeaderboardSetPlayerItemLabelBJ(udg_AAAP_Arthas, udg_FootmenLeaderboard, udg_footmen_trained_unit_name + " Trained |cffffffff" + I2S(udg_FootmenTrained) + "/6|r")
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_BarracksConstructed_Queue takes nothing returns nothing
    set gg_trg_BarracksConstructed_Queue=CreateTrigger()
    call TriggerAddCondition(gg_trg_BarracksConstructed_Queue, Condition(function Trig_BarracksConstructed_Queue_Conditions))
    call TriggerAddAction(gg_trg_BarracksConstructed_Queue, function Trig_BarracksConstructed_Queue_Actions)
endfunction

//===========================================================================
// Trigger: FarmsConstructed
//===========================================================================
function Trig_FarmsConstructed_Conditions takes nothing returns boolean
    if ( not ( udg_NumberOfFarms == 2 ) ) then
        return false
    endif
    return true
endfunction

function Trig_FarmsConstructed_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_FarmsConstructed_Queue, true)
endfunction

//===========================================================================
function InitTrig_FarmsConstructed takes nothing returns nothing
    set gg_trg_FarmsConstructed=CreateTrigger()
    call TriggerAddCondition(gg_trg_FarmsConstructed, Condition(function Trig_FarmsConstructed_Conditions))
    call TriggerAddAction(gg_trg_FarmsConstructed, function Trig_FarmsConstructed_Actions)
endfunction

//===========================================================================
// Trigger: FarmsConstructed Queue
//===========================================================================
function Trig_FarmsConstructed_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_FarmsConstructed_Queue_Func009001001 takes nothing returns boolean
    return ( udg_BaseRequirement01 == true )
endfunction

function Trig_FarmsConstructed_Queue_Func009001002 takes nothing returns boolean
    return ( udg_BaseRequirement03 == false )
endfunction

function Trig_FarmsConstructed_Queue_Func009001 takes nothing returns boolean
    return GetBooleanAnd(Trig_FarmsConstructed_Queue_Func009001001(), Trig_FarmsConstructed_Queue_Func009001002())
endfunction

function Trig_FarmsConstructed_Queue_Func010001001 takes nothing returns boolean
    return ( udg_BaseRequirement01 == false )
endfunction

function Trig_FarmsConstructed_Queue_Func010001002 takes nothing returns boolean
    return ( udg_BaseRequirement03 == false )
endfunction

function Trig_FarmsConstructed_Queue_Func010001 takes nothing returns boolean
    return GetBooleanAnd(Trig_FarmsConstructed_Queue_Func010001001(), Trig_FarmsConstructed_Queue_Func010001002())
endfunction

function Trig_FarmsConstructed_Queue_Func011001 takes nothing returns boolean
    return ( udg_BaseRequirement03 == false )
endfunction

function Trig_FarmsConstructed_Queue_Actions takes nothing returns nothing
    call DisableTrigger(gg_trg___FarmCompletes)
    call DisableTrigger(gg_trg___FarmDestroyed)
    set udg_BaseRequirement02=true
    call QuestItemSetCompletedBJ(udg_QuestBaseRequirementFarms, true)
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetUnitLoc(GetConstructedStructure()), 7.00)
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(GetConstructedStructure()))
    call ConditionalTriggerExecute(gg_trg_BaseQuestCompleted)
    if ( Trig_FarmsConstructed_Queue_Func009001() ) then
        call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UPDATED, "TRIGSTR_525")
    else
        call DoNothing()
    endif
    if ( Trig_FarmsConstructed_Queue_Func010001() ) then
        call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UPDATED, "TRIGSTR_530")
    else
        call DoNothing()
    endif
    if ( Trig_FarmsConstructed_Queue_Func011001() ) then
        call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    else
        call DoNothing()
    endif
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_FarmsConstructed_Queue takes nothing returns nothing
    set gg_trg_FarmsConstructed_Queue=CreateTrigger()
    call TriggerAddCondition(gg_trg_FarmsConstructed_Queue, Condition(function Trig_FarmsConstructed_Queue_Conditions))
    call TriggerAddAction(gg_trg_FarmsConstructed_Queue, function Trig_FarmsConstructed_Queue_Actions)
endfunction

//===========================================================================
// Trigger:   FarmCompletes
//===========================================================================
function Trig___FarmCompletes_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetConstructedStructure()) == 'hhou' ) ) then
        return false
    endif
    return true
endfunction

function Trig___FarmCompletes_Actions takes nothing returns nothing
    set udg_NumberOfFarms=( udg_NumberOfFarms + 1 )
    call ConditionalTriggerExecute(gg_trg_FarmsConstructed)
endfunction

//===========================================================================
function InitTrig___FarmCompletes takes nothing returns nothing
    set gg_trg___FarmCompletes=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg___FarmCompletes, Player(1), EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
    call TriggerAddCondition(gg_trg___FarmCompletes, Condition(function Trig___FarmCompletes_Conditions))
    call TriggerAddAction(gg_trg___FarmCompletes, function Trig___FarmCompletes_Actions)
endfunction

//===========================================================================
// Trigger:   FarmCancelled
//
// If a building is cancelled, add to the counter to balance out the fact that we subtract from it for the death event.
//===========================================================================
function Trig___FarmCancelled_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetCancelledStructure()) == 'hhou' ) ) then
        return false
    endif
    return true
endfunction

function Trig___FarmCancelled_Actions takes nothing returns nothing
    set udg_NumberOfFarms=( udg_NumberOfFarms + 1 )
endfunction

//===========================================================================
function InitTrig___FarmCancelled takes nothing returns nothing
    set gg_trg___FarmCancelled=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg___FarmCancelled, Player(1), EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL)
    call TriggerAddCondition(gg_trg___FarmCancelled, Condition(function Trig___FarmCancelled_Conditions))
    call TriggerAddAction(gg_trg___FarmCancelled, function Trig___FarmCancelled_Actions)
endfunction

//===========================================================================
// Trigger:   FarmDestroyed
//===========================================================================
function Trig___FarmDestroyed_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetDyingUnit()) == 'hhou' ) ) then
        return false
    endif
    return true
endfunction

function Trig___FarmDestroyed_Actions takes nothing returns nothing
    set udg_NumberOfFarms=( udg_NumberOfFarms - 1 )
endfunction

//===========================================================================
function InitTrig___FarmDestroyed takes nothing returns nothing
    set gg_trg___FarmDestroyed=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg___FarmDestroyed, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg___FarmDestroyed, Condition(function Trig___FarmDestroyed_Conditions))
    call TriggerAddAction(gg_trg___FarmDestroyed, function Trig___FarmDestroyed_Actions)
endfunction

//===========================================================================
// Trigger: FootmenTrained
//===========================================================================
function Trig_FootmenTrained_Conditions takes nothing returns boolean
    if ( not ( udg_FootmenTrained == 6 ) ) then
        return false
    endif
    return true
endfunction

function Trig_FootmenTrained_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_FootmenTrained_Queue, true)
endfunction

//===========================================================================
function InitTrig_FootmenTrained takes nothing returns nothing
    set gg_trg_FootmenTrained=CreateTrigger()
    call TriggerAddCondition(gg_trg_FootmenTrained, Condition(function Trig_FootmenTrained_Conditions))
    call TriggerAddAction(gg_trg_FootmenTrained, function Trig_FootmenTrained_Actions)
endfunction

//===========================================================================
// Trigger: FootmenTrained Queue
//===========================================================================
function Trig_FootmenTrained_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_FootmenTrained_Queue_Func011001001 takes nothing returns boolean
    return ( udg_BaseRequirement01 == true )
endfunction

function Trig_FootmenTrained_Queue_Func011001002 takes nothing returns boolean
    return ( udg_BaseRequirement02 == true )
endfunction

function Trig_FootmenTrained_Queue_Func011001 takes nothing returns boolean
    return GetBooleanAnd(Trig_FootmenTrained_Queue_Func011001001(), Trig_FootmenTrained_Queue_Func011001002())
endfunction

function Trig_FootmenTrained_Queue_Func012001001 takes nothing returns boolean
    return ( udg_BaseRequirement01 == true )
endfunction

function Trig_FootmenTrained_Queue_Func012001002 takes nothing returns boolean
    return ( udg_BaseRequirement02 == true )
endfunction

function Trig_FootmenTrained_Queue_Func012001 takes nothing returns boolean
    return GetBooleanAnd(Trig_FootmenTrained_Queue_Func012001001(), Trig_FootmenTrained_Queue_Func012001002())
endfunction

function Trig_FootmenTrained_Queue_Func013001001 takes nothing returns boolean
    return ( udg_BaseRequirement01 == true )
endfunction

function Trig_FootmenTrained_Queue_Func013001002 takes nothing returns boolean
    return ( udg_BaseRequirement02 == false )
endfunction

function Trig_FootmenTrained_Queue_Func013001 takes nothing returns boolean
    return GetBooleanAnd(Trig_FootmenTrained_Queue_Func013001001(), Trig_FootmenTrained_Queue_Func013001002())
endfunction

function Trig_FootmenTrained_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call status_check_location(21)
    call DisableTrigger(gg_trg___FootmanPopsOut)
    set udg_BaseRequirement03=true
    call QuestItemSetCompletedBJ(udg_QuestBaseRequirementFootmen, true)
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetUnitLoc(GetTrainedUnit()), 7.00)
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(GetTrainedUnit()))
    call ConditionalTriggerExecute(gg_trg_BaseQuestCompleted)
    call ConditionalTriggerExecute(gg_trg___Disable_Leaderboard)
    if ( Trig_FootmenTrained_Queue_Func011001() ) then
        call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
    else
        call DoNothing()
    endif
    if ( Trig_FootmenTrained_Queue_Func012001() ) then
        return
    else
        call DoNothing()
    endif
    if ( Trig_FootmenTrained_Queue_Func013001() ) then
        call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UPDATED, "TRIGSTR_564")
    else
        call DoNothing()
    endif
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_FootmenTrained_Queue takes nothing returns nothing
    set gg_trg_FootmenTrained_Queue=CreateTrigger()
    call TriggerAddCondition(gg_trg_FootmenTrained_Queue, Condition(function Trig_FootmenTrained_Queue_Conditions))
    call TriggerAddAction(gg_trg_FootmenTrained_Queue, function Trig_FootmenTrained_Queue_Actions)
endfunction

//===========================================================================
// Trigger:   FootmanPopsOut
//===========================================================================
function Trig___FootmanPopsOut_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTrainedUnit()) != 'hpea' ) ) then
        return false
    endif
    return true
endfunction

function Trig___FootmanPopsOut_Func003001 takes nothing returns boolean
    return ( GetUnitTypeId(GetTriggerUnit()) != 'hfoo' )
endfunction

function Trig___FootmanPopsOut_Actions takes nothing returns nothing
    set udg_FootmenTrained=( udg_FootmenTrained + 1 )
    if ( Trig___FootmanPopsOut_Func003001() ) then
        set udg_footmen_trained_unit_name="(wo)men"
    else
        call DoNothing()
    endif
    call LeaderboardSetPlayerItemLabelBJ(udg_AAAP_Arthas, udg_FootmenLeaderboard, udg_footmen_trained_unit_name + " Trained |cffffffff" + I2S(udg_FootmenTrained) + "/6|r")
    call ConditionalTriggerExecute(gg_trg_FootmenTrained)
endfunction

//===========================================================================
function InitTrig___FootmanPopsOut takes nothing returns nothing
    set gg_trg___FootmanPopsOut=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg___FootmanPopsOut, Player(1), EVENT_PLAYER_UNIT_TRAIN_FINISH)
    call TriggerAddCondition(gg_trg___FootmanPopsOut, Condition(function Trig___FootmanPopsOut_Conditions))
    call TriggerAddAction(gg_trg___FootmanPopsOut, function Trig___FootmanPopsOut_Actions)
endfunction

//===========================================================================
// Trigger:   Disable Leaderboard
//===========================================================================
function Trig___Disable_Leaderboard_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(2)
    call DestroyLeaderboardBJ(udg_FootmenLeaderboard)
endfunction

//===========================================================================
function InitTrig___Disable_Leaderboard takes nothing returns nothing
    set gg_trg___Disable_Leaderboard=CreateTrigger()
    call TriggerAddAction(gg_trg___Disable_Leaderboard, function Trig___Disable_Leaderboard_Actions)
endfunction

//===========================================================================
// Trigger: BaseQuestCompleted
//===========================================================================
function Trig_BaseQuestCompleted_Conditions takes nothing returns boolean
    if ( not ( udg_BaseRequirement01 == true ) ) then
        return false
    endif
    if ( not ( udg_BaseRequirement02 == true ) ) then
        return false
    endif
    if ( not ( udg_BaseRequirement03 == true ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_BaseQuestCompleted_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_BaseQuestCompleted_Queue, true)
endfunction

//===========================================================================
function InitTrig_BaseQuestCompleted takes nothing returns nothing
    set gg_trg_BaseQuestCompleted=CreateTrigger()
    call TriggerAddCondition(gg_trg_BaseQuestCompleted, Condition(function Trig_BaseQuestCompleted_Conditions))
    call TriggerAddAction(gg_trg_BaseQuestCompleted, function Trig_BaseQuestCompleted_Actions)
endfunction

//===========================================================================
// Trigger: BaseQuestCompleted Queue
//===========================================================================
function Trig_BaseQuestCompleted_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_BaseQuestCompleted_Queue_Func011001 takes nothing returns boolean
    return ( udg_VictoryCondition02 == true )
endfunction

function Trig_BaseQuestCompleted_Queue_Func012001 takes nothing returns boolean
    return ( udg_VictoryCondition02 == true )
endfunction

function Trig_BaseQuestCompleted_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_VictoryCondition01=true
    call TriggerSleepAction(1.00)
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetRectCenter(gg_rct_Starting_Base_01), 7.00)
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetRectCenter(gg_rct_Starting_Base_01))
    call QuestSetCompletedBJ(udg_QuestBase, true)
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_015")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
    if ( Trig_BaseQuestCompleted_Queue_Func011001() ) then
        call ConditionalTriggerExecute(gg_trg_Victory_Cinematic)
    else
        call DoNothing()
    endif
    if ( Trig_BaseQuestCompleted_Queue_Func012001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(10.00)
    call ConditionalTriggerExecute(gg_trg_Blademaster_Cinematic)
endfunction

//===========================================================================
function InitTrig_BaseQuestCompleted_Queue takes nothing returns nothing
    set gg_trg_BaseQuestCompleted_Queue=CreateTrigger()
    call TriggerAddCondition(gg_trg_BaseQuestCompleted_Queue, Condition(function Trig_BaseQuestCompleted_Queue_Conditions))
    call TriggerAddAction(gg_trg_BaseQuestCompleted_Queue, function Trig_BaseQuestCompleted_Queue_Actions)
endfunction

//===========================================================================
// Trigger: Blademaster Cinematic
//===========================================================================
function Trig_Blademaster_Cinematic_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    if ( not ( udg_BlademasterHasBeenSlain == false ) ) then
        return false
    endif
    if ( not ( IsTriggerEnabled(GetTriggeringTrigger()) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Blademaster_Cinematic_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Blademaster_Cinematic_Failsafe)
    call QueuedTriggerAddBJ(gg_trg_Blademaster_Cinematic_Queue, true)
endfunction

//===========================================================================
function InitTrig_Blademaster_Cinematic takes nothing returns nothing
    set gg_trg_Blademaster_Cinematic=CreateTrigger()
    call TriggerAddCondition(gg_trg_Blademaster_Cinematic, Condition(function Trig_Blademaster_Cinematic_Conditions))
    call TriggerAddAction(gg_trg_Blademaster_Cinematic, function Trig_Blademaster_Cinematic_Actions)
endfunction

//===========================================================================
// Trigger: Blademaster Cinematic Failsafe
//===========================================================================
function Trig_Blademaster_Cinematic_Failsafe_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    if ( not ( udg_BlademasterQuestRecieved == false ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(GetTriggerUnit()) == udg_AAAP_Arthas ) ) then
        return false
    endif
    return true
endfunction

function Trig_Blademaster_Cinematic_Failsafe_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Blademaster_Cinematic)
    call QueuedTriggerAddBJ(gg_trg_Blademaster_Cinematic_Queue, true)
endfunction

//===========================================================================
function InitTrig_Blademaster_Cinematic_Failsafe takes nothing returns nothing
    set gg_trg_Blademaster_Cinematic_Failsafe=CreateTrigger()
    call TriggerRegisterUnitInRangeSimple(gg_trg_Blademaster_Cinematic_Failsafe, 1536.00, gg_unit_Obla_0071)
    call TriggerAddCondition(gg_trg_Blademaster_Cinematic_Failsafe, Condition(function Trig_Blademaster_Cinematic_Failsafe_Conditions))
    call TriggerAddAction(gg_trg_Blademaster_Cinematic_Failsafe, function Trig_Blademaster_Cinematic_Failsafe_Actions)
endfunction

//===========================================================================
// Trigger: Blademaster Cinematic Queue
//===========================================================================
function Trig_Blademaster_Cinematic_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Blademaster_Cinematic_Queue_Func004001 takes nothing returns boolean
    return ( udg_BlademasterHasBeenSlain == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func005001 takes nothing returns boolean
    return ( udg_BlademasterHasBeenSlain == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func022001002001 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func022001002002001 takes nothing returns boolean
    return ( RectContainsUnit(gg_rct_BM_Cinematic_Hide_Player_Units_Here, GetFilterUnit()) == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func022001002002002 takes nothing returns boolean
    return ( IsUnitHiddenBJ(GetFilterUnit()) == false )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func022001002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Blademaster_Cinematic_Queue_Func022001002002001(), Trig_Blademaster_Cinematic_Queue_Func022001002002002())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func022001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Blademaster_Cinematic_Queue_Func022001002001(), Trig_Blademaster_Cinematic_Queue_Func022001002002())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func022002 takes nothing returns nothing
    call GroupAddUnitSimple(GetEnumUnit(), udg_HideUnitsGroup)
endfunction

function Trig_Blademaster_Cinematic_Queue_Func023002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func028002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func029002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func030002 takes nothing returns nothing
    call SetUnitInvulnerable(GetEnumUnit(), true)
endfunction

function Trig_Blademaster_Cinematic_Queue_Func032001 takes nothing returns boolean
    return ( IsUnitDeadBJ(udg_Uther) == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func043001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func047001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func049001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func052001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func062001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func066001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func068001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func071001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func081001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func084001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func090001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func093001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func096001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func103001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func111001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func114001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func117001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func123001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func131001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func134001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func140001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func148001 takes nothing returns boolean
    return ( udg_BlademasterSkipped == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Func159002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func160002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func161002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func162002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func163002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func164002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func165002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func166002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func167002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func168002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cinematic_Queue_Func169002 takes nothing returns nothing
    call SetUnitInvulnerable(GetEnumUnit(), false)
endfunction

function Trig_Blademaster_Cinematic_Queue_Func176001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_Arthas) == true )
endfunction

function Trig_Blademaster_Cinematic_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_CameraPosition=GetCameraTargetPositionLoc()
    if ( Trig_Blademaster_Cinematic_Queue_Func004001() ) then
        call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
    else
        call DoNothing()
    endif
    if ( Trig_Blademaster_Cinematic_Queue_Func005001() ) then
        return
    else
        call DoNothing()
    endif
    call DisableTrigger(gg_trg_Uther_Patrol_to_01)
    call DisableTrigger(gg_trg_Uther_Patrol_to_02)
    call DisableTrigger(gg_trg_Uther_Reaches_01)
    call DisableTrigger(gg_trg_Uther_Reaches_02)
    call DisableTrigger(gg_trg_Base_Is_Attacked)
    call DisableTrigger(gg_trg_UtherTargetDies)
    call DisableTrigger(gg_trg_Look_for_enemies)
    call DisableTrigger(gg_trg_Blademaster_Cinematic_Failsafe)
    // Uther and Mirror Image
    set udg_InCinematic=true
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    call CinematicModeBJ(true, udg_AAAPG_Arthas)
    call UseTimeOfDayBJ(false)
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\Doom.mp3")
    set udg_SelectionGroup=GetUnitsSelectedAll(udg_AAAP_Arthas)
    call ForGroupBJ(GetUnitsOfPlayerMatching(udg_AAAP_Arthas, Condition(function Trig_Blademaster_Cinematic_Queue_Func022001002)), function Trig_Blademaster_Cinematic_Queue_Func022002)
    call ForGroupBJ(udg_HideUnitsGroup, function Trig_Blademaster_Cinematic_Queue_Func023002)
    call ClearSelection()
    call LeaderboardDisplayBJ(false, udg_FootmenLeaderboard)
    call CameraSetupApplyForPlayer(true, gg_cam_Blademaster01A, udg_AAAP_Arthas, 0)
    call PauseAllUnitsBJ(true)
    call ForGroupBJ(GetUnitsInRectAll(gg_rct_CinematicHide01), function Trig_Blademaster_Cinematic_Queue_Func028002)
    call ForGroupBJ(GetUnitsInRectAll(gg_rct_CinematicHide02), function Trig_Blademaster_Cinematic_Queue_Func029002)
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Blademaster_Cinematic_Queue_Func030002)
    call ShowUnitShow(udg_Uther)
    if ( Trig_Blademaster_Cinematic_Queue_Func032001() ) then
        call ReviveHeroLoc(udg_Uther, GetRectCenter(gg_rct_Uther01), false)
    else
        call DoNothing()
    endif
    call SetUnitInvulnerable(udg_Uther, true)
    call SetUnitPositionLoc(udg_Uther, GetRectCenter(gg_rct_Uther01))
    call PauseUnitBJ(false, udg_Uther)
    call PauseUnitBJ(false, udg_Blademaster)
    call IssueImmediateOrderBJ(udg_Uther, "stop")
    call TriggerExecute(gg_trg___SpawnMirrorImage)
    // NOW SKIPPABLE
    call EnableTrigger(gg_trg_Blademaster_Cancel)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.50)
    if ( Trig_Blademaster_Cinematic_Queue_Func043001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Uther, "move", GetRectCenter(gg_rct_Uther02))
    call CameraSetupApplyForPlayer(true, gg_cam_Blademaster01B, udg_AAAP_Arthas, 12.00)
    call TriggerSleepAction(3.00)
    if ( Trig_Blademaster_Cinematic_Queue_Func047001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, gg_unit_Obla_0071, "TRIGSTR_222", gg_snd_H02Blademaster11, "TRIGSTR_223", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Blademaster_Cinematic_Queue_Func049001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg___UtherAnimation)
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Uther, "TRIGSTR_224", gg_snd_H02Uther12, "TRIGSTR_225", bj_TIMETYPE_SUB, 1.80, true)
    if ( Trig_Blademaster_Cinematic_Queue_Func052001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_Blademaster01C, udg_AAAP_Arthas, 0)
    call SetUnitInvulnerable(udg_Uther, false)
    call SetUnitInvulnerable(udg_TempMirrorImage, false)
    call SetUnitInvulnerable(gg_unit_hwtw_0008, false)
    call SetUnitInvulnerable(gg_unit_hwtw_0142, false)
    call IssueTargetOrderBJ(udg_Uther, "attack", udg_TempMirrorImage)
    call ResetUnitAnimation(udg_TempMirrorImage)
    call IssueTargetOrderBJ(udg_TempMirrorImage, "attack", udg_Uther)
    call TriggerSleepAction(1.00)
    if ( Trig_Blademaster_Cinematic_Queue_Func062001() ) then
        return
    else
        call DoNothing()
    endif
    set udg_BladeImageRemoved=true
    call KillUnit(udg_TempMirrorImage)
    call TriggerSleepAction(0.50)
    if ( Trig_Blademaster_Cinematic_Queue_Func066001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Uther, "TRIGSTR_226", gg_snd_H02Uther13, "TRIGSTR_227", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Blademaster_Cinematic_Queue_Func068001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    if ( Trig_Blademaster_Cinematic_Queue_Func071001() ) then
        return
    else
        call DoNothing()
    endif
    // Real Blademaster
    call CameraSetupApplyForPlayer(true, gg_cam_Blademaster02A, udg_AAAP_Arthas, 0)
    call ShowUnitShow(udg_UnfortunateMan)
    call ShowUnitShow(udg_UnfortunateWoman)
    call ShowUnitShow(udg_UnluckyFootman)
    call ShowUnitShow(udg_Blademaster)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call CameraSetupApplyForPlayer(true, gg_cam_Blademaster02B, udg_AAAP_Arthas, 8.00)
    call TriggerSleepAction(2.00)
    if ( Trig_Blademaster_Cinematic_Queue_Func081001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_Blademaster, udg_UnluckyFootman, 0.20)
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Blademaster, "TRIGSTR_228", gg_snd_H02Warlock22, "TRIGSTR_229", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Blademaster_Cinematic_Queue_Func084001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_Blademaster03A, udg_AAAP_Arthas, 0)
    call CameraSetupApplyForPlayer(true, gg_cam_Blademaster03B, udg_AAAP_Arthas, 8.00)
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_UnluckyFootman, "TRIGSTR_230", gg_snd_H02Footman23, "TRIGSTR_231", bj_TIMETYPE_ADD, 0.00, false)
    // Execute Villagers
    call TriggerSleepAction(2.50)
    if ( Trig_Blademaster_Cinematic_Queue_Func090001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Blademaster, "move", GetRectCenter(gg_rct_Blademaster00))
    call TriggerSleepAction(0.40)
    if ( Trig_Blademaster_Cinematic_Queue_Func093001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitAnimation(udg_Blademaster, "Attack")
    call TriggerSleepAction(0.20)
    if ( Trig_Blademaster_Cinematic_Queue_Func096001() ) then
        return
    else
        call DoNothing()
    endif
    call KillUnit(udg_UnluckyFootman)
    call StopSoundBJ(gg_snd_H02Footman23, true)
    call AttachSoundToUnitBJ(gg_snd_FootmanDeath, udg_UnluckyFootman)
    call PlaySoundBJ(gg_snd_FootmanDeath)
    set udg_Sacrifice01=true
    call TriggerSleepAction(0.05)
    if ( Trig_Blademaster_Cinematic_Queue_Func103001() ) then
        return
    else
        call DoNothing()
    endif
    call AddSpecialEffectTargetUnitBJ("origin", gg_unit_hfoo_0096, "Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl")
    call SetSoundPositionLocBJ(gg_snd_RaiseSkeleton, GetRectCenter(gg_rct_Blademaster00), 0)
    call SetSoundVolumeBJ(gg_snd_RaiseSkeleton, 70.00)
    call PlaySoundBJ(gg_snd_RaiseSkeleton)
    call DestroyEffectBJ(udg_Net01)
    set udg_Net01Removed=true
    call TriggerSleepAction(0.50)
    if ( Trig_Blademaster_Cinematic_Queue_Func111001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Blademaster, "move", GetRectCenter(gg_rct_Blademaster01))
    call TriggerSleepAction(0.40)
    if ( Trig_Blademaster_Cinematic_Queue_Func114001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitAnimation(udg_Blademaster, "Attack")
    call TriggerSleepAction(0.20)
    if ( Trig_Blademaster_Cinematic_Queue_Func117001() ) then
        return
    else
        call DoNothing()
    endif
    call KillUnit(udg_UnfortunateMan)
    call AttachSoundToUnitBJ(gg_snd_VillagerMaleDeath1, udg_UnfortunateMan)
    call PlaySoundBJ(gg_snd_VillagerMaleDeath1)
    set udg_Sacrifice02=true
    call TriggerSleepAction(0.05)
    if ( Trig_Blademaster_Cinematic_Queue_Func123001() ) then
        return
    else
        call DoNothing()
    endif
    call AddSpecialEffectTargetUnitBJ("origin", gg_unit_nvil_0080, "Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl")
    call SetSoundPositionLocBJ(gg_snd_RaiseSkeleton, GetRectCenter(gg_rct_Blademaster01), 0)
    call SetSoundVolumeBJ(gg_snd_RaiseSkeleton, 70.00)
    call PlaySoundBJ(gg_snd_RaiseSkeleton)
    call DestroyEffectBJ(udg_Net02)
    set udg_Net02Removed=true
    call TriggerSleepAction(0.50)
    if ( Trig_Blademaster_Cinematic_Queue_Func131001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitAnimation(udg_Blademaster, "Attack Slam")
    call TriggerSleepAction(0.25)
    if ( Trig_Blademaster_Cinematic_Queue_Func134001() ) then
        return
    else
        call DoNothing()
    endif
    call KillUnit(udg_UnfortunateWoman)
    call AttachSoundToUnitBJ(gg_snd_SorceressDeath, udg_UnfortunateWoman)
    call PlaySoundBJ(gg_snd_SorceressDeath)
    set udg_Sacrifice03=true
    call TriggerSleepAction(0.05)
    if ( Trig_Blademaster_Cinematic_Queue_Func140001() ) then
        return
    else
        call DoNothing()
    endif
    call DestroyEffectBJ(udg_Net03)
    set udg_Net03Removed=true
    call AddSpecialEffectTargetUnitBJ("origin", gg_unit_nvlw_0054, "Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl")
    call SetSoundPositionLocBJ(gg_snd_RaiseSkeleton, GetRectCenter(gg_rct_Blademaster02), 0)
    call SetSoundVolumeBJ(gg_snd_RaiseSkeleton, 70.00)
    call PlaySoundBJ(gg_snd_RaiseSkeleton)
    call TriggerSleepAction(1.00)
    if ( Trig_Blademaster_Cinematic_Queue_Func148001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_Blademaster, "move", GetRectCenter(gg_rct_Blademaster02))
    call DestroyEffectBJ(GetLastCreatedEffectBJ())
    call ResetUnitAnimation(udg_Blademaster)
    // End Cinematic
    // NO LONGER SKIPPABLE
    call DisableTrigger(gg_trg_Blademaster_Cancel)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    call LeaderboardDisplayBJ(true, udg_FootmenLeaderboard)
    call RemoveUnit(udg_TempBlademaster)
    call ForGroupBJ(udg_HideUnitsGroup, function Trig_Blademaster_Cinematic_Queue_Func159002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_AAAP_Arthas), function Trig_Blademaster_Cinematic_Queue_Func160002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_P_Uther), function Trig_Blademaster_Cinematic_Queue_Func161002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_P_Blademaster), function Trig_Blademaster_Cinematic_Queue_Func162002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_P_Blackrock), function Trig_Blademaster_Cinematic_Queue_Func163002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_P_Blackrock2), function Trig_Blademaster_Cinematic_Queue_Func164002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_P_Dwarves), function Trig_Blademaster_Cinematic_Queue_Func165002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_P_Villagers), function Trig_Blademaster_Cinematic_Queue_Func166002)
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(PLAYER_NEUTRAL_AGGRESSIVE)), function Trig_Blademaster_Cinematic_Queue_Func167002)
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(PLAYER_NEUTRAL_PASSIVE)), function Trig_Blademaster_Cinematic_Queue_Func168002)
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Blademaster_Cinematic_Queue_Func169002)
    call ResetToGameCameraForPlayer(udg_AAAP_Arthas, 0)
    call PanCameraToTimedLocForPlayer(udg_AAAP_Arthas, udg_CameraPosition, 0)
    call CinematicModeBJ(false, udg_AAAPG_Arthas)
    call SelectGroupBJ(udg_SelectionGroup)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call UseTimeOfDayBJ(true)
    if ( Trig_Blademaster_Cinematic_Queue_Func176001() ) then
        call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_398", gg_snd_H02Arthas24, "TRIGSTR_399", bj_TIMETYPE_ADD, 0, true)
    else
        call DoNothing()
    endif
    call PauseAllUnitsBJ(false)
    set udg_BlademasterQuestRecieved=true
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_012")
    call FlashQuestDialogButtonBJ()
    call QuestSetDiscoveredBJ(udg_QuestBlademaster, true)
    call CreateFogModifierRadiusLocBJ(true, udg_AAAP_Arthas, FOG_OF_WAR_VISIBLE, GetUnitLoc(udg_Blademaster), 1024.00)
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetUnitLoc(udg_Blademaster), 7.00)
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(udg_Blademaster))
    set udg_InCinematic=false
    call EnableTrigger(gg_trg_Base_Is_Attacked)
    call EnableTrigger(gg_trg_UtherTargetDies)
    call EnableTrigger(gg_trg_Look_for_enemies)
    call TriggerExecute(gg_trg_UtherTargetDies)
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Blademaster_Cinematic_Queue takes nothing returns nothing
    set gg_trg_Blademaster_Cinematic_Queue=CreateTrigger()
    call TriggerAddCondition(gg_trg_Blademaster_Cinematic_Queue, Condition(function Trig_Blademaster_Cinematic_Queue_Conditions))
    call TriggerAddAction(gg_trg_Blademaster_Cinematic_Queue, function Trig_Blademaster_Cinematic_Queue_Actions)
endfunction

//===========================================================================
// Trigger: Blademaster Animation
//===========================================================================
function Trig_Blademaster_Animation_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == udg_TempMirrorImage ) ) then
        return false
    endif
    return true
endfunction

function Trig_Blademaster_Animation_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(0.50)
    call SetUnitAnimationWithRarity(udg_TempMirrorImage, "stand", RARITY_FREQUENT)
endfunction

//===========================================================================
function InitTrig_Blademaster_Animation takes nothing returns nothing
    set gg_trg_Blademaster_Animation=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Blademaster_Animation, gg_rct_MirrorImage02)
    call TriggerAddCondition(gg_trg_Blademaster_Animation, Condition(function Trig_Blademaster_Animation_Conditions))
    call TriggerAddAction(gg_trg_Blademaster_Animation, function Trig_Blademaster_Animation_Actions)
endfunction

//===========================================================================
// Trigger:   UtherAnimation
//===========================================================================
function Trig___UtherAnimation_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitAnimation(udg_Uther, "stand victory")
    call TriggerSleepAction(0.50)
    call ResetUnitAnimation(udg_Uther)
endfunction

//===========================================================================
function InitTrig___UtherAnimation takes nothing returns nothing
    set gg_trg___UtherAnimation=CreateTrigger()
    call TriggerAddAction(gg_trg___UtherAnimation, function Trig___UtherAnimation_Actions)
endfunction

//===========================================================================
// Trigger:   SpawnMirrorImage
//===========================================================================
function Trig___SpawnMirrorImage_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call CreateNUnitsAtLocFacingLocBJ(1, 'Obla', udg_P_Blademaster, GetRectCenter(gg_rct_SpawnMirrorImage), GetUnitLoc(udg_Uther))
    set udg_TempBlademaster=GetLastCreatedUnit()
    call SetHeroLevelBJ(udg_TempBlademaster, 2, false)
    call SelectHeroSkill(udg_TempBlademaster, 'AOmi')
    call SetUnitManaBJ(udg_TempBlademaster, GetUnitStateSwap(UNIT_STATE_MAX_MANA, udg_TempBlademaster))
    call EnableTrigger(gg_trg_____SetMirrorImage)
    call IssueImmediateOrderBJ(udg_TempBlademaster, "mirrorimage")
endfunction

//===========================================================================
function InitTrig___SpawnMirrorImage takes nothing returns nothing
    set gg_trg___SpawnMirrorImage=CreateTrigger()
    call TriggerAddAction(gg_trg___SpawnMirrorImage, function Trig___SpawnMirrorImage_Actions)
endfunction

//===========================================================================
// Trigger:     SetMirrorImage
//===========================================================================
function Trig_____SetMirrorImage_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_TempMirrorImage=GetSummonedUnit()
    set udg_BladeImageRemoved=false
    call TriggerSleepAction(0.50)
    call SetUnitInvulnerable(udg_TempMirrorImage, true)
    call SetUnitPositionLoc(udg_TempMirrorImage, GetRectCenter(gg_rct_MirrorImage01))
    call SetUnitFacingToFaceUnitTimed(udg_TempMirrorImage, udg_Uther, 0)
    call TriggerSleepAction(0.50)
    call IssuePointOrderLocBJ(udg_TempMirrorImage, "move", GetRectCenter(gg_rct_MirrorImage02))
endfunction

//===========================================================================
function InitTrig_____SetMirrorImage takes nothing returns nothing
    set gg_trg_____SetMirrorImage=CreateTrigger()
    call DisableTrigger(gg_trg_____SetMirrorImage)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_____SetMirrorImage, Player(4), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddAction(gg_trg_____SetMirrorImage, function Trig_____SetMirrorImage_Actions)
endfunction

//===========================================================================
// Trigger: Blademaster Cancel
//===========================================================================
function Trig_Blademaster_Cancel_Func010001 takes nothing returns boolean
    return ( udg_BladeImageRemoved == false )
endfunction

function Trig_Blademaster_Cancel_Func011002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cancel_Func012002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cancel_Func013002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cancel_Func014002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cancel_Func015002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cancel_Func016002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cancel_Func017002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cancel_Func018002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cancel_Func019002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cancel_Func020002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Blademaster_Cancel_Func021002 takes nothing returns nothing
    call SetUnitInvulnerable(GetEnumUnit(), false)
endfunction

function Trig_Blademaster_Cancel_Func025001 takes nothing returns boolean
    return ( udg_Sacrifice01 == false )
endfunction

function Trig_Blademaster_Cancel_Func026001 takes nothing returns boolean
    return ( udg_Net01Removed == false )
endfunction

function Trig_Blademaster_Cancel_Func027001 takes nothing returns boolean
    return ( udg_Sacrifice02 == false )
endfunction

function Trig_Blademaster_Cancel_Func028001 takes nothing returns boolean
    return ( udg_Net02Removed == false )
endfunction

function Trig_Blademaster_Cancel_Func029001 takes nothing returns boolean
    return ( udg_Sacrifice03 == false )
endfunction

function Trig_Blademaster_Cancel_Func030001 takes nothing returns boolean
    return ( udg_Net03Removed == false )
endfunction

function Trig_Blademaster_Cancel_Func043001 takes nothing returns boolean
    return ( udg_BlademasterQuestRecieved == true )
endfunction

function Trig_Blademaster_Cancel_Func044001 takes nothing returns boolean
    return ( udg_BlademasterQuestRecieved == true )
endfunction

function Trig_Blademaster_Cancel_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_BlademasterSkipped=true
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 0.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call SetSkyModel(null)
    call CinematicModeBJ(false, udg_AAAPG_Arthas)
    call LeaderboardDisplayBJ(true, udg_FootmenLeaderboard)
    call ResetToGameCameraForPlayer(udg_AAAP_Arthas, 0.00)
    call PanCameraToTimedLocForPlayer(udg_AAAP_Arthas, udg_CameraPosition, 0)
    if ( Trig_Blademaster_Cancel_Func010001() ) then
        call RemoveUnit(udg_TempMirrorImage)
    else
        call DoNothing()
    endif
    call ForGroupBJ(udg_HideUnitsGroup, function Trig_Blademaster_Cancel_Func011002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_AAAP_Arthas), function Trig_Blademaster_Cancel_Func012002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_P_Uther), function Trig_Blademaster_Cancel_Func013002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_P_Blademaster), function Trig_Blademaster_Cancel_Func014002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_P_Blackrock), function Trig_Blademaster_Cancel_Func015002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_P_Blackrock2), function Trig_Blademaster_Cancel_Func016002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_P_Dwarves), function Trig_Blademaster_Cancel_Func017002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_P_Villagers), function Trig_Blademaster_Cancel_Func018002)
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(PLAYER_NEUTRAL_AGGRESSIVE)), function Trig_Blademaster_Cancel_Func019002)
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(PLAYER_NEUTRAL_PASSIVE)), function Trig_Blademaster_Cancel_Func020002)
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Blademaster_Cancel_Func021002)
    call PauseAllUnitsBJ(false)
    call SelectGroupBJ(udg_SelectionGroup)
    call SetUnitPositionLoc(udg_Uther, GetRectCenter(gg_rct_Uther01))
    if ( Trig_Blademaster_Cancel_Func025001() ) then
        call KillUnit(udg_UnluckyFootman)
    else
        call DoNothing()
    endif
    if ( Trig_Blademaster_Cancel_Func026001() ) then
        call DestroyEffectBJ(udg_Net01)
    else
        call DoNothing()
    endif
    if ( Trig_Blademaster_Cancel_Func027001() ) then
        call KillUnit(udg_UnfortunateMan)
    else
        call DoNothing()
    endif
    if ( Trig_Blademaster_Cancel_Func028001() ) then
        call DestroyEffectBJ(udg_Net02)
    else
        call DoNothing()
    endif
    if ( Trig_Blademaster_Cancel_Func029001() ) then
        call KillUnit(udg_UnfortunateWoman)
    else
        call DoNothing()
    endif
    if ( Trig_Blademaster_Cancel_Func030001() ) then
        call DestroyEffectBJ(udg_Net03)
    else
        call DoNothing()
    endif
    call CreateFogModifierRadiusLocBJ(true, udg_AAAP_Arthas, FOG_OF_WAR_VISIBLE, GetUnitLoc(udg_Blademaster), 1024.00)
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call ResetUnitAnimation(udg_Blademaster)
    call SetUnitInvulnerable(udg_Uther, false)
    call SetUnitInvulnerable(gg_unit_hwtw_0008, false)
    call SetUnitInvulnerable(gg_unit_hwtw_0142, false)
    call UseTimeOfDayBJ(true)
    set udg_InCinematic=false
    call EnableTrigger(gg_trg_Base_Is_Attacked)
    call EnableTrigger(gg_trg_UtherTargetDies)
    call EnableTrigger(gg_trg_Look_for_enemies)
    call TriggerExecute(gg_trg_UtherTargetDies)
    if ( Trig_Blademaster_Cancel_Func043001() ) then
        call QueuedTriggerRemoveBJ(gg_trg_Blademaster_Cinematic)
    else
        call DoNothing()
    endif
    if ( Trig_Blademaster_Cancel_Func044001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(1.00)
    call KillUnit(udg_TempMirrorImage)
    call RemoveUnit(udg_TempBlademaster)
    set udg_BlademasterQuestRecieved=true
    call DisableTrigger(gg_trg_Blademaster_Cinematic_Failsafe)
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_011")
    call FlashQuestDialogButtonBJ()
    call QuestSetDiscoveredBJ(udg_QuestBlademaster, true)
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetUnitLoc(udg_Blademaster), 7.00)
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(udg_Blademaster))
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call QueuedTriggerRemoveBJ(gg_trg_Blademaster_Cinematic_Queue)
endfunction

//===========================================================================
function InitTrig_Blademaster_Cancel takes nothing returns nothing
    set gg_trg_Blademaster_Cancel=CreateTrigger()
    call DisableTrigger(gg_trg_Blademaster_Cancel)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Blademaster_Cancel, Player(1))
    call TriggerAddAction(gg_trg_Blademaster_Cancel, function Trig_Blademaster_Cancel_Actions)
endfunction

//===========================================================================
// Trigger: AI Gold
//===========================================================================
function Trig_AI_Gold_Actions takes nothing returns nothing
    call AdjustPlayerStateBJ(1000, Player(0), PLAYER_STATE_RESOURCE_GOLD)
endfunction

//===========================================================================
function InitTrig_AI_Gold takes nothing returns nothing
    set gg_trg_AI_Gold=CreateTrigger()
    call TriggerRegisterPlayerStateEvent(gg_trg_AI_Gold, Player(0), PLAYER_STATE_RESOURCE_GOLD, LESS_THAN, 1000)
    call TriggerAddAction(gg_trg_AI_Gold, function Trig_AI_Gold_Actions)
endfunction

//===========================================================================
// Trigger: AI Lumber
//===========================================================================
function Trig_AI_Lumber_Actions takes nothing returns nothing
    call AdjustPlayerStateBJ(300, Player(0), PLAYER_STATE_RESOURCE_LUMBER)
endfunction

//===========================================================================
function InitTrig_AI_Lumber takes nothing returns nothing
    set gg_trg_AI_Lumber=CreateTrigger()
    call TriggerRegisterPlayerStateEvent(gg_trg_AI_Lumber, Player(0), PLAYER_STATE_RESOURCE_LUMBER, LESS_THAN, 300.00)
    call TriggerAddAction(gg_trg_AI_Lumber, function Trig_AI_Lumber_Actions)
endfunction

//===========================================================================
// Trigger: Uther Patrol to 01
//===========================================================================
function Trig_Uther_Patrol_to_01_Conditions takes nothing returns boolean
    if ( not ( udg_UtherIsDefending == false ) ) then
        return false
    endif
    if ( not ( udg_IntroCinematicDone == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Uther_Patrol_to_01_Func004001 takes nothing returns boolean
    return ( udg_GameOver == true )
endfunction

function Trig_Uther_Patrol_to_01_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    if ( Trig_Uther_Patrol_to_01_Func004001() ) then
        return
    else
        call DoNothing()
    endif
    call EnableTrigger(gg_trg_Uther_Reaches_01)
    call IssuePointOrderLocBJ(udg_Uther, "attack", GetRectCenter(gg_rct_Uther_Patrol_01))
    set udg_UthersPosition=1
endfunction

//===========================================================================
function InitTrig_Uther_Patrol_to_01 takes nothing returns nothing
    set gg_trg_Uther_Patrol_to_01=CreateTrigger()
    call TriggerAddCondition(gg_trg_Uther_Patrol_to_01, Condition(function Trig_Uther_Patrol_to_01_Conditions))
    call TriggerAddAction(gg_trg_Uther_Patrol_to_01, function Trig_Uther_Patrol_to_01_Actions)
endfunction

//===========================================================================
// Trigger: Uther Reaches 01
//===========================================================================
function Trig_Uther_Reaches_01_Conditions takes nothing returns boolean
    if ( not ( udg_UtherIsDefending == false ) ) then
        return false
    endif
    if ( not ( GetEnteringUnit() == udg_Uther ) ) then
        return false
    endif
    if ( not ( udg_IntroCinematicDone == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Uther_Reaches_01_Func004001 takes nothing returns boolean
    return ( udg_GameOver == true )
endfunction

function Trig_Uther_Reaches_01_Func005001 takes nothing returns boolean
    return ( udg_InCinematic == true )
endfunction

function Trig_Uther_Reaches_01_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(12.00)
    if ( Trig_Uther_Reaches_01_Func004001() ) then
        return
    else
        call DoNothing()
    endif
    if ( Trig_Uther_Reaches_01_Func005001() ) then
        return
    else
        call DoNothing()
    endif
    call EnableTrigger(gg_trg_Uther_Reaches_02)
    call EnableTrigger(gg_trg_Uther_Patrol_to_02)
    call ConditionalTriggerExecute(gg_trg_Uther_Patrol_to_02)
endfunction

//===========================================================================
function InitTrig_Uther_Reaches_01 takes nothing returns nothing
    set gg_trg_Uther_Reaches_01=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Uther_Reaches_01, gg_rct_Uther_Patrol_01)
    call TriggerAddCondition(gg_trg_Uther_Reaches_01, Condition(function Trig_Uther_Reaches_01_Conditions))
    call TriggerAddAction(gg_trg_Uther_Reaches_01, function Trig_Uther_Reaches_01_Actions)
endfunction

//===========================================================================
// Trigger: Uther Patrol to 02
//===========================================================================
function Trig_Uther_Patrol_to_02_Conditions takes nothing returns boolean
    if ( not ( udg_UtherIsDefending == false ) ) then
        return false
    endif
    if ( not ( udg_IntroCinematicDone == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Uther_Patrol_to_02_Func004001 takes nothing returns boolean
    return ( udg_GameOver == true )
endfunction

function Trig_Uther_Patrol_to_02_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    if ( Trig_Uther_Patrol_to_02_Func004001() ) then
        return
    else
        call DoNothing()
    endif
    call EnableTrigger(gg_trg_Uther_Reaches_02)
    call IssuePointOrderLocBJ(udg_Uther, "attack", GetRectCenter(gg_rct_Uther_Patrol_02))
    set udg_UthersPosition=2
endfunction

//===========================================================================
function InitTrig_Uther_Patrol_to_02 takes nothing returns nothing
    set gg_trg_Uther_Patrol_to_02=CreateTrigger()
    call TriggerAddCondition(gg_trg_Uther_Patrol_to_02, Condition(function Trig_Uther_Patrol_to_02_Conditions))
    call TriggerAddAction(gg_trg_Uther_Patrol_to_02, function Trig_Uther_Patrol_to_02_Actions)
endfunction

//===========================================================================
// Trigger: Uther Reaches 02
//===========================================================================
function Trig_Uther_Reaches_02_Conditions takes nothing returns boolean
    if ( not ( udg_UtherIsDefending == false ) ) then
        return false
    endif
    if ( not ( udg_IntroCinematicDone == true ) ) then
        return false
    endif
    if ( not ( GetEnteringUnit() == udg_Uther ) ) then
        return false
    endif
    return true
endfunction

function Trig_Uther_Reaches_02_Func005001 takes nothing returns boolean
    return ( udg_GameOver == true )
endfunction

function Trig_Uther_Reaches_02_Func006001 takes nothing returns boolean
    return ( udg_InCinematic == true )
endfunction

function Trig_Uther_Reaches_02_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(12.00)
    if ( Trig_Uther_Reaches_02_Func005001() ) then
        return
    else
        call DoNothing()
    endif
    if ( Trig_Uther_Reaches_02_Func006001() ) then
        return
    else
        call DoNothing()
    endif
    call EnableTrigger(gg_trg_Uther_Reaches_01)
    call EnableTrigger(gg_trg_Uther_Patrol_to_01)
    call ConditionalTriggerExecute(gg_trg_Uther_Patrol_to_01)
endfunction

//===========================================================================
function InitTrig_Uther_Reaches_02 takes nothing returns nothing
    set gg_trg_Uther_Reaches_02=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Uther_Reaches_02, gg_rct_Uther_Patrol_02)
    call TriggerAddCondition(gg_trg_Uther_Reaches_02, Condition(function Trig_Uther_Reaches_02_Conditions))
    call TriggerAddAction(gg_trg_Uther_Reaches_02, function Trig_Uther_Reaches_02_Actions)
endfunction

//===========================================================================
// Trigger: Base Is Attacked
//===========================================================================
function Trig_Base_Is_Attacked_Conditions takes nothing returns boolean
    if ( not ( RectContainsUnit(gg_rct_Starting_Base_01, GetTriggerUnit()) == true ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(GetAttacker()) != Player(1) ) ) then
        return false
    endif
    if ( not ( udg_IntroCinematicDone == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Base_Is_Attacked_Func002001 takes nothing returns boolean
    return ( udg_GameOver == true )
endfunction

function Trig_Base_Is_Attacked_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    if ( Trig_Base_Is_Attacked_Func002001() ) then
        return
    else
        call DoNothing()
    endif
    call DisableTrigger(gg_trg_Uther_Patrol_to_01)
    call DisableTrigger(gg_trg_Uther_Patrol_to_02)
    call DisableTrigger(gg_trg_Uther_Reaches_01)
    call DisableTrigger(gg_trg_Uther_Reaches_02)
    set udg_UtherIsDefending=true
    set udg_UtherTarget=GetAttacker()
    call EnableTrigger(gg_trg_UtherTargetDies)
endfunction

//===========================================================================
function InitTrig_Base_Is_Attacked takes nothing returns nothing
    set gg_trg_Base_Is_Attacked=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Base_Is_Attacked, Player(1), EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_Base_Is_Attacked, Condition(function Trig_Base_Is_Attacked_Conditions))
    call TriggerAddAction(gg_trg_Base_Is_Attacked, function Trig_Base_Is_Attacked_Actions)
endfunction

//===========================================================================
// Trigger: UtherTargetDies
//===========================================================================
function Trig_UtherTargetDies_Conditions takes nothing returns boolean
    if ( not ( GetDyingUnit() == udg_UtherTarget ) ) then
        return false
    endif
    if ( not ( udg_IntroCinematicDone == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_UtherTargetDies_Func002001 takes nothing returns boolean
    return ( udg_GameOver == true )
endfunction

function Trig_UtherTargetDies_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    if ( Trig_UtherTargetDies_Func002001() ) then
        return
    else
        call DoNothing()
    endif
    call EnableTrigger(gg_trg_Uther_Patrol_to_01)
    call EnableTrigger(gg_trg_Uther_Patrol_to_02)
    call EnableTrigger(gg_trg_Base_Is_Attacked)
    set udg_UtherTarget=null
    set udg_UtherIsDefending=false
endfunction

//===========================================================================
function InitTrig_UtherTargetDies takes nothing returns nothing
    set gg_trg_UtherTargetDies=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_UtherTargetDies, Player(0), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_UtherTargetDies, Player(3), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_UtherTargetDies, Player(4), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_UtherTargetDies, Player(PLAYER_NEUTRAL_AGGRESSIVE), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_UtherTargetDies, Condition(function Trig_UtherTargetDies_Conditions))
    call TriggerAddAction(gg_trg_UtherTargetDies, function Trig_UtherTargetDies_Actions)
endfunction

//===========================================================================
// Trigger: Look for enemies
//===========================================================================
function Trig_Look_for_enemies_Conditions takes nothing returns boolean
    if ( not ( udg_IntroCinematicDone == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Look_for_enemies_Func001001 takes nothing returns boolean
    return ( udg_GameOver == true )
endfunction

function Trig_Look_for_enemies_Func004001 takes nothing returns boolean
    return ( udg_UtherIsDefending == true )
endfunction

function Trig_Look_for_enemies_Func004003001 takes nothing returns boolean
    return ( udg_UthersPosition == 1 )
endfunction

function Trig_Look_for_enemies_Actions takes nothing returns nothing
    if ( Trig_Look_for_enemies_Func001001() ) then
        return
    else
        call DoNothing()
    endif
    if ( Trig_Look_for_enemies_Func004001() ) then
        call IssuePointOrderLocBJ(udg_Uther, "attack", GetUnitLoc(udg_UtherTarget))
    else
        if ( Trig_Look_for_enemies_Func004003001() ) then
            call ConditionalTriggerExecute(gg_trg_Uther_Patrol_to_01)
        else
            call ConditionalTriggerExecute(gg_trg_Uther_Patrol_to_02)
        endif
    endif
endfunction

//===========================================================================
function InitTrig_Look_for_enemies takes nothing returns nothing
    set gg_trg_Look_for_enemies=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(gg_trg_Look_for_enemies, 2.00)
    call TriggerAddCondition(gg_trg_Look_for_enemies, Condition(function Trig_Look_for_enemies_Conditions))
    call TriggerAddAction(gg_trg_Look_for_enemies, function Trig_Look_for_enemies_Actions)
endfunction

//===========================================================================
// Trigger: Crate01 Is Destroyed
//===========================================================================
function Trig_Crate01_Is_Destroyed_Actions takes nothing returns nothing
    call CreateItemLoc('I016', GetRectCenter(gg_rct_Crate01))
    call PlaySoundBJ(gg_snd_HeroDropItem1)
endfunction

//===========================================================================
function InitTrig_Crate01_Is_Destroyed takes nothing returns nothing
    set gg_trg_Crate01_Is_Destroyed=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Crate01_Is_Destroyed, gg_dest_LTcr_2866)
    call TriggerAddAction(gg_trg_Crate01_Is_Destroyed, function Trig_Crate01_Is_Destroyed_Actions)
endfunction

//===========================================================================
// Trigger: Crate02 Is Destroyed
//===========================================================================
function Trig_Crate02_Is_Destroyed_Actions takes nothing returns nothing
    call CreateItemLoc('I017', GetRectCenter(gg_rct_Crate02))
    call PlaySoundBJ(gg_snd_HeroDropItem1)
endfunction

//===========================================================================
function InitTrig_Crate02_Is_Destroyed takes nothing returns nothing
    set gg_trg_Crate02_Is_Destroyed=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Crate02_Is_Destroyed, gg_dest_LTcr_2868)
    call TriggerAddAction(gg_trg_Crate02_Is_Destroyed, function Trig_Crate02_Is_Destroyed_Actions)
endfunction

//===========================================================================
// Trigger: Trigger Dwarves
//===========================================================================
function Trig_Trigger_Dwarves_Conditions takes nothing returns boolean
    if ( not ( GetTriggerUnit() == udg_Arthas ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Trigger_Dwarves_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Trigger_Dwarves_Failsafe)
    call QueuedTriggerAddBJ(gg_trg_Dwarves_Queue, true)
endfunction

//===========================================================================
function InitTrig_Trigger_Dwarves takes nothing returns nothing
    set gg_trg_Trigger_Dwarves=CreateTrigger()
    call TriggerRegisterUnitInRangeSimple(gg_trg_Trigger_Dwarves, 640.00, gg_unit_hC02_0049)
    call TriggerAddCondition(gg_trg_Trigger_Dwarves, Condition(function Trig_Trigger_Dwarves_Conditions))
    call TriggerAddAction(gg_trg_Trigger_Dwarves, function Trig_Trigger_Dwarves_Actions)
endfunction

//===========================================================================
// Trigger: Trigger Dwarves Failsafe
//===========================================================================
function Trig_Trigger_Dwarves_Failsafe_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnteringUnit()) == Player(1) ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Trigger_Dwarves_Failsafe_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Trigger_Dwarves)
    call QueuedTriggerAddBJ(gg_trg_Dwarves_Queue, true)
endfunction

//===========================================================================
function InitTrig_Trigger_Dwarves_Failsafe takes nothing returns nothing
    set gg_trg_Trigger_Dwarves_Failsafe=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Trigger_Dwarves_Failsafe, gg_rct_TriggerDwarves)
    call TriggerAddCondition(gg_trg_Trigger_Dwarves_Failsafe, Condition(function Trig_Trigger_Dwarves_Failsafe_Conditions))
    call TriggerAddAction(gg_trg_Trigger_Dwarves_Failsafe, function Trig_Trigger_Dwarves_Failsafe_Actions)
endfunction

//===========================================================================
// Trigger: Dwarves Queue
//===========================================================================
function Trig_Dwarves_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Dwarves_Queue_Func013001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Dwarves_Queue_Func016001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Dwarves_Queue_Func017001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_Arthas) == true )
endfunction

function Trig_Dwarves_Queue_Func018001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Dwarves_Queue_Func020001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Dwarves_Queue_Func021001 takes nothing returns boolean
    return ( IsUnitAliveBJ(udg_Arthas) == true )
endfunction

function Trig_Dwarves_Queue_Func022001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Dwarves_Queue_Func024001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Dwarves_Queue_Func027001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Dwarves_Queue_Func028002 takes nothing returns nothing
    call RescueUnitBJ(GetEnumUnit(), udg_AAAP_Arthas, true)
endfunction

function Trig_Dwarves_Queue_Func030001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Dwarves_Queue_Func041001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Dwarves_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call status_check_location(22)
    call DestroyEffectBJ(udg_TalkFeranor)
    call CreateFogModifierRadiusLocBJ(true, Player(1), FOG_OF_WAR_VISIBLE, GetUnitLoc(udg_FeranorSteeltoe), 512)
    set udg_DwarfVision=GetLastCreatedFogModifier()
    call SetCameraQuickPositionLocForPlayer(Player(1), GetCameraTargetPositionLoc())
    call ResetToGameCameraForPlayer(Player(1), 0.00)
    call PanCameraToTimedLocForPlayer(Player(1), GetRectCenter(gg_rct_Dwarf_Pan_Point), 1.00)
    call SetCameraQuickPositionLocForPlayer(Player(1), GetRectCenter(gg_rct_Dwarf_Pan_Point))
    call PingMinimapLocForForce(bj_FORCE_PLAYER[1], GetRectCenter(gg_rct_Dwarf_Pan_Point), 4.00)
    call TriggerSleepAction(1.50)
    if ( Trig_Dwarves_Queue_Func013001() ) then
        return
    else
        call DoNothing()
    endif
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_FeranorSteeltoe, "TRIGSTR_235", gg_snd_H02DwarfHunter17, "TRIGSTR_236", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Dwarves_Queue_Func016001() ) then
        return
    else
        call DoNothing()
    endif
    if ( Trig_Dwarves_Queue_Func017001() ) then
        call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_424", gg_snd_H02Arthas15, "TRIGSTR_425", bj_TIMETYPE_ADD, 0, true)
    else
        call DoNothing()
    endif
    if ( Trig_Dwarves_Queue_Func018001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_FeranorSteeltoe, "TRIGSTR_239", gg_snd_H02DwarfScout16, "TRIGSTR_240", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Dwarves_Queue_Func020001() ) then
        return
    else
        call DoNothing()
    endif
    if ( Trig_Dwarves_Queue_Func021001() ) then
        call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_Arthas, "TRIGSTR_444", gg_snd_H02Arthas18, "TRIGSTR_445", bj_TIMETYPE_ADD, 0, true)
    else
        call DoNothing()
    endif
    if ( Trig_Dwarves_Queue_Func022001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_FeranorSteeltoe, "TRIGSTR_243", gg_snd_H02DwarfHunter18A, "TRIGSTR_244", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Dwarves_Queue_Func024001() ) then
        return
    else
        call DoNothing()
    endif
    call VolumeGroupResetBJ()
    call TriggerSleepAction(1.00)
    if ( Trig_Dwarves_Queue_Func027001() ) then
        return
    else
        call DoNothing()
    endif
    call ForGroupBJ(udg_Dwarves, function Trig_Dwarves_Queue_Func028002)
    call TriggerSleepAction(2.00)
    if ( Trig_Dwarves_Queue_Func030001() ) then
        return
    else
        call DoNothing()
    endif
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_019")
    call QuestSetDiscoveredBJ(udg_QuestSearinox, true)
    call FlashQuestDialogButtonBJ()
    call CreateFogModifierRadiusLocBJ(true, udg_AAAP_Arthas, FOG_OF_WAR_VISIBLE, GetRectCenter(gg_rct_Dragon_001), 768.00)
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetRectCenter(gg_rct_Dragon_001))
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetRectCenter(gg_rct_Dragon_001), 3.00)
    call UnitShareVisionBJ(true, udg_Searinox, udg_AAAP_Arthas)
    call UnitShareVisionBJ(false, udg_Searinox, udg_AAAP_Arthas)
    call TriggerSleepAction(5.00)
    if ( Trig_Dwarves_Queue_Func041001() ) then
        return
    else
        call DoNothing()
    endif
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_HINT, "TRIGSTR_020")
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Dwarves_Queue takes nothing returns nothing
    set gg_trg_Dwarves_Queue=CreateTrigger()
    call TriggerAddCondition(gg_trg_Dwarves_Queue, Condition(function Trig_Dwarves_Queue_Conditions))
    call TriggerAddAction(gg_trg_Dwarves_Queue, function Trig_Dwarves_Queue_Actions)
endfunction

//===========================================================================
// Trigger: Heart Cinematic
//===========================================================================
function Trig_Heart_Cinematic_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == udg_Arthas ) ) then
        return false
    endif
    if ( not ( GetPlayerTechMaxAllowedSwap('I01b', udg_AAAP_Arthas) >= 1 ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Heart_Cinematic_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_Heart_Cinematic_Queue, true)
endfunction

//===========================================================================
function InitTrig_Heart_Cinematic takes nothing returns nothing
    set gg_trg_Heart_Cinematic=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Heart_Cinematic, gg_rct_Dwarves)
    call TriggerAddCondition(gg_trg_Heart_Cinematic, Condition(function Trig_Heart_Cinematic_Conditions))
    call TriggerAddAction(gg_trg_Heart_Cinematic, function Trig_Heart_Cinematic_Actions)
endfunction

//===========================================================================
// Trigger: Heart Cinematic Queue
//===========================================================================
function Trig_Heart_Cinematic_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Heart_Cinematic_Queue_Func010001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_Func011001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_Func015001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_Func016001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_Func018001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_Func019001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Fail_Searinox_Quest_01)
    call DestroyEffectBJ(udg_TalkFeranor)
    call ResetToGameCameraForPlayer(Player(1), 0.00)
    call PanCameraToTimedLocForPlayer(Player(1), GetRectCenter(gg_rct_Dwarves), 1.00)
    call PingMinimapLocForForce(bj_FORCE_PLAYER[1], GetRectCenter(gg_rct_Dwarves), 5.00)
    call SetCameraQuickPositionLocForPlayer(Player(1), GetRectCenter(gg_rct_Dwarf_Pan_Point))
    call TriggerSleepAction(2.00)
    if ( Trig_Heart_Cinematic_Queue_Func010001() ) then
        call QueuedTriggerRemoveBJ(gg_trg_Heart_Cinematic_Queue)
    else
        call DoNothing()
    endif
    if ( Trig_Heart_Cinematic_Queue_Func011001() ) then
        return
    else
        call DoNothing()
    endif
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(bj_FORCE_PLAYER[1], udg_FeranorSteeltoe, "TRIGSTR_247", gg_snd_H02Dwarf21, "TRIGSTR_248", bj_TIMETYPE_ADD, 0.00, true)
    call VolumeGroupResetBJ()
    if ( Trig_Heart_Cinematic_Queue_Func015001() ) then
        call QueuedTriggerRemoveBJ(gg_trg_Heart_Cinematic_Queue)
    else
        call DoNothing()
    endif
    if ( Trig_Heart_Cinematic_Queue_Func016001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.50)
    if ( Trig_Heart_Cinematic_Queue_Func018001() ) then
        call QueuedTriggerRemoveBJ(gg_trg_Heart_Cinematic_Queue)
    else
        call DoNothing()
    endif
    if ( Trig_Heart_Cinematic_Queue_Func019001() ) then
        return
    else
        call DoNothing()
    endif
    // Is Blacksmith Destroyed or Not?
    call ConditionalTriggerExecute(gg_trg_Heart_Cinematic_Queue_B)
    call ConditionalTriggerExecute(gg_trg_Heart_Cinematic_Queue_C)
endfunction

//===========================================================================
function InitTrig_Heart_Cinematic_Queue takes nothing returns nothing
    set gg_trg_Heart_Cinematic_Queue=CreateTrigger()
    call TriggerAddCondition(gg_trg_Heart_Cinematic_Queue, Condition(function Trig_Heart_Cinematic_Queue_Conditions))
    call TriggerAddAction(gg_trg_Heart_Cinematic_Queue, function Trig_Heart_Cinematic_Queue_Actions)
endfunction

//===========================================================================
// Trigger: Heart Cinematic Queue B
//
// Feranor is no longer made invulnerable and vulnerable on the fly, as he is now invulnerable from the start of the mission.
//===========================================================================
function Trig_Heart_Cinematic_Queue_B_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    if ( not ( udg_BlacksmithDestroyed == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Heart_Cinematic_Queue_B_Func009001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_B_Func010001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_B_Func015001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_B_Func016001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_B_Func020001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_B_Func021001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_B_Func028001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_B_Func029001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_B_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    // Blacksmith is Alive
    call SetUnitPathing(udg_FeranorSteeltoe, false)
    call IssuePointOrderLocBJ(udg_FeranorSteeltoe, "move", GetRectCenter(gg_rct_Feranor_Destination))
    call TriggerSleepAction(1.50)
    if ( Trig_Heart_Cinematic_Queue_B_Func009001() ) then
        call QueuedTriggerRemoveBJ(gg_trg_Heart_Cinematic_Queue)
    else
        call DoNothing()
    endif
    if ( Trig_Heart_Cinematic_Queue_B_Func010001() ) then
        return
    else
        call DoNothing()
    endif
    call PauseUnitBJ(true, udg_FeranorSteeltoe)
    call AttachSoundToUnitBJ(gg_snd_BlacksmithWhat1, udg_DwarvenBlacksmith)
    call PlaySoundBJ(gg_snd_BlacksmithWhat1)
    call TriggerSleepAction(2.50)
    if ( Trig_Heart_Cinematic_Queue_B_Func015001() ) then
        call QueuedTriggerRemoveBJ(gg_trg_Heart_Cinematic_Queue)
    else
        call DoNothing()
    endif
    if ( Trig_Heart_Cinematic_Queue_B_Func016001() ) then
        return
    else
        call DoNothing()
    endif
    call PauseUnitBJ(false, udg_FeranorSteeltoe)
    call IssuePointOrderLocBJ(udg_FeranorSteeltoe, "move", GetRectCenter(gg_rct_Dwarf_Pan_Point))
    call TriggerSleepAction(1.50)
    if ( Trig_Heart_Cinematic_Queue_B_Func020001() ) then
        call QueuedTriggerRemoveBJ(gg_trg_Heart_Cinematic_Queue)
    else
        call DoNothing()
    endif
    if ( Trig_Heart_Cinematic_Queue_B_Func021001() ) then
        return
    else
        call DoNothing()
    endif
    // Give Orb
    call status_check_location(12)
    call UnitAddItemSwapped(GetLastCreatedItem(), udg_Arthas)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_ITEMACQUIRED, "TRIGSTR_543")
    call TriggerSleepAction(5.00)
    if ( Trig_Heart_Cinematic_Queue_B_Func028001() ) then
        call QueuedTriggerRemoveBJ(gg_trg_Heart_Cinematic_Queue)
    else
        call DoNothing()
    endif
    if ( Trig_Heart_Cinematic_Queue_B_Func029001() ) then
        return
    else
        call DoNothing()
    endif
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_544")
    call QuestSetCompletedBJ(udg_QuestSearinox, true)
    call QuestItemSetCompletedBJ(udg_QuestSearinoxRequirementReturn, true)
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call QueuedTriggerRemoveBJ(gg_trg_Heart_Cinematic_Queue)
endfunction

//===========================================================================
function InitTrig_Heart_Cinematic_Queue_B takes nothing returns nothing
    set gg_trg_Heart_Cinematic_Queue_B=CreateTrigger()
    call TriggerAddCondition(gg_trg_Heart_Cinematic_Queue_B, Condition(function Trig_Heart_Cinematic_Queue_B_Conditions))
    call TriggerAddAction(gg_trg_Heart_Cinematic_Queue_B, function Trig_Heart_Cinematic_Queue_B_Actions)
endfunction

//===========================================================================
// Trigger: Heart Cinematic Queue C
//===========================================================================
function Trig_Heart_Cinematic_Queue_C_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    if ( not ( udg_BlacksmithDestroyed == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Heart_Cinematic_Queue_C_Func010001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_C_Func011001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_Cinematic_Queue_C_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    // Blacksmith is Destroyed
    // Give Orb
    call status_check_location(12)
    call UnitAddItemSwapped(GetLastCreatedItem(), udg_Arthas)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_ITEMACQUIRED, "TRIGSTR_547")
    call TriggerSleepAction(5.00)
    if ( Trig_Heart_Cinematic_Queue_C_Func010001() ) then
        call QueuedTriggerRemoveBJ(gg_trg_Heart_Cinematic_Queue)
    else
        call DoNothing()
    endif
    if ( Trig_Heart_Cinematic_Queue_C_Func011001() ) then
        return
    else
        call DoNothing()
    endif
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_548")
    call QuestSetCompletedBJ(udg_QuestSearinox, true)
    call QuestItemSetCompletedBJ(udg_QuestSearinoxRequirementReturn, true)
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call QueuedTriggerRemoveBJ(gg_trg_Heart_Cinematic_Queue)
endfunction

//===========================================================================
function InitTrig_Heart_Cinematic_Queue_C takes nothing returns nothing
    set gg_trg_Heart_Cinematic_Queue_C=CreateTrigger()
    call TriggerAddCondition(gg_trg_Heart_Cinematic_Queue_C, Condition(function Trig_Heart_Cinematic_Queue_C_Conditions))
    call TriggerAddAction(gg_trg_Heart_Cinematic_Queue_C, function Trig_Heart_Cinematic_Queue_C_Actions)
endfunction

//===========================================================================
// Trigger: Fail Searinox Quest 01
//===========================================================================
function Trig_Fail_Searinox_Quest_01_Conditions takes nothing returns boolean
    if ( not ( GetDyingUnit() == udg_FeranorSteeltoe ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Fail_Searinox_Quest_01_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Fail_Searinox_Quest_02)
    call DisableTrigger(gg_trg_Heart_Cinematic)
    call StopSoundBJ(GetLastPlayedSound(), true)
    set udg_SearinoxQuestFailed=true
    call QuestSetDiscoveredBJ(udg_QuestSearinox, true)
    call QuestSetFailedBJ(udg_QuestSearinox, true)
    call FlashQuestDialogButtonBJ()
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_FAILED, "TRIGSTR_021")
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetRectCenter(gg_rct_Dwarf_Pan_Point))
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetRectCenter(gg_rct_Dwarves), 7.00)
    call DestroyEffectBJ(udg_TalkFeranor)
    call TriggerSleepAction(0.20)
    call VolumeGroupResetBJ()
endfunction

//===========================================================================
function InitTrig_Fail_Searinox_Quest_01 takes nothing returns nothing
    set gg_trg_Fail_Searinox_Quest_01=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Fail_Searinox_Quest_01, Player(2), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Fail_Searinox_Quest_01, Condition(function Trig_Fail_Searinox_Quest_01_Conditions))
    call TriggerAddAction(gg_trg_Fail_Searinox_Quest_01, function Trig_Fail_Searinox_Quest_01_Actions)
endfunction

//===========================================================================
// Trigger: Fail Searinox Quest 02
//===========================================================================
function Trig_Fail_Searinox_Quest_02_Conditions takes nothing returns boolean
    if ( not ( GetDyingUnit() == udg_DwarvenBlacksmith ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Fail_Searinox_Quest_02_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Fail_Searinox_Quest_01)
    call DisableTrigger(gg_trg_Heart_Cinematic)
    call StopSoundBJ(GetLastPlayedSound(), true)
    set udg_SearinoxQuestFailed=true
    call QuestSetDiscoveredBJ(udg_QuestSearinox, true)
    call QuestSetFailedBJ(udg_QuestSearinox, true)
    call FlashQuestDialogButtonBJ()
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_FAILED, "TRIGSTR_022")
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetRectCenter(gg_rct_Dwarf_Pan_Point))
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetRectCenter(gg_rct_Dwarves), 7.00)
    call DestroyEffectBJ(udg_TalkFeranor)
    call TriggerSleepAction(0.20)
    call VolumeGroupResetBJ()
endfunction

//===========================================================================
function InitTrig_Fail_Searinox_Quest_02 takes nothing returns nothing
    set gg_trg_Fail_Searinox_Quest_02=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Fail_Searinox_Quest_02, Player(2), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Fail_Searinox_Quest_02, Condition(function Trig_Fail_Searinox_Quest_02_Conditions))
    call TriggerAddAction(gg_trg_Fail_Searinox_Quest_02, function Trig_Fail_Searinox_Quest_02_Actions)
endfunction

//===========================================================================
// Trigger: Blacksmith Dies
//===========================================================================
function Trig_Blacksmith_Dies_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_BlacksmithDestroyed=true
endfunction

//===========================================================================
function InitTrig_Blacksmith_Dies takes nothing returns nothing
    set gg_trg_Blacksmith_Dies=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Blacksmith_Dies, gg_unit_hbla_0012, EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Blacksmith_Dies, function Trig_Blacksmith_Dies_Actions)
endfunction

//===========================================================================
// Trigger: Dragon Intro
//===========================================================================
function Trig_Dragon_Intro_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnteringUnit()) == Player(1) ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Dragon_Intro_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_Dragon_Intro_Queue, true)
endfunction

//===========================================================================
function InitTrig_Dragon_Intro takes nothing returns nothing
    set gg_trg_Dragon_Intro=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Dragon_Intro, gg_rct_DragonAttack01)
    call TriggerAddCondition(gg_trg_Dragon_Intro, Condition(function Trig_Dragon_Intro_Conditions))
    call TriggerAddAction(gg_trg_Dragon_Intro, function Trig_Dragon_Intro_Actions)
endfunction

//===========================================================================
// Trigger: Dragon Intro Queue
//===========================================================================
function Trig_Dragon_Intro_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call ResetToGameCameraForPlayer(udg_AAAP_Arthas, 0.00)
    call UnitShareVisionBJ(true, gg_unit_nser_0048, udg_AAAP_Arthas)
    call CreateFogModifierRadiusLocBJ(true, udg_AAAP_Arthas, FOG_OF_WAR_VISIBLE, GetRectCenter(gg_rct_Dragon_001), 512.00)
    set udg_DragonVision=GetLastCreatedFogModifier()
    call SmartCameraPanBJ(udg_AAAP_Arthas, GetUnitLoc(udg_Searinox), 0.5)
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetUnitLoc(udg_Searinox), 5.00)
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(udg_Searinox))
    call TriggerSleepAction(0.15)
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Searinox, "TRIGSTR_251", gg_snd_H02Searinox19, "TRIGSTR_252", bj_TIMETYPE_SUB, 2.00, true)
    call VolumeGroupResetBJ()
    call FogModifierStop(udg_DragonVision)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Dragon_Intro_Queue takes nothing returns nothing
    set gg_trg_Dragon_Intro_Queue=CreateTrigger()
    call TriggerAddAction(gg_trg_Dragon_Intro_Queue, function Trig_Dragon_Intro_Queue_Actions)
endfunction

//===========================================================================
// Trigger: Spawn Skeletons
//===========================================================================
function Trig_Spawn_Skeletons_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetTriggerUnit()) == Player(1) ) ) then
        return false
    endif
    return true
endfunction

function Trig_Spawn_Skeletons_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call AttachSoundToUnitBJ(gg_snd_GraveYardWhat1, udg_Searinox)
    call PlaySoundBJ(gg_snd_GraveYardWhat1)
    call TriggerSleepAction(0.50)
    call CreateNUnitsAtLoc(1, 'nska', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_Skeleton01), 270.00)
    set udg_Skeleton01=GetLastCreatedUnit()
    call SetUnitAnimation(udg_Skeleton01, "birth")
    call AttachSoundToUnitBJ(gg_snd_SkeletonYesAttack1, udg_Skeleton01)
    call PlaySoundBJ(gg_snd_SkeletonYesAttack1)
    call TriggerSleepAction(GetRandomReal(0.01, 0.03))
    call CreateNUnitsAtLoc(1, 'nska', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_Skeleton04), 270.00)
    set udg_Skeleton04=GetLastCreatedUnit()
    call SetUnitAnimation(udg_Skeleton04, "birth")
    call AttachSoundToUnitBJ(gg_snd_SkeletonYesAttack2, udg_Skeleton04)
    call PlaySoundBJ(gg_snd_SkeletonYesAttack2)
    call TriggerSleepAction(GetRandomReal(0.01, 0.03))
    call CreateNUnitsAtLoc(1, 'nska', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_Skeleton02), 270.00)
    set udg_Skeleton02=GetLastCreatedUnit()
    call SetUnitAnimation(udg_Skeleton02, "birth")
    call PlaySoundBJ(gg_snd_SkeletonYesAttack1)
    call TriggerSleepAction(GetRandomReal(0.01, 0.03))
    call CreateNUnitsAtLoc(1, 'nska', Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_Skeleton03), 270.00)
    set udg_Skeleton03=GetLastCreatedUnit()
    call SetUnitAnimation(udg_Skeleton03, "birth")
    call AttachSoundToUnitBJ(gg_snd_SkeletonYesAttack3, udg_Skeleton03)
    call PlaySoundBJ(gg_snd_SkeletonYesAttack3)
endfunction

//===========================================================================
function InitTrig_Spawn_Skeletons takes nothing returns nothing
    set gg_trg_Spawn_Skeletons=CreateTrigger()
    call TriggerRegisterUnitInRangeSimple(gg_trg_Spawn_Skeletons, 512.00, gg_unit_nser_0048)
    call TriggerAddCondition(gg_trg_Spawn_Skeletons, Condition(function Trig_Spawn_Skeletons_Conditions))
    call TriggerAddAction(gg_trg_Spawn_Skeletons, function Trig_Spawn_Skeletons_Actions)
endfunction

//===========================================================================
// Trigger: Drop Heart of Searinox
//===========================================================================
function Trig_Drop_Heart_of_Searinox_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Drop_Heart_of_Searinox_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call CreateItemLoc('I01b', GetUnitLoc(gg_unit_nser_0048))
    set udg_HeartofSearinox=GetLastCreatedItem()
    call TriggerSleepAction(1.00)
    call QueuedTriggerAddBJ(gg_trg_Heart_of_Searinox_Queue, true)
endfunction

//===========================================================================
function InitTrig_Drop_Heart_of_Searinox takes nothing returns nothing
    set gg_trg_Drop_Heart_of_Searinox=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Drop_Heart_of_Searinox, gg_unit_nser_0048, EVENT_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Drop_Heart_of_Searinox, Condition(function Trig_Drop_Heart_of_Searinox_Conditions))
    call TriggerAddAction(gg_trg_Drop_Heart_of_Searinox, function Trig_Drop_Heart_of_Searinox_Actions)
endfunction

//===========================================================================
// Trigger: Heart of Searinox Queue
//===========================================================================
function Trig_Heart_of_Searinox_Queue_Func001001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_of_Searinox_Queue_Func002001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_of_Searinox_Queue_Func006001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_of_Searinox_Queue_Func007001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Heart_of_Searinox_Queue_Actions takes nothing returns nothing
    if ( Trig_Heart_of_Searinox_Queue_Func001001() ) then
        call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
    else
        call DoNothing()
    endif
    if ( Trig_Heart_of_Searinox_Queue_Func002001() ) then
        return
    else
        call DoNothing()
    endif
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(udg_AAAPG_Arthas, udg_Arthas, "TRIGSTR_253", gg_snd_H02Arthas20, "TRIGSTR_254", bj_TIMETYPE_ADD, 0.00, true)
    call VolumeGroupResetBJ()
    if ( Trig_Heart_of_Searinox_Queue_Func006001() ) then
        call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
    else
        call DoNothing()
    endif
    if ( Trig_Heart_of_Searinox_Queue_Func007001() ) then
        return
    else
        call DoNothing()
    endif
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_UPDATED, "TRIGSTR_016")
    call QuestItemSetCompletedBJ(udg_QuestSearinoxRequirementSlay, true)
    call FlashQuestDialogButtonBJ()
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetRectCenter(gg_rct_Dwarves))
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetRectCenter(gg_rct_Dwarves), 4.00)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Heart_of_Searinox_Queue takes nothing returns nothing
    set gg_trg_Heart_of_Searinox_Queue=CreateTrigger()
    call TriggerAddAction(gg_trg_Heart_of_Searinox_Queue, function Trig_Heart_of_Searinox_Queue_Actions)
endfunction

//===========================================================================
// Trigger: Player Gets the Heart of Searinox
//===========================================================================
function Trig_Player_Gets_the_Heart_of_Searinox_Conditions takes nothing returns boolean
    if ( not ( GetManipulatedItem() == udg_HeartofSearinox ) ) then
        return false
    endif
    if ( not ( udg_SearinoxQuestFailed == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Player_Gets_the_Heart_of_Searinox_Func001001 takes nothing returns boolean
    return ( udg_SearinoxQuestFailed == true )
endfunction

function Trig_Player_Gets_the_Heart_of_Searinox_Actions takes nothing returns nothing
    if ( Trig_Player_Gets_the_Heart_of_Searinox_Func001001() ) then
        return
    else
        call DoNothing()
    endif
    call AddSpecialEffectTargetUnitBJ("overhead", udg_FeranorSteeltoe, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    set udg_TalkFeranor=GetLastCreatedEffectBJ()
endfunction

//===========================================================================
function InitTrig_Player_Gets_the_Heart_of_Searinox takes nothing returns nothing
    set gg_trg_Player_Gets_the_Heart_of_Searinox=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Player_Gets_the_Heart_of_Searinox, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(gg_trg_Player_Gets_the_Heart_of_Searinox, Condition(function Trig_Player_Gets_the_Heart_of_Searinox_Conditions))
    call TriggerAddAction(gg_trg_Player_Gets_the_Heart_of_Searinox, function Trig_Player_Gets_the_Heart_of_Searinox_Actions)
endfunction

//===========================================================================
// Trigger: Murlocs
//===========================================================================
function Trig_Murlocs_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnteringUnit()) == udg_AAAP_Arthas ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Murlocs_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_Murlocs_Queue, true)
endfunction

//===========================================================================
function InitTrig_Murlocs takes nothing returns nothing
    set gg_trg_Murlocs=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Murlocs, gg_rct_TriggerMurlocs)
    call TriggerAddCondition(gg_trg_Murlocs, Condition(function Trig_Murlocs_Conditions))
    call TriggerAddAction(gg_trg_Murlocs, function Trig_Murlocs_Actions)
endfunction

//===========================================================================
// Trigger: Murlocs Queue
//===========================================================================
function Trig_Murlocs_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Murlocs_Queue_Func005001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(udg_AAAP_Arthas, 'hfoo')) > 0 )
endfunction

function Trig_Murlocs_Queue_Func006001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(udg_AAAP_Arthas, 'hfoo')) > 0 )
endfunction

function Trig_Murlocs_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetRectCenter(gg_rct_TriggerMurlocs))
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetRectCenter(gg_rct_TriggerMurlocs), 7.00)
    if ( Trig_Murlocs_Queue_Func005001() ) then
        call SetSpeechVolumeGroupsBJ()
    else
        call DoNothing()
    endif
    if ( Trig_Murlocs_Queue_Func006001() ) then
        call TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), udg_AAAP_Arthas, 'hfoo', "TRIGSTR_556", GetRectCenter(gg_rct_TriggerMurlocs), gg_snd_H02VillagerM39, "TRIGSTR_557", bj_TIMETYPE_ADD, 0, true)
    else
        call DoNothing()
    endif
    call VolumeGroupResetBJ()
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Murlocs_Queue takes nothing returns nothing
    set gg_trg_Murlocs_Queue=CreateTrigger()
    call TriggerAddCondition(gg_trg_Murlocs_Queue, Condition(function Trig_Murlocs_Queue_Conditions))
    call TriggerAddAction(gg_trg_Murlocs_Queue, function Trig_Murlocs_Queue_Actions)
endfunction

//===========================================================================
// Trigger: BlademasterDies
//===========================================================================
function Trig_BlademasterDies_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_BlademasterDies_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call status_check_location(20)
    set udg_VictoryCondition02=true
    set udg_BlademasterHasBeenSlain=true
    call DisableTrigger(gg_trg_Blademaster_Cinematic)
    call DisableTrigger(gg_trg_Blademaster_Cinematic_Failsafe)
    call SetSoundPositionLocBJ(gg_snd_HeroBladeMasterDeath, GetUnitLoc(udg_Blademaster), 0)
    call PlaySoundBJ(gg_snd_HeroBladeMasterDeath)
    call QuestSetCompletedBJ(udg_QuestBlademaster, true)
    call QuestItemSetCompletedBJ(udg_QuestBladeRequirementSlay, true)
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetUnitLoc(udg_Blademaster), 7.00)
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(udg_Blademaster))
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_515")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call ConditionalTriggerExecute(gg_trg_Victory_Cinematic)
endfunction

//===========================================================================
function InitTrig_BlademasterDies takes nothing returns nothing
    set gg_trg_BlademasterDies=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_BlademasterDies, gg_unit_Obla_0071, EVENT_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_BlademasterDies, Condition(function Trig_BlademasterDies_Conditions))
    call TriggerAddAction(gg_trg_BlademasterDies, function Trig_BlademasterDies_Actions)
endfunction

//===========================================================================
// Trigger: HINTAltar
//===========================================================================
function Trig_HINTAltar_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_HINTAltar_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_HINTAltar_Queue, true)
endfunction

//===========================================================================
function InitTrig_HINTAltar takes nothing returns nothing
    set gg_trg_HINTAltar=CreateTrigger()
    call TriggerRegisterTimerExpireEventBJ(gg_trg_HINTAltar, udg_AltarHintTimer)
    call TriggerAddCondition(gg_trg_HINTAltar, Condition(function Trig_HINTAltar_Conditions))
    call TriggerAddAction(gg_trg_HINTAltar, function Trig_HINTAltar_Actions)
endfunction

//===========================================================================
// Trigger: HINTAltar Queue
//===========================================================================
function Trig_HINTAltar_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_HINTAltar_Queue_Func004001002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetFilterUnit()) == 'halt' )
endfunction

function Trig_HINTAltar_Queue_Func004001002002 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_HINTAltar_Queue_Func004001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_HINTAltar_Queue_Func004001002001(), Trig_HINTAltar_Queue_Func004001002002())
endfunction

function Trig_HINTAltar_Queue_Func004002 takes nothing returns nothing
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetUnitLoc(GetEnumUnit()), 7.00)
endfunction

function Trig_HINTAltar_Queue_Func005001002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetFilterUnit()) == 'halt' )
endfunction

function Trig_HINTAltar_Queue_Func005001002002 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_HINTAltar_Queue_Func005001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_HINTAltar_Queue_Func005001002001(), Trig_HINTAltar_Queue_Func005001002002())
endfunction

function Trig_HINTAltar_Queue_Func005002 takes nothing returns nothing
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(GetEnumUnit()))
endfunction

function Trig_HINTAltar_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_HINT, "TRIGSTR_549")
    call ForGroupBJ(GetUnitsOfPlayerMatching(udg_AAAP_Arthas, Condition(function Trig_HINTAltar_Queue_Func004001002)), function Trig_HINTAltar_Queue_Func004002)
    call ForGroupBJ(GetUnitsOfPlayerMatching(udg_AAAP_Arthas, Condition(function Trig_HINTAltar_Queue_Func005001002)), function Trig_HINTAltar_Queue_Func005002)
    call TriggerSleepAction(bj_QUEUE_DELAY_HINT)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_HINTAltar_Queue takes nothing returns nothing
    set gg_trg_HINTAltar_Queue=CreateTrigger()
    call TriggerAddCondition(gg_trg_HINTAltar_Queue, Condition(function Trig_HINTAltar_Queue_Conditions))
    call TriggerAddAction(gg_trg_HINTAltar_Queue, function Trig_HINTAltar_Queue_Actions)
endfunction

//===========================================================================
// Trigger: HINTArthasDies
//===========================================================================
function Trig_HINTArthasDies_Conditions takes nothing returns boolean
    if ( not ( GetDyingUnit() == udg_Arthas ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_HINTArthasDies_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(5.00)
    call QueuedTriggerAddBJ(gg_trg_HINTArthasDies_Queue, true)
endfunction

//===========================================================================
function InitTrig_HINTArthasDies takes nothing returns nothing
    set gg_trg_HINTArthasDies=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_HINTArthasDies, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_HINTArthasDies, Condition(function Trig_HINTArthasDies_Conditions))
    call TriggerAddAction(gg_trg_HINTArthasDies, function Trig_HINTArthasDies_Actions)
endfunction

//===========================================================================
// Trigger: HINTArthasDies Queue
//===========================================================================
function Trig_HINTArthasDies_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_HINTArthasDies_Queue_Func004001002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetFilterUnit()) == 'halt' )
endfunction

function Trig_HINTArthasDies_Queue_Func004001002002 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_HINTArthasDies_Queue_Func004001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_HINTArthasDies_Queue_Func004001002001(), Trig_HINTArthasDies_Queue_Func004001002002())
endfunction

function Trig_HINTArthasDies_Queue_Func004002 takes nothing returns nothing
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetUnitLoc(GetEnumUnit()), 7.00)
endfunction

function Trig_HINTArthasDies_Queue_Func005001002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetFilterUnit()) == 'halt' )
endfunction

function Trig_HINTArthasDies_Queue_Func005001002002 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_HINTArthasDies_Queue_Func005001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_HINTArthasDies_Queue_Func005001002001(), Trig_HINTArthasDies_Queue_Func005001002002())
endfunction

function Trig_HINTArthasDies_Queue_Func005002 takes nothing returns nothing
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(GetEnumUnit()))
endfunction

function Trig_HINTArthasDies_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_HINT, "TRIGSTR_025")
    call ForGroupBJ(GetUnitsOfPlayerMatching(udg_AAAP_Arthas, Condition(function Trig_HINTArthasDies_Queue_Func004001002)), function Trig_HINTArthasDies_Queue_Func004002)
    call ForGroupBJ(GetUnitsOfPlayerMatching(udg_AAAP_Arthas, Condition(function Trig_HINTArthasDies_Queue_Func005001002)), function Trig_HINTArthasDies_Queue_Func005002)
    call TriggerSleepAction(bj_QUEUE_DELAY_HINT)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_HINTArthasDies_Queue takes nothing returns nothing
    set gg_trg_HINTArthasDies_Queue=CreateTrigger()
    call TriggerAddCondition(gg_trg_HINTArthasDies_Queue, Condition(function Trig_HINTArthasDies_Queue_Conditions))
    call TriggerAddAction(gg_trg_HINTArthasDies_Queue, function Trig_HINTArthasDies_Queue_Actions)
endfunction

//===========================================================================
// Trigger: HINTUpgradeTowers
//===========================================================================
function Trig_HINTUpgradeTowers_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'hwtw' ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_HINTUpgradeTowers_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_HINTUpgradeTowers_Queue, true)
endfunction

//===========================================================================
function InitTrig_HINTUpgradeTowers takes nothing returns nothing
    set gg_trg_HINTUpgradeTowers=CreateTrigger()
    call TriggerRegisterPlayerSelectionEventBJ(gg_trg_HINTUpgradeTowers, Player(1), true)
    call TriggerAddCondition(gg_trg_HINTUpgradeTowers, Condition(function Trig_HINTUpgradeTowers_Conditions))
    call TriggerAddAction(gg_trg_HINTUpgradeTowers, function Trig_HINTUpgradeTowers_Actions)
endfunction

//===========================================================================
// Trigger: HINTUpgradeTowers Queue
//===========================================================================
function Trig_HINTUpgradeTowers_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_HINTUpgradeTowers_Queue_Func004002 takes nothing returns nothing
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetUnitLoc(GetEnumUnit()), 7.00)
endfunction

function Trig_HINTUpgradeTowers_Queue_Func005002 takes nothing returns nothing
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(GetEnumUnit()))
endfunction

function Trig_HINTUpgradeTowers_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_HINT, "TRIGSTR_028")
    call ForGroupBJ(GetUnitsOfPlayerAndTypeId(udg_AAAP_Arthas, 'hwtw'), function Trig_HINTUpgradeTowers_Queue_Func004002)
    call ForGroupBJ(GetUnitsOfPlayerAndTypeId(udg_AAAP_Arthas, 'hwtw'), function Trig_HINTUpgradeTowers_Queue_Func005002)
    call TriggerSleepAction(bj_QUEUE_DELAY_HINT)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_HINTUpgradeTowers_Queue takes nothing returns nothing
    set gg_trg_HINTUpgradeTowers_Queue=CreateTrigger()
    call TriggerAddCondition(gg_trg_HINTUpgradeTowers_Queue, Condition(function Trig_HINTUpgradeTowers_Queue_Conditions))
    call TriggerAddAction(gg_trg_HINTUpgradeTowers_Queue, function Trig_HINTUpgradeTowers_Queue_Actions)
endfunction

//===========================================================================
// Trigger: HINTMultiple Builders
//===========================================================================
function Trig_HINTMultiple_Builders_Conditions takes nothing returns boolean
    if ( not ( IsUnitInGroup(GetTriggerUnit(), udg_BuildingsUnderConstruction) == true ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_HINTMultiple_Builders_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_HINTMultiple_Builders_Queue, true)
endfunction

//===========================================================================
function InitTrig_HINTMultiple_Builders takes nothing returns nothing
    set gg_trg_HINTMultiple_Builders=CreateTrigger()
    call TriggerRegisterPlayerSelectionEventBJ(gg_trg_HINTMultiple_Builders, Player(1), true)
    call TriggerAddCondition(gg_trg_HINTMultiple_Builders, Condition(function Trig_HINTMultiple_Builders_Conditions))
    call TriggerAddAction(gg_trg_HINTMultiple_Builders, function Trig_HINTMultiple_Builders_Actions)
endfunction

//===========================================================================
// Trigger: HINTMultiple Builders Queue
//===========================================================================
function Trig_HINTMultiple_Builders_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_HINTMultiple_Builders_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_HINT, "TRIGSTR_027")
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(GetTriggerUnit()))
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetUnitLoc(GetTriggerUnit()), 7.00)
    call TriggerSleepAction(bj_QUEUE_DELAY_HINT)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_HINTMultiple_Builders_Queue takes nothing returns nothing
    set gg_trg_HINTMultiple_Builders_Queue=CreateTrigger()
    call TriggerAddCondition(gg_trg_HINTMultiple_Builders_Queue, Condition(function Trig_HINTMultiple_Builders_Queue_Conditions))
    call TriggerAddAction(gg_trg_HINTMultiple_Builders_Queue, function Trig_HINTMultiple_Builders_Queue_Actions)
endfunction

//===========================================================================
// Trigger: HINTMilitia
//===========================================================================
function Trig_HINTMilitia_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetAttackedUnitBJ()) == 'hpea' ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(GetAttacker()) != udg_AAAP_Arthas ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_HINTMilitia_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_HINTMilitia_Queue, true)
endfunction

//===========================================================================
function InitTrig_HINTMilitia takes nothing returns nothing
    set gg_trg_HINTMilitia=CreateTrigger()
    call DisableTrigger(gg_trg_HINTMilitia)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_HINTMilitia, Player(1), EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_HINTMilitia, Condition(function Trig_HINTMilitia_Conditions))
    call TriggerAddAction(gg_trg_HINTMilitia, function Trig_HINTMilitia_Actions)
endfunction

//===========================================================================
// Trigger: HINTMilitia Queue
//===========================================================================
function Trig_HINTMilitia_Queue_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_HINTMilitia_Queue_Func007002 takes nothing returns nothing
    call PingMinimapLocForForce(udg_AAAPG_Arthas, GetUnitLoc(GetEnumUnit()), 7.00)
endfunction

function Trig_HINTMilitia_Queue_Func008002 takes nothing returns nothing
    call SetCameraQuickPositionLocForPlayer(udg_AAAP_Arthas, GetUnitLoc(GetEnumUnit()))
endfunction

function Trig_HINTMilitia_Queue_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitTypeWithNameBJ(udg_AAAPG_Arthas, udg_AAAP_Arthas, 'hfoo', "TRIGSTR_261", GetUnitLoc(gg_unit_ngol_0009), gg_snd_H02Footman38, "TRIGSTR_262", bj_TIMETYPE_ADD, 0, true)
    call VolumeGroupResetBJ()
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_HINT, "TRIGSTR_026")
    call ForGroupBJ(GetUnitsOfPlayerAndTypeId(udg_AAAP_Arthas, 'htow'), function Trig_HINTMilitia_Queue_Func007002)
    call ForGroupBJ(GetUnitsOfPlayerAndTypeId(udg_AAAP_Arthas, 'htow'), function Trig_HINTMilitia_Queue_Func008002)
    call TriggerSleepAction(bj_QUEUE_DELAY_HINT)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_HINTMilitia_Queue takes nothing returns nothing
    set gg_trg_HINTMilitia_Queue=CreateTrigger()
    call DisableTrigger(gg_trg_HINTMilitia_Queue)
    call TriggerAddCondition(gg_trg_HINTMilitia_Queue, Condition(function Trig_HINTMilitia_Queue_Conditions))
    call TriggerAddAction(gg_trg_HINTMilitia_Queue, function Trig_HINTMilitia_Queue_Actions)
endfunction

//===========================================================================
// Trigger: BuildingUnderConstruction
//===========================================================================
function Trig_BuildingUnderConstruction_Actions takes nothing returns nothing
    call GroupAddUnitSimple(GetConstructingStructure(), udg_BuildingsUnderConstruction)
endfunction

//===========================================================================
function InitTrig_BuildingUnderConstruction takes nothing returns nothing
    set gg_trg_BuildingUnderConstruction=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_BuildingUnderConstruction, Player(1), EVENT_PLAYER_UNIT_CONSTRUCT_START)
    call TriggerAddAction(gg_trg_BuildingUnderConstruction, function Trig_BuildingUnderConstruction_Actions)
endfunction

//===========================================================================
// Trigger: BuildingCompletesConstruction
//===========================================================================
function Trig_BuildingCompletesConstruction_Actions takes nothing returns nothing
    call GroupRemoveUnitSimple(GetConstructedStructure(), udg_BuildingsUnderConstruction)
endfunction

//===========================================================================
function InitTrig_BuildingCompletesConstruction takes nothing returns nothing
    set gg_trg_BuildingCompletesConstruction=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_BuildingCompletesConstruction, Player(1), EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
    call TriggerAddAction(gg_trg_BuildingCompletesConstruction, function Trig_BuildingCompletesConstruction_Actions)
endfunction

//===========================================================================
// Trigger: BuildingCancelled
//===========================================================================
function Trig_BuildingCancelled_Actions takes nothing returns nothing
    call GroupRemoveUnitSimple(GetCancelledStructure(), udg_BuildingsUnderConstruction)
endfunction

//===========================================================================
function InitTrig_BuildingCancelled takes nothing returns nothing
    set gg_trg_BuildingCancelled=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_BuildingCancelled, Player(1), EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL)
    call TriggerAddAction(gg_trg_BuildingCancelled, function Trig_BuildingCancelled_Actions)
endfunction

//===========================================================================
// Trigger: Nightfall
//===========================================================================
function Trig_Nightfall_Actions takes nothing returns nothing
    // Turn on Firepit doodads
    call SetDoodadAnimationRectBJ("stand", 'NOfp', gg_rct_Firepit01)
    call SetDoodadAnimationRectBJ("stand", 'NOfp', gg_rct_Firepit02)
    call SetDoodadAnimationRectBJ("stand", 'NOfg', gg_rct_Firepit03)
endfunction

//===========================================================================
function InitTrig_Nightfall takes nothing returns nothing
    set gg_trg_Nightfall=CreateTrigger()
    call TriggerRegisterGameStateEventTimeOfDay(gg_trg_Nightfall, EQUAL, 18.00)
    call TriggerAddAction(gg_trg_Nightfall, function Trig_Nightfall_Actions)
endfunction

//===========================================================================
// Trigger: Daybreak
//===========================================================================
function Trig_Daybreak_Actions takes nothing returns nothing
    // Turn off Firepit doodads
    call SetDoodadAnimationRectBJ("death", 'NOfp', gg_rct_Firepit01)
    call SetDoodadAnimationRectBJ("death", 'NOfp', gg_rct_Firepit02)
    call SetDoodadAnimationRectBJ("death", 'NOfg', gg_rct_Firepit03)
endfunction

//===========================================================================
function InitTrig_Daybreak takes nothing returns nothing
    set gg_trg_Daybreak=CreateTrigger()
    call TriggerRegisterGameStateEventTimeOfDay(gg_trg_Daybreak, EQUAL, 6.00)
    call TriggerAddAction(gg_trg_Daybreak, function Trig_Daybreak_Actions)
endfunction

//===========================================================================
// Trigger: Victory Cinematic
//===========================================================================
function Trig_Victory_Cinematic_Conditions takes nothing returns boolean
    if ( not ( udg_VictoryCondition01 == true ) ) then
        return false
    endif
    if ( not ( udg_VictoryCondition02 == true ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Victory_Cinematic_Actions takes nothing returns nothing
    set udg_GameOver=true
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_All_Buildings_Destroyed)
    call UseTimeOfDayBJ(false)
    call SetUnitInvulnerable(udg_Arthas, true)
    call SetUnitInvulnerable(udg_Uther, true)
    call TriggerSleepAction(1.00)
    call QueuedTriggerAddBJ(gg_trg_Victory_Queue, false)
endfunction

//===========================================================================
function InitTrig_Victory_Cinematic takes nothing returns nothing
    set gg_trg_Victory_Cinematic=CreateTrigger()
    call TriggerAddCondition(gg_trg_Victory_Cinematic, Condition(function Trig_Victory_Cinematic_Conditions))
    call TriggerAddAction(gg_trg_Victory_Cinematic, function Trig_Victory_Cinematic_Actions)
endfunction

//===========================================================================
// Trigger: Victory Queue
//===========================================================================
function Trig_Victory_Queue_Func010002 takes nothing returns nothing
    call IssueImmediateOrderBJ(GetEnumUnit(), "stop")
endfunction

function Trig_Victory_Queue_Func011002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Victory_Queue_Func016001 takes nothing returns boolean
    return ( IsUnitDeadBJ(udg_Arthas) == true )
endfunction

function Trig_Victory_Queue_Func025001 takes nothing returns boolean
    return ( udg_VictorySkipped == true )
endfunction

function Trig_Victory_Queue_Func030001 takes nothing returns boolean
    return ( udg_VictorySkipped == true )
endfunction

function Trig_Victory_Queue_Func033001 takes nothing returns boolean
    return ( udg_VictorySkipped == true )
endfunction

function Trig_Victory_Queue_Func036001 takes nothing returns boolean
    return ( udg_VictorySkipped == true )
endfunction

function Trig_Victory_Queue_Func038001 takes nothing returns boolean
    return ( udg_VictorySkipped == true )
endfunction

function Trig_Victory_Queue_Func045001 takes nothing returns boolean
    return ( udg_VictorySkipped == true )
endfunction

function Trig_Victory_Queue_Actions takes nothing returns nothing
    call status_check_location(0)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call CinematicModeBJ(true, udg_AAAPG_Arthas)
    call TriggerSleepAction(1.00)
    // Now Skippable
    call EnableTrigger(gg_trg_Victory_Cinematic_Cancel)
    call ClearSelection()
    call CameraSetupApplyForPlayer(true, gg_cam_End01, udg_AAAP_Arthas, 0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_End02, udg_AAAP_Arthas, 15.00)
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Victory_Queue_Func010002)
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Victory_Queue_Func011002)
    call ShowUnitShow(udg_Arthas)
    call ShowUnitShow(udg_Uther)
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, udg_Arthas)
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, udg_Uther)
    if ( Trig_Victory_Queue_Func016001() ) then
        call ReviveHeroLoc(udg_Arthas, GetRectCenter(gg_rct_ArthasFinal), false)
    else
        call DoNothing()
    endif
    call SetUnitPositionLoc(udg_Arthas, GetRectCenter(gg_rct_ArthasFinal))
    call SetUnitPositionLoc(udg_Uther, GetRectCenter(gg_rct_UtherFinal))
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, udg_Uther, 0)
    call SetUnitFacingToFaceUnitTimed(udg_Uther, udg_Arthas, 0)
    call IssueImmediateOrderBJ(udg_Arthas, "holdposition")
    call IssueImmediateOrderBJ(udg_Uther, "holdposition")
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.50)
    if ( Trig_Victory_Queue_Func025001() ) then
        return
    else
        call DoNothing()
    endif
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\HeroicVictory.mp3")
    call CameraSetupApplyForPlayer(true, gg_cam_End01, Player(1), 15.00)
    call TransmissionFromUnitWithNameBJ(bj_FORCE_PLAYER[1], udg_Uther, "TRIGSTR_507", gg_snd_H02Uther25, "TRIGSTR_508", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H02Uther25, 0)
    if ( Trig_Victory_Queue_Func030001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(bj_FORCE_PLAYER[1], udg_Arthas, "TRIGSTR_509", gg_snd_H02Arthas26, "TRIGSTR_510", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H02Arthas26, 0)
    if ( Trig_Victory_Queue_Func033001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(bj_FORCE_PLAYER[1], udg_Uther, "TRIGSTR_511", gg_snd_H02Uther27, "TRIGSTR_512", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H02Uther27, 0)
    if ( Trig_Victory_Queue_Func036001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.25)
    if ( Trig_Victory_Queue_Func038001() ) then
        return
    else
        call DoNothing()
    endif
    call SetStackedSoundBJ(false, gg_snd_WaterLakeLoop1, gg_rct_LakeLoop01)
    call SetStackedSoundBJ(false, gg_snd_WaterLakeLoop1, gg_rct_LakeLoop02)
    // No Longer Skippable
    call DisableTrigger(gg_trg_Victory_Cinematic_Cancel)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 2.00, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(2.00)
    if ( Trig_Victory_Queue_Func045001() ) then
        return
    else
        call DoNothing()
    endif
    // Change Mission
    call ConditionalTriggerExecute(gg_trg_Next_Level_Run)
endfunction

//===========================================================================
function InitTrig_Victory_Queue takes nothing returns nothing
    set gg_trg_Victory_Queue=CreateTrigger()
    call TriggerAddAction(gg_trg_Victory_Queue, function Trig_Victory_Queue_Actions)
endfunction

//===========================================================================
// Trigger: Victory Cinematic Cancel
//===========================================================================
function Trig_Victory_Cinematic_Cancel_Func004002 takes nothing returns nothing
    call IssueImmediateOrderBJ(GetEnumUnit(), "stop")
endfunction

function Trig_Victory_Cinematic_Cancel_Func005002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Victory_Cinematic_Cancel_Func010001 takes nothing returns boolean
    return ( IsUnitDeadBJ(udg_Arthas) == true )
endfunction

function Trig_Victory_Cinematic_Cancel_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_VictorySkipped=true
    call ClearSelection()
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Victory_Cinematic_Cancel_Func004002)
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Victory_Cinematic_Cancel_Func005002)
    call ShowUnitShow(udg_Arthas)
    call ShowUnitShow(udg_Uther)
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, udg_Arthas)
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, udg_Uther)
    if ( Trig_Victory_Cinematic_Cancel_Func010001() ) then
        call ReviveHeroLoc(udg_Arthas, GetRectCenter(gg_rct_ArthasFinal), false)
    else
        call DoNothing()
    endif
    call SetUnitPositionLoc(udg_Arthas, GetRectCenter(gg_rct_ArthasFinal))
    call SetUnitPositionLoc(udg_Uther, GetRectCenter(gg_rct_UtherFinal))
    call SetUnitFacingToFaceUnitTimed(udg_Arthas, udg_Uther, 0)
    call SetUnitFacingToFaceUnitTimed(udg_Uther, udg_Arthas, 0)
    call IssueImmediateOrderBJ(udg_Arthas, "holdposition")
    call IssueImmediateOrderBJ(udg_Uther, "holdposition")
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 2.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(2)
    call ConditionalTriggerExecute(gg_trg_Next_Level_Run)
endfunction

//===========================================================================
function InitTrig_Victory_Cinematic_Cancel takes nothing returns nothing
    set gg_trg_Victory_Cinematic_Cancel=CreateTrigger()
    call DisableTrigger(gg_trg_Victory_Cinematic_Cancel)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Victory_Cinematic_Cancel, Player(1))
    call TriggerAddAction(gg_trg_Victory_Cinematic_Cancel, function Trig_Victory_Cinematic_Cancel_Actions)
endfunction

//===========================================================================
// Trigger: All Buildings Destroyed
//
// DefeatHappened should stop all possible cinematics and text messages. If it doesn't, add a condition to whatever is displaying upon defeat that "DefeatHappened = False."
//===========================================================================
function Trig_All_Buildings_Destroyed_Conditions takes nothing returns boolean
    if ( not ( GetPlayerStructureCount(Player(1), true) == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_All_Buildings_Destroyed_Actions takes nothing returns nothing
    set udg_GameOver=true
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Victory_Cinematic)
    call TriggerExecute(gg_trg_Stop_Scripted_Events)
    call QuestMessageBJ(udg_AAAPG_Arthas, bj_QUESTMESSAGE_FAILED, "TRIGSTR_007")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call CustomDefeatBJ(udg_AAAP_Arthas, "TRIGSTR_029")
endfunction

//===========================================================================
function InitTrig_All_Buildings_Destroyed takes nothing returns nothing
    set gg_trg_All_Buildings_Destroyed=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_All_Buildings_Destroyed, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_All_Buildings_Destroyed, Condition(function Trig_All_Buildings_Destroyed_Conditions))
    call TriggerAddAction(gg_trg_All_Buildings_Destroyed, function Trig_All_Buildings_Destroyed_Actions)
endfunction

//===========================================================================
// Trigger: Stop Scripted Events
//===========================================================================
function Trig_Stop_Scripted_Events_Actions takes nothing returns nothing
    set udg_SearinoxQuestFailed=true
endfunction

//===========================================================================
function InitTrig_Stop_Scripted_Events takes nothing returns nothing
    set gg_trg_Stop_Scripted_Events=CreateTrigger()
    call TriggerAddAction(gg_trg_Stop_Scripted_Events, function Trig_Stop_Scripted_Events_Actions)
endfunction

//===========================================================================
// Trigger: Next Level Run
//===========================================================================
function Trig_Next_Level_Run_Actions takes nothing returns nothing
    // Run next level
    call SetNextLevelBJ("Maps\\Archipelago\\Human03.w3x")
    call CustomVictoryBJ(udg_AAAP_Arthas, true, true)
endfunction

//===========================================================================
function InitTrig_Next_Level_Run takes nothing returns nothing
    set gg_trg_Next_Level_Run=CreateTrigger()
    call TriggerAddAction(gg_trg_Next_Level_Run, function Trig_Next_Level_Run_Actions)
endfunction

//===========================================================================
// Trigger: Victory Cheat
//===========================================================================
function Trig_Victory_Cheat_Actions takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Next_Level_Run)
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
    call CustomDefeatBJ(udg_AAAP_Arthas, "TRIGSTR_658")
endfunction

//===========================================================================
function InitTrig_Defeat_Cheat takes nothing returns nothing
    set gg_trg_Defeat_Cheat=CreateTrigger()
    call TriggerRegisterPlayerEventDefeat(gg_trg_Defeat_Cheat, Player(1))
    call TriggerAddAction(gg_trg_Defeat_Cheat, function Trig_Defeat_Cheat_Actions)
endfunction

//===========================================================================
// Trigger: Orc Base Dies
//===========================================================================
function Trig_Orc_Base_Dies_Func002001 takes nothing returns boolean
    return ( udg_orc_buildings_killed >= 3 )
endfunction

function Trig_Orc_Base_Dies_Actions takes nothing returns nothing
    set udg_orc_buildings_killed=( udg_orc_buildings_killed + 1 )
    if ( Trig_Orc_Base_Dies_Func002001() ) then
        call status_check_location(25)
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_Orc_Base_Dies takes nothing returns nothing
    set gg_trg_Orc_Base_Dies=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Orc_Base_Dies, gg_unit_obea_0117, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(gg_trg_Orc_Base_Dies, gg_unit_obar_0118, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(gg_trg_Orc_Base_Dies, gg_unit_ofor_0059, EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Orc_Base_Dies, function Trig_Orc_Base_Dies_Actions)
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_irregulars()
    call InitTrig_fileio()
    call InitTrig_map_config()
    call InitTrig_status()
    call InitTrig_heroes()
    call InitTrig_item_locations()
    call InitTrig_debug()
    call InitTrig_zoom()
    call InitTrig_AP_Load_Arthas()
    call InitTrig_Map_Initialization()
    call InitTrig_Delayed_Special_FX()
    call InitTrig_Hard_Difficulty()
    call InitTrig_Handicap()
    call InitTrig_Intro_Cinematic()
    call InitTrig_Intro_Cinematic_Cancel()
    call InitTrig_Create_Gold_Peasants()
    call InitTrig_PeasantFakeHarvest()
    call InitTrig_PeasantFakeReturn()
    call InitTrig___Red_AI_Settings()
    call InitTrig___Horses_Leave()
    call InitTrig_Delete_Horse01()
    call InitTrig_Delete_Horse02()
    call InitTrig_Delete_Handler()
    call InitTrig_BarracksConstructed()
    call InitTrig_BarracksConstructed_Queue()
    call InitTrig_FarmsConstructed()
    call InitTrig_FarmsConstructed_Queue()
    call InitTrig___FarmCompletes()
    call InitTrig___FarmCancelled()
    call InitTrig___FarmDestroyed()
    call InitTrig_FootmenTrained()
    call InitTrig_FootmenTrained_Queue()
    call InitTrig___FootmanPopsOut()
    call InitTrig___Disable_Leaderboard()
    call InitTrig_BaseQuestCompleted()
    call InitTrig_BaseQuestCompleted_Queue()
    call InitTrig_Blademaster_Cinematic()
    call InitTrig_Blademaster_Cinematic_Failsafe()
    call InitTrig_Blademaster_Cinematic_Queue()
    call InitTrig_Blademaster_Animation()
    call InitTrig___UtherAnimation()
    call InitTrig___SpawnMirrorImage()
    call InitTrig_____SetMirrorImage()
    call InitTrig_Blademaster_Cancel()
    call InitTrig_AI_Gold()
    call InitTrig_AI_Lumber()
    call InitTrig_Uther_Patrol_to_01()
    call InitTrig_Uther_Reaches_01()
    call InitTrig_Uther_Patrol_to_02()
    call InitTrig_Uther_Reaches_02()
    call InitTrig_Base_Is_Attacked()
    call InitTrig_UtherTargetDies()
    call InitTrig_Look_for_enemies()
    call InitTrig_Crate01_Is_Destroyed()
    call InitTrig_Crate02_Is_Destroyed()
    call InitTrig_Trigger_Dwarves()
    call InitTrig_Trigger_Dwarves_Failsafe()
    call InitTrig_Dwarves_Queue()
    call InitTrig_Heart_Cinematic()
    call InitTrig_Heart_Cinematic_Queue()
    call InitTrig_Heart_Cinematic_Queue_B()
    call InitTrig_Heart_Cinematic_Queue_C()
    call InitTrig_Fail_Searinox_Quest_01()
    call InitTrig_Fail_Searinox_Quest_02()
    call InitTrig_Blacksmith_Dies()
    call InitTrig_Dragon_Intro()
    call InitTrig_Dragon_Intro_Queue()
    call InitTrig_Spawn_Skeletons()
    call InitTrig_Drop_Heart_of_Searinox()
    call InitTrig_Heart_of_Searinox_Queue()
    call InitTrig_Player_Gets_the_Heart_of_Searinox()
    call InitTrig_Murlocs()
    call InitTrig_Murlocs_Queue()
    call InitTrig_BlademasterDies()
    call InitTrig_HINTAltar()
    call InitTrig_HINTAltar_Queue()
    call InitTrig_HINTArthasDies()
    call InitTrig_HINTArthasDies_Queue()
    call InitTrig_HINTUpgradeTowers()
    call InitTrig_HINTUpgradeTowers_Queue()
    call InitTrig_HINTMultiple_Builders()
    call InitTrig_HINTMultiple_Builders_Queue()
    call InitTrig_HINTMilitia()
    call InitTrig_HINTMilitia_Queue()
    call InitTrig_BuildingUnderConstruction()
    call InitTrig_BuildingCompletesConstruction()
    call InitTrig_BuildingCancelled()
    call InitTrig_Nightfall()
    call InitTrig_Daybreak()
    call InitTrig_Victory_Cinematic()
    call InitTrig_Victory_Queue()
    call InitTrig_Victory_Cinematic_Cancel()
    call InitTrig_All_Buildings_Destroyed()
    call InitTrig_Stop_Scripted_Events()
    call InitTrig_Next_Level_Run()
    call InitTrig_Victory_Cheat()
    call InitTrig_Defeat_Cheat()
    call InitTrig_Orc_Base_Dies()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_fileio)
    call ConditionalTriggerExecute(gg_trg_map_config)
    call ConditionalTriggerExecute(gg_trg_status)
    call ConditionalTriggerExecute(gg_trg_heroes)
    call ConditionalTriggerExecute(gg_trg_item_locations)
    call ConditionalTriggerExecute(gg_trg_debug)
    call ConditionalTriggerExecute(gg_trg_zoom)
    call ConditionalTriggerExecute(gg_trg_Map_Initialization)
endfunction

//***************************************************************************
//*
//*  Upgrades
//*
//***************************************************************************

function InitUpgrades_Player0 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(0), 'Rome', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Rora', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Roaa', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Roar', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Romi', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Roac', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Ross', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Rows', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Roen', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Rowt', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Rovs', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Rowd', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Rost', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Rolh', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Ronv', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Rosp', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Robs', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Rotr', 0)
endfunction

function InitUpgrades_Player1 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(1), 'Rome', 1)
    call SetPlayerTechMaxAllowed(Player(1), 'Rora', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Roaa', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Roar', 1)
    call SetPlayerTechMaxAllowed(Player(1), 'Romi', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Roac', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Ross', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhme', 1)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhra', 1)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhaa', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhar', 1)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhmi', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhac', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhss', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhde', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhan', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhpt', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhst', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhla', 1)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhri', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhlh', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhse', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhsr', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhfl', 0)
endfunction

function InitUpgrades_Player2 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(2), 'Rome', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rora', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Roaa', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Roar', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Romi', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Roac', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Ross', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhme', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhra', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhaa', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhar', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhmi', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhac', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhss', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhde', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhan', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhpt', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhst', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhla', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhri', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhlh', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhse', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rhsr', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rows', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Roen', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rowt', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rovs', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rowd', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rost', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rolh', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Ronv', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Rosp', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Robs', 0)
endfunction

function InitUpgrades_Player3 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(3), 'Rhme', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhra', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhaa', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhar', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhmi', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhac', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhss', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhde', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhan', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhpt', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhst', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhla', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhri', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhlh', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhse', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Rhsr', 0)
endfunction

function InitUpgrades takes nothing returns nothing
    call InitUpgrades_Player0()
    call InitUpgrades_Player1()
    call InitUpgrades_Player2()
    call InitUpgrades_Player3()
endfunction

//***************************************************************************
//*
//*  TechTree
//*
//***************************************************************************

function InitTechTree_Player0 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(0), 'otau', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'ocat', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'okod', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'owyv', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'odoc', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'oshm', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'oeye', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'otot', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Obla', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Ofar', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Otch', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'ofrt', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'oalt', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'otto', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'osld', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'otrb', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Ogrh', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Opgh', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Ocbh', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Othr', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'owtw', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Obbc', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Hblm', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Oshd', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Ucrl', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'Ewar', 0)
endfunction

function InitTechTree_Player1 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(1), 'hkni', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hrif', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hmtm', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hgyr', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hgry', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hmpr', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hsor', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hwat', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hamg', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hmkg', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hpal', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hkee', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hcas', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hbla', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'harm', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hars', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hgra', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hctw', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hmtt', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hstt', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'htws', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hblm', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Oshd', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Ucrl', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Ewar', 0)
endfunction

function InitTechTree_Player2 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(2), 'hpea', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hfoo', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hkni', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hrif', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hmtm', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hgyr', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hgry', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hmpr', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hsor', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hwat', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Hamg', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Hmkg', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Hpal', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'htow', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hkee', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hcas', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hhou', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'halt', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hbar', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hlum', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hbla', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'harm', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hars', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hgra', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hwtw', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hgtw', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hctw', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'hstt', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'htws', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Hblm', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Oshd', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Ucrl', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'Ewar', 0)
endfunction

function InitTechTree_Player3 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(3), 'hpea', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hfoo', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hkni', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hrif', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hmtm', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hgyr', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hgry', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hmpr', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hsor', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hwat', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Hamg', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Hmkg', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Hpal', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'htow', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hkee', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hcas', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hhou', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'halt', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hbar', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hlum', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hbla', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'harm', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hars', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hgra', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hwtw', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hgtw', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hctw', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'hstt', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'htws', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Hblm', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Oshd', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Ucrl', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'Ewar', 0)
endfunction

function InitTechTree takes nothing returns nothing
    call InitTechTree_Player0()
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

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call ForcePlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_COMPUTER)

    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)

    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call ForcePlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_NEUTRAL)

    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call ForcePlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_COMPUTER)

    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call ForcePlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(4), false)
    call SetPlayerController(Player(4), MAP_CONTROL_COMPUTER)

    // Player 8
    call SetPlayerStartLocation(Player(8), 5)
    call ForcePlayerStartLocation(Player(8), 5)
    call SetPlayerColor(Player(8), ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(8), false)
    call SetPlayerController(Player(8), MAP_CONTROL_NEUTRAL)

    // Player 9
    call SetPlayerStartLocation(Player(9), 6)
    call ForcePlayerStartLocation(Player(9), 6)
    call SetPlayerColor(Player(9), ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(9), false)
    call SetPlayerController(Player(9), MAP_CONTROL_COMPUTER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_392
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerTeam(Player(9), 0)

    // Force: TRIGSTR_393
    call SetPlayerTeam(Player(8), 1)

    // Force: TRIGSTR_039
    call SetPlayerTeam(Player(0), 2)
    call SetPlayerTeam(Player(3), 2)
    call SetPlayerTeam(Player(4), 2)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)

    // Force: TRIGSTR_294
    call SetPlayerTeam(Player(2), 3)

endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 6656.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 6912.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 5376.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 5120.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 6656.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 5120.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 5376.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 6912.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
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
    call SetMapName("TRIGSTR_000")
    call SetMapDescription("TRIGSTR_002")
    call SetPlayers(7)
    call SetTeams(7)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)

    call DefineStartLocation(0, - 768.0, 2240.0)
    call DefineStartLocation(1, - 3776.0, - 4096.0)
    call DefineStartLocation(2, - 5888.0, - 6144.0)
    call DefineStartLocation(3, - 4288.0, 4096.0)
    call DefineStartLocation(4, - 4032.0, - 3520.0)
    call DefineStartLocation(5, - 5888.0, - 6144.0)
    call DefineStartLocation(6, - 3712.0, - 4096.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
endfunction




//Struct method generated initializers/callers:

