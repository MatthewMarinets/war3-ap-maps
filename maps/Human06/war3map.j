globals
    // User-defined
unit udg_DestroyedBuilding= null
group udg_Buildings1= null
group udg_Buildings2= null
group udg_Buildings3= null
group udg_Buildings4= null
group udg_Buildings5= null
group udg_Buildings6= null
group udg_MalganisDeathSquad= null
rect array udg_RegionsArray
integer udg_RegionLength= 0
rect udg_RegionPicked= null
integer udg_RegionBucket= 0
integer array udg_TargetArray
integer udg_TargetArrayLength= 0
unit udg_MalganisTargetHouse= null
group array udg_BuildingsToAttackArray
real udg_DeathsOfDeathSquad= 0
real udg_MalganisConversions= 0
real udg_ArthasDenials= 0
group udg_UthersGroup= null
unit udg_ArthasVariable= null
unit udg_UtherVariable= null
unit udg_JainaVariable= null
unit udg_MalganisVariable= null
boolean udg_IntroCancel= false
location udg_PlayerCameraPosition= null
player udg_ThePlayer= null
quest udg_WaygatesQuest= null
group udg_WayGatesGroup= null
integer udg_RANDOMINTEGER= 0
timerdialog udg_MalganisCountdown= null
quest udg_CullingQuest= null
timer udg_MalganisTimer= null
boolean udg_VictoryCinSkip= false
boolean udg_WaygateCin1Playing= false
boolean udg_MalganisFirstTeleCin= false
boolean udg_MalganisGloatCin= false
boolean udg_WaygateCin2Playing= false
boolean udg_WaygateCin3Playing= false
boolean udg_MalganisFirstTeleCinSkip= false
real udg_MalganisTargetHouseX= 0
real udg_MalganisTargetHouseY= 0
real udg_MalganisCaptainX= 0
real udg_MalganisCaptainY= 0
timer udg_MalganisAttackTimer= null
boolean udg_BootingPlayer= false
group udg_VillagerToZombieGROUP= null
unit udg_VillagerToBeConverted= null
fogmodifier udg_WaterfallRevealVis= null
boolean udg_WaterfallSwitch= false
effect udg_TeleportEffect= null
boolean udg_Teleporting= false
integer udg_NextSquad= 0
boolean udg_EndCinematicPlaying= false
boolean udg_BuildingsGone= false
group udg_SelectedUnits= null
unit udg_RevivalAltar= null
location udg_ArthasReturnPoint= null
group udg_HideUnits= null
boolean udg_TeleportFast= false
boolean udg_GameOver= false
boolean udg_MaySendCommands= false
timer udg_TimerMaySendCommands= null

    // Generated
rect gg_rct_MalganisSpawnDS= null
rect gg_rct_Arthas_Town= null
rect gg_rct_Malganis_Sneak5= null
rect gg_rct_Malganis_Sneak4= null
rect gg_rct_Malganis_Sneak3= null
rect gg_rct_Malganis_Sneak2= null
rect gg_rct_Malganis_Sneak1= null
rect gg_rct_Malganis_Sneak4_Buildings= null
rect gg_rct_Malganis_Sneak1_Buildings= null
rect gg_rct_Malganis_Sneak2_Buildings= null
rect gg_rct_Malganis_Sneak3_Buildings= null
rect gg_rct_Malganis_Sneak5_Buildings= null
rect gg_rct_Cin1ArthasStop1= null
rect gg_rct_Cin1JainaStop1= null
rect gg_rct_Cin1KnightsBLeave= null
rect gg_rct_Cin1KnightsALeave= null
rect gg_rct_Cin1UtherLeave= null
rect gg_rct_Cin1JainaLeave= null
rect gg_rct_Cin1ArthasStop2= null
rect gg_rct_NULL= null
rect gg_rct_Malganis_Revive= null
rect gg_rct_Villagers_Go_Here= null
rect gg_rct_The_Waygate= null
rect gg_rct_Waterfall_Reveal= null
rect gg_rct_The_Waygate_Revealed= null
rect gg_rct_The_Waygate_Central1= null
rect gg_rct_The_Waygate_Central2= null
rect gg_rct_Ending_Waves= null
rect gg_rct_Ending_Waves2= null
rect gg_rct_Ending_Waves3= null
rect gg_rct_End_Victory_Malganis= null
rect gg_rct_End_Victory_Arthas= null
rect gg_rct_End_Victory_Malganis2= null
rect gg_rct_Cin1KnightsAGoHere1= null
rect gg_rct_Cin1KnightsBGoHere1= null
rect gg_rct_Cin1UtherGoHere1= null
rect gg_rct_Lightning= null
rect gg_rct_VillagersESCmove= null
rect gg_rct_Arthas_Starts_Here= null
rect gg_rct_Reveal1= null
rect gg_rct_Reveal2= null
rect gg_rct_Reveal3= null
rect gg_rct_Cin1KnightsAStart= null
rect gg_rct_Cin1KnightsBStart= null
rect gg_rct_DasBoot1= null
rect gg_rct_DasBoot2= null
rect gg_rct_DasBoot3= null
rect gg_rct_DasMalganisSTOP= null
rect gg_rct_Arthas_Cin_Skip_Move= null
rect gg_rct_HardGhoul1= null
rect gg_rct_HardGhoul2= null
rect gg_rct_Way_Gate_Hint_1= null
rect gg_rct_Way_Gate_Hint_2= null
rect gg_rct_Way_Gate_Hint_3= null
rect gg_rct_Way_Gate_Hint_4= null
rect gg_rct_Villagers_Go_Here_2= null
rect gg_rct_Forgive_Me= null
rect gg_rct_WaterfallSight= null
rect gg_rct_Harvest_Gold= null
rect gg_rct_Harvest_Lumber= null
rect gg_rct_MalganicFirstTPSkip_Move= null
rect gg_rct_StreamLoop01= null
rect gg_rct_StreamLoop02= null
rect gg_rct_StreamLoop03= null
rect gg_rct_StreamLoop04= null
rect gg_rct_StreamLoop05= null
rect gg_rct_StreamLoop06= null
rect gg_rct_StreamLoop07= null
rect gg_rct_StreamLoop08= null
camerasetup gg_cam_Arthas_and_Jaina_1= null
camerasetup gg_cam_Arthas_and_Jaina_2= null
camerasetup gg_cam_Arthas_Jaina_and_Uther= null
camerasetup gg_cam_Villagers_Over_There= null
camerasetup gg_cam_Grain_of_Andorhal= null
camerasetup gg_cam_Arthas_Town= null
camerasetup gg_cam_What_Must_Be_Purged= null
camerasetup gg_cam_Arthas_Expostulates= null
camerasetup gg_cam_Uther_Shocked= null
camerasetup gg_cam_Jaina_Leaving= null
camerasetup gg_cam_The_Waygate= null
camerasetup gg_cam_The_Waygates= null
camerasetup gg_cam_End_Win_Cinematic_1= null
camerasetup gg_cam_End_Win_Cinematic_2= null
camerasetup gg_cam_End_Win_Cinematic_3= null
camerasetup gg_cam_Test1= null
camerasetup gg_cam_Test2= null
camerasetup gg_cam_Test3= null
camerasetup gg_cam_Inbetween_Villagers= null
camerasetup gg_cam_CamEndCinMalCountershot= null
camerasetup gg_cam_CamEnWinArthasBack= null
camerasetup gg_cam_CamEndWinFarshot= null
camerasetup gg_cam_CamCinEndWinMalRuntoward= null
camerasetup gg_cam_MalGanis_IntroCin1= null
camerasetup gg_cam_MalGanis_IntroCin2= null
camerasetup gg_cam_Arthas_Jaina_and_UtherStart= null
sound gg_snd_H06Arthas01= null
sound gg_snd_H06Arthas03= null
sound gg_snd_H06Arthas04= null
sound gg_snd_H06Arthas06= null
sound gg_snd_H06Arthas08= null
sound gg_snd_H06Arthas10= null
sound gg_snd_H06Arthas12= null
sound gg_snd_H06Arthas14= null
sound gg_snd_H06Arthas16= null
sound gg_snd_H06Arthas30= null
sound gg_snd_H06Arthas33= null
sound gg_snd_H06Arthas43= null
sound gg_snd_H06Arthas46= null
sound gg_snd_H06Jaina13= null
sound gg_snd_H06Jaina17= null
sound gg_snd_H06MalGanis31= null
sound gg_snd_H06MalGanis32= null
sound gg_snd_H06MalGanis41= null
sound gg_snd_H06MalGanis42= null
sound gg_snd_H06MalGanis44= null
sound gg_snd_H06MalGanis45= null
sound gg_snd_H06Uther02= null
sound gg_snd_H06Uther05= null
sound gg_snd_H06Uther07= null
sound gg_snd_H06Uther09= null
sound gg_snd_H06Uther11= null
sound gg_snd_H06Uther15= null
sound gg_snd_H06VillagerF24= null
sound gg_snd_H06VillagerF57= null
sound gg_snd_H06VillagerF58= null
sound gg_snd_H06VillagerF59= null
sound gg_snd_H06VillagerF61= null
sound gg_snd_H06VillagerM23= null
sound gg_snd_H06VillagerM25= null
sound gg_snd_H06VillagerM26= null
sound gg_snd_H06VillagerM27= null
sound gg_snd_H06VillagerM28= null
string gg_snd_HumanDefeat
sound gg_snd_DoorSlam1= null
sound gg_snd_DoorSlam101= null
sound gg_snd_HorseLoop3= null
sound gg_snd_HorseLoop2= null
sound gg_snd_KnightNoRiderWhat3= null
sound gg_snd_KnightNoRiderYesAttack1= null
sound gg_snd_KnightNoRiderWhat2= null
sound gg_snd_KnightNoRiderYesAttack2= null
sound gg_snd_CityScapeCathedralLoop1= null
sound gg_snd_CityBuildingDeath1= null
sound gg_snd_DarkSummoningTarget1= null
sound gg_snd_MassTeleportTarget= null
sound gg_snd_WaterStreamLoop1= null
trigger gg_trg_fileio= null
trigger gg_trg_map_config= null
trigger gg_trg_status= null
trigger gg_trg_heroes= null
trigger gg_trg_item_locations= null
trigger gg_trg_debug= null
trigger gg_trg_zoom= null
trigger gg_trg_irregulars= null
trigger gg_trg_Initialize_Initializations= null
trigger gg_trg_Difficulty= null
trigger gg_trg_RestoreVariablesStartCache= null
trigger gg_trg_Default_Arthas= null
trigger gg_trg_Victory_Save_Cache= null
trigger gg_trg_Waterfall_Reveal= null
trigger gg_trg_Waterfall_Hide= null
trigger gg_trg_Initialize_Heroes= null
trigger gg_trg_XP_Cap= null
trigger gg_trg_Alliance_Sight_Color= null
trigger gg_trg_Intro_Cancel= null
trigger gg_trg_Form_Uthers_Group= null
trigger gg_trg_Cinematic_Uther_Moves_In= null
trigger gg_trg_Remove_Villager1= null
trigger gg_trg_Remove_Villager2= null
trigger gg_trg_Remove_Villager3= null
trigger gg_trg_Remove_Villager4= null
trigger gg_trg_Uther_and_co_Leave= null
trigger gg_trg_Arthas_Gets_Town= null
trigger gg_trg_New_Unit_Available= null
trigger gg_trg_Malganis_Attack= null
trigger gg_trg_Kill_Villager_Deny_Malganis= null
trigger gg_trg_Kill_Zombie_Deny_Malganis= null
trigger gg_trg_Setup_Leaderboard= null
trigger gg_trg_Leaderboard_Tracking= null
trigger gg_trg_Hint_for_Killing_Villagers= null
trigger gg_trg_Hint_for_Killing_Villagers_Que= null
trigger gg_trg_Malganis_First_Attacks= null
trigger gg_trg_Malganis_First_Teleport_Cin_Skip= null
trigger gg_trg_Malganis_First_Teleport_Cinematic= null
trigger gg_trg_Malganis_First_Building_Attack= null
trigger gg_trg_Malganis_First_Get_Arthas_Alt= null
trigger gg_trg_Villagers_Run_District_1= null
trigger gg_trg_Villagers_Run_District_2= null
trigger gg_trg_Villagers_Run_District_3= null
trigger gg_trg_Villagers_Run_District_4= null
trigger gg_trg_Villagers_Run_District_5= null
trigger gg_trg_If_Building_Pops_MakeVillagers= null
trigger gg_trg_If_Building_Pops_Shake_Camera= null
trigger gg_trg_Spawn_Villagers= null
trigger gg_trg_Create_Man= null
trigger gg_trg_Create_Woman= null
trigger gg_trg_Create_Child= null
trigger gg_trg_Create_Rats= null
trigger gg_trg_Malganis_AI_and_Level= null
trigger gg_trg_Form_Building_Groups= null
trigger gg_trg_Building_Destroyed_Remove_From_Group1= null
trigger gg_trg_Building_Destroyed_Remove_From_Group2= null
trigger gg_trg_Building_Destroyed_Remove_From_Group3= null
trigger gg_trg_Building_Destroyed_Remove_From_Group4= null
trigger gg_trg_Building_Destroyed_Remove_From_Group5= null
trigger gg_trg_Initialize_Region_Array= null
trigger gg_trg_Choose_Buildings= null
trigger gg_trg_Choose_Default_Region= null
trigger gg_trg_Choose_Random_Region= null
trigger gg_trg_Create_Target_Array= null
trigger gg_trg_Target_Array_Loop= null
trigger gg_trg_Add_To_Target_Array= null
trigger gg_trg_Malganis_Countdown_Timer_Create= null
trigger gg_trg_Malganis_Countdown_Timer_Counts= null
trigger gg_trg_Malganis_Countdown_Timer_Hits_0= null
trigger gg_trg_Arthas_Says_Forgive_Me= null
trigger gg_trg_Arthas_Says_Forgive_Me_Que= null
trigger gg_trg_Initialize_Buildings_To_Attack_Array= null
trigger gg_trg_Malganis_Death_Squad_1= null
trigger gg_trg_Create_Sqaud_1= null
trigger gg_trg_Malganis_Death_Squad_2= null
trigger gg_trg_Create_Squad_2= null
trigger gg_trg_Malganis_Death_Squad_3= null
trigger gg_trg_Create_Squad_3= null
trigger gg_trg_Add_To_Death_Squad_Denials_at_21= null
trigger gg_trg_Add_To_Death_Squad_Denials_at_51= null
trigger gg_trg_Das_Boot_to_Arthas= null
trigger gg_trg_Das_Boot_Malganis_Leaving_City= null
trigger gg_trg_Malganis_Reacquires_Nearest_Building= null
trigger gg_trg_Teleport_Malganis= null
trigger gg_trg_Malganis_Acquires_Nearest_Building= null
trigger gg_trg_Malganis_Continuously_Attacks_Buildings= null
trigger gg_trg_Malganis_Booting_Player= null
trigger gg_trg_Malganis_Booting_Zombies= null
trigger gg_trg_May_Send_Commands= null
trigger gg_trg_VillagerSummonedRemoveConversionMan= null
trigger gg_trg_Convert_Villager= null
trigger gg_trg_Malganis_Gains_Convert= null
trigger gg_trg_Start_AI= null
trigger gg_trg_Starting_Cash= null
trigger gg_trg_Give_Them_Money= null
trigger gg_trg_Give_Them_Lumber= null
trigger gg_trg_Death_Squad_Deaths= null
trigger gg_trg_Deny_100_Villagers_Victory= null
trigger gg_trg_Convert_100_Villagers_Failure= null
trigger gg_trg_Die_Fool= null
trigger gg_trg_Victory_Cinematic_Skip= null
trigger gg_trg_Victory_Cinematic= null
trigger gg_trg_All_Buildings_Destroyed= null
trigger gg_trg_VICTORY= null
trigger gg_trg_DEFEAT= null
unit gg_unit_uaod_0019= null
unit gg_unit_Hjai_0006= null
unit gg_unit_nC00_0094= null
unit gg_unit_nC01_0089= null
unit gg_unit_nC04_0031= null
unit gg_unit_nC00_0125= null
unit gg_unit_Huth_0007= null
unit gg_unit_hkni_0046= null
unit gg_unit_hkni_0047= null
unit gg_unit_hkni_0048= null
unit gg_unit_hkni_0049= null
unit gg_unit_Umal_0000= null
unit gg_unit_ncb1_0064= null
string array p_original_names
string array io_lines
constant integer NUM_FILE_LINES= 10
string last_filename= ""
constant integer MISSION_ID= 106
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
trigger t_irregulars_on_cast
sound human_no_gold_sound


//JASSHelper struct globals:

endglobals


//===========================================================================
// 
// Human06
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Tue Nov 11 22:17:02 2025
//   Map Author: Blizzard Entertainment
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    local integer i= 0
    set udg_Buildings1=CreateGroup()
    set udg_Buildings2=CreateGroup()
    set udg_Buildings3=CreateGroup()
    set udg_Buildings4=CreateGroup()
    set udg_Buildings5=CreateGroup()
    set udg_Buildings6=CreateGroup()
    set udg_MalganisDeathSquad=CreateGroup()
    set udg_RegionLength=0
    set udg_RegionBucket=1
    set i=0
    loop
        exitwhen ( i > 0 )
        set udg_TargetArray[i]=0
        set i=i + 1
    endloop

    set udg_TargetArrayLength=0
    set i=0
    loop
        exitwhen ( i > 0 )
        set udg_BuildingsToAttackArray[i]=CreateGroup()
        set i=i + 1
    endloop

    set udg_DeathsOfDeathSquad=0.00
    set udg_MalganisConversions=0
    set udg_ArthasDenials=0
    set udg_UthersGroup=CreateGroup()
    set udg_IntroCancel=false
    set udg_ThePlayer=Player(1)
    set udg_WayGatesGroup=CreateGroup()
    set udg_RANDOMINTEGER=0
    set udg_MalganisTimer=CreateTimer()
    set udg_VictoryCinSkip=false
    set udg_WaygateCin1Playing=false
    set udg_MalganisFirstTeleCin=false
    set udg_MalganisGloatCin=false
    set udg_WaygateCin2Playing=false
    set udg_WaygateCin3Playing=false
    set udg_MalganisFirstTeleCinSkip=false
    set udg_MalganisTargetHouseX=0
    set udg_MalganisTargetHouseY=0
    set udg_MalganisCaptainX=0
    set udg_MalganisCaptainY=0
    set udg_MalganisAttackTimer=CreateTimer()
    set udg_BootingPlayer=false
    set udg_VillagerToZombieGROUP=CreateGroup()
    set udg_WaterfallSwitch=false
    set udg_Teleporting=false
    set udg_NextSquad=1
    set udg_EndCinematicPlaying=false
    set udg_BuildingsGone=false
    set udg_SelectedUnits=CreateGroup()
    set udg_RevivalAltar=null
    set udg_HideUnits=CreateGroup()
    set udg_TeleportFast=false
    set udg_GameOver=false
    set udg_MaySendCommands=true
    set udg_TimerMaySendCommands=CreateTimer()
endfunction

//***************************************************************************
//*
//*  Unit Item Tables
//*
//***************************************************************************

function Unit000073_DropItems takes nothing returns nothing
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
        call RandomDistAddItem('tst2', 100)
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

function Unit000142_DropItems takes nothing returns nothing
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
        call RandomDistAddItem('stwp', 100)
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

function Unit000167_DropItems takes nothing returns nothing
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
        call RandomDistAddItem('evtl', 100)
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
    set gg_snd_H06Arthas01=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas01.mp3", false, false, false, 12700, 12700, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas01, "H06Arthas01")
    call SetSoundDuration(gg_snd_H06Arthas01, 2011)
    set gg_snd_H06Arthas03=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas03.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas03, "H06Arthas03")
    call SetSoundDuration(gg_snd_H06Arthas03, 5485)
    set gg_snd_H06Arthas04=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas04.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas04, "H06Arthas04")
    call SetSoundDuration(gg_snd_H06Arthas04, 9430)
    set gg_snd_H06Arthas06=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas06.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas06, "H06Arthas06")
    call SetSoundDuration(gg_snd_H06Arthas06, 2115)
    set gg_snd_H06Arthas08=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas08.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas08, "H06Arthas08")
    call SetSoundDuration(gg_snd_H06Arthas08, 4884)
    set gg_snd_H06Arthas10=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas10.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas10, "H06Arthas10")
    call SetSoundDuration(gg_snd_H06Arthas10, 3004)
    set gg_snd_H06Arthas12=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas12.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas12, "H06Arthas12")
    call SetSoundDuration(gg_snd_H06Arthas12, 11937)
    set gg_snd_H06Arthas14=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas14.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas14, "H06Arthas14")
    call SetSoundDuration(gg_snd_H06Arthas14, 9456)
    set gg_snd_H06Arthas16=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas16.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas16, "H06Arthas16")
    call SetSoundDuration(gg_snd_H06Arthas16, 600)
    set gg_snd_H06Arthas30=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas30.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas30, "H06Arthas30")
    call SetSoundDuration(gg_snd_H06Arthas30, 4257)
    set gg_snd_H06Arthas33=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas33.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas33, "H06Arthas33")
    call SetSoundDuration(gg_snd_H06Arthas33, 6635)
    set gg_snd_H06Arthas43=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas43.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas43, "H06Arthas43")
    call SetSoundDuration(gg_snd_H06Arthas43, 6478)
    set gg_snd_H06Arthas46=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Arthas46.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Arthas46, "H06Arthas46")
    call SetSoundDuration(gg_snd_H06Arthas46, 4989)
    set gg_snd_H06Jaina13=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Jaina13.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Jaina13, "H06Jaina13")
    call SetSoundDuration(gg_snd_H06Jaina13, 1906)
    set gg_snd_H06Jaina17=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Jaina17.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Jaina17, "H06Jaina17")
    call SetSoundDuration(gg_snd_H06Jaina17, 3840)
    set gg_snd_H06MalGanis31=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06MalGanis31.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06MalGanis31, "H06MalGanis31")
    call SetSoundDuration(gg_snd_H06MalGanis31, 6713)
    set gg_snd_H06MalGanis32=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06MalGanis32.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06MalGanis32, "H06MalGanis32")
    call SetSoundDuration(gg_snd_H06MalGanis32, 15151)
    set gg_snd_H06MalGanis41=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06MalGanis41.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06MalGanis41, "H06MalGanis41")
    call SetSoundDuration(gg_snd_H06MalGanis41, 2481)
    set gg_snd_H06MalGanis42=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06MalGanis42.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06MalGanis42, "H06MalGanis42")
    call SetSoundDuration(gg_snd_H06MalGanis42, 13400)
    set gg_snd_H06MalGanis44=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06MalGanis44.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06MalGanis44, "H06MalGanis44")
    call SetSoundDuration(gg_snd_H06MalGanis44, 9926)
    set gg_snd_H06MalGanis45=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06MalGanis45.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06MalGanis45, "H06MalGanis45")
    call SetSoundDuration(gg_snd_H06MalGanis45, 15151)
    set gg_snd_H06Uther02=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Uther02.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Uther02, "H06Uther02")
    call SetSoundDuration(gg_snd_H06Uther02, 6478)
    set gg_snd_H06Uther05=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Uther05.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Uther05, "H06Uther05")
    call SetSoundDuration(gg_snd_H06Uther05, 705)
    set gg_snd_H06Uther07=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Uther07.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Uther07, "H06Uther07")
    call SetSoundDuration(gg_snd_H06Uther07, 3892)
    set gg_snd_H06Uther09=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Uther09.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Uther09, "H06Uther09")
    call SetSoundDuration(gg_snd_H06Uther09, 5694)
    set gg_snd_H06Uther11=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Uther11.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Uther11, "H06Uther11")
    call SetSoundDuration(gg_snd_H06Uther11, 4075)
    set gg_snd_H06Uther15=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06Uther15.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06Uther15, "H06Uther15")
    call SetSoundDuration(gg_snd_H06Uther15, 3604)
    set gg_snd_H06VillagerF24=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06VillagerF24.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06VillagerF24, "H06VillagerF24")
    call SetSoundDuration(gg_snd_H06VillagerF24, 2455)
    set gg_snd_H06VillagerF57=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06VillagerF57.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06VillagerF57, "H06VillagerF57")
    call SetSoundDuration(gg_snd_H06VillagerF57, 1802)
    set gg_snd_H06VillagerF58=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06VillagerF58.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06VillagerF58, "H06VillagerF58")
    call SetSoundDuration(gg_snd_H06VillagerF58, 2089)
    set gg_snd_H06VillagerF59=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06VillagerF59.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06VillagerF59, "H06VillagerF59")
    call SetSoundDuration(gg_snd_H06VillagerF59, 2795)
    set gg_snd_H06VillagerF61=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06VillagerF61.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06VillagerF61, "H06VillagerF61")
    call SetSoundDuration(gg_snd_H06VillagerF61, 4858)
    set gg_snd_H06VillagerM23=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06VillagerM23.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06VillagerM23, "H06VillagerM23")
    call SetSoundDuration(gg_snd_H06VillagerM23, 3657)
    set gg_snd_H06VillagerM25=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06VillagerM25.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06VillagerM25, "H06VillagerM25")
    call SetSoundDuration(gg_snd_H06VillagerM25, 2220)
    set gg_snd_H06VillagerM26=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06VillagerM26.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06VillagerM26, "H06VillagerM26")
    call SetSoundDuration(gg_snd_H06VillagerM26, 2899)
    set gg_snd_H06VillagerM27=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06VillagerM27.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06VillagerM27, "H06VillagerM27")
    call SetSoundDuration(gg_snd_H06VillagerM27, 1384)
    set gg_snd_H06VillagerM28=CreateSound("Sound\\Dialogue\\HumanCampaign\\Human06\\H06VillagerM28.mp3", false, false, false, 12700, 12700, "")
    call SetSoundParamsFromLabel(gg_snd_H06VillagerM28, "H06VillagerM28")
    call SetSoundDuration(gg_snd_H06VillagerM28, 1750)
    set gg_snd_HumanDefeat="Sound\\Music\\mp3Music\\HumanDefeat.mp3"
    set gg_snd_DoorSlam1=CreateSound("Sound\\Ambient\\DoodadEffects\\DoorSlam1.wav", false, false, false, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_DoorSlam1, "DoorSlamSound")
    call SetSoundDuration(gg_snd_DoorSlam1, 485)
    set gg_snd_DoorSlam101=CreateSound("Sound\\Ambient\\DoodadEffects\\DoorSlam1.wav", false, false, false, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_DoorSlam101, "DoorSlamSound")
    call SetSoundDuration(gg_snd_DoorSlam101, 485)
    call SetSoundPitch(gg_snd_DoorSlam101, 1.1)
    set gg_snd_HorseLoop3=CreateSound("Units\\Human\\Knight\\HorseLoop3.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_HorseLoop3, "HumanKnightMovement")
    call SetSoundDuration(gg_snd_HorseLoop3, 5317)
    set gg_snd_HorseLoop2=CreateSound("Units\\Human\\Knight\\HorseLoop2.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_HorseLoop2, "HumanKnightMovement")
    call SetSoundDuration(gg_snd_HorseLoop2, 3227)
    set gg_snd_KnightNoRiderWhat3=CreateSound("Units\\Human\\KnightNoRider\\KnightNoRiderWhat3.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_KnightNoRiderWhat3, "KnightNoRiderWhat")
    call SetSoundDuration(gg_snd_KnightNoRiderWhat3, 1857)
    set gg_snd_KnightNoRiderYesAttack1=CreateSound("Units\\Human\\KnightNoRider\\KnightNoRiderYesAttack1.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_KnightNoRiderYesAttack1, "KnightNoRiderYesAttack")
    call SetSoundDuration(gg_snd_KnightNoRiderYesAttack1, 1799)
    set gg_snd_KnightNoRiderWhat2=CreateSound("Units\\Human\\KnightNoRider\\KnightNoRiderWhat2.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_KnightNoRiderWhat2, "KnightNoRiderWhat")
    call SetSoundDuration(gg_snd_KnightNoRiderWhat2, 1973)
    set gg_snd_KnightNoRiderYesAttack2=CreateSound("Units\\Human\\KnightNoRider\\KnightNoRiderYesAttack2.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_KnightNoRiderYesAttack2, "KnightNoRiderYesAttack")
    call SetSoundDuration(gg_snd_KnightNoRiderYesAttack2, 2879)
    set gg_snd_CityScapeCathedralLoop1=CreateSound("Sound\\Ambient\\DoodadEffects\\CityScapeCathedralLoop1.wav", false, true, true, 10, 10, "DoodadsEAX")
    call SetSoundParamsFromLabel(gg_snd_CityScapeCathedralLoop1, "CathedralLoop")
    call SetSoundDuration(gg_snd_CityScapeCathedralLoop1, 4132)
    set gg_snd_CityBuildingDeath1=CreateSound("Sound\\Buildings\\Death\\CityBuildingDeath1.wav", false, false, false, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_CityBuildingDeath1, "DeathCityBuilding")
    call SetSoundDuration(gg_snd_CityBuildingDeath1, 3504)
    call SetSoundVolume(gg_snd_CityBuildingDeath1, 60)
    set gg_snd_DarkSummoningTarget1=CreateSound("Abilities\\Spells\\Undead\\DarkSummoning\\DarkSummoningTarget1.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(gg_snd_DarkSummoningTarget1, "DarkSummoningTarget")
    call SetSoundDuration(gg_snd_DarkSummoningTarget1, 3320)
    set gg_snd_MassTeleportTarget=CreateSound("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(gg_snd_MassTeleportTarget, "MassTeleport")
    call SetSoundDuration(gg_snd_MassTeleportTarget, 4899)
    set gg_snd_WaterStreamLoop1=CreateSound("Sound\\Ambient\\DoodadEffects\\WaterStreamLoop1.wav", true, true, true, 10, 10, "DoodadsEAX")
    call SetSoundParamsFromLabel(gg_snd_WaterStreamLoop1, "StreamLoop")
    call SetSoundDuration(gg_snd_WaterStreamLoop1, 2008)
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_nC04_0031=CreateUnit(p, 'nC04', 6883.5, - 988.5, 327.752)
endfunction

//===========================================================================
function CreateBuildingsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'hlum', 11712.0, 4864.0, 270.000)
    set u=CreateUnit(p, 'htow', 11328.0, 5632.0, 270.000)
    set u=CreateUnit(p, 'hbar', 11200.0, 6464.0, 270.000)
    set u=CreateUnit(p, 'halt', 11840.0, 6784.0, 270.000)
    set u=CreateUnit(p, 'hhou', 10496.0, 5376.0, 270.000)
    set u=CreateUnit(p, 'hgtw', 11392.0, 4736.0, 270.000)
    set u=CreateUnit(p, 'hgtw', 11008.0, 6720.0, 270.000)
    set u=CreateUnit(p, 'hhou', 10432.0, 5184.0, 270.000)
    set u=CreateUnit(p, 'hhou', 10304.0, 5376.0, 270.000)
    set u=CreateUnit(p, 'hhou', 10624.0, 5184.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_Hjai_0006=CreateUnit(p, 'Hjai', 11269.5, 6069.4, 200.283)
    set u=CreateUnit(p, 'hpea', 11597.6, 5131.9, 30.505)
    set u=CreateUnit(p, 'hpea', 11730.7, 5194.6, 210.254)
    set u=CreateUnit(p, 'hpea', 11465.9, 5891.5, 175.214)
    set u=CreateUnit(p, 'hkni', 11066.4, 6273.1, 232.439)
    set u=CreateUnit(p, 'hkni', 11229.0, 6174.0, 240.222)
    set u=CreateUnit(p, 'hfoo', 11102.9, 5478.7, 121.911)
    set u=CreateUnit(p, 'hfoo', 11104.2, 5632.1, 141.360)
    set u=CreateUnit(p, 'hpea', 11413.9, 6125.8, 205.891)
    set u=CreateUnit(p, 'hpea', 11498.4, 6206.1, 200.213)
    set u=CreateUnit(p, 'hpea', 11380.8, 5977.6, 179.608)
    set u=CreateUnit(p, 'hpea', 11497.5, 6041.4, 192.511)
endfunction

//===========================================================================
function CreateBuildingsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'unp2', - 2176.0, - 8064.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 1376.0, - 8416.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 1824.0, - 9184.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 1696.0, - 9376.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 2400.0, - 8864.0, 270.000)
    set u=CreateUnit(p, 'usep', - 2112.0, - 8704.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 3360.0, - 8352.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 4768.0, - 6816.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 3936.0, - 6496.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 1504.0, - 7520.0, 270.000)
    set u=CreateBlightedGoldmine(p, - 2944.0, - 8128.0, 270.000)
    call SetResourceAmount(u, 12500)
    set u=CreateUnit(p, 'uzg1', - 1888.0, - 7392.0, 270.000)
    set u=CreateUnit(p, 'uslh', - 1536.0, - 7808.0, 270.000)
    set u=CreateUnit(p, 'uaod', - 1056.0, - 9312.0, 270.000)
    set u=CreateUnit(p, 'usep', - 1536.0, - 9088.0, 270.000)
    set u=CreateUnit(p, 'ugrv', - 3008.0, - 9024.0, 270.000)
    set u=CreateUnit(p, 'utod', - 2816.0, - 8576.0, 270.000)
    set u=CreateUnit(p, 'uslh', - 704.0, - 9088.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 1184.0, - 7712.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 2272.0, - 7392.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 2656.0, - 7584.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 3104.0, - 7648.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 4128.0, - 7968.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 3552.0, - 7712.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 96.0, - 9248.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 928.0, - 8032.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 800.0, - 8800.0, 270.000)
    set u=CreateUnit(p, 'uzg1', - 352.0, - 8864.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'uaco', - 2717.3, - 7923.0, 308.596)
    set u=CreateUnit(p, 'uaco', - 2732.1, - 8042.1, 54.600)
    set u=CreateUnit(p, 'uaco', - 2623.4, - 7922.4, 219.439)
    set u=CreateUnit(p, 'uaco', - 2632.8, - 8054.6, 119.177)
    set u=CreateUnit(p, 'uaco', - 2675.1, - 7992.0, 103.047)
    set u=CreateUnit(p, 'ugho', - 1084.2, - 7998.7, 348.454)
    set u=CreateUnit(p, 'ugho', - 1644.9, - 8806.4, 354.207)
    set u=CreateUnit(p, 'ugho', - 1088.9, - 8080.1, 358.747)
    set u=CreateUnit(p, 'ugho', 145.7, - 9164.9, 54.868)
    set u=CreateUnit(p, 'ugho', 236.7, - 9282.0, 71.282)
    set u=CreateUnit(p, 'ugho', 83.5, - 9057.7, 64.614)
    set u=CreateUnit(p, 'ugho', - 323.7, - 8692.9, 45.824)
    set u=CreateUnit(p, 'ugho', - 781.4, - 8035.8, 42.705)
    set u=CreateUnit(p, 'unec', - 1447.0, - 7994.1, 315.251)
    set u=CreateUnit(p, 'unec', - 242.6, - 9375.4, 176.072)
    set u=CreateUnit(p, 'uabo', - 1343.0, - 8760.5, 22.927)
    set u=CreateUnit(p, 'uabo', - 945.0, - 8760.6, 31.960)
    set u=CreateUnit(p, 'uabo', - 1691.7, - 8583.4, 27.121)
    set u=CreateUnit(p, 'umtw', - 1236.0, - 7938.6, 257.440)
    set u=CreateUnit(p, 'umtw', - 479.6, - 9227.8, 45.940)
endfunction

//===========================================================================
function CreateUnitsForPlayer5 takes nothing returns nothing
    local player p= Player(5)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'nowb', - 2824.7, 904.7, 238.780)
    set u=CreateUnit(p, 'nslm', - 3565.8, 235.9, 2.131)
    set u=CreateUnit(p, 'nslm', - 3128.8, 212.1, 205.659)
    set u=CreateUnit(p, 'nslm', - 3407.7, 177.0, 140.179)
    set u=CreateUnit(p, 'nowb', - 2985.6, 968.8, 324.616)
    set u=CreateUnit(p, 'nltl', - 2675.4, 197.9, 141.361)
    set u=CreateUnit(p, 'nslf', - 3243.2, 212.1, 358.450)
    call IssueImmediateOrder(u, "slowoff")
endfunction

//===========================================================================
function CreateBuildingsForPlayer6 takes nothing returns nothing
    local player p= Player(6)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_uaod_0019=CreateUnit(p, 'uaod', - 4256.0, - 6560.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer6 takes nothing returns nothing
    local player p= Player(6)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_Umal_0000=CreateUnit(p, 'Umal', - 4225.8, - 7144.4, 272.413)
    set u=CreateUnit(p, 'ugho', - 4065.3, - 7447.5, 230.244)
    set u=CreateUnit(p, 'ugho', - 3955.8, - 7490.1, 322.205)
endfunction

//===========================================================================
function CreateUnitsForPlayer8 takes nothing returns nothing
    local player p= Player(8)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_nC01_0089=CreateUnit(p, 'nC01', 7152.7, - 927.5, 301.160)
    set gg_unit_nC00_0094=CreateUnit(p, 'nC00', 6678.8, - 1142.2, 339.588)
    set gg_unit_nC00_0125=CreateUnit(p, 'nC00', 7105.4, - 705.2, 289.065)
endfunction

//===========================================================================
function CreateUnitsForPlayer9 takes nothing returns nothing
    local player p= Player(9)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_Huth_0007=CreateUnit(p, 'Huth', 9848.0, 7499.8, 343.850)
    call SetHeroLevel(gg_unit_Huth_0007, 10, false)
    call SelectHeroSkill(gg_unit_Huth_0007, 'AHhb')
    call SelectHeroSkill(gg_unit_Huth_0007, 'AHhb')
    call SelectHeroSkill(gg_unit_Huth_0007, 'AHhb')
    call SelectHeroSkill(gg_unit_Huth_0007, 'AHds')
    call SelectHeroSkill(gg_unit_Huth_0007, 'AHds')
    call SelectHeroSkill(gg_unit_Huth_0007, 'AHds')
    call SelectHeroSkill(gg_unit_Huth_0007, 'AHre')
    set gg_unit_hkni_0046=CreateUnit(p, 'hkni', 9888.7, 7752.8, 265.643)
    set gg_unit_hkni_0047=CreateUnit(p, 'hkni', 9696.1, 7692.9, 296.293)
    set gg_unit_hkni_0048=CreateUnit(p, 'hkni', 9574.0, 7694.9, 305.900)
    set gg_unit_hkni_0049=CreateUnit(p, 'hkni', 10007.5, 7806.2, 257.850)
endfunction

//===========================================================================
function CreateBuildingsForPlayer11 takes nothing returns nothing
    local player p= Player(11)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ncb8', 3040.0, - 7008.0, 270.000)
    set u=CreateUnit(p, 'ncb1', - 1120.0, 6432.0, 270.000)
    set u=CreateUnit(p, 'ncbb', 6304.0, - 7904.0, 270.000)
    set u=CreateUnit(p, 'ncb7', 5920.0, 32.0, 270.000)
    set gg_unit_ncb1_0064=CreateUnit(p, 'ncb1', 3616.0, - 864.0, 270.000)
    set u=CreateUnit(p, 'ncba', 6304.0, - 6880.0, 270.000)
    set u=CreateUnit(p, 'ncb9', 5920.0, - 6880.0, 270.000)
    set u=CreateUnit(p, 'ncba', 7136.0, - 6880.0, 270.000)
    set u=CreateUnit(p, 'ncb7', - 4128.0, 5920.0, 270.000)
    set u=CreateUnit(p, 'ncb2', 1440.0, - 992.0, 270.000)
    set u=CreateUnit(p, 'ncb8', 5472.0, - 416.0, 270.000)
    set u=CreateUnit(p, 'ncb7', - 4832.0, 5280.0, 270.000)
    set u=CreateUnit(p, 'ncb9', 6688.0, - 6880.0, 270.000)
    set u=CreateUnit(p, 'ncba', 5920.0, - 7904.0, 270.000)
    set u=CreateUnit(p, 'ncb0', 3936.0, - 1120.0, 270.000)
    set u=CreateUnit(p, 'ncb2', 3360.0, - 4320.0, 270.000)
    set u=CreateUnit(p, 'ncb9', 7136.0, - 7904.0, 270.000)
    set u=CreateUnit(p, 'ncb7', 2336.0, - 7008.0, 270.000)
    set u=CreateUnit(p, 'ncb0', - 1312.0, - 2656.0, 270.000)
    set u=CreateUnit(p, 'ncb7', - 2400.0, - 2656.0, 270.000)
    set u=CreateUnit(p, 'ncb9', 5664.0, - 1440.0, 270.000)
    set u=CreateUnit(p, 'ncba', 6688.0, - 7904.0, 270.000)
    set u=CreateUnit(p, 'ncb5', 11232.0, - 4768.0, 270.000)
    set u=CreateUnit(p, 'ncbb', 5344.0, - 1440.0, 270.000)
    set u=CreateUnit(p, 'ncba', 5024.0, - 1440.0, 270.000)
    set u=CreateUnit(p, 'ncb7', 3040.0, - 1632.0, 270.000)
    set u=CreateUnit(p, 'ncb3', 11808.0, - 4256.0, 270.000)
    set u=CreateUnit(p, 'ncb0', 11616.0, - 7584.0, 270.000)
    set u=CreateUnit(p, 'ncb4', 11808.0, - 4768.0, 270.000)
    set u=CreateUnit(p, 'ncb4', 11232.0, - 4256.0, 270.000)
    set u=CreateUnit(p, 'ncb1', 11744.0, - 5792.0, 270.000)
    set u=CreateUnit(p, 'ncb8', - 2528.0, - 6048.0, 270.000)
    set u=CreateUnit(p, 'ncb8', - 4512.0, 5600.0, 270.000)
    set u=CreateUnit(p, 'ncb6', - 5216.0, 6496.0, 270.000)
    set u=CreateUnit(p, 'ncba', - 3360.0, 6432.0, 270.000)
    set u=CreateUnit(p, 'ncb6', - 2144.0, - 4768.0, 270.000)
    set u=CreateUnit(p, 'ncb0', - 1888.0, 6048.0, 270.000)
    set u=CreateUnit(p, 'ncbb', - 1312.0, - 3744.0, 270.000)
    set u=CreateUnit(p, 'ncba', - 1760.0, - 3808.0, 270.000)
    set u=CreateUnit(p, 'ncb9', - 2272.0, - 3744.0, 270.000)
    set u=CreateUnit(p, 'ncb3', - 1760.0, - 6176.0, 270.000)
    set u=CreateUnit(p, 'ncb5', - 1056.0, - 6176.0, 270.000)
    set u=CreateUnit(p, 'ncb4', 416.0, - 6176.0, 270.000)
    set u=CreateUnit(p, 'ncb1', 288.0, - 3680.0, 270.000)
    set u=CreateUnit(p, 'ncb1', 4128.0, - 7904.0, 270.000)
    set u=CreateUnit(p, 'ncb9', 2400.0, - 8160.0, 270.000)
    set u=CreateUnit(p, 'ncbb', 2912.0, - 8160.0, 270.000)
    set u=CreateUnit(p, 'ncb0', 4128.0, - 7008.0, 270.000)
    set u=CreateUnit(p, 'ncb7', 2720.0, - 5280.0, 270.000)
    set u=CreateUnit(p, 'ncb8', 2592.0, - 4320.0, 270.000)
    set u=CreateUnit(p, 'ncba', 3360.0, - 8160.0, 270.000)
    set u=CreateUnit(p, 'ncb7', - 3040.0, 4704.0, 270.000)
    set u=CreateUnit(p, 'ncb1', - 2464.0, 5472.0, 270.000)
    set u=CreateUnit(p, 'ncb8', - 1376.0, 4896.0, 270.000)
endfunction

//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'nenf', 3022.4, 7594.1, 245.554)
    set u=CreateUnit(p, 'nenf', 2793.8, 7301.4, 47.051)
    set u=CreateUnit(p, 'nenf', 2866.3, 7492.5, 319.570)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000142_DropItems)
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ngol', 12096.0, 6016.0, 270.000)
    call SetResourceAmount(u, 50000)
    set u=CreateUnit(p, 'nfoh', 11264.0, - 1472.0, 270.000)
    set u=CreateUnit(p, 'ngme', - 2112.0, 960.0, 270.000)
    set u=CreateUnit(p, 'nten', 3168.0, 7840.0, 270.000)
    set u=CreateUnit(p, 'nten', 3296.0, 7648.0, 270.000)
    set u=CreateUnit(p, 'nten', 2912.0, 7776.0, 270.000)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000073_DropItems)
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'nrat', - 2665.6, 1038.8, 210.109)
    set u=CreateUnit(p, 'nrat', - 2876.0, 947.7, 216.141)
    set u=CreateUnit(p, 'nrat', - 2899.1, 1025.2, 75.445)
    set u=CreateUnit(p, 'nrat', - 2523.2, 899.1, 291.059)
    set u=CreateUnit(p, 'nrat', - 3019.3, 842.3, 195.464)
    set u=CreateUnit(p, 'nC06', - 3044.3, 1027.2, 18.330)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000167_DropItems)
    set u=CreateUnit(p, 'nshe', 11524.5, 6814.6, 271.960)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer1()
    call CreateBuildingsForPlayer3()
    call CreateBuildingsForPlayer6()
    call CreateBuildingsForPlayer11()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
    call CreateUnitsForPlayer1()
    call CreateUnitsForPlayer3()
    call CreateUnitsForPlayer5()
    call CreateUnitsForPlayer6()
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

    set gg_rct_MalganisSpawnDS=Rect(- 4608.0, - 7744.0, - 3712.0, - 6688.0)
    set gg_rct_Arthas_Town=Rect(9632.0, 4768.0, 12992.0, 7872.0)
    set gg_rct_Malganis_Sneak5=Rect(3264.0, - 7776.0, 3872.0, - 7200.0)
    set gg_rct_Malganis_Sneak4=Rect(- 3712.0, 5696.0, - 3264.0, 6144.0)
    set gg_rct_Malganis_Sneak3=Rect(- 1120.0, - 4576.0, - 576.0, - 4032.0)
    set gg_rct_Malganis_Sneak2=Rect(9632.0, - 8000.0, 10208.0, - 7424.0)
    set gg_rct_Malganis_Sneak1=Rect(2784.0, - 288.0, 3296.0, 320.0)
    set gg_rct_Malganis_Sneak4_Buildings=Rect(- 5536.0, 4160.0, - 736.0, 6880.0)
    set gg_rct_Malganis_Sneak1_Buildings=Rect(896.0, - 2048.0, 7072.0, 768.0)
    set gg_rct_Malganis_Sneak2_Buildings=Rect(5696.0, - 8640.0, 12320.0, - 3808.0)
    set gg_rct_Malganis_Sneak3_Buildings=Rect(- 3168.0, - 6560.0, 896.0, - 1856.0)
    set gg_rct_Malganis_Sneak5_Buildings=Rect(2176.0, - 8448.0, 4800.0, - 3712.0)
    set gg_rct_Cin1ArthasStop1=Rect(10752.0, 5504.0, 10880.0, 5664.0)
    set gg_rct_Cin1JainaStop1=Rect(10560.0, 6112.0, 10720.0, 6272.0)
    set gg_rct_Cin1KnightsBLeave=Rect(9664.0, 8288.0, 9888.0, 8640.0)
    set gg_rct_Cin1KnightsALeave=Rect(10144.0, 8288.0, 10368.0, 8640.0)
    set gg_rct_Cin1UtherLeave=Rect(9760.0, 8288.0, 9888.0, 8416.0)
    set gg_rct_Cin1JainaLeave=Rect(10144.0, 8288.0, 10272.0, 8416.0)
    set gg_rct_Cin1ArthasStop2=Rect(9792.0, 6080.0, 9920.0, 6208.0)
    set gg_rct_NULL=Rect(- 4384.0, - 7296.0, - 4000.0, - 7008.0)
    set gg_rct_Malganis_Revive=Rect(- 4352.0, - 6944.0, - 4128.0, - 6752.0)
    set gg_rct_Villagers_Go_Here=Rect(5472.0, - 608.0, 5664.0, - 448.0)
    set gg_rct_The_Waygate=Rect(8160.0, - 576.0, 9792.0, 640.0)
    set gg_rct_Waterfall_Reveal=Rect(- 1472.0, 1536.0, 960.0, 3360.0)
    set gg_rct_The_Waygate_Revealed=Rect(8768.0, - 320.0, 9280.0, 320.0)
    set gg_rct_The_Waygate_Central1=Rect(1536.0, 1312.0, 2272.0, 2464.0)
    set gg_rct_The_Waygate_Central2=Rect(- 2560.0, 1248.0, - 1856.0, 2208.0)
    set gg_rct_Ending_Waves=Rect(9664.0, 7360.0, 10720.0, 7936.0)
    set gg_rct_Ending_Waves2=Rect(11968.0, 352.0, 12576.0, 1184.0)
    set gg_rct_Ending_Waves3=Rect(5056.0, 7424.0, 5728.0, 8192.0)
    set gg_rct_End_Victory_Malganis=Rect(- 1888.0, - 2560.0, - 1760.0, - 2464.0)
    set gg_rct_End_Victory_Arthas=Rect(- 2112.0, - 3264.0, - 1952.0, - 3136.0)
    set gg_rct_End_Victory_Malganis2=Rect(- 1984.0, - 1568.0, - 1728.0, - 1376.0)
    set gg_rct_Cin1KnightsAGoHere1=Rect(10272.0, 6240.0, 10560.0, 6432.0)
    set gg_rct_Cin1KnightsBGoHere1=Rect(10720.0, 6240.0, 11008.0, 6432.0)
    set gg_rct_Cin1UtherGoHere1=Rect(10560.0, 5888.0, 10688.0, 6016.0)
    set gg_rct_Lightning=Rect(8288.0, 6208.0, 8480.0, 6496.0)
    set gg_rct_VillagersESCmove=Rect(8288.0, 4416.0, 8640.0, 5024.0)
    set gg_rct_Arthas_Starts_Here=Rect(10912.0, 3488.0, 11040.0, 3648.0)
    set gg_rct_Reveal1=Rect(- 6144.0, - 5856.0, 14304.0, 10464.0)
    set gg_rct_Reveal2=Rect(- 3232.0, - 6656.0, 1184.0, - 5824.0)
    set gg_rct_Reveal3=Rect(704.0, - 9888.0, 14304.0, - 5856.0)
    set gg_rct_Cin1KnightsAStart=Rect(9376.0, 7584.0, 9792.0, 7776.0)
    set gg_rct_Cin1KnightsBStart=Rect(9824.0, 7648.0, 10272.0, 8096.0)
    set gg_rct_DasBoot1=Rect(- 6080.0, - 9920.0, 768.0, 10400.0)
    set gg_rct_DasBoot2=Rect(736.0, - 9952.0, 7808.0, 4320.0)
    set gg_rct_DasBoot3=Rect(7744.0, - 9920.0, 14304.0, 1184.0)
    set gg_rct_DasMalganisSTOP=Rect(8064.0, 1184.0, 14304.0, 1824.0)
    set gg_rct_Arthas_Cin_Skip_Move=Rect(10976.0, 5856.0, 11136.0, 6016.0)
    set gg_rct_HardGhoul1=Rect(- 4256.0, - 7520.0, - 4160.0, - 7392.0)
    set gg_rct_HardGhoul2=Rect(- 4416.0, - 7520.0, - 4320.0, - 7392.0)
    set gg_rct_Way_Gate_Hint_1=Rect(3744.0, - 4544.0, 4320.0, - 3904.0)
    set gg_rct_Way_Gate_Hint_2=Rect(- 2720.0, - 5696.0, - 2144.0, - 5056.0)
    set gg_rct_Way_Gate_Hint_3=Rect(8192.0, - 6720.0, 8768.0, - 6080.0)
    set gg_rct_Way_Gate_Hint_4=Rect(- 4448.0, 3744.0, - 3872.0, 4384.0)
    set gg_rct_Villagers_Go_Here_2=Rect(5952.0, - 192.0, 6144.0, - 32.0)
    set gg_rct_Forgive_Me=Rect(2432.0, 224.0, 2848.0, 704.0)
    set gg_rct_WaterfallSight=Rect(- 512.0, 2432.0, 704.0, 3552.0)
    set gg_rct_Harvest_Gold=Rect(11264.0, 5760.0, 11648.0, 6336.0)
    set gg_rct_Harvest_Lumber=Rect(11488.0, 4992.0, 11872.0, 5280.0)
    set gg_rct_MalganicFirstTPSkip_Move=Rect(3392.0, - 736.0, 3520.0, - 608.0)
    set gg_rct_StreamLoop01=Rect(- 2464.0, - 1856.0, - 1216.0, - 512.0)
    set gg_rct_StreamLoop02=Rect(- 1472.0, - 160.0, - 256.0, 864.0)
    set gg_rct_StreamLoop03=Rect(- 1952.0, 1344.0, - 768.0, 2272.0)
    set gg_rct_StreamLoop04=Rect(- 1696.0, 2528.0, - 736.0, 3456.0)
    set gg_rct_StreamLoop05=Rect(736.0, - 5184.0, 2144.0, - 3968.0)
    set gg_rct_StreamLoop06=Rect(992.0, - 8000.0, 2048.0, - 7136.0)
    set gg_rct_StreamLoop07=Rect(768.0, 1472.0, 1824.0, 2304.0)
    set gg_rct_StreamLoop08=Rect(64.0, - 128.0, 1248.0, 832.0)
endfunction

//***************************************************************************
//*
//*  Cameras
//*
//***************************************************************************

function CreateCameras takes nothing returns nothing

    set gg_cam_Arthas_and_Jaina_1=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_1, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_1, CAMERA_FIELD_ROTATION, 88.5, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_1, CAMERA_FIELD_ANGLE_OF_ATTACK, 331.5, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_1, CAMERA_FIELD_TARGET_DISTANCE, 1815.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_1, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_1, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_1, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Arthas_and_Jaina_1, 11102.5, 5164.6, 0.0)

    set gg_cam_Arthas_and_Jaina_2=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_2, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_2, CAMERA_FIELD_ROTATION, 105.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_2, CAMERA_FIELD_ANGLE_OF_ATTACK, 333.7, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_2, CAMERA_FIELD_TARGET_DISTANCE, 1239.7, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_2, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_2, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_and_Jaina_2, CAMERA_FIELD_FARZ, 4300.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Arthas_and_Jaina_2, 10739.3, 5997.6, 0.0)

    set gg_cam_Arthas_Jaina_and_Uther=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_Uther, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_Uther, CAMERA_FIELD_ROTATION, 333.4, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_Uther, CAMERA_FIELD_ANGLE_OF_ATTACK, 333.7, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_Uther, CAMERA_FIELD_TARGET_DISTANCE, 1239.7, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_Uther, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_Uther, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_Uther, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Arthas_Jaina_and_Uther, 10493.6, 5806.3, 0.0)

    set gg_cam_Villagers_Over_There=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Villagers_Over_There, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Villagers_Over_There, CAMERA_FIELD_ROTATION, 149.9, 0.0)
    call CameraSetupSetField(gg_cam_Villagers_Over_There, CAMERA_FIELD_ANGLE_OF_ATTACK, 332.7, 0.0)
    call CameraSetupSetField(gg_cam_Villagers_Over_There, CAMERA_FIELD_TARGET_DISTANCE, 1913.1, 0.0)
    call CameraSetupSetField(gg_cam_Villagers_Over_There, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Villagers_Over_There, CAMERA_FIELD_FIELD_OF_VIEW, 50.0, 0.0)
    call CameraSetupSetField(gg_cam_Villagers_Over_There, CAMERA_FIELD_FARZ, 9431.8, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Villagers_Over_There, 6450.4, - 828.4, 0.0)

    set gg_cam_Grain_of_Andorhal=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Grain_of_Andorhal, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Grain_of_Andorhal, CAMERA_FIELD_ROTATION, 147.4, 0.0)
    call CameraSetupSetField(gg_cam_Grain_of_Andorhal, CAMERA_FIELD_ANGLE_OF_ATTACK, 338.0, 0.0)
    call CameraSetupSetField(gg_cam_Grain_of_Andorhal, CAMERA_FIELD_TARGET_DISTANCE, 1306.7, 0.0)
    call CameraSetupSetField(gg_cam_Grain_of_Andorhal, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Grain_of_Andorhal, CAMERA_FIELD_FIELD_OF_VIEW, 50.0, 0.0)
    call CameraSetupSetField(gg_cam_Grain_of_Andorhal, CAMERA_FIELD_FARZ, 9431.8, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Grain_of_Andorhal, 6323.0, - 779.2, 0.0)

    set gg_cam_Arthas_Town=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Arthas_Town, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Town, CAMERA_FIELD_ROTATION, 90.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Town, CAMERA_FIELD_ANGLE_OF_ATTACK, 304.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Town, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Town, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Town, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Town, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Arthas_Town, 11555.0, 5910.1, 0.0)

    set gg_cam_What_Must_Be_Purged=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_What_Must_Be_Purged, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_What_Must_Be_Purged, CAMERA_FIELD_ROTATION, 331.5, 0.0)
    call CameraSetupSetField(gg_cam_What_Must_Be_Purged, CAMERA_FIELD_ANGLE_OF_ATTACK, 337.7, 0.0)
    call CameraSetupSetField(gg_cam_What_Must_Be_Purged, CAMERA_FIELD_TARGET_DISTANCE, 1363.6, 0.0)
    call CameraSetupSetField(gg_cam_What_Must_Be_Purged, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_What_Must_Be_Purged, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_What_Must_Be_Purged, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_What_Must_Be_Purged, 10566.3, 5755.8, 0.0)

    set gg_cam_Arthas_Expostulates=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Arthas_Expostulates, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Expostulates, CAMERA_FIELD_ROTATION, 181.1, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Expostulates, CAMERA_FIELD_ANGLE_OF_ATTACK, 355.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Expostulates, CAMERA_FIELD_TARGET_DISTANCE, 1500.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Expostulates, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Expostulates, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Expostulates, CAMERA_FIELD_FARZ, 6000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Arthas_Expostulates, 9489.1, 6098.3, 0.0)

    set gg_cam_Uther_Shocked=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Uther_Shocked, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Uther_Shocked, CAMERA_FIELD_ROTATION, 2.8, 0.0)
    call CameraSetupSetField(gg_cam_Uther_Shocked, CAMERA_FIELD_ANGLE_OF_ATTACK, 330.9, 0.0)
    call CameraSetupSetField(gg_cam_Uther_Shocked, CAMERA_FIELD_TARGET_DISTANCE, 803.8, 0.0)
    call CameraSetupSetField(gg_cam_Uther_Shocked, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Uther_Shocked, CAMERA_FIELD_FIELD_OF_VIEW, 75.0, 0.0)
    call CameraSetupSetField(gg_cam_Uther_Shocked, CAMERA_FIELD_FARZ, 3000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Uther_Shocked, 10795.0, 5923.6, 0.0)

    set gg_cam_Jaina_Leaving=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Jaina_Leaving, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Jaina_Leaving, CAMERA_FIELD_ROTATION, 31.2, 0.0)
    call CameraSetupSetField(gg_cam_Jaina_Leaving, CAMERA_FIELD_ANGLE_OF_ATTACK, 335.1, 0.0)
    call CameraSetupSetField(gg_cam_Jaina_Leaving, CAMERA_FIELD_TARGET_DISTANCE, 1294.7, 0.0)
    call CameraSetupSetField(gg_cam_Jaina_Leaving, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Jaina_Leaving, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Jaina_Leaving, CAMERA_FIELD_FARZ, 5989.5, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Jaina_Leaving, 10483.0, 6209.4, 0.0)

    set gg_cam_The_Waygate=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_The_Waygate, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_The_Waygate, CAMERA_FIELD_ROTATION, 90.0, 0.0)
    call CameraSetupSetField(gg_cam_The_Waygate, CAMERA_FIELD_ANGLE_OF_ATTACK, 325.0, 0.0)
    call CameraSetupSetField(gg_cam_The_Waygate, CAMERA_FIELD_TARGET_DISTANCE, 1400.0, 0.0)
    call CameraSetupSetField(gg_cam_The_Waygate, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_The_Waygate, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_The_Waygate, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_The_Waygate, 9083.9, 239.8, 0.0)

    set gg_cam_The_Waygates=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_The_Waygates, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_The_Waygates, CAMERA_FIELD_ROTATION, 73.7, 0.0)
    call CameraSetupSetField(gg_cam_The_Waygates, CAMERA_FIELD_ANGLE_OF_ATTACK, 321.8, 0.0)
    call CameraSetupSetField(gg_cam_The_Waygates, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0)
    call CameraSetupSetField(gg_cam_The_Waygates, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_The_Waygates, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_The_Waygates, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_The_Waygates, 16.2, 1574.1, 0.0)

    set gg_cam_End_Win_Cinematic_1=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_1, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_1, CAMERA_FIELD_ROTATION, 172.3, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_1, CAMERA_FIELD_ANGLE_OF_ATTACK, 330.6, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_1, CAMERA_FIELD_TARGET_DISTANCE, 1127.0, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_1, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_1, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_1, CAMERA_FIELD_FARZ, 4000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_End_Win_Cinematic_1, - 2048.4, - 2841.0, 0.0)

    set gg_cam_End_Win_Cinematic_2=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_2, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_2, CAMERA_FIELD_ROTATION, 118.6, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_2, CAMERA_FIELD_ANGLE_OF_ATTACK, 334.6, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_2, CAMERA_FIELD_TARGET_DISTANCE, 1500.0, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_2, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_2, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_2, CAMERA_FIELD_FARZ, 4000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_End_Win_Cinematic_2, - 1958.4, - 2054.3, 0.0)

    set gg_cam_End_Win_Cinematic_3=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_3, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_3, CAMERA_FIELD_ROTATION, 248.9, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_3, CAMERA_FIELD_ANGLE_OF_ATTACK, 331.6, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_3, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_3, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_3, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_End_Win_Cinematic_3, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_End_Win_Cinematic_3, - 1893.5, - 2080.8, 0.0)

    set gg_cam_Test1=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Test1, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Test1, CAMERA_FIELD_ROTATION, 49.1, 0.0)
    call CameraSetupSetField(gg_cam_Test1, CAMERA_FIELD_ANGLE_OF_ATTACK, 345.9, 0.0)
    call CameraSetupSetField(gg_cam_Test1, CAMERA_FIELD_TARGET_DISTANCE, 4279.7, 0.0)
    call CameraSetupSetField(gg_cam_Test1, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Test1, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Test1, CAMERA_FIELD_FARZ, 6000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Test1, 9168.8, 4742.9, 0.0)

    set gg_cam_Test2=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Test2, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Test2, CAMERA_FIELD_ROTATION, 242.4, 0.0)
    call CameraSetupSetField(gg_cam_Test2, CAMERA_FIELD_ANGLE_OF_ATTACK, 345.9, 0.0)
    call CameraSetupSetField(gg_cam_Test2, CAMERA_FIELD_TARGET_DISTANCE, 4279.7, 0.0)
    call CameraSetupSetField(gg_cam_Test2, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Test2, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Test2, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Test2, - 3269.7, - 8633.8, 0.0)

    set gg_cam_Test3=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Test3, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Test3, CAMERA_FIELD_ROTATION, 24.8, 0.0)
    call CameraSetupSetField(gg_cam_Test3, CAMERA_FIELD_ANGLE_OF_ATTACK, 347.1, 0.0)
    call CameraSetupSetField(gg_cam_Test3, CAMERA_FIELD_TARGET_DISTANCE, 2415.8, 0.0)
    call CameraSetupSetField(gg_cam_Test3, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Test3, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Test3, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Test3, 11206.0, 6197.4, 0.0)

    set gg_cam_Inbetween_Villagers=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Inbetween_Villagers, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Inbetween_Villagers, CAMERA_FIELD_ROTATION, 269.6, 0.0)
    call CameraSetupSetField(gg_cam_Inbetween_Villagers, CAMERA_FIELD_ANGLE_OF_ATTACK, 342.6, 0.0)
    call CameraSetupSetField(gg_cam_Inbetween_Villagers, CAMERA_FIELD_TARGET_DISTANCE, 1913.1, 0.0)
    call CameraSetupSetField(gg_cam_Inbetween_Villagers, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Inbetween_Villagers, CAMERA_FIELD_FIELD_OF_VIEW, 45.0, 0.0)
    call CameraSetupSetField(gg_cam_Inbetween_Villagers, CAMERA_FIELD_FARZ, 5301.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Inbetween_Villagers, 9913.0, 4803.5, 0.0)

    set gg_cam_CamEndCinMalCountershot=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_CamEndCinMalCountershot, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_CamEndCinMalCountershot, CAMERA_FIELD_ROTATION, 50.7, 0.0)
    call CameraSetupSetField(gg_cam_CamEndCinMalCountershot, CAMERA_FIELD_ANGLE_OF_ATTACK, 333.1, 0.0)
    call CameraSetupSetField(gg_cam_CamEndCinMalCountershot, CAMERA_FIELD_TARGET_DISTANCE, 1239.7, 0.0)
    call CameraSetupSetField(gg_cam_CamEndCinMalCountershot, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_CamEndCinMalCountershot, CAMERA_FIELD_FIELD_OF_VIEW, 80.0, 0.0)
    call CameraSetupSetField(gg_cam_CamEndCinMalCountershot, CAMERA_FIELD_FARZ, 3500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_CamEndCinMalCountershot, - 1691.3, - 2418.9, 0.0)

    set gg_cam_CamEnWinArthasBack=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_CamEnWinArthasBack, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_CamEnWinArthasBack, CAMERA_FIELD_ROTATION, 48.1, 0.0)
    call CameraSetupSetField(gg_cam_CamEnWinArthasBack, CAMERA_FIELD_ANGLE_OF_ATTACK, 338.1, 0.0)
    call CameraSetupSetField(gg_cam_CamEnWinArthasBack, CAMERA_FIELD_TARGET_DISTANCE, 1024.5, 0.0)
    call CameraSetupSetField(gg_cam_CamEnWinArthasBack, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_CamEnWinArthasBack, CAMERA_FIELD_FIELD_OF_VIEW, 80.0, 0.0)
    call CameraSetupSetField(gg_cam_CamEnWinArthasBack, CAMERA_FIELD_FARZ, 4000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_CamEnWinArthasBack, - 1828.8, - 2801.1, 0.0)

    set gg_cam_CamEndWinFarshot=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_CamEndWinFarshot, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_CamEndWinFarshot, CAMERA_FIELD_ROTATION, 39.7, 0.0)
    call CameraSetupSetField(gg_cam_CamEndWinFarshot, CAMERA_FIELD_ANGLE_OF_ATTACK, 323.6, 0.0)
    call CameraSetupSetField(gg_cam_CamEndWinFarshot, CAMERA_FIELD_TARGET_DISTANCE, 1815.0, 0.0)
    call CameraSetupSetField(gg_cam_CamEndWinFarshot, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_CamEndWinFarshot, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_CamEndWinFarshot, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_CamEndWinFarshot, - 1687.5, - 2666.9, 0.0)

    set gg_cam_CamCinEndWinMalRuntoward=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_CamCinEndWinMalRuntoward, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_CamCinEndWinMalRuntoward, CAMERA_FIELD_ROTATION, 313.9, 0.0)
    call CameraSetupSetField(gg_cam_CamCinEndWinMalRuntoward, CAMERA_FIELD_ANGLE_OF_ATTACK, 338.2, 0.0)
    call CameraSetupSetField(gg_cam_CamCinEndWinMalRuntoward, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0)
    call CameraSetupSetField(gg_cam_CamCinEndWinMalRuntoward, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_CamCinEndWinMalRuntoward, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_CamCinEndWinMalRuntoward, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_CamCinEndWinMalRuntoward, - 1508.2, - 2470.8, 0.0)

    set gg_cam_MalGanis_IntroCin1=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin1, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin1, CAMERA_FIELD_ROTATION, 93.2, 0.0)
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin1, CAMERA_FIELD_ANGLE_OF_ATTACK, 332.4, 0.0)
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin1, CAMERA_FIELD_TARGET_DISTANCE, 1500.0, 0.0)
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin1, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin1, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin1, CAMERA_FIELD_FARZ, 5500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_MalGanis_IntroCin1, 2965.0, 267.3, 0.0)

    set gg_cam_MalGanis_IntroCin2=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin2, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin2, CAMERA_FIELD_ROTATION, 80.2, 0.0)
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin2, CAMERA_FIELD_ANGLE_OF_ATTACK, 327.2, 0.0)
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin2, CAMERA_FIELD_TARGET_DISTANCE, 1500.0, 0.0)
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin2, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin2, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_MalGanis_IntroCin2, CAMERA_FIELD_FARZ, 5500.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_MalGanis_IntroCin2, 3360.5, - 584.6, 0.0)

    set gg_cam_Arthas_Jaina_and_UtherStart=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_UtherStart, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_UtherStart, CAMERA_FIELD_ROTATION, 333.4, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_UtherStart, CAMERA_FIELD_ANGLE_OF_ATTACK, 333.7, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_UtherStart, CAMERA_FIELD_TARGET_DISTANCE, 931.4, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_UtherStart, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_UtherStart, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Arthas_Jaina_and_UtherStart, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Arthas_Jaina_and_UtherStart, 10807.2, 5713.8, 0.0)

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
        return udg_ArthasVariable
    elseif slot == 1 then
        return udg_ArthasVariable
    elseif slot == 2 then
        return udg_ArthasVariable
    elseif slot == 3 then
        return udg_ArthasVariable
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
        set udg_ArthasVariable=hero
    elseif slot == 1 then
        set udg_ArthasVariable=hero
    elseif slot == 2 then
        set udg_ArthasVariable=hero
    else
        set udg_ArthasVariable=hero
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
// Trigger: Initialize Initializations
//
// Runs all triggers that should be run in Map Init in proper order.
// Levels Arthas.
// Removes mask on towns.
// Change Dark Green Player Color to Brown so it doesn't show up as weird on the minimap.
//===========================================================================
function Trig_Initialize_Initializations_Func030001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Initialize_Initializations_Func031001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Initialize_Initializations_Actions takes nothing returns nothing
    call SetCampaignMenuRaceBJ(bj_CAMPAIGN_INDEX_H)
    call SetTerrainFogExBJ(0, 700.00, 3100.00, 0.50, 10.00, 30.00, 50.00)
    set udg_ArthasDenials=0.00
    set udg_MalganisConversions=0.00
    call TriggerExecute(gg_trg_RestoreVariablesStartCache)
    call TriggerExecute(gg_trg_Initialize_Heroes)
    call TriggerExecute(gg_trg_Malganis_AI_and_Level)
    call TriggerExecute(gg_trg_Form_Uthers_Group)
    call TriggerExecute(gg_trg_Alliance_Sight_Color)
    call TriggerExecute(gg_trg_Form_Building_Groups)
    call TriggerExecute(gg_trg_Initialize_Region_Array)
    call TriggerExecute(gg_trg_Initialize_Buildings_To_Attack_Array)
    // Hide Players
    call SetPlayerOnScoreScreenBJ(false, Player(2))
    call SetPlayerOnScoreScreenBJ(false, Player(5))
    call SetPlayerOnScoreScreenBJ(false, Player(8))
    call SetPlayerOnScoreScreenBJ(false, Player(9))
    call SetPlayerOnScoreScreenBJ(false, Player(10))
    call SetPlayerOnScoreScreenBJ(false, Player(11))
    call TriggerExecute(gg_trg_Start_AI)
    call TriggerExecute(gg_trg_Starting_Cash)
    call SetTimeOfDay(19.00)
    call CreateFogModifierRectBJ(true, udg_ThePlayer, FOG_OF_WAR_FOGGED, gg_rct_Reveal1)
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call CreateFogModifierRectBJ(true, udg_ThePlayer, FOG_OF_WAR_FOGGED, gg_rct_Reveal2)
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call CreateFogModifierRectBJ(true, udg_ThePlayer, FOG_OF_WAR_FOGGED, gg_rct_Reveal3)
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call TriggerExecute(gg_trg_Cinematic_Uther_Moves_In)
    if ( Trig_Initialize_Initializations_Func030001() ) then
        call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_HardGhoul1), bj_UNIT_FACING)
    else
        call DoNothing()
    endif
    if ( Trig_Initialize_Initializations_Func031001() ) then
        call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_HardGhoul2), bj_UNIT_FACING)
    else
        call DoNothing()
    endif
    call SetUnitMoveSpeed(gg_unit_nC00_0094, 180.00)
    call SetUnitMoveSpeed(gg_unit_nC04_0031, 180.00)
    call SetUnitMoveSpeed(gg_unit_nC01_0089, 180.00)
    call SetUnitMoveSpeed(gg_unit_nC00_0125, 180.00)
    // Cinematic Building Invulnerable
    call SetUnitInvulnerable(gg_unit_ncb1_0064, true)
    // Mal'Ganis Altar Invulnerable
    call SetUnitInvulnerable(gg_unit_uaod_0019, true)
    // Set Difficulty
    call ConditionalTriggerExecute(gg_trg_Difficulty)
    // RAIN
    call AddWeatherEffectSaveLast(GetPlayableMapRect(), 'RLhr')
    call EnableWeatherEffect(GetLastCreatedWeatherEffect(), true)
endfunction

//===========================================================================
function InitTrig_Initialize_Initializations takes nothing returns nothing
    set gg_trg_Initialize_Initializations=CreateTrigger()
    call TriggerAddAction(gg_trg_Initialize_Initializations, function Trig_Initialize_Initializations_Actions)
endfunction

//===========================================================================
// Trigger: Difficulty
//===========================================================================
function Trig_Difficulty_Func001001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_EASY )
endfunction

function Trig_Difficulty_Func002001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_EASY )
endfunction

function Trig_Difficulty_Func003001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_EASY )
endfunction

function Trig_Difficulty_Func004001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_EASY )
endfunction

function Trig_Difficulty_Func005001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_EASY )
endfunction

function Trig_Difficulty_Func006001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_EASY )
endfunction

function Trig_Difficulty_Func007001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_EASY )
endfunction

function Trig_Difficulty_Func008001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_EASY )
endfunction

function Trig_Difficulty_Actions takes nothing returns nothing
    if ( Trig_Difficulty_Func001001() ) then
        call SetPlayerHandicapBJ(Player(2), bj_HANDICAP_EASY)
    else
        call DoNothing()
    endif
    if ( Trig_Difficulty_Func002001() ) then
        call SetPlayerHandicapBJ(Player(3), bj_HANDICAP_EASY)
    else
        call DoNothing()
    endif
    if ( Trig_Difficulty_Func003001() ) then
        call SetPlayerHandicapBJ(Player(5), bj_HANDICAP_EASY)
    else
        call DoNothing()
    endif
    if ( Trig_Difficulty_Func004001() ) then
        call SetPlayerHandicapBJ(Player(6), bj_HANDICAP_EASY)
    else
        call DoNothing()
    endif
    if ( Trig_Difficulty_Func005001() ) then
        call SetPlayerHandicapBJ(Player(8), bj_HANDICAP_EASY)
    else
        call DoNothing()
    endif
    if ( Trig_Difficulty_Func006001() ) then
        call SetPlayerHandicapBJ(Player(10), bj_HANDICAP_EASY)
    else
        call DoNothing()
    endif
    if ( Trig_Difficulty_Func007001() ) then
        call SetPlayerHandicapBJ(Player(11), bj_HANDICAP_EASY)
    else
        call DoNothing()
    endif
    if ( Trig_Difficulty_Func008001() ) then
        call SetPlayerHandicapBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), bj_HANDICAP_EASY)
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_Difficulty takes nothing returns nothing
    set gg_trg_Difficulty=CreateTrigger()
    call TriggerAddAction(gg_trg_Difficulty, function Trig_Difficulty_Actions)
endfunction

//===========================================================================
// Trigger: RestoreVariablesStartCache
//===========================================================================
function Trig_RestoreVariablesStartCache_Func004001 takes nothing returns boolean
    return ( udg_ArthasVariable == null )
endfunction

function Trig_RestoreVariablesStartCache_Actions takes nothing returns nothing
    call InitGameCacheBJ("Campaigns.w3v")
    call RestoreUnitLocFacingPointBJ("Arthas", "Human06", GetLastCreatedGameCacheBJ(), udg_ThePlayer, GetRectCenter(gg_rct_Arthas_Starts_Here), CameraSetupGetDestPositionLoc(GetCurrentCameraSetup()))
    set udg_ArthasVariable=GetLastRestoredUnitBJ()
    if ( Trig_RestoreVariablesStartCache_Func004001() ) then
        call ConditionalTriggerExecute(gg_trg_Default_Arthas)
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_RestoreVariablesStartCache takes nothing returns nothing
    set gg_trg_RestoreVariablesStartCache=CreateTrigger()
    call TriggerAddAction(gg_trg_RestoreVariablesStartCache, function Trig_RestoreVariablesStartCache_Actions)
endfunction

//===========================================================================
// Trigger: Default Arthas
//===========================================================================
function Trig_Default_Arthas_Actions takes nothing returns nothing
    call CreateNUnitsAtLocFacingLocBJ(1, 'Hart', udg_ThePlayer, GetRectCenter(gg_rct_Arthas_Starts_Here), GetCameraTargetPositionLoc())
    set udg_ArthasVariable=GetLastCreatedUnit()
    call SetHeroLevelBJ(udg_ArthasVariable, 6, false)
    call SelectHeroSkill(udg_ArthasVariable, 'AHhb')
    call SelectHeroSkill(udg_ArthasVariable, 'AHhb')
    call SelectHeroSkill(udg_ArthasVariable, 'AHds')
    call SelectHeroSkill(udg_ArthasVariable, 'AHad')
    call SelectHeroSkill(udg_ArthasVariable, 'AHad')
    call SelectHeroSkill(udg_ArthasVariable, 'AHre')
endfunction

//===========================================================================
function InitTrig_Default_Arthas takes nothing returns nothing
    set gg_trg_Default_Arthas=CreateTrigger()
    call TriggerAddAction(gg_trg_Default_Arthas, function Trig_Default_Arthas_Actions)
endfunction

//===========================================================================
// Trigger: Victory Save Cache
//
// Run by Deny 100 Villagers Victory in "Victory and Failure."
//===========================================================================
function Trig_Victory_Save_Cache_Actions takes nothing returns nothing
    call InitGameCacheBJ("Campaigns.w3v")
    call SetMissionAvailableBJ(true, bj_MISSION_INDEX_H08)
    call SetMissionAvailableBJ(true, bj_MISSION_INDEX_H09)
    call StoreUnitBJ(udg_ArthasVariable, "Arthas", "Human06Interlude", GetLastCreatedGameCacheBJ())
    call StoreUnitBJ(udg_ArthasVariable, "Arthas", "Human07", GetLastCreatedGameCacheBJ())
    call SaveGameCacheBJ(GetLastCreatedGameCacheBJ())
endfunction

//===========================================================================
function InitTrig_Victory_Save_Cache takes nothing returns nothing
    set gg_trg_Victory_Save_Cache=CreateTrigger()
    call TriggerAddAction(gg_trg_Victory_Save_Cache, function Trig_Victory_Save_Cache_Actions)
endfunction

//===========================================================================
// Trigger: Waterfall Reveal
//===========================================================================
function Trig_Waterfall_Reveal_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnteringUnit()) == udg_ThePlayer ) ) then
        return false
    endif
    if ( not ( udg_WaterfallSwitch == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Waterfall_Reveal_Actions takes nothing returns nothing
    set udg_WaterfallSwitch=true
    call CreateFogModifierRadiusLocBJ(true, udg_ThePlayer, FOG_OF_WAR_VISIBLE, GetRectCenter(gg_rct_WaterfallSight), 800.00)
    set udg_WaterfallRevealVis=GetLastCreatedFogModifier()
endfunction

//===========================================================================
function InitTrig_Waterfall_Reveal takes nothing returns nothing
    set gg_trg_Waterfall_Reveal=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Waterfall_Reveal, gg_rct_Waterfall_Reveal)
    call TriggerAddCondition(gg_trg_Waterfall_Reveal, Condition(function Trig_Waterfall_Reveal_Conditions))
    call TriggerAddAction(gg_trg_Waterfall_Reveal, function Trig_Waterfall_Reveal_Actions)
endfunction

//===========================================================================
// Trigger: Waterfall Hide
//===========================================================================
function Trig_Waterfall_Hide_Func003001001002001 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Waterfall_Hide_Func003001001002002 takes nothing returns boolean
    return ( GetOwningPlayer(GetFilterUnit()) == udg_ThePlayer )
endfunction

function Trig_Waterfall_Hide_Func003001001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Waterfall_Hide_Func003001001002001(), Trig_Waterfall_Hide_Func003001001002002())
endfunction

function Trig_Waterfall_Hide_Conditions takes nothing returns boolean
    if ( not ( CountUnitsInGroup(GetUnitsInRectMatching(gg_rct_Waterfall_Reveal, Condition(function Trig_Waterfall_Hide_Func003001001002))) == 0 ) ) then
        return false
    endif
    if ( not ( udg_WaterfallSwitch == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Waterfall_Hide_Actions takes nothing returns nothing
    set udg_WaterfallSwitch=false
    call DestroyFogModifier(udg_WaterfallRevealVis)
endfunction

//===========================================================================
function InitTrig_Waterfall_Hide takes nothing returns nothing
    set gg_trg_Waterfall_Hide=CreateTrigger()
    call TriggerRegisterLeaveRectSimple(gg_trg_Waterfall_Hide, gg_rct_Waterfall_Reveal)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Waterfall_Hide, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Waterfall_Hide, Condition(function Trig_Waterfall_Hide_Conditions))
    call TriggerAddAction(gg_trg_Waterfall_Hide, function Trig_Waterfall_Hide_Actions)
endfunction

//===========================================================================
// Trigger: Initialize Heroes
//===========================================================================
function Trig_Initialize_Heroes_Actions takes nothing returns nothing
    set udg_UtherVariable=gg_unit_Huth_0007
    set udg_JainaVariable=gg_unit_Hjai_0006
    set udg_MalganisVariable=gg_unit_Umal_0000
endfunction

//===========================================================================
function InitTrig_Initialize_Heroes takes nothing returns nothing
    set gg_trg_Initialize_Heroes=CreateTrigger()
    call TriggerAddAction(gg_trg_Initialize_Heroes, function Trig_Initialize_Heroes_Actions)
endfunction

//===========================================================================
// Trigger: XP Cap
//===========================================================================
function Trig_XP_Cap_Conditions takes nothing returns boolean
    if ( not ( GetLevelingUnit() == udg_ArthasVariable ) ) then
        return false
    endif
    if ( not ( GetHeroLevel(udg_ArthasVariable) >= 7 ) ) then
        return false
    endif
    return true
endfunction

function Trig_XP_Cap_Actions takes nothing returns nothing
    call SuspendHeroXPBJ(false, udg_ArthasVariable)
endfunction

//===========================================================================
function InitTrig_XP_Cap takes nothing returns nothing
    set gg_trg_XP_Cap=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_XP_Cap, Player(1), EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddCondition(gg_trg_XP_Cap, Condition(function Trig_XP_Cap_Conditions))
    call TriggerAddAction(gg_trg_XP_Cap, function Trig_XP_Cap_Actions)
endfunction

//===========================================================================
// Trigger: Alliance Sight Color
//===========================================================================
function Trig_Alliance_Sight_Color_Func047002 takes nothing returns nothing
    call UnitShareVisionBJ(true, GetEnumUnit(), udg_ThePlayer)
endfunction

function Trig_Alliance_Sight_Color_Func048002 takes nothing returns nothing
    call UnitShareVisionBJ(true, GetEnumUnit(), udg_ThePlayer)
endfunction

function Trig_Alliance_Sight_Color_Actions takes nothing returns nothing
    call SetPlayerAllianceBJ(Player(11), ALLIANCE_PASSIVE, true, Player(6))
    call SetPlayerAllianceBJ(Player(11), ALLIANCE_PASSIVE, true, Player(10))
    call SetPlayerAllianceBJ(Player(11), ALLIANCE_PASSIVE, true, Player(2))
    call SetPlayerAllianceBJ(Player(10), ALLIANCE_PASSIVE, true, Player(6))
    call SetPlayerAllianceBJ(Player(10), ALLIANCE_PASSIVE, true, Player(2))
    call SetPlayerAllianceBJ(Player(6), ALLIANCE_PASSIVE, true, Player(3))
    call SetPlayerAllianceBJ(Player(6), ALLIANCE_PASSIVE, true, Player(11))
    call SetPlayerAllianceBJ(Player(6), ALLIANCE_PASSIVE, true, Player(8))
    call SetPlayerAllianceBJ(Player(6), ALLIANCE_PASSIVE, true, Player(5))
    call SetPlayerAllianceBJ(Player(6), ALLIANCE_PASSIVE, true, Player(2))
    call SetPlayerAllianceBJ(Player(6), ALLIANCE_SHARED_SPELLS, false, Player(2))
    call SetPlayerAllianceStateBJ(Player(6), Player(10), bj_ALLIANCE_UNALLIED)
    call SetPlayerAllianceBJ(Player(3), ALLIANCE_PASSIVE, true, Player(5))
    call SetPlayerAllianceBJ(Player(3), ALLIANCE_PASSIVE, true, Player(6))
    call SetPlayerAllianceBJ(Player(3), ALLIANCE_PASSIVE, true, Player(8))
    call SetPlayerAllianceBJ(Player(3), ALLIANCE_PASSIVE, true, Player(10))
    call SetPlayerAllianceBJ(Player(3), ALLIANCE_PASSIVE, true, Player(11))
    call SetPlayerAllianceBJ(Player(3), ALLIANCE_PASSIVE, true, Player(2))
    call SetPlayerAllianceBJ(Player(2), ALLIANCE_PASSIVE, true, Player(5))
    call SetPlayerAllianceBJ(Player(2), ALLIANCE_PASSIVE, true, Player(6))
    call SetPlayerAllianceBJ(Player(2), ALLIANCE_PASSIVE, true, Player(3))
    call SetPlayerAllianceBJ(Player(2), ALLIANCE_PASSIVE, true, Player(10))
    call SetPlayerAllianceBJ(Player(2), ALLIANCE_PASSIVE, true, Player(11))
    call SetPlayerAllianceBJ(Player(2), ALLIANCE_PASSIVE, true, Player(8))
    call SetPlayerAllianceBJ(Player(9), ALLIANCE_PASSIVE, true, Player(1))
    call SetPlayerAllianceBJ(udg_ThePlayer, ALLIANCE_PASSIVE, true, Player(8))
    call SetPlayerAllianceBJ(udg_ThePlayer, ALLIANCE_PASSIVE, true, Player(9))
    call SetPlayerAllianceBJ(udg_ThePlayer, ALLIANCE_PASSIVE, true, Player(10))
    call SetPlayerAllianceBJ(Player(8), ALLIANCE_PASSIVE, false, udg_ThePlayer)
    call SetPlayerAllianceBJ(Player(8), ALLIANCE_SHARED_VISION, true, Player(1))
    call SetPlayerAllianceBJ(Player(8), ALLIANCE_PASSIVE, true, Player(6))
    call SetPlayerAllianceBJ(Player(8), ALLIANCE_PASSIVE, true, Player(3))
    call SetPlayerAllianceBJ(Player(8), ALLIANCE_PASSIVE, true, Player(2))
    call SetPlayerAllianceBJ(Player(7), ALLIANCE_PASSIVE, true, Player(2))
    call SetPlayerAllianceBJ(Player(7), ALLIANCE_PASSIVE, true, Player(3))
    call SetPlayerAllianceBJ(Player(7), ALLIANCE_PASSIVE, true, Player(6))
    call SetPlayerAllianceBJ(Player(7), ALLIANCE_PASSIVE, true, Player(10))
    call SetPlayerAllianceBJ(Player(7), ALLIANCE_PASSIVE, true, Player(11))
    call SetPlayerAllianceBJ(Player(5), ALLIANCE_PASSIVE, true, Player(11))
    call SetPlayerAllianceBJ(Player(5), ALLIANCE_PASSIVE, true, Player(10))
    call SetPlayerAllianceBJ(Player(5), ALLIANCE_PASSIVE, true, Player(8))
    call SetPlayerAllianceBJ(Player(5), ALLIANCE_PASSIVE, true, Player(6))
    call SetPlayerAllianceBJ(Player(5), ALLIANCE_PASSIVE, true, Player(3))
    call SetPlayerAllianceBJ(Player(5), ALLIANCE_PASSIVE, true, Player(1))
    call SetPlayerColorBJ(Player(10), PLAYER_COLOR_BROWN, true)
    call SetPlayerColorBJ(Player(8), PLAYER_COLOR_BROWN, true)
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(11)), function Trig_Alliance_Sight_Color_Func047002)
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(10)), function Trig_Alliance_Sight_Color_Func048002)
endfunction

//===========================================================================
function InitTrig_Alliance_Sight_Color takes nothing returns nothing
    set gg_trg_Alliance_Sight_Color=CreateTrigger()
    call TriggerAddAction(gg_trg_Alliance_Sight_Color, function Trig_Alliance_Sight_Color_Actions)
endfunction

//===========================================================================
// Trigger: Intro Cancel
//===========================================================================
function Trig_Intro_Cancel_Func008002 takes nothing returns nothing
    call SetUnitPositionLoc(GetEnumUnit(), GetRectCenter(gg_rct_Villagers_Go_Here))
endfunction

function Trig_Intro_Cancel_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_IntroCancel=true
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.50, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.50)
    call CinematicModeBJ(false, GetPlayersAll())
    call SetUnitPositionLoc(udg_ArthasVariable, GetRectCenter(gg_rct_Arthas_Cin_Skip_Move))
    call SetUnitInvulnerable(udg_ArthasVariable, false)
    call ForGroupBJ(GetUnitsInRectAll(gg_rct_VillagersESCmove), function Trig_Intro_Cancel_Func008002)
    call CameraSetupApplyForPlayer(true, gg_cam_Arthas_Town, udg_ThePlayer, 0.00)
    call TriggerSleepAction(0.10)
    call ResetToGameCameraForPlayer(udg_ThePlayer, 0.00)
    call RemoveUnit(gg_unit_nC00_0094)
    call RemoveUnit(gg_unit_nC04_0031)
    call RemoveUnit(gg_unit_nC01_0089)
    call RemoveUnit(gg_unit_nC00_0125)
    call SetSkyModel(null)
    call TriggerExecute(gg_trg_Arthas_Gets_Town)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 0.50, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
endfunction

//===========================================================================
function InitTrig_Intro_Cancel takes nothing returns nothing
    set gg_trg_Intro_Cancel=CreateTrigger()
    call DisableTrigger(gg_trg_Intro_Cancel)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Intro_Cancel, Player(1))
    call TriggerAddAction(gg_trg_Intro_Cancel, function Trig_Intro_Cancel_Actions)
endfunction

//===========================================================================
// Trigger: Form Uthers Group
//===========================================================================
function Trig_Form_Uthers_Group_Actions takes nothing returns nothing
    call GroupAddUnitSimple(udg_UtherVariable, udg_UthersGroup)
    call GroupAddUnitSimple(gg_unit_hkni_0046, udg_UthersGroup)
    call AttachSoundToUnitBJ(gg_snd_HorseLoop2, gg_unit_hkni_0046)
    call PlaySoundBJ(gg_snd_HorseLoop2)
    call GroupAddUnitSimple(gg_unit_hkni_0047, udg_UthersGroup)
    call GroupAddUnitSimple(gg_unit_hkni_0048, udg_UthersGroup)
    call GroupAddUnitSimple(gg_unit_hkni_0049, udg_UthersGroup)
    call AttachSoundToUnitBJ(gg_snd_HorseLoop3, gg_unit_hkni_0049)
    call PlaySoundBJ(gg_snd_HorseLoop3)
endfunction

//===========================================================================
function InitTrig_Form_Uthers_Group takes nothing returns nothing
    set gg_trg_Form_Uthers_Group=CreateTrigger()
    call TriggerAddAction(gg_trg_Form_Uthers_Group, function Trig_Form_Uthers_Group_Actions)
endfunction

//===========================================================================
// Trigger: Cinematic Uther Moves In
//===========================================================================
function Trig_Cinematic_Uther_Moves_In_Func018001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func020001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func034001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func036001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func040001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func042001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func044001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func046001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func049001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func052001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func054001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func059001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func061001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func063001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func065001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func067001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func069001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func071001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func076001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func078001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func080001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func084001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func086001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func088001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func091001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func095001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func099001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func107001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func112001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func115001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func118001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func121001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func124001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func131001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func134001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func136001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func139001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func142001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func159001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func162001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func166001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func168001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func170001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func173001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func175001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func178001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Func181001 takes nothing returns boolean
    return ( udg_IntroCancel == true )
endfunction

function Trig_Cinematic_Uther_Moves_In_Actions takes nothing returns nothing
    call SetSkyModel("Environment\\Sky\\LordaeronWinterSky\\LordaeronWinterSky.mdl")
    call SetStackedSoundBJ(true, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop01)
    call SetStackedSoundBJ(true, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop02)
    call SetStackedSoundBJ(true, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop03)
    call SetStackedSoundBJ(true, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop04)
    call SetStackedSoundBJ(true, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop05)
    call SetStackedSoundBJ(true, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop06)
    call SetStackedSoundBJ(true, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop07)
    call SetStackedSoundBJ(true, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop08)
    call CameraSetupApplyForPlayer(true, gg_cam_Arthas_and_Jaina_1, Player(1), 0.00)
    call CinematicModeBJ(true, GetPlayersAll())
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 2.00, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call ClearMapMusicBJ()
    call TriggerSleepAction(0.10)
    call EnableTrigger(gg_trg_Intro_Cancel)
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\DarkAgents.mp3")
    call SetMapMusicIndexedBJ("music", 2)
    if ( Trig_Cinematic_Uther_Moves_In_Func018001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.20)
    if ( Trig_Cinematic_Uther_Moves_In_Func020001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_ArthasVariable, "move", GetRectCenter(gg_rct_Cin1ArthasStop1))
    call IssuePointOrderLocBJ(udg_JainaVariable, "move", GetRectCenter(gg_rct_Cin1JainaStop1))
    call SetSoundPositionLocBJ(gg_snd_HorseLoop3, GetRectCenter(gg_rct_Arthas_Town), 0)
    call PlaySoundBJ(gg_snd_HorseLoop3)
    call IssuePointOrderLocBJ(udg_UtherVariable, "move", GetRectCenter(gg_rct_Cin1UtherGoHere1))
    call AttachSoundToUnitBJ(gg_snd_HorseLoop3, udg_UtherVariable)
    call PlaySoundBJ(gg_snd_HorseLoop3)
    call AttachSoundToUnitBJ(gg_snd_KnightNoRiderYesAttack2, gg_unit_hkni_0046)
    call SetSoundVolumeBJ(gg_snd_KnightNoRiderYesAttack2, 70.00)
    call PlaySoundBJ(gg_snd_KnightNoRiderYesAttack2)
    call GroupPointOrderLocBJ(GetUnitsInRectAll(gg_rct_Cin1KnightsAStart), "move", GetRectCenter(gg_rct_Cin1KnightsAGoHere1))
    call GroupPointOrderLocBJ(GetUnitsInRectAll(gg_rct_Cin1KnightsBStart), "move", GetRectCenter(gg_rct_Cin1KnightsBGoHere1))
    call CameraSetupApplyForPlayer(true, gg_cam_Arthas_and_Jaina_2, Player(1), 8.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func034001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(8.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func036001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_ArthasVariable, udg_UtherVariable, 1.00)
    call SetUnitFacingToFaceUnitTimed(udg_JainaVariable, udg_ArthasVariable, 0.25)
    call CameraSetupApplyForPlayer(true, gg_cam_Arthas_and_Jaina_2, Player(1), 10.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func040001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_020", gg_snd_H06Arthas01, "TRIGSTR_021", bj_TIMETYPE_ADD, 0.00, false)
    if ( Trig_Cinematic_Uther_Moves_In_Func042001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(2.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func044001() ) then
        return
    else
        call DoNothing()
    endif
    call WaitForSoundBJ(gg_snd_H06Arthas01, 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func046001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_Arthas_Jaina_and_UtherStart, Player(1), 0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_Arthas_Jaina_and_Uther, Player(1), 10.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func049001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_UtherVariable, "TRIGSTR_022", gg_snd_H06Uther02, "TRIGSTR_049", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H06Uther02, 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func052001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_ArthasVariable, "move", GetRectCenter(gg_rct_Cin1ArthasStop2))
    if ( Trig_Cinematic_Uther_Moves_In_Func054001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_053", gg_snd_H06Arthas03, "TRIGSTR_054", bj_TIMETYPE_ADD, 0.00, false)
    call AttachSoundToUnitBJ(gg_snd_KnightNoRiderWhat2, gg_unit_hkni_0047)
    call SetSoundVolumeBJ(gg_snd_KnightNoRiderWhat2, 40.00)
    call PlaySoundBJ(gg_snd_KnightNoRiderWhat2)
    if ( Trig_Cinematic_Uther_Moves_In_Func059001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(3.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func061001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_UtherVariable, udg_ArthasVariable, 0.50)
    if ( Trig_Cinematic_Uther_Moves_In_Func063001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(2.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func065001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.30, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func067001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.30)
    if ( Trig_Cinematic_Uther_Moves_In_Func069001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 0.30, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func071001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_Villagers_Over_There, Player(1), 0.00)
    call AttachSoundToUnitBJ(gg_snd_CityScapeCathedralLoop1, gg_unit_nC04_0031)
    call SetSoundVolumeBJ(gg_snd_CityScapeCathedralLoop1, 90.00)
    call PlaySoundBJ(gg_snd_CityScapeCathedralLoop1)
    if ( Trig_Cinematic_Uther_Moves_In_Func076001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(1.50)
    if ( Trig_Cinematic_Uther_Moves_In_Func078001() ) then
        return
    else
        call DoNothing()
    endif
    call WaitForSoundBJ(GetLastPlayedSound(), 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func080001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_Grain_of_Andorhal, Player(1), 0.70)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_055", gg_snd_H06Arthas04, "TRIGSTR_056", bj_TIMETYPE_ADD, 0.00, false)
    call PlaySoundBJ(gg_snd_CityScapeCathedralLoop1)
    if ( Trig_Cinematic_Uther_Moves_In_Func084001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(gg_unit_nC00_0125, "move", GetRectCenter(gg_rct_Villagers_Go_Here))
    if ( Trig_Cinematic_Uther_Moves_In_Func086001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(1.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func088001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(gg_unit_nC01_0089, "move", GetRectCenter(gg_rct_Villagers_Go_Here_2))
    call TriggerSleepAction(1.50)
    if ( Trig_Cinematic_Uther_Moves_In_Func091001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(gg_unit_nC04_0031, "move", GetRectCenter(gg_rct_Villagers_Go_Here))
    call TriggerSleepAction(0.50)
    call IssuePointOrderLocBJ(gg_unit_nC00_0094, "move", GetRectCenter(gg_rct_Villagers_Go_Here_2))
    if ( Trig_Cinematic_Uther_Moves_In_Func095001() ) then
        return
    else
        call DoNothing()
    endif
    call WaitForSoundBJ(gg_snd_H06Arthas04, 0.50)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_UtherVariable, "TRIGSTR_057", gg_snd_H06Uther05, "TRIGSTR_060", bj_TIMETYPE_ADD, 0.00, false)
    call TriggerSleepAction(1.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func099001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_ArthasVariable, udg_UtherVariable, 0.25)
    call SetUnitFacingToFaceUnitTimed(udg_UtherVariable, udg_ArthasVariable, 0.25)
    call SetUnitFacingToFaceUnitTimed(udg_JainaVariable, udg_ArthasVariable, 0.25)
    call TriggerSleepAction(1.00)
    call CameraSetupApplyForPlayer(true, gg_cam_What_Must_Be_Purged, Player(1), 0.00)
    call TriggerSleepAction(1.00)
    call WaitForSoundBJ(gg_snd_H06Uther05, 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func107001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_061", gg_snd_H06Arthas06, "TRIGSTR_062", bj_TIMETYPE_ADD, 0.00, false)
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\TragicConfrontation.mp3")
    call WaitForSoundBJ(gg_snd_H06Arthas06, 0)
    call TriggerSleepAction(1.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func112001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_UtherVariable, "TRIGSTR_063", gg_snd_H06Uther07, "TRIGSTR_064", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H06Uther07, 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func115001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_065", gg_snd_H06Arthas08, "TRIGSTR_066", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H06Arthas08, 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func118001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_UtherVariable, "TRIGSTR_067", gg_snd_H06Uther09, "TRIGSTR_068", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H06Uther09, 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func121001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_069", gg_snd_H06Arthas10, "TRIGSTR_070", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H06Arthas10, 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func124001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_Uther_Shocked, Player(1), 0.00)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_UtherVariable, "TRIGSTR_071", gg_snd_H06Uther11, "TRIGSTR_072", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H06Uther11, 0.50)
    call AttachSoundToUnitBJ(gg_snd_KnightNoRiderWhat3, gg_unit_hkni_0047)
    call SetSoundVolumeBJ(gg_snd_KnightNoRiderWhat3, 50.00)
    call PlaySoundBJ(gg_snd_KnightNoRiderWhat3)
    if ( Trig_Cinematic_Uther_Moves_In_Func131001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_Arthas_Expostulates, Player(1), 0.00)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_073", gg_snd_H06Arthas12, "TRIGSTR_074", bj_TIMETYPE_ADD, 0.00, false)
    if ( Trig_Cinematic_Uther_Moves_In_Func134001() ) then
        return
    else
        call DoNothing()
    endif
    call WaitForSoundBJ(GetLastPlayedSound(), 1.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func136001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_JainaVariable, "TRIGSTR_075", gg_snd_H06Jaina13, "TRIGSTR_076", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(GetLastPlayedSound(), 0.80)
    if ( Trig_Cinematic_Uther_Moves_In_Func139001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_077", gg_snd_H06Arthas14, "TRIGSTR_078", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H06Arthas14, 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func142001() ) then
        return
    else
        call DoNothing()
    endif
    call CameraSetupApplyForPlayer(true, gg_cam_Jaina_Leaving, Player(1), 0.00)
    call IssuePointOrderLocBJ(gg_unit_hkni_0049, "move", GetRectCenter(gg_rct_Cin1KnightsALeave))
    call IssuePointOrderLocBJ(gg_unit_hkni_0048, "move", GetRectCenter(gg_rct_Cin1KnightsBLeave))
    call IssuePointOrderLocBJ(gg_unit_hkni_0047, "move", GetRectCenter(gg_rct_Cin1KnightsBLeave))
    call IssuePointOrderLocBJ(gg_unit_hkni_0046, "move", GetRectCenter(gg_rct_Cin1KnightsALeave))
    call AttachSoundToUnitBJ(gg_snd_HorseLoop2, gg_unit_hkni_0046)
    call PlaySoundBJ(gg_snd_HorseLoop2)
    call AttachSoundToUnitBJ(gg_snd_HorseLoop3, gg_unit_hkni_0049)
    call PlaySoundBJ(gg_snd_HorseLoop3)
    call AttachSoundToUnitBJ(gg_snd_KnightNoRiderYesAttack1, gg_unit_hkni_0046)
    call PlaySoundBJ(gg_snd_KnightNoRiderYesAttack1)
    call TriggerSleepAction(3.00)
    call SetUnitPathing(gg_unit_hkni_0046, false)
    call SetUnitPathing(gg_unit_hkni_0047, false)
    call SetUnitPathing(gg_unit_hkni_0048, false)
    call SetUnitPathing(gg_unit_hkni_0049, false)
    if ( Trig_Cinematic_Uther_Moves_In_Func159001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_UtherVariable, "TRIGSTR_079", gg_snd_H06Uther15, "TRIGSTR_080", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H06Uther15, 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func162001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_UtherVariable, "move", GetRectCenter(gg_rct_Cin1UtherLeave))
    call IssuePointOrderLocBJ(udg_JainaVariable, "move", GetRectCenter(gg_rct_Cin1JainaLeave))
    call TriggerSleepAction(2.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func166001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_ArthasVariable, udg_JainaVariable, 0.20)
    if ( Trig_Cinematic_Uther_Moves_In_Func168001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_081", gg_snd_H06Arthas16, "TRIGSTR_082", bj_TIMETYPE_ADD, 0.00, false)
    if ( Trig_Cinematic_Uther_Moves_In_Func170001() ) then
        return
    else
        call DoNothing()
    endif
    call IssueImmediateOrderBJ(udg_JainaVariable, "stop")
    call TriggerSleepAction(2.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func173001() ) then
        return
    else
        call DoNothing()
    endif
    call WaitForSoundBJ(GetLastPlayedSound(), 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func175001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_JainaVariable, "TRIGSTR_083", gg_snd_H06Jaina17, "TRIGSTR_084", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H06Jaina17, 0)
    if ( Trig_Cinematic_Uther_Moves_In_Func178001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_JainaVariable, "move", GetRectCenter(gg_rct_Cin1JainaLeave))
    call TriggerSleepAction(3.00)
    if ( Trig_Cinematic_Uther_Moves_In_Func181001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerExecute(gg_trg_Uther_and_co_Leave)
    call DisableTrigger(gg_trg_Intro_Cancel)
endfunction

//===========================================================================
function InitTrig_Cinematic_Uther_Moves_In takes nothing returns nothing
    set gg_trg_Cinematic_Uther_Moves_In=CreateTrigger()
    call TriggerAddAction(gg_trg_Cinematic_Uther_Moves_In, function Trig_Cinematic_Uther_Moves_In_Actions)
endfunction

//===========================================================================
// Trigger: Remove Villager1
//===========================================================================
function Trig_Remove_Villager1_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == gg_unit_nC00_0125 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Remove_Villager1_Actions takes nothing returns nothing
    call RemoveUnit(GetEnteringUnit())
endfunction

//===========================================================================
function InitTrig_Remove_Villager1 takes nothing returns nothing
    set gg_trg_Remove_Villager1=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Remove_Villager1, gg_rct_Villagers_Go_Here)
    call TriggerAddCondition(gg_trg_Remove_Villager1, Condition(function Trig_Remove_Villager1_Conditions))
    call TriggerAddAction(gg_trg_Remove_Villager1, function Trig_Remove_Villager1_Actions)
endfunction

//===========================================================================
// Trigger: Remove Villager2
//===========================================================================
function Trig_Remove_Villager2_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == gg_unit_nC04_0031 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Remove_Villager2_Actions takes nothing returns nothing
    call RemoveUnit(GetEnteringUnit())
    call PlaySoundBJ(gg_snd_DoorSlam1)
endfunction

//===========================================================================
function InitTrig_Remove_Villager2 takes nothing returns nothing
    set gg_trg_Remove_Villager2=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Remove_Villager2, gg_rct_Villagers_Go_Here)
    call TriggerAddCondition(gg_trg_Remove_Villager2, Condition(function Trig_Remove_Villager2_Conditions))
    call TriggerAddAction(gg_trg_Remove_Villager2, function Trig_Remove_Villager2_Actions)
endfunction

//===========================================================================
// Trigger: Remove Villager3
//===========================================================================
function Trig_Remove_Villager3_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == gg_unit_nC01_0089 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Remove_Villager3_Actions takes nothing returns nothing
    call RemoveUnit(GetEnteringUnit())
endfunction

//===========================================================================
function InitTrig_Remove_Villager3 takes nothing returns nothing
    set gg_trg_Remove_Villager3=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Remove_Villager3, gg_rct_Villagers_Go_Here_2)
    call TriggerAddCondition(gg_trg_Remove_Villager3, Condition(function Trig_Remove_Villager3_Conditions))
    call TriggerAddAction(gg_trg_Remove_Villager3, function Trig_Remove_Villager3_Actions)
endfunction

//===========================================================================
// Trigger: Remove Villager4
//===========================================================================
function Trig_Remove_Villager4_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == gg_unit_nC00_0094 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Remove_Villager4_Actions takes nothing returns nothing
    call RemoveUnit(GetEnteringUnit())
    call PlaySoundBJ(gg_snd_DoorSlam101)
endfunction

//===========================================================================
function InitTrig_Remove_Villager4 takes nothing returns nothing
    set gg_trg_Remove_Villager4=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Remove_Villager4, gg_rct_Villagers_Go_Here_2)
    call TriggerAddCondition(gg_trg_Remove_Villager4, Condition(function Trig_Remove_Villager4_Conditions))
    call TriggerAddAction(gg_trg_Remove_Villager4, function Trig_Remove_Villager4_Actions)
endfunction

//===========================================================================
// Trigger: Uther and co Leave
//===========================================================================
function Trig_Uther_and_co_Leave_Actions takes nothing returns nothing
    call SetUnitInvulnerable(udg_ArthasVariable, false)
    call CinematicModeBJ(false, GetPlayersAll())
    call IssuePointOrderLocBJ(udg_ArthasVariable, "move", GetRectCenter(gg_rct_Arthas_Cin_Skip_Move))
    call CameraSetupApplyForPlayer(true, gg_cam_Arthas_Town, udg_ThePlayer, 2.00)
    call TriggerSleepAction(2.00)
    call ResetToGameCameraForPlayer(Player(1), 0.00)
    call SetSkyModel(null)
    call TriggerExecute(gg_trg_Arthas_Gets_Town)
endfunction

//===========================================================================
function InitTrig_Uther_and_co_Leave takes nothing returns nothing
    set gg_trg_Uther_and_co_Leave=CreateTrigger()
    call TriggerAddAction(gg_trg_Uther_and_co_Leave, function Trig_Uther_and_co_Leave_Actions)
endfunction

//===========================================================================
// Trigger: Arthas Gets Town
//
// Starts the AI.
// Turns on Villagers Run District 1 (to stop possible problem with intro cinematic villagers doing dumb stuff).
//===========================================================================
function Trig_Arthas_Gets_Town_Func005002 takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
endfunction

function Trig_Arthas_Gets_Town_Func007002 takes nothing returns nothing
    call IssueImmediateOrderBJ(GetEnumUnit(), "autoharvestgold")
endfunction

function Trig_Arthas_Gets_Town_Func008002 takes nothing returns nothing
    call IssueImmediateOrderBJ(GetEnumUnit(), "autoharvestlumber")
endfunction

function Trig_Arthas_Gets_Town_Func022001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_EASY )
endfunction

function Trig_Arthas_Gets_Town_Func023001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_NORMAL )
endfunction

function Trig_Arthas_Gets_Town_Func024001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Arthas_Gets_Town_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call ConditionalTriggerExecute(gg_trg_Setup_Leaderboard)
    call SelectUnitSingle(udg_ArthasVariable)
    call RemoveUnit(udg_JainaVariable)
    call ForGroupBJ(udg_UthersGroup, function Trig_Arthas_Gets_Town_Func005002)
    call SetUnitInvulnerable(udg_ArthasVariable, false)
    call ForGroupBJ(GetUnitsInRectAll(gg_rct_Harvest_Gold), function Trig_Arthas_Gets_Town_Func007002)
    call ForGroupBJ(GetUnitsInRectAll(gg_rct_Harvest_Lumber), function Trig_Arthas_Gets_Town_Func008002)
    call AdjustPlayerStateBJ(800, Player(1), PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(400, Player(1), PLAYER_STATE_RESOURCE_LUMBER)
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_023", "TRIGSTR_024", "ReplaceableTextures\\CommandButtons\\BTNRallypointundead.tga")
    set udg_CullingQuest=GetLastCreatedQuestBJ()
    call CreateQuestItemBJ(udg_CullingQuest, "TRIGSTR_114")
    call CreateQuestItemBJ(udg_CullingQuest, "TRIGSTR_025")
    call CreateQuestItemBJ(udg_CullingQuest, "TRIGSTR_026")
    call FlashQuestDialogButtonBJ()
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_100")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call TriggerExecute(gg_trg_New_Unit_Available)
    call CommandAI(Player(3), 0, 0)
    call EnableTrigger(gg_trg_Villagers_Run_District_1)
    if ( Trig_Arthas_Gets_Town_Func022001() ) then
        call StartTimerBJ(udg_MalganisAttackTimer, false, 210.00)
    else
        call DoNothing()
    endif
    if ( Trig_Arthas_Gets_Town_Func023001() ) then
        call StartTimerBJ(udg_MalganisAttackTimer, false, 180.00)
    else
        call DoNothing()
    endif
    if ( Trig_Arthas_Gets_Town_Func024001() ) then
        call StartTimerBJ(udg_MalganisAttackTimer, false, 120.00)
    else
        call DoNothing()
    endif
    call TriggerSleepAction(30.00)
endfunction

//===========================================================================
function InitTrig_Arthas_Gets_Town takes nothing returns nothing
    set gg_trg_Arthas_Gets_Town=CreateTrigger()
    call TriggerAddAction(gg_trg_Arthas_Gets_Town, function Trig_Arthas_Gets_Town_Actions)
endfunction

//===========================================================================
// Trigger: New Unit Available
//===========================================================================
function Trig_New_Unit_Available_Actions takes nothing returns nothing
    call TriggerSleepAction(5.00)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UNITACQUIRED, "TRIGSTR_245")
endfunction

//===========================================================================
function InitTrig_New_Unit_Available takes nothing returns nothing
    set gg_trg_New_Unit_Available=CreateTrigger()
    call TriggerAddAction(gg_trg_New_Unit_Available, function Trig_New_Unit_Available_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Attack
//===========================================================================
function Trig_Malganis_Attack_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(0.50)
    call TriggerExecute(gg_trg_Malganis_First_Attacks)
endfunction

//===========================================================================
function InitTrig_Malganis_Attack takes nothing returns nothing
    set gg_trg_Malganis_Attack=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Malganis_Attack, Player(8), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Malganis_Attack, Player(2), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterTimerExpireEventBJ(gg_trg_Malganis_Attack, udg_MalganisAttackTimer)
    call TriggerAddAction(gg_trg_Malganis_Attack, function Trig_Malganis_Attack_Actions)
endfunction

//===========================================================================
// Trigger: Kill Villager Deny Malganis
//===========================================================================
function Trig_Kill_Villager_Deny_Malganis_Func003001001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'nC02' )
endfunction

function Trig_Kill_Villager_Deny_Malganis_Func003001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'nC04' )
endfunction

function Trig_Kill_Villager_Deny_Malganis_Func003001 takes nothing returns boolean
    return GetBooleanOr(Trig_Kill_Villager_Deny_Malganis_Func003001001(), Trig_Kill_Villager_Deny_Malganis_Func003001002())
endfunction

function Trig_Kill_Villager_Deny_Malganis_Func003002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetTriggerUnit()) == 'nC01' )
endfunction

function Trig_Kill_Villager_Deny_Malganis_Func003002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetTriggerUnit()) == 'nC00' )
endfunction

function Trig_Kill_Villager_Deny_Malganis_Func003002 takes nothing returns boolean
    return GetBooleanOr(Trig_Kill_Villager_Deny_Malganis_Func003002001(), Trig_Kill_Villager_Deny_Malganis_Func003002002())
endfunction

function Trig_Kill_Villager_Deny_Malganis_Conditions takes nothing returns boolean
    if ( not GetBooleanOr(Trig_Kill_Villager_Deny_Malganis_Func003001(), Trig_Kill_Villager_Deny_Malganis_Func003002()) ) then
        return false
    endif
    if ( not ( IsUnitAlly(GetKillingUnitBJ(), udg_ThePlayer) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Kill_Villager_Deny_Malganis_Actions takes nothing returns nothing
    set udg_ArthasDenials=( udg_ArthasDenials + 1.00 )
    call ConditionalTriggerExecute(gg_trg_Leaderboard_Tracking)
endfunction

//===========================================================================
function InitTrig_Kill_Villager_Deny_Malganis takes nothing returns nothing
    set gg_trg_Kill_Villager_Deny_Malganis=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Kill_Villager_Deny_Malganis, Player(8), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Kill_Villager_Deny_Malganis, Condition(function Trig_Kill_Villager_Deny_Malganis_Conditions))
    call TriggerAddAction(gg_trg_Kill_Villager_Deny_Malganis, function Trig_Kill_Villager_Deny_Malganis_Actions)
endfunction

//===========================================================================
// Trigger: Kill Zombie Deny Malganis
//===========================================================================
function Trig_Kill_Zombie_Deny_Malganis_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetDyingUnit()) == 'nzom' ) ) then
        return false
    endif
    if ( not ( IsUnitAlly(GetKillingUnitBJ(), udg_ThePlayer) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Kill_Zombie_Deny_Malganis_Actions takes nothing returns nothing
    set udg_ArthasDenials=( udg_ArthasDenials + 1.00 )
    call ConditionalTriggerExecute(gg_trg_Leaderboard_Tracking)
endfunction

//===========================================================================
function InitTrig_Kill_Zombie_Deny_Malganis takes nothing returns nothing
    set gg_trg_Kill_Zombie_Deny_Malganis=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Kill_Zombie_Deny_Malganis, Player(2), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Kill_Zombie_Deny_Malganis, Player(8), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Kill_Zombie_Deny_Malganis, Condition(function Trig_Kill_Zombie_Deny_Malganis_Conditions))
    call TriggerAddAction(gg_trg_Kill_Zombie_Deny_Malganis, function Trig_Kill_Zombie_Deny_Malganis_Actions)
endfunction

//===========================================================================
// Trigger: Setup Leaderboard
//
// Adding Mal'Ganis and his Leaderboard value color are done in Malganis First Teleport (Cin Skip).
//===========================================================================
function Trig_Setup_Leaderboard_Actions takes nothing returns nothing
    call CreateLeaderboardBJ(bj_FORCE_PLAYER[1], "TRIGSTR_000")
    call LeaderboardAddItemBJ(udg_ThePlayer, GetLastCreatedLeaderboard(), "TRIGSTR_001", 0)
    call LeaderboardSetPlayerItemValueColorBJ(udg_ThePlayer, GetLastCreatedLeaderboard(), 100, 100, 100, 0)
endfunction

//===========================================================================
function InitTrig_Setup_Leaderboard takes nothing returns nothing
    set gg_trg_Setup_Leaderboard=CreateTrigger()
    call TriggerAddAction(gg_trg_Setup_Leaderboard, function Trig_Setup_Leaderboard_Actions)
endfunction

//===========================================================================
// Trigger: Leaderboard Tracking
//===========================================================================
function Trig_Leaderboard_Tracking_Func002001 takes nothing returns boolean
    return ( LeaderboardHasPlayerItemBJ(PlayerGetLeaderboardBJ(udg_ThePlayer), Player(6)) == true )
endfunction

function Trig_Leaderboard_Tracking_Actions takes nothing returns nothing
    call LeaderboardSetPlayerItemValueBJ(udg_ThePlayer, PlayerGetLeaderboardBJ(udg_ThePlayer), R2I(udg_ArthasDenials))
    if ( Trig_Leaderboard_Tracking_Func002001() ) then
        call LeaderboardSetPlayerItemValueBJ(Player(6), PlayerGetLeaderboardBJ(udg_ThePlayer), R2I(udg_MalganisConversions))
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_Leaderboard_Tracking takes nothing returns nothing
    set gg_trg_Leaderboard_Tracking=CreateTrigger()
    call TriggerAddAction(gg_trg_Leaderboard_Tracking, function Trig_Leaderboard_Tracking_Actions)
endfunction

//===========================================================================
// Trigger: Hint for Killing Villagers
//===========================================================================
function Trig_Hint_for_Killing_Villagers_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnteringUnit()) == udg_ThePlayer ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hint_for_Killing_Villagers_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QueuedTriggerAddBJ(gg_trg_Hint_for_Killing_Villagers_Que, true)
endfunction

//===========================================================================
function InitTrig_Hint_for_Killing_Villagers takes nothing returns nothing
    set gg_trg_Hint_for_Killing_Villagers=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Hint_for_Killing_Villagers, gg_rct_Malganis_Sneak1_Buildings)
    call TriggerRegisterEnterRectSimple(gg_trg_Hint_for_Killing_Villagers, gg_rct_Malganis_Sneak2_Buildings)
    call TriggerRegisterEnterRectSimple(gg_trg_Hint_for_Killing_Villagers, gg_rct_Malganis_Sneak3_Buildings)
    call TriggerRegisterEnterRectSimple(gg_trg_Hint_for_Killing_Villagers, gg_rct_Malganis_Sneak4_Buildings)
    call TriggerRegisterEnterRectSimple(gg_trg_Hint_for_Killing_Villagers, gg_rct_Malganis_Sneak5_Buildings)
    call TriggerAddCondition(gg_trg_Hint_for_Killing_Villagers, Condition(function Trig_Hint_for_Killing_Villagers_Conditions))
    call TriggerAddAction(gg_trg_Hint_for_Killing_Villagers, function Trig_Hint_for_Killing_Villagers_Actions)
endfunction

//===========================================================================
// Trigger: Hint for Killing Villagers Que
//===========================================================================
function Trig_Hint_for_Killing_Villagers_Que_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hint_for_Killing_Villagers_Que_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_HINT, "TRIGSTR_104")
    call TriggerSleepAction(10.00)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Hint_for_Killing_Villagers_Que takes nothing returns nothing
    set gg_trg_Hint_for_Killing_Villagers_Que=CreateTrigger()
    call TriggerAddCondition(gg_trg_Hint_for_Killing_Villagers_Que, Condition(function Trig_Hint_for_Killing_Villagers_Que_Conditions))
    call TriggerAddAction(gg_trg_Hint_for_Killing_Villagers_Que, function Trig_Hint_for_Killing_Villagers_Que_Actions)
endfunction

//===========================================================================
// Trigger: Malganis First Attacks
//
// Run by Arthas Gets Town
//===========================================================================
function Trig_Malganis_First_Attacks_Actions takes nothing returns nothing
    call GroupAddGroup(GetUnitsInRectOfPlayer(gg_rct_MalganisSpawnDS, Player(6)), udg_MalganisDeathSquad)
    call QueuedTriggerAddBJ(gg_trg_Malganis_First_Teleport_Cinematic, true)
endfunction

//===========================================================================
function InitTrig_Malganis_First_Attacks takes nothing returns nothing
    set gg_trg_Malganis_First_Attacks=CreateTrigger()
    call TriggerAddAction(gg_trg_Malganis_First_Attacks, function Trig_Malganis_First_Attacks_Actions)
endfunction

//===========================================================================
// Trigger: Malganis First Teleport Cin Skip
//
// Adds Mal'Ganis to Leaderboard AND sets the color of his Leaderboard Value to white.
//===========================================================================
function Trig_Malganis_First_Teleport_Cin_Skip_Func016002 takes nothing returns nothing
    call SetUnitPositionLoc(GetEnumUnit(), GetRectCenter(gg_rct_MalganicFirstTPSkip_Move))
endfunction

function Trig_Malganis_First_Teleport_Cin_Skip_Func017002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Malganis_First_Teleport_Cin_Skip_Func018002 takes nothing returns nothing
    call SetUnitInvulnerable(GetEnumUnit(), false)
endfunction

function Trig_Malganis_First_Teleport_Cin_Skip_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_MalganisFirstTeleCinSkip=true
    // Fade out
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.50, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(0.60)
    // Clean up the scene
    call CinematicModeBJ(false, GetPlayersAll())
    call ResetToGameCameraForPlayer(udg_ThePlayer, 0)
    call PanCameraToTimedLocForPlayer(udg_ThePlayer, GetUnitLoc(udg_ArthasVariable), 0)
    call CameraResetSmoothingFactorBJ()
    call DestroyEffectBJ(GetLastCreatedEffectBJ())
    call UseTimeOfDayBJ(true)
    call KillUnit(gg_unit_ncb1_0064)
    call SetUnitPositionLoc(udg_MalganisVariable, GetRectCenter(gg_rct_MalganicFirstTPSkip_Move))
    call ForGroupBJ(udg_MalganisDeathSquad, function Trig_Malganis_First_Teleport_Cin_Skip_Func016002)
    call ForGroupBJ(udg_HideUnits, function Trig_Malganis_First_Teleport_Cin_Skip_Func017002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_ThePlayer), function Trig_Malganis_First_Teleport_Cin_Skip_Func018002)
    call PauseAllUnitsBJ(false)
    call SelectGroupBJ(udg_SelectedUnits)
    // Start AI
    call StartCampaignAI(Player(6), "h06_green.ai")
    set udg_MalganisCaptainX=GetLocationX(GetRectCenter(gg_rct_MalganicFirstTPSkip_Move))
    set udg_MalganisCaptainY=GetLocationY(GetRectCenter(gg_rct_MalganicFirstTPSkip_Move))
    call CommandAI(Player(6), 7, 0)
    call CommandAI(Player(6), 6, R2I(udg_MalganisCaptainY))
    call CommandAI(Player(6), 5, R2I(udg_MalganisCaptainX))
    call CreateFogModifierRadiusLocBJ(true, udg_ThePlayer, FOG_OF_WAR_VISIBLE, GetUnitLoc(udg_MalganisVariable), 512.00)
    set udg_MalganisFirstTeleCin=false
    // Update leaderboard
    call LeaderboardAddItemBJ(Player(6), GetLastCreatedLeaderboard(), "TRIGSTR_044", 0)
    call LeaderboardSetPlayerItemValueColorBJ(Player(6), GetLastCreatedLeaderboard(), 100, 100, 100, 0)
    call ConditionalTriggerExecute(gg_trg_Leaderboard_Tracking)
    call LeaderboardDisplayBJ(true, GetLastCreatedLeaderboard())
    // Fade in
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 0.50, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(4.00)
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call TriggerExecute(gg_trg_Malganis_First_Building_Attack)
    call QueuedTriggerRemoveBJ(gg_trg_Malganis_First_Teleport_Cinematic)
endfunction

//===========================================================================
function InitTrig_Malganis_First_Teleport_Cin_Skip takes nothing returns nothing
    set gg_trg_Malganis_First_Teleport_Cin_Skip=CreateTrigger()
    call DisableTrigger(gg_trg_Malganis_First_Teleport_Cin_Skip)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Malganis_First_Teleport_Cin_Skip, Player(1))
    call TriggerAddAction(gg_trg_Malganis_First_Teleport_Cin_Skip, function Trig_Malganis_First_Teleport_Cin_Skip_Actions)
endfunction

//===========================================================================
// Trigger: Malganis First Teleport Cinematic
//
// Adds Mal'Ganis to Leaderboard AND sets the color of his Leaderboard Value to white.
//===========================================================================
function Trig_Malganis_First_Teleport_Cinematic_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func009002 takes nothing returns nothing
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, GetEnumUnit())
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func014002 takes nothing returns nothing
    call PauseUnitBJ(false, GetEnumUnit())
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func015002 takes nothing returns nothing
    call SetUnitInvulnerable(GetEnumUnit(), true)
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func016002 takes nothing returns nothing
    call GroupAddUnitSimple(GetEnumUnit(), udg_HideUnits)
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func017002 takes nothing returns nothing
    call GroupAddUnitSimple(GetEnumUnit(), udg_HideUnits)
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func018001002001 takes nothing returns boolean
    return ( IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == false )
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func018001002002001 takes nothing returns boolean
    return ( IsUnitHiddenBJ(GetFilterUnit()) == false )
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func018001002002002 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func018001002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Malganis_First_Teleport_Cinematic_Func018001002002001(), Trig_Malganis_First_Teleport_Cinematic_Func018001002002002())
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func018001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Malganis_First_Teleport_Cinematic_Func018001002001(), Trig_Malganis_First_Teleport_Cinematic_Func018001002002())
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func018002 takes nothing returns nothing
    call GroupAddUnitSimple(GetEnumUnit(), udg_HideUnits)
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func019002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func027001 takes nothing returns boolean
    return ( udg_MalganisFirstTeleCinSkip == true )
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func033001 takes nothing returns boolean
    return ( udg_MalganisFirstTeleCinSkip == true )
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func034002 takes nothing returns nothing
    call SetUnitPositionLoc(GetEnumUnit(), GetRectCenter(gg_rct_Malganis_Sneak1))
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func036001 takes nothing returns boolean
    return ( udg_MalganisFirstTeleCinSkip == true )
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func040001 takes nothing returns boolean
    return ( udg_MalganisFirstTeleCinSkip == true )
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func048001 takes nothing returns boolean
    return ( udg_MalganisFirstTeleCinSkip == true )
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func052001 takes nothing returns boolean
    return ( udg_MalganisFirstTeleCinSkip == true )
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func057001 takes nothing returns boolean
    return ( udg_MalganisFirstTeleCinSkip == true )
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func063002 takes nothing returns nothing
    call ShowUnitShow(GetEnumUnit())
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Func064002 takes nothing returns nothing
    call SetUnitInvulnerable(GetEnumUnit(), false)
endfunction

function Trig_Malganis_First_Teleport_Cinematic_Actions takes nothing returns nothing
    call UseTimeOfDayBJ(false)
    set udg_MalganisFirstTeleCin=true
    // Fade out
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    call CinematicModeBJ(true, GetPlayersAll())
    // Set up the scene
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_ThePlayer), function Trig_Malganis_First_Teleport_Cinematic_Func009002)
    set udg_SelectedUnits=GetUnitsSelectedAll(udg_ThePlayer)
    call ClearSelection()
    call ConditionalTriggerExecute(gg_trg_Malganis_First_Get_Arthas_Alt)
    call PauseAllUnitsBJ(true)
    call ForGroupBJ(udg_MalganisDeathSquad, function Trig_Malganis_First_Teleport_Cinematic_Func014002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_ThePlayer), function Trig_Malganis_First_Teleport_Cinematic_Func015002)
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(8)), function Trig_Malganis_First_Teleport_Cinematic_Func016002)
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(2)), function Trig_Malganis_First_Teleport_Cinematic_Func017002)
    call ForGroupBJ(GetUnitsOfPlayerMatching(udg_ThePlayer, Condition(function Trig_Malganis_First_Teleport_Cinematic_Func018001002)), function Trig_Malganis_First_Teleport_Cinematic_Func018002)
    call ForGroupBJ(udg_HideUnits, function Trig_Malganis_First_Teleport_Cinematic_Func019002)
    call LeaderboardDisplayBJ(false, GetLastCreatedLeaderboard())
    call CameraSetupApplyForPlayer(true, gg_cam_MalGanis_IntroCin1, udg_ThePlayer, 0)
    // CINEMATIC BEGINS - Cinematic is now skippable
    call EnableTrigger(gg_trg_Malganis_First_Teleport_Cin_Skip)
    // Fade in
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    if ( Trig_Malganis_First_Teleport_Cinematic_Func027001() ) then
        return
    else
        call DoNothing()
    endif
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\DarkAgents.mp3")
    call AddSpecialEffectLocBJ(GetRectCenter(gg_rct_Malganis_Sneak1), "Abilities\\Spells\\Undead\\DarkSummoning\\DarkSummonTarget.mdl")
    call SetSoundPositionLocBJ(gg_snd_DarkSummoningTarget1, GetRectCenter(gg_rct_Malganis_Sneak1_Buildings), 0)
    call PlaySoundBJ(gg_snd_DarkSummoningTarget1)
    call TriggerSleepAction(2.00)
    if ( Trig_Malganis_First_Teleport_Cinematic_Func033001() ) then
        return
    else
        call DoNothing()
    endif
    call ForGroupBJ(udg_MalganisDeathSquad, function Trig_Malganis_First_Teleport_Cinematic_Func034002)
    call TriggerSleepAction(0.20)
    if ( Trig_Malganis_First_Teleport_Cinematic_Func036001() ) then
        return
    else
        call DoNothing()
    endif
    call DestroyEffectBJ(GetLastCreatedEffectBJ())
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_MalganisVariable, "TRIGSTR_101", gg_snd_H06MalGanis31, "TRIGSTR_102", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H06MalGanis31, 0)
    if ( Trig_Malganis_First_Teleport_Cinematic_Func040001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitInvulnerable(gg_unit_ncb1_0064, false)
    call SetUnitOwner(gg_unit_ncb1_0064, Player(10), false)
    call CameraSetupApplyForPlayer(true, gg_cam_MalGanis_IntroCin2, udg_ThePlayer, 5.00)
    call GroupPointOrderLocBJ(udg_MalganisDeathSquad, "attack", GetUnitLoc(gg_unit_ncb1_0064))
    call TriggerSleepAction(6.00)
    call KillUnit(gg_unit_ncb1_0064)
    call TriggerSleepAction(2.00)
    if ( Trig_Malganis_First_Teleport_Cinematic_Func048001() ) then
        return
    else
        call DoNothing()
    endif
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_MalganisVariable, "TRIGSTR_032", gg_snd_H06MalGanis32, "TRIGSTR_041", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H06MalGanis32, 0)
    if ( Trig_Malganis_First_Teleport_Cinematic_Func052001() ) then
        return
    else
        call DoNothing()
    endif
    call ResetToGameCameraForPlayer(udg_ThePlayer, 0)
    call PanCameraToTimedLocForPlayer(udg_ThePlayer, GetUnitLoc(udg_ArthasVariable), 0)
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_042", gg_snd_H06Arthas33, "TRIGSTR_043", bj_TIMETYPE_ADD, 0.00, false)
    call WaitForSoundBJ(gg_snd_H06Arthas33, 0)
    if ( Trig_Malganis_First_Teleport_Cinematic_Func057001() ) then
        return
    else
        call DoNothing()
    endif
    // CINEMATIC ENDS - Cinematic can no longer be skipped
    call DisableTrigger(gg_trg_Malganis_First_Teleport_Cin_Skip)
    // Return to gameplay without a fade
    call CinematicModeBJ(false, GetPlayersAll())
    // Clean up the scene
    call ForGroupBJ(udg_HideUnits, function Trig_Malganis_First_Teleport_Cinematic_Func063002)
    call ForGroupBJ(GetUnitsOfPlayerAll(udg_ThePlayer), function Trig_Malganis_First_Teleport_Cinematic_Func064002)
    call PauseAllUnitsBJ(false)
    call SelectGroupBJ(udg_SelectedUnits)
    // Start AI
    call StartCampaignAI(Player(6), "h06_green.ai")
    set udg_MalganisCaptainX=GetLocationX(GetRectCenter(gg_rct_Malganis_Sneak1))
    set udg_MalganisCaptainY=GetLocationY(GetRectCenter(gg_rct_Malganis_Sneak1))
    call CommandAI(Player(6), 7, 0)
    call CommandAI(Player(6), 6, R2I(udg_MalganisCaptainY))
    call CommandAI(Player(6), 5, R2I(udg_MalganisCaptainX))
    // OLD STUFF BELOW LEAVE FOR END OF CIN?
    call TriggerExecute(gg_trg_Malganis_First_Building_Attack)
    set udg_PlayerCameraPosition=GetUnitLoc(udg_MalganisVariable)
    call CreateFogModifierRadiusLocBJ(true, udg_ThePlayer, FOG_OF_WAR_VISIBLE, GetUnitLoc(udg_MalganisVariable), 512.00)
    set udg_MalganisFirstTeleCin=false
    // Update leaderboard
    call LeaderboardAddItemBJ(Player(6), GetLastCreatedLeaderboard(), "TRIGSTR_019", 0)
    call LeaderboardSetPlayerItemValueColorBJ(Player(6), GetLastCreatedLeaderboard(), 100, 100, 100, 0)
    call ConditionalTriggerExecute(gg_trg_Leaderboard_Tracking)
    call LeaderboardDisplayBJ(true, GetLastCreatedLeaderboard())
    call TriggerSleepAction(4.00)
    call DestroyFogModifier(GetLastCreatedFogModifier())
    call UseTimeOfDayBJ(true)
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Malganis_First_Teleport_Cinematic takes nothing returns nothing
    set gg_trg_Malganis_First_Teleport_Cinematic=CreateTrigger()
    call TriggerAddCondition(gg_trg_Malganis_First_Teleport_Cinematic, Condition(function Trig_Malganis_First_Teleport_Cinematic_Conditions))
    call TriggerAddAction(gg_trg_Malganis_First_Teleport_Cinematic, function Trig_Malganis_First_Teleport_Cinematic_Actions)
endfunction

//===========================================================================
// Trigger: Malganis First Building Attack
//===========================================================================
function Trig_Malganis_First_Building_Attack_Func001001 takes nothing returns boolean
    return ( CountUnitsInGroup(udg_Buildings1) == 0 )
endfunction

function Trig_Malganis_First_Building_Attack_Actions takes nothing returns nothing
    if ( Trig_Malganis_First_Building_Attack_Func001001() ) then
        return
    else
        call DoNothing()
    endif
    set udg_MalganisTargetHouse=GroupPickRandomUnit(udg_Buildings1)
    call SetUnitOwner(udg_MalganisTargetHouse, Player(10), false)
    set udg_MalganisTargetHouseX=GetLocationX(GetUnitLoc(udg_MalganisTargetHouse))
    set udg_MalganisTargetHouseY=GetLocationY(GetUnitLoc(udg_MalganisTargetHouse))
    call CommandAI(Player(6), 3, 0)
    call CommandAI(Player(6), 2, R2I(udg_MalganisTargetHouseY))
    call CommandAI(Player(6), 1, R2I(udg_MalganisTargetHouseX))
endfunction

//===========================================================================
function InitTrig_Malganis_First_Building_Attack takes nothing returns nothing
    set gg_trg_Malganis_First_Building_Attack=CreateTrigger()
    call TriggerAddAction(gg_trg_Malganis_First_Building_Attack, function Trig_Malganis_First_Building_Attack_Actions)
endfunction

//===========================================================================
// Trigger: Malganis First Get Arthas Alt
//===========================================================================
function Trig_Malganis_First_Get_Arthas_Alt_Conditions takes nothing returns boolean
    if ( not ( IsUnitDeadBJ(udg_ArthasVariable) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Malganis_First_Get_Arthas_Alt_Func005002001002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetFilterUnit()) == 'halt' )
endfunction

function Trig_Malganis_First_Get_Arthas_Alt_Func005002001002002 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Malganis_First_Get_Arthas_Alt_Func005002001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Malganis_First_Get_Arthas_Alt_Func005002001002001(), Trig_Malganis_First_Get_Arthas_Alt_Func005002001002002())
endfunction

function Trig_Malganis_First_Get_Arthas_Alt_Func006001 takes nothing returns boolean
    return ( udg_RevivalAltar != null )
endfunction

function Trig_Malganis_First_Get_Arthas_Alt_Actions takes nothing returns nothing
    // If Arthas was dead, revive him on the spot
    call ReviveHeroLoc(udg_ArthasVariable, GetRectCenter(gg_rct_Arthas_Cin_Skip_Move), false)
    // If an Altar exists, move him to the Altar's location
    set udg_RevivalAltar=GroupPickRandomUnit(GetUnitsOfPlayerMatching(udg_ThePlayer, Condition(function Trig_Malganis_First_Get_Arthas_Alt_Func005002001002)))
    if ( Trig_Malganis_First_Get_Arthas_Alt_Func006001() ) then
        call SetUnitPositionLoc(udg_ArthasVariable, OffsetLocation(GetUnitLoc(udg_RevivalAltar), 0, - 128.00))
    else
        call DoNothing()
    endif
    call SetUnitFacingTimed(udg_ArthasVariable, 225.00, 0)
endfunction

//===========================================================================
function InitTrig_Malganis_First_Get_Arthas_Alt takes nothing returns nothing
    set gg_trg_Malganis_First_Get_Arthas_Alt=CreateTrigger()
    call TriggerAddCondition(gg_trg_Malganis_First_Get_Arthas_Alt, Condition(function Trig_Malganis_First_Get_Arthas_Alt_Conditions))
    call TriggerAddAction(gg_trg_Malganis_First_Get_Arthas_Alt, function Trig_Malganis_First_Get_Arthas_Alt_Actions)
endfunction

//===========================================================================
// Trigger: Villagers Run District 1
//
// Turned on in Arthas Gets Town to stop possible stupidity with intro cinematic.
//===========================================================================
function Trig_Villagers_Run_District_1_Func001001001 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC02' )
endfunction

function Trig_Villagers_Run_District_1_Func001001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC04' )
endfunction

function Trig_Villagers_Run_District_1_Func001001 takes nothing returns boolean
    return GetBooleanOr(Trig_Villagers_Run_District_1_Func001001001(), Trig_Villagers_Run_District_1_Func001001002())
endfunction

function Trig_Villagers_Run_District_1_Func001002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC01' )
endfunction

function Trig_Villagers_Run_District_1_Func001002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC00' )
endfunction

function Trig_Villagers_Run_District_1_Func001002 takes nothing returns boolean
    return GetBooleanOr(Trig_Villagers_Run_District_1_Func001002001(), Trig_Villagers_Run_District_1_Func001002002())
endfunction

function Trig_Villagers_Run_District_1_Conditions takes nothing returns boolean
    if ( not GetBooleanOr(Trig_Villagers_Run_District_1_Func001001(), Trig_Villagers_Run_District_1_Func001002()) ) then
        return false
    endif
    return true
endfunction

function Trig_Villagers_Run_District_1_Actions takes nothing returns nothing
    call TriggerSleepAction(0.10)
    call IssuePointOrderLocBJ(GetEnteringUnit(), "move", GetRandomLocInRect(gg_rct_Malganis_Sneak1_Buildings))
endfunction

//===========================================================================
function InitTrig_Villagers_Run_District_1 takes nothing returns nothing
    set gg_trg_Villagers_Run_District_1=CreateTrigger()
    call DisableTrigger(gg_trg_Villagers_Run_District_1)
    call TriggerRegisterEnterRectSimple(gg_trg_Villagers_Run_District_1, gg_rct_Malganis_Sneak1_Buildings)
    call TriggerAddCondition(gg_trg_Villagers_Run_District_1, Condition(function Trig_Villagers_Run_District_1_Conditions))
    call TriggerAddAction(gg_trg_Villagers_Run_District_1, function Trig_Villagers_Run_District_1_Actions)
endfunction

//===========================================================================
// Trigger: Villagers Run District 2
//===========================================================================
function Trig_Villagers_Run_District_2_Func001001001 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC02' )
endfunction

function Trig_Villagers_Run_District_2_Func001001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC04' )
endfunction

function Trig_Villagers_Run_District_2_Func001001 takes nothing returns boolean
    return GetBooleanOr(Trig_Villagers_Run_District_2_Func001001001(), Trig_Villagers_Run_District_2_Func001001002())
endfunction

function Trig_Villagers_Run_District_2_Func001002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC01' )
endfunction

function Trig_Villagers_Run_District_2_Func001002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC00' )
endfunction

function Trig_Villagers_Run_District_2_Func001002 takes nothing returns boolean
    return GetBooleanOr(Trig_Villagers_Run_District_2_Func001002001(), Trig_Villagers_Run_District_2_Func001002002())
endfunction

function Trig_Villagers_Run_District_2_Conditions takes nothing returns boolean
    if ( not GetBooleanOr(Trig_Villagers_Run_District_2_Func001001(), Trig_Villagers_Run_District_2_Func001002()) ) then
        return false
    endif
    return true
endfunction

function Trig_Villagers_Run_District_2_Actions takes nothing returns nothing
    call TriggerSleepAction(0.10)
    call IssuePointOrderLocBJ(GetEnteringUnit(), "move", GetRandomLocInRect(gg_rct_Malganis_Sneak2_Buildings))
endfunction

//===========================================================================
function InitTrig_Villagers_Run_District_2 takes nothing returns nothing
    set gg_trg_Villagers_Run_District_2=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Villagers_Run_District_2, gg_rct_Malganis_Sneak2_Buildings)
    call TriggerAddCondition(gg_trg_Villagers_Run_District_2, Condition(function Trig_Villagers_Run_District_2_Conditions))
    call TriggerAddAction(gg_trg_Villagers_Run_District_2, function Trig_Villagers_Run_District_2_Actions)
endfunction

//===========================================================================
// Trigger: Villagers Run District 3
//===========================================================================
function Trig_Villagers_Run_District_3_Func001001001 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC02' )
endfunction

function Trig_Villagers_Run_District_3_Func001001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC04' )
endfunction

function Trig_Villagers_Run_District_3_Func001001 takes nothing returns boolean
    return GetBooleanOr(Trig_Villagers_Run_District_3_Func001001001(), Trig_Villagers_Run_District_3_Func001001002())
endfunction

function Trig_Villagers_Run_District_3_Func001002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC01' )
endfunction

function Trig_Villagers_Run_District_3_Func001002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC00' )
endfunction

function Trig_Villagers_Run_District_3_Func001002 takes nothing returns boolean
    return GetBooleanOr(Trig_Villagers_Run_District_3_Func001002001(), Trig_Villagers_Run_District_3_Func001002002())
endfunction

function Trig_Villagers_Run_District_3_Conditions takes nothing returns boolean
    if ( not GetBooleanOr(Trig_Villagers_Run_District_3_Func001001(), Trig_Villagers_Run_District_3_Func001002()) ) then
        return false
    endif
    return true
endfunction

function Trig_Villagers_Run_District_3_Actions takes nothing returns nothing
    call TriggerSleepAction(0.10)
    call IssuePointOrderLocBJ(GetEnteringUnit(), "move", GetRandomLocInRect(gg_rct_Malganis_Sneak3_Buildings))
endfunction

//===========================================================================
function InitTrig_Villagers_Run_District_3 takes nothing returns nothing
    set gg_trg_Villagers_Run_District_3=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Villagers_Run_District_3, gg_rct_Malganis_Sneak3_Buildings)
    call TriggerAddCondition(gg_trg_Villagers_Run_District_3, Condition(function Trig_Villagers_Run_District_3_Conditions))
    call TriggerAddAction(gg_trg_Villagers_Run_District_3, function Trig_Villagers_Run_District_3_Actions)
endfunction

//===========================================================================
// Trigger: Villagers Run District 4
//===========================================================================
function Trig_Villagers_Run_District_4_Func001001001 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC02' )
endfunction

function Trig_Villagers_Run_District_4_Func001001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC04' )
endfunction

function Trig_Villagers_Run_District_4_Func001001 takes nothing returns boolean
    return GetBooleanOr(Trig_Villagers_Run_District_4_Func001001001(), Trig_Villagers_Run_District_4_Func001001002())
endfunction

function Trig_Villagers_Run_District_4_Func001002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC01' )
endfunction

function Trig_Villagers_Run_District_4_Func001002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC00' )
endfunction

function Trig_Villagers_Run_District_4_Func001002 takes nothing returns boolean
    return GetBooleanOr(Trig_Villagers_Run_District_4_Func001002001(), Trig_Villagers_Run_District_4_Func001002002())
endfunction

function Trig_Villagers_Run_District_4_Conditions takes nothing returns boolean
    if ( not GetBooleanOr(Trig_Villagers_Run_District_4_Func001001(), Trig_Villagers_Run_District_4_Func001002()) ) then
        return false
    endif
    return true
endfunction

function Trig_Villagers_Run_District_4_Actions takes nothing returns nothing
    call TriggerSleepAction(0.10)
    call IssuePointOrderLocBJ(GetEnteringUnit(), "move", GetRandomLocInRect(gg_rct_Malganis_Sneak4_Buildings))
endfunction

//===========================================================================
function InitTrig_Villagers_Run_District_4 takes nothing returns nothing
    set gg_trg_Villagers_Run_District_4=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Villagers_Run_District_4, gg_rct_Malganis_Sneak4_Buildings)
    call TriggerAddCondition(gg_trg_Villagers_Run_District_4, Condition(function Trig_Villagers_Run_District_4_Conditions))
    call TriggerAddAction(gg_trg_Villagers_Run_District_4, function Trig_Villagers_Run_District_4_Actions)
endfunction

//===========================================================================
// Trigger: Villagers Run District 5
//===========================================================================
function Trig_Villagers_Run_District_5_Func001001001 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC02' )
endfunction

function Trig_Villagers_Run_District_5_Func001001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC04' )
endfunction

function Trig_Villagers_Run_District_5_Func001001 takes nothing returns boolean
    return GetBooleanOr(Trig_Villagers_Run_District_5_Func001001001(), Trig_Villagers_Run_District_5_Func001001002())
endfunction

function Trig_Villagers_Run_District_5_Func001002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC01' )
endfunction

function Trig_Villagers_Run_District_5_Func001002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetEnteringUnit()) == 'nC00' )
endfunction

function Trig_Villagers_Run_District_5_Func001002 takes nothing returns boolean
    return GetBooleanOr(Trig_Villagers_Run_District_5_Func001002001(), Trig_Villagers_Run_District_5_Func001002002())
endfunction

function Trig_Villagers_Run_District_5_Conditions takes nothing returns boolean
    if ( not GetBooleanOr(Trig_Villagers_Run_District_5_Func001001(), Trig_Villagers_Run_District_5_Func001002()) ) then
        return false
    endif
    return true
endfunction

function Trig_Villagers_Run_District_5_Actions takes nothing returns nothing
    call TriggerSleepAction(0.10)
    call IssuePointOrderLocBJ(GetEnteringUnit(), "move", GetRandomLocInRect(gg_rct_Malganis_Sneak5_Buildings))
endfunction

//===========================================================================
function InitTrig_Villagers_Run_District_5 takes nothing returns nothing
    set gg_trg_Villagers_Run_District_5=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Villagers_Run_District_5, gg_rct_Malganis_Sneak5_Buildings)
    call TriggerAddCondition(gg_trg_Villagers_Run_District_5, Condition(function Trig_Villagers_Run_District_5_Conditions))
    call TriggerAddAction(gg_trg_Villagers_Run_District_5, function Trig_Villagers_Run_District_5_Actions)
endfunction

//===========================================================================
// Trigger: If Building Pops MakeVillagers
//===========================================================================
function Trig_If_Building_Pops_MakeVillagers_Func002001001001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb0' )
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002001001002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb1' )
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002001001002002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncba' )
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002001001002002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncbb' )
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002001001002002 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_MakeVillagers_Func002001001002002001(), Trig_If_Building_Pops_MakeVillagers_Func002001001002002002())
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002001001002 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_MakeVillagers_Func002001001002001(), Trig_If_Building_Pops_MakeVillagers_Func002001001002002())
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002001001 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_MakeVillagers_Func002001001001(), Trig_If_Building_Pops_MakeVillagers_Func002001001002())
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002001002001001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb2' )
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002001002001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb3' )
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002001002001 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_MakeVillagers_Func002001002001001(), Trig_If_Building_Pops_MakeVillagers_Func002001002001002())
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002001002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb4' )
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002001002 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_MakeVillagers_Func002001002001(), Trig_If_Building_Pops_MakeVillagers_Func002001002002())
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002001 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_MakeVillagers_Func002001001(), Trig_If_Building_Pops_MakeVillagers_Func002001002())
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002002001001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb5' )
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002002001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb6' )
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002002001 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_MakeVillagers_Func002002001001(), Trig_If_Building_Pops_MakeVillagers_Func002002001002())
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002002002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb7' )
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002002002002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb9' )
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002002002002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb8' )
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002002002002 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_MakeVillagers_Func002002002002001(), Trig_If_Building_Pops_MakeVillagers_Func002002002002002())
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002002002 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_MakeVillagers_Func002002002001(), Trig_If_Building_Pops_MakeVillagers_Func002002002002())
endfunction

function Trig_If_Building_Pops_MakeVillagers_Func002002 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_MakeVillagers_Func002002001(), Trig_If_Building_Pops_MakeVillagers_Func002002002())
endfunction

function Trig_If_Building_Pops_MakeVillagers_Conditions takes nothing returns boolean
    if ( not GetBooleanOr(Trig_If_Building_Pops_MakeVillagers_Func002001(), Trig_If_Building_Pops_MakeVillagers_Func002002()) ) then
        return false
    endif
    return true
endfunction

function Trig_If_Building_Pops_MakeVillagers_Actions takes nothing returns nothing
    set udg_DestroyedBuilding=GetDyingUnit()
    call TriggerExecute(gg_trg_Spawn_Villagers)
endfunction

//===========================================================================
function InitTrig_If_Building_Pops_MakeVillagers takes nothing returns nothing
    set gg_trg_If_Building_Pops_MakeVillagers=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_If_Building_Pops_MakeVillagers, Player(10), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_If_Building_Pops_MakeVillagers, Player(11), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_If_Building_Pops_MakeVillagers, Condition(function Trig_If_Building_Pops_MakeVillagers_Conditions))
    call TriggerAddAction(gg_trg_If_Building_Pops_MakeVillagers, function Trig_If_Building_Pops_MakeVillagers_Actions)
endfunction

//===========================================================================
// Trigger: If Building Pops Shake Camera
//===========================================================================
function Trig_If_Building_Pops_Shake_Camera_Func001001001001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb0' )
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001001001002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb1' )
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001001001002002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncba' )
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001001001002002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncbb' )
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001001001002002 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_Shake_Camera_Func001001001002002001(), Trig_If_Building_Pops_Shake_Camera_Func001001001002002002())
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001001001002 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_Shake_Camera_Func001001001002001(), Trig_If_Building_Pops_Shake_Camera_Func001001001002002())
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001001001 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_Shake_Camera_Func001001001001(), Trig_If_Building_Pops_Shake_Camera_Func001001001002())
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001001002001001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb2' )
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001001002001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb3' )
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001001002001 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_Shake_Camera_Func001001002001001(), Trig_If_Building_Pops_Shake_Camera_Func001001002001002())
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001001002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb4' )
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001001002 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_Shake_Camera_Func001001002001(), Trig_If_Building_Pops_Shake_Camera_Func001001002002())
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001001 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_Shake_Camera_Func001001001(), Trig_If_Building_Pops_Shake_Camera_Func001001002())
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001002001001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb5' )
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001002001002 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb6' )
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001002001 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_Shake_Camera_Func001002001001(), Trig_If_Building_Pops_Shake_Camera_Func001002001002())
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001002002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb7' )
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001002002002001 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb9' )
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001002002002002 takes nothing returns boolean
    return ( GetUnitTypeId(GetDyingUnit()) == 'ncb8' )
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001002002002 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_Shake_Camera_Func001002002002001(), Trig_If_Building_Pops_Shake_Camera_Func001002002002002())
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001002002 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_Shake_Camera_Func001002002001(), Trig_If_Building_Pops_Shake_Camera_Func001002002002())
endfunction

function Trig_If_Building_Pops_Shake_Camera_Func001002 takes nothing returns boolean
    return GetBooleanOr(Trig_If_Building_Pops_Shake_Camera_Func001002001(), Trig_If_Building_Pops_Shake_Camera_Func001002002())
endfunction

function Trig_If_Building_Pops_Shake_Camera_Conditions takes nothing returns boolean
    if ( not GetBooleanOr(Trig_If_Building_Pops_Shake_Camera_Func001001(), Trig_If_Building_Pops_Shake_Camera_Func001002()) ) then
        return false
    endif
    return true
endfunction

function Trig_If_Building_Pops_Shake_Camera_Actions takes nothing returns nothing
    call CameraSetSourceNoiseForPlayer(Player(1), 20.00, 1000.00)
    call TriggerSleepAction(2.00)
    call CameraClearNoiseForPlayer(Player(1))
endfunction

//===========================================================================
function InitTrig_If_Building_Pops_Shake_Camera takes nothing returns nothing
    set gg_trg_If_Building_Pops_Shake_Camera=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_If_Building_Pops_Shake_Camera, Player(10), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_If_Building_Pops_Shake_Camera, Player(11), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_If_Building_Pops_Shake_Camera, Condition(function Trig_If_Building_Pops_Shake_Camera_Conditions))
    call TriggerAddAction(gg_trg_If_Building_Pops_Shake_Camera, function Trig_If_Building_Pops_Shake_Camera_Actions)
endfunction

//===========================================================================
// Trigger: Spawn Villagers
//===========================================================================
function Trig_Spawn_Villagers_Actions takes nothing returns nothing
    call TriggerExecute(gg_trg_Create_Man)
    call TriggerExecute(gg_trg_Create_Man)
    call TriggerExecute(gg_trg_Create_Woman)
    call TriggerExecute(gg_trg_Create_Woman)
    call ConditionalTriggerExecute(gg_trg_Create_Rats)
endfunction

//===========================================================================
function InitTrig_Spawn_Villagers takes nothing returns nothing
    set gg_trg_Spawn_Villagers=CreateTrigger()
    call TriggerAddAction(gg_trg_Spawn_Villagers, function Trig_Spawn_Villagers_Actions)
endfunction

//===========================================================================
// Trigger: Create Man
//===========================================================================
function Trig_Create_Man_Func002001 takes nothing returns boolean
    return ( udg_RANDOMINTEGER == 1 )
endfunction

function Trig_Create_Man_Func003001 takes nothing returns boolean
    return ( udg_RANDOMINTEGER == 2 )
endfunction

function Trig_Create_Man_Actions takes nothing returns nothing
    set udg_RANDOMINTEGER=GetRandomInt(1, 2)
    if ( Trig_Create_Man_Func002001() ) then
        call CreateNUnitsAtLoc(1, 'nC00', Player(8), GetUnitLoc(udg_DestroyedBuilding), 0)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Man_Func003001() ) then
        call CreateNUnitsAtLoc(1, 'nC04', Player(8), GetUnitLoc(udg_DestroyedBuilding), 0)
    else
        call DoNothing()
    endif
    set udg_VillagerToBeConverted=GetLastCreatedUnit()
    call ConditionalTriggerExecute(gg_trg_Convert_Villager)
endfunction

//===========================================================================
function InitTrig_Create_Man takes nothing returns nothing
    set gg_trg_Create_Man=CreateTrigger()
    call TriggerAddAction(gg_trg_Create_Man, function Trig_Create_Man_Actions)
endfunction

//===========================================================================
// Trigger: Create Woman
//===========================================================================
function Trig_Create_Woman_Actions takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'nC01', Player(8), GetUnitLoc(udg_DestroyedBuilding), 0.00)
    set udg_VillagerToBeConverted=GetLastCreatedUnit()
    call ConditionalTriggerExecute(gg_trg_Convert_Villager)
endfunction

//===========================================================================
function InitTrig_Create_Woman takes nothing returns nothing
    set gg_trg_Create_Woman=CreateTrigger()
    call TriggerAddAction(gg_trg_Create_Woman, function Trig_Create_Woman_Actions)
endfunction

//===========================================================================
// Trigger: Create Child
//===========================================================================
function Trig_Create_Child_Actions takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'nC02', Player(8), GetUnitLoc(udg_DestroyedBuilding), 0.00)
    set udg_VillagerToBeConverted=GetLastCreatedUnit()
    call ConditionalTriggerExecute(gg_trg_Convert_Villager)
endfunction

//===========================================================================
function InitTrig_Create_Child takes nothing returns nothing
    set gg_trg_Create_Child=CreateTrigger()
    call TriggerAddAction(gg_trg_Create_Child, function Trig_Create_Child_Actions)
endfunction

//===========================================================================
// Trigger: Create Rats
//===========================================================================
function Trig_Create_Rats_Conditions takes nothing returns boolean
    if ( not ( GetRandomInt(1, 5) > 4 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Create_Rats_Func003001 takes nothing returns boolean
    return ( udg_RANDOMINTEGER == 1 )
endfunction

function Trig_Create_Rats_Func004001 takes nothing returns boolean
    return ( udg_RANDOMINTEGER == 1 )
endfunction

function Trig_Create_Rats_Actions takes nothing returns nothing
    set udg_RANDOMINTEGER=GetRandomInt(1, 2)
    call CreateNUnitsAtLoc(1, 'nrat', Player(PLAYER_NEUTRAL_PASSIVE), GetUnitLoc(udg_DestroyedBuilding), 0.00)
    if ( Trig_Create_Rats_Func003001() ) then
        call CreateNUnitsAtLoc(1, 'nrat', Player(PLAYER_NEUTRAL_PASSIVE), GetUnitLoc(udg_DestroyedBuilding), bj_UNIT_FACING)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Rats_Func004001() ) then
        call CreateNUnitsAtLoc(1, 'nrat', Player(PLAYER_NEUTRAL_PASSIVE), GetUnitLoc(udg_DestroyedBuilding), bj_UNIT_FACING)
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_Create_Rats takes nothing returns nothing
    set gg_trg_Create_Rats=CreateTrigger()
    call TriggerAddCondition(gg_trg_Create_Rats, Condition(function Trig_Create_Rats_Conditions))
    call TriggerAddAction(gg_trg_Create_Rats, function Trig_Create_Rats_Actions)
endfunction

//===========================================================================
// Trigger: Malganis AI and Level
//===========================================================================
function Trig_Malganis_AI_and_Level_Func002001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_NORMAL )
endfunction

function Trig_Malganis_AI_and_Level_Func003001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Malganis_AI_and_Level_Func010001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Malganis_AI_and_Level_Func011001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Malganis_AI_and_Level_Actions takes nothing returns nothing
    call SetHeroLevelBJ(udg_MalganisVariable, 6, false)
    if ( Trig_Malganis_AI_and_Level_Func002001() ) then
        call SetHeroLevelBJ(udg_MalganisVariable, 7, false)
    else
        call DoNothing()
    endif
    if ( Trig_Malganis_AI_and_Level_Func003001() ) then
        call SetHeroLevelBJ(udg_MalganisVariable, 8, false)
    else
        call DoNothing()
    endif
    call SelectHeroSkill(udg_MalganisVariable, 'ANdc')
    call SelectHeroSkill(udg_MalganisVariable, 'ANsl')
    call SelectHeroSkill(udg_MalganisVariable, 'AUsl')
    call SelectHeroSkill(udg_MalganisVariable, 'AUsl')
    call SelectHeroSkill(udg_MalganisVariable, 'AUsl')
    call SelectHeroSkill(udg_MalganisVariable, 'AUcs')
    if ( Trig_Malganis_AI_and_Level_Func010001() ) then
        call SelectHeroSkill(udg_MalganisVariable, 'AUcs')
    else
        call DoNothing()
    endif
    if ( Trig_Malganis_AI_and_Level_Func011001() ) then
        call SelectHeroSkill(udg_MalganisVariable, 'AUcs')
    else
        call DoNothing()
    endif
    call SuspendHeroXPBJ(false, udg_MalganisVariable)
endfunction

//===========================================================================
function InitTrig_Malganis_AI_and_Level takes nothing returns nothing
    set gg_trg_Malganis_AI_and_Level=CreateTrigger()
    call TriggerAddAction(gg_trg_Malganis_AI_and_Level, function Trig_Malganis_AI_and_Level_Actions)
endfunction

//===========================================================================
// Trigger: Form Building Groups
//===========================================================================
function Trig_Form_Building_Groups_Func001002002001 takes nothing returns boolean
    return ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == true )
endfunction

function Trig_Form_Building_Groups_Func001002002002 takes nothing returns boolean
    return ( GetOwningPlayer(GetFilterUnit()) == Player(11) )
endfunction

function Trig_Form_Building_Groups_Func001002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Form_Building_Groups_Func001002002001(), Trig_Form_Building_Groups_Func001002002002())
endfunction

function Trig_Form_Building_Groups_Func002002002001 takes nothing returns boolean
    return ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == true )
endfunction

function Trig_Form_Building_Groups_Func002002002002 takes nothing returns boolean
    return ( GetOwningPlayer(GetFilterUnit()) == Player(11) )
endfunction

function Trig_Form_Building_Groups_Func002002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Form_Building_Groups_Func002002002001(), Trig_Form_Building_Groups_Func002002002002())
endfunction

function Trig_Form_Building_Groups_Func003002002001 takes nothing returns boolean
    return ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == true )
endfunction

function Trig_Form_Building_Groups_Func003002002002 takes nothing returns boolean
    return ( GetOwningPlayer(GetFilterUnit()) == Player(11) )
endfunction

function Trig_Form_Building_Groups_Func003002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Form_Building_Groups_Func003002002001(), Trig_Form_Building_Groups_Func003002002002())
endfunction

function Trig_Form_Building_Groups_Func004002002001 takes nothing returns boolean
    return ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == true )
endfunction

function Trig_Form_Building_Groups_Func004002002002 takes nothing returns boolean
    return ( GetOwningPlayer(GetFilterUnit()) == Player(11) )
endfunction

function Trig_Form_Building_Groups_Func004002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Form_Building_Groups_Func004002002001(), Trig_Form_Building_Groups_Func004002002002())
endfunction

function Trig_Form_Building_Groups_Func005002002001 takes nothing returns boolean
    return ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == true )
endfunction

function Trig_Form_Building_Groups_Func005002002002 takes nothing returns boolean
    return ( GetOwningPlayer(GetFilterUnit()) == Player(11) )
endfunction

function Trig_Form_Building_Groups_Func005002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Form_Building_Groups_Func005002002001(), Trig_Form_Building_Groups_Func005002002002())
endfunction

function Trig_Form_Building_Groups_Actions takes nothing returns nothing
    set udg_Buildings1=GetUnitsInRectMatching(gg_rct_Malganis_Sneak1_Buildings, Condition(function Trig_Form_Building_Groups_Func001002002))
    set udg_Buildings2=GetUnitsInRectMatching(gg_rct_Malganis_Sneak2_Buildings, Condition(function Trig_Form_Building_Groups_Func002002002))
    set udg_Buildings3=GetUnitsInRectMatching(gg_rct_Malganis_Sneak3_Buildings, Condition(function Trig_Form_Building_Groups_Func003002002))
    set udg_Buildings4=GetUnitsInRectMatching(gg_rct_Malganis_Sneak4_Buildings, Condition(function Trig_Form_Building_Groups_Func004002002))
    set udg_Buildings5=GetUnitsInRectMatching(gg_rct_Malganis_Sneak5_Buildings, Condition(function Trig_Form_Building_Groups_Func005002002))
endfunction

//===========================================================================
function InitTrig_Form_Building_Groups takes nothing returns nothing
    set gg_trg_Form_Building_Groups=CreateTrigger()
    call TriggerAddAction(gg_trg_Form_Building_Groups, function Trig_Form_Building_Groups_Actions)
endfunction

//===========================================================================
// Trigger: Building Destroyed Remove From Group1
//===========================================================================
function Trig_Building_Destroyed_Remove_From_Group1_Conditions takes nothing returns boolean
    if ( not ( IsUnitInGroup(GetTriggerUnit(), udg_Buildings1) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Building_Destroyed_Remove_From_Group1_Func004001 takes nothing returns boolean
    return ( CountUnitsInGroup(udg_Buildings1) == 0 )
endfunction

function Trig_Building_Destroyed_Remove_From_Group1_Actions takes nothing returns nothing
    call PlaySoundBJ(gg_snd_CityBuildingDeath1)
    call GroupRemoveUnitSimple(GetDyingUnit(), udg_Buildings1)
    if ( Trig_Building_Destroyed_Remove_From_Group1_Func004001() ) then
        set udg_RegionsArray[1]=gg_rct_NULL
    else
        call DoNothing()
    endif
    call ConditionalTriggerExecute(gg_trg_Malganis_Reacquires_Nearest_Building)
endfunction

//===========================================================================
function InitTrig_Building_Destroyed_Remove_From_Group1 takes nothing returns nothing
    set gg_trg_Building_Destroyed_Remove_From_Group1=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Building_Destroyed_Remove_From_Group1, Player(10), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Building_Destroyed_Remove_From_Group1, Player(11), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Building_Destroyed_Remove_From_Group1, Condition(function Trig_Building_Destroyed_Remove_From_Group1_Conditions))
    call TriggerAddAction(gg_trg_Building_Destroyed_Remove_From_Group1, function Trig_Building_Destroyed_Remove_From_Group1_Actions)
endfunction

//===========================================================================
// Trigger: Building Destroyed Remove From Group2
//===========================================================================
function Trig_Building_Destroyed_Remove_From_Group2_Conditions takes nothing returns boolean
    if ( not ( IsUnitInGroup(GetTriggerUnit(), udg_Buildings2) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Building_Destroyed_Remove_From_Group2_Func005001 takes nothing returns boolean
    return ( CountUnitsInGroup(udg_Buildings2) == 0 )
endfunction

function Trig_Building_Destroyed_Remove_From_Group2_Actions takes nothing returns nothing
    call PlaySoundBJ(gg_snd_CityBuildingDeath1)
    call GroupRemoveUnitSimple(GetDyingUnit(), udg_Buildings2)
    if ( Trig_Building_Destroyed_Remove_From_Group2_Func005001() ) then
        set udg_RegionsArray[2]=gg_rct_NULL
    else
        call DoNothing()
    endif
    call ConditionalTriggerExecute(gg_trg_Malganis_Reacquires_Nearest_Building)
endfunction

//===========================================================================
function InitTrig_Building_Destroyed_Remove_From_Group2 takes nothing returns nothing
    set gg_trg_Building_Destroyed_Remove_From_Group2=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Building_Destroyed_Remove_From_Group2, Player(10), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Building_Destroyed_Remove_From_Group2, Player(11), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Building_Destroyed_Remove_From_Group2, Condition(function Trig_Building_Destroyed_Remove_From_Group2_Conditions))
    call TriggerAddAction(gg_trg_Building_Destroyed_Remove_From_Group2, function Trig_Building_Destroyed_Remove_From_Group2_Actions)
endfunction

//===========================================================================
// Trigger: Building Destroyed Remove From Group3
//===========================================================================
function Trig_Building_Destroyed_Remove_From_Group3_Conditions takes nothing returns boolean
    if ( not ( IsUnitInGroup(GetTriggerUnit(), udg_Buildings3) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Building_Destroyed_Remove_From_Group3_Func005001 takes nothing returns boolean
    return ( CountUnitsInGroup(udg_Buildings3) == 0 )
endfunction

function Trig_Building_Destroyed_Remove_From_Group3_Actions takes nothing returns nothing
    call PlaySoundBJ(gg_snd_CityBuildingDeath1)
    call GroupRemoveUnitSimple(GetDyingUnit(), udg_Buildings3)
    if ( Trig_Building_Destroyed_Remove_From_Group3_Func005001() ) then
        set udg_RegionsArray[3]=gg_rct_NULL
    else
        call DoNothing()
    endif
    call ConditionalTriggerExecute(gg_trg_Malganis_Reacquires_Nearest_Building)
endfunction

//===========================================================================
function InitTrig_Building_Destroyed_Remove_From_Group3 takes nothing returns nothing
    set gg_trg_Building_Destroyed_Remove_From_Group3=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Building_Destroyed_Remove_From_Group3, Player(10), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Building_Destroyed_Remove_From_Group3, Player(11), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Building_Destroyed_Remove_From_Group3, Condition(function Trig_Building_Destroyed_Remove_From_Group3_Conditions))
    call TriggerAddAction(gg_trg_Building_Destroyed_Remove_From_Group3, function Trig_Building_Destroyed_Remove_From_Group3_Actions)
endfunction

//===========================================================================
// Trigger: Building Destroyed Remove From Group4
//===========================================================================
function Trig_Building_Destroyed_Remove_From_Group4_Conditions takes nothing returns boolean
    if ( not ( IsUnitInGroup(GetTriggerUnit(), udg_Buildings4) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Building_Destroyed_Remove_From_Group4_Func005001 takes nothing returns boolean
    return ( CountUnitsInGroup(udg_Buildings4) == 0 )
endfunction

function Trig_Building_Destroyed_Remove_From_Group4_Actions takes nothing returns nothing
    call PlaySoundBJ(gg_snd_CityBuildingDeath1)
    call GroupRemoveUnitSimple(GetDyingUnit(), udg_Buildings4)
    if ( Trig_Building_Destroyed_Remove_From_Group4_Func005001() ) then
        set udg_RegionsArray[4]=gg_rct_NULL
    else
        call DoNothing()
    endif
    call ConditionalTriggerExecute(gg_trg_Malganis_Reacquires_Nearest_Building)
endfunction

//===========================================================================
function InitTrig_Building_Destroyed_Remove_From_Group4 takes nothing returns nothing
    set gg_trg_Building_Destroyed_Remove_From_Group4=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Building_Destroyed_Remove_From_Group4, Player(10), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Building_Destroyed_Remove_From_Group4, Player(11), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Building_Destroyed_Remove_From_Group4, Condition(function Trig_Building_Destroyed_Remove_From_Group4_Conditions))
    call TriggerAddAction(gg_trg_Building_Destroyed_Remove_From_Group4, function Trig_Building_Destroyed_Remove_From_Group4_Actions)
endfunction

//===========================================================================
// Trigger: Building Destroyed Remove From Group5
//===========================================================================
function Trig_Building_Destroyed_Remove_From_Group5_Conditions takes nothing returns boolean
    if ( not ( IsUnitInGroup(GetTriggerUnit(), udg_Buildings5) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Building_Destroyed_Remove_From_Group5_Func006001 takes nothing returns boolean
    return ( CountUnitsInGroup(udg_Buildings5) == 0 )
endfunction

function Trig_Building_Destroyed_Remove_From_Group5_Actions takes nothing returns nothing
    call PlaySoundBJ(gg_snd_CityBuildingDeath1)
    call GroupRemoveUnitSimple(GetDyingUnit(), udg_Buildings5)
    if ( Trig_Building_Destroyed_Remove_From_Group5_Func006001() ) then
        set udg_RegionsArray[5]=gg_rct_NULL
    else
        call DoNothing()
    endif
    call ConditionalTriggerExecute(gg_trg_Malganis_Reacquires_Nearest_Building)
endfunction

//===========================================================================
function InitTrig_Building_Destroyed_Remove_From_Group5 takes nothing returns nothing
    set gg_trg_Building_Destroyed_Remove_From_Group5=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Building_Destroyed_Remove_From_Group5, Player(10), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Building_Destroyed_Remove_From_Group5, Player(11), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Building_Destroyed_Remove_From_Group5, Condition(function Trig_Building_Destroyed_Remove_From_Group5_Conditions))
    call TriggerAddAction(gg_trg_Building_Destroyed_Remove_From_Group5, function Trig_Building_Destroyed_Remove_From_Group5_Actions)
endfunction

//===========================================================================
// Trigger: Initialize Region Array
//
// RegionBucket is initialized to 1 by the map.
//===========================================================================
function Trig_Initialize_Region_Array_Actions takes nothing returns nothing
    set udg_RegionsArray[1]=gg_rct_Malganis_Sneak1
    set udg_RegionsArray[2]=gg_rct_Malganis_Sneak2
    set udg_RegionsArray[3]=gg_rct_Malganis_Sneak3
    set udg_RegionsArray[4]=gg_rct_Malganis_Sneak4
    set udg_RegionsArray[5]=gg_rct_Malganis_Sneak5
    set udg_RegionLength=5
    set udg_RegionPicked=udg_RegionsArray[udg_RegionBucket]
endfunction

//===========================================================================
function InitTrig_Initialize_Region_Array takes nothing returns nothing
    set gg_trg_Initialize_Region_Array=CreateTrigger()
    call TriggerAddAction(gg_trg_Initialize_Region_Array, function Trig_Initialize_Region_Array_Actions)
endfunction

//===========================================================================
// Trigger: Choose Buildings
//
// RegionPicked is the actual region that Malganis chooses to go to when he has created his Death Squad.
//===========================================================================
function Trig_Choose_Buildings_Func002001 takes nothing returns boolean
    return ( udg_TargetArrayLength == 0 )
endfunction

function Trig_Choose_Buildings_Actions takes nothing returns nothing
    call TriggerExecute(gg_trg_Create_Target_Array)
    if ( Trig_Choose_Buildings_Func002001() ) then
        call ConditionalTriggerExecute(gg_trg_Choose_Default_Region)
    else
        call ConditionalTriggerExecute(gg_trg_Choose_Random_Region)
    endif
endfunction

//===========================================================================
function InitTrig_Choose_Buildings takes nothing returns nothing
    set gg_trg_Choose_Buildings=CreateTrigger()
    call TriggerAddAction(gg_trg_Choose_Buildings, function Trig_Choose_Buildings_Actions)
endfunction

//===========================================================================
// Trigger: Choose Default Region
//===========================================================================
function Trig_Choose_Default_Region_Actions takes nothing returns nothing
    set udg_BuildingsGone=true
    set udg_RegionBucket=5
    set udg_RegionPicked=gg_rct_Malganis_Sneak5
endfunction

//===========================================================================
function InitTrig_Choose_Default_Region takes nothing returns nothing
    set gg_trg_Choose_Default_Region=CreateTrigger()
    call TriggerAddAction(gg_trg_Choose_Default_Region, function Trig_Choose_Default_Region_Actions)
endfunction

//===========================================================================
// Trigger: Choose Random Region
//===========================================================================
function Trig_Choose_Random_Region_Actions takes nothing returns nothing
    set udg_RegionBucket=udg_TargetArray[GetRandomInt(1, udg_TargetArrayLength)]
    set udg_RegionPicked=udg_RegionsArray[udg_RegionBucket]
endfunction

//===========================================================================
function InitTrig_Choose_Random_Region takes nothing returns nothing
    set gg_trg_Choose_Random_Region=CreateTrigger()
    call TriggerAddAction(gg_trg_Choose_Random_Region, function Trig_Choose_Random_Region_Actions)
endfunction

//===========================================================================
// Trigger: Create Target Array
//===========================================================================
function Trig_Create_Target_Array_Actions takes nothing returns nothing
    set udg_TargetArrayLength=0
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=5
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call TriggerExecute(gg_trg_Target_Array_Loop)
        set bj_forLoopAIndex=bj_forLoopAIndex + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Create_Target_Array takes nothing returns nothing
    set gg_trg_Create_Target_Array=CreateTrigger()
    call TriggerAddAction(gg_trg_Create_Target_Array, function Trig_Create_Target_Array_Actions)
endfunction

//===========================================================================
// Trigger: Target Array Loop
//===========================================================================
function Trig_Target_Array_Loop_Func001001 takes nothing returns boolean
    return ( GetRectCenterX(gg_rct_NULL) != GetRectCenterX(udg_RegionsArray[GetForLoopIndexA()]) )
endfunction

function Trig_Target_Array_Loop_Actions takes nothing returns nothing
    if ( Trig_Target_Array_Loop_Func001001() ) then
        call TriggerExecute(gg_trg_Add_To_Target_Array)
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_Target_Array_Loop takes nothing returns nothing
    set gg_trg_Target_Array_Loop=CreateTrigger()
    call TriggerAddAction(gg_trg_Target_Array_Loop, function Trig_Target_Array_Loop_Actions)
endfunction

//===========================================================================
// Trigger: Add To Target Array
//===========================================================================
function Trig_Add_To_Target_Array_Actions takes nothing returns nothing
    set udg_TargetArrayLength=( udg_TargetArrayLength + 1 )
    set udg_TargetArray[udg_TargetArrayLength]=GetForLoopIndexA()
endfunction

//===========================================================================
function InitTrig_Add_To_Target_Array takes nothing returns nothing
    set gg_trg_Add_To_Target_Array=CreateTrigger()
    call TriggerAddAction(gg_trg_Add_To_Target_Array, function Trig_Add_To_Target_Array_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Countdown Timer Create
//===========================================================================
function Trig_Malganis_Countdown_Timer_Create_Conditions takes nothing returns boolean
    if ( not ( GetDyingUnit() == udg_MalganisVariable ) ) then
        return false
    endif
    return true
endfunction

function Trig_Malganis_Countdown_Timer_Create_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call CreateTimerDialogBJ(udg_MalganisTimer, "TRIGSTR_123")
    set udg_MalganisCountdown=GetLastCreatedTimerDialogBJ()
    call TimerDialogSetTitleColorBJ(udg_MalganisCountdown, 100.00, 0.00, 100.00, 0.00)
endfunction

//===========================================================================
function InitTrig_Malganis_Countdown_Timer_Create takes nothing returns nothing
    set gg_trg_Malganis_Countdown_Timer_Create=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Malganis_Countdown_Timer_Create, Player(6), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Malganis_Countdown_Timer_Create, Condition(function Trig_Malganis_Countdown_Timer_Create_Conditions))
    call TriggerAddAction(gg_trg_Malganis_Countdown_Timer_Create, function Trig_Malganis_Countdown_Timer_Create_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Countdown Timer Counts
//
// Run by Malganis Death Squad 1,2,3.
//===========================================================================
function Trig_Malganis_Countdown_Timer_Counts_Func001001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Malganis_Countdown_Timer_Counts_Func002001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_NORMAL )
endfunction

function Trig_Malganis_Countdown_Timer_Counts_Func003001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_EASY )
endfunction

function Trig_Malganis_Countdown_Timer_Counts_Actions takes nothing returns nothing
    if ( Trig_Malganis_Countdown_Timer_Counts_Func001001() ) then
        call StartTimerBJ(udg_MalganisTimer, false, 90.00)
    else
        call DoNothing()
    endif
    if ( Trig_Malganis_Countdown_Timer_Counts_Func002001() ) then
        call StartTimerBJ(udg_MalganisTimer, false, 180.00)
    else
        call DoNothing()
    endif
    if ( Trig_Malganis_Countdown_Timer_Counts_Func003001() ) then
        call StartTimerBJ(udg_MalganisTimer, false, 240.00)
    else
        call DoNothing()
    endif
    call TimerDialogDisplayBJ(true, udg_MalganisCountdown)
endfunction

//===========================================================================
function InitTrig_Malganis_Countdown_Timer_Counts takes nothing returns nothing
    set gg_trg_Malganis_Countdown_Timer_Counts=CreateTrigger()
    call TriggerAddAction(gg_trg_Malganis_Countdown_Timer_Counts, function Trig_Malganis_Countdown_Timer_Counts_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Countdown Timer Hits 0
//
// Runs when Timer expires (hopefully).
//===========================================================================
function Trig_Malganis_Countdown_Timer_Hits_0_Conditions takes nothing returns boolean
    if ( not ( udg_EndCinematicPlaying == false ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Malganis_Countdown_Timer_Hits_0_Func014001 takes nothing returns boolean
    return ( udg_NextSquad == 1 )
endfunction

function Trig_Malganis_Countdown_Timer_Hits_0_Func014003001 takes nothing returns boolean
    return ( udg_NextSquad == 2 )
endfunction

function Trig_Malganis_Countdown_Timer_Hits_0_Func015001 takes nothing returns boolean
    return ( udg_EndCinematicPlaying == false )
endfunction

function Trig_Malganis_Countdown_Timer_Hits_0_Actions takes nothing returns nothing
    set udg_BootingPlayer=false
    call CommandAI(Player(6), 7, 0)
    call CommandAI(Player(6), 6, R2I(GetLocationY(GetRectCenter(gg_rct_Malganis_Revive))))
    call CommandAI(Player(6), 5, R2I(GetLocationX(GetRectCenter(gg_rct_Malganis_Revive))))
    call TriggerSleepAction(1.00)
    set udg_BootingPlayer=false
    call ReviveHeroLoc(udg_MalganisVariable, GetRectCenter(gg_rct_Malganis_Revive), true)
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_MalganisVariable, "TRIGSTR_005", gg_snd_H06MalGanis41, "TRIGSTR_006", bj_TIMETYPE_ADD, 0.00, true)
    call VolumeGroupResetBJ()
    if ( Trig_Malganis_Countdown_Timer_Hits_0_Func014001() ) then
        call TriggerExecute(gg_trg_Create_Sqaud_1)
    else
        if ( Trig_Malganis_Countdown_Timer_Hits_0_Func014003001() ) then
            call TriggerExecute(gg_trg_Create_Squad_2)
        else
            call TriggerExecute(gg_trg_Create_Squad_3)
        endif
    endif
    if ( Trig_Malganis_Countdown_Timer_Hits_0_Func015001() ) then
        call ConditionalTriggerExecute(gg_trg_Teleport_Malganis)
    else
        call DoNothing()
    endif
    call TimerDialogDisplayBJ(false, udg_MalganisCountdown)
endfunction

//===========================================================================
function InitTrig_Malganis_Countdown_Timer_Hits_0 takes nothing returns nothing
    set gg_trg_Malganis_Countdown_Timer_Hits_0=CreateTrigger()
    call TriggerRegisterTimerExpireEventBJ(gg_trg_Malganis_Countdown_Timer_Hits_0, udg_MalganisTimer)
    call TriggerAddCondition(gg_trg_Malganis_Countdown_Timer_Hits_0, Condition(function Trig_Malganis_Countdown_Timer_Hits_0_Conditions))
    call TriggerAddAction(gg_trg_Malganis_Countdown_Timer_Hits_0, function Trig_Malganis_Countdown_Timer_Hits_0_Actions)
endfunction

//===========================================================================
// Trigger: Arthas Says Forgive Me
//===========================================================================
function Trig_Arthas_Says_Forgive_Me_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == udg_ArthasVariable ) ) then
        return false
    endif
    if ( not ( udg_EndCinematicPlaying == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Arthas_Says_Forgive_Me_Actions takes nothing returns nothing
    call QueuedTriggerAddBJ(gg_trg_Arthas_Says_Forgive_Me_Que, true)
    call DisableTrigger(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Arthas_Says_Forgive_Me takes nothing returns nothing
    set gg_trg_Arthas_Says_Forgive_Me=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Arthas_Says_Forgive_Me, gg_rct_Forgive_Me)
    call TriggerAddCondition(gg_trg_Arthas_Says_Forgive_Me, Condition(function Trig_Arthas_Says_Forgive_Me_Conditions))
    call TriggerAddAction(gg_trg_Arthas_Says_Forgive_Me, function Trig_Arthas_Says_Forgive_Me_Actions)
endfunction

//===========================================================================
// Trigger: Arthas Says Forgive Me Que
//===========================================================================
function Trig_Arthas_Says_Forgive_Me_Que_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Arthas_Says_Forgive_Me_Que_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_058", gg_snd_H06Arthas30, "TRIGSTR_099", bj_TIMETYPE_ADD, 0, true)
    call VolumeGroupResetBJ()
    call QueuedTriggerRemoveBJ(GetTriggeringTrigger())
endfunction

//===========================================================================
function InitTrig_Arthas_Says_Forgive_Me_Que takes nothing returns nothing
    set gg_trg_Arthas_Says_Forgive_Me_Que=CreateTrigger()
    call TriggerAddCondition(gg_trg_Arthas_Says_Forgive_Me_Que, Condition(function Trig_Arthas_Says_Forgive_Me_Que_Conditions))
    call TriggerAddAction(gg_trg_Arthas_Says_Forgive_Me_Que, function Trig_Arthas_Says_Forgive_Me_Que_Actions)
endfunction

//===========================================================================
// Trigger: Initialize Buildings To Attack Array
//===========================================================================
function Trig_Initialize_Buildings_To_Attack_Array_Actions takes nothing returns nothing
    set udg_BuildingsToAttackArray[1]=udg_Buildings1
    set udg_BuildingsToAttackArray[2]=udg_Buildings2
    set udg_BuildingsToAttackArray[3]=udg_Buildings3
    set udg_BuildingsToAttackArray[4]=udg_Buildings4
    set udg_BuildingsToAttackArray[5]=udg_Buildings5
endfunction

//===========================================================================
function InitTrig_Initialize_Buildings_To_Attack_Array takes nothing returns nothing
    set gg_trg_Initialize_Buildings_To_Attack_Array=CreateTrigger()
    call TriggerAddAction(gg_trg_Initialize_Buildings_To_Attack_Array, function Trig_Initialize_Buildings_To_Attack_Array_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Death Squad 1
//===========================================================================
function Trig_Malganis_Death_Squad_1_Conditions takes nothing returns boolean
    if ( not ( GetDyingUnit() == udg_MalganisVariable ) ) then
        return false
    endif
    if ( not ( udg_ArthasDenials <= 20.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Malganis_Death_Squad_1_Actions takes nothing returns nothing
    // Malganis is dead, send his units after the player
    call CommandAI(Player(6), 4, 1)
    call GroupClear(udg_MalganisDeathSquad)
    set udg_NextSquad=1
    call TriggerExecute(gg_trg_Malganis_Countdown_Timer_Counts)
endfunction

//===========================================================================
function InitTrig_Malganis_Death_Squad_1 takes nothing returns nothing
    set gg_trg_Malganis_Death_Squad_1=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Malganis_Death_Squad_1, Player(6), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Malganis_Death_Squad_1, Condition(function Trig_Malganis_Death_Squad_1_Conditions))
    call TriggerAddAction(gg_trg_Malganis_Death_Squad_1, function Trig_Malganis_Death_Squad_1_Actions)
endfunction

//===========================================================================
// Trigger: Create Sqaud 1
//===========================================================================
function Trig_Create_Sqaud_1_Func012001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Sqaud_1_Func013001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Sqaud_1_Actions takes nothing returns nothing
    call GroupAddUnitSimple(udg_MalganisVariable, udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'uabo', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    if ( Trig_Create_Sqaud_1_Func012001() ) then
        call CreateNUnitsAtLoc(1, 'unec', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Sqaud_1_Func013001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_Create_Sqaud_1 takes nothing returns nothing
    set gg_trg_Create_Sqaud_1=CreateTrigger()
    call TriggerAddAction(gg_trg_Create_Sqaud_1, function Trig_Create_Sqaud_1_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Death Squad 2
//===========================================================================
function Trig_Malganis_Death_Squad_2_Conditions takes nothing returns boolean
    if ( not ( GetDyingUnit() == udg_MalganisVariable ) ) then
        return false
    endif
    if ( not ( udg_ArthasDenials >= 21.00 ) ) then
        return false
    endif
    if ( not ( udg_ArthasDenials <= 50.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Malganis_Death_Squad_2_Actions takes nothing returns nothing
    // Malganis is dead, send his units after the player
    call CommandAI(Player(6), 4, 1)
    call GroupClear(udg_MalganisDeathSquad)
    set udg_NextSquad=2
    call TriggerExecute(gg_trg_Malganis_Countdown_Timer_Counts)
endfunction

//===========================================================================
function InitTrig_Malganis_Death_Squad_2 takes nothing returns nothing
    set gg_trg_Malganis_Death_Squad_2=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Malganis_Death_Squad_2, Player(6), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Malganis_Death_Squad_2, Condition(function Trig_Malganis_Death_Squad_2_Conditions))
    call TriggerAddAction(gg_trg_Malganis_Death_Squad_2, function Trig_Malganis_Death_Squad_2_Actions)
endfunction

//===========================================================================
// Trigger: Create Squad 2
//===========================================================================
function Trig_Create_Squad_2_Func014001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Squad_2_Func015001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Squad_2_Func016001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Squad_2_Func017001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Squad_2_Actions takes nothing returns nothing
    call GroupAddUnitSimple(udg_MalganisVariable, udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'uabo', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'uabo', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    if ( Trig_Create_Squad_2_Func014001() ) then
        call CreateNUnitsAtLoc(1, 'unec', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Squad_2_Func015001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Squad_2_Func016001() ) then
        call CreateNUnitsAtLoc(1, 'unec', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Squad_2_Func017001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_Create_Squad_2 takes nothing returns nothing
    set gg_trg_Create_Squad_2=CreateTrigger()
    call TriggerAddAction(gg_trg_Create_Squad_2, function Trig_Create_Squad_2_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Death Squad 3
//===========================================================================
function Trig_Malganis_Death_Squad_3_Conditions takes nothing returns boolean
    if ( not ( GetDyingUnit() == udg_MalganisVariable ) ) then
        return false
    endif
    if ( not ( udg_ArthasDenials >= 51.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Malganis_Death_Squad_3_Actions takes nothing returns nothing
    // Malganis is dead, send his units after the player
    call CommandAI(Player(6), 4, 1)
    call GroupClear(udg_MalganisDeathSquad)
    set udg_NextSquad=3
    call TriggerExecute(gg_trg_Malganis_Countdown_Timer_Counts)
endfunction

//===========================================================================
function InitTrig_Malganis_Death_Squad_3 takes nothing returns nothing
    set gg_trg_Malganis_Death_Squad_3=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Malganis_Death_Squad_3, Player(6), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Malganis_Death_Squad_3, Condition(function Trig_Malganis_Death_Squad_3_Conditions))
    call TriggerAddAction(gg_trg_Malganis_Death_Squad_3, function Trig_Malganis_Death_Squad_3_Actions)
endfunction

//===========================================================================
// Trigger: Create Squad 3
//===========================================================================
function Trig_Create_Squad_3_Func018001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Squad_3_Func019001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Squad_3_Func020001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Squad_3_Func021001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Squad_3_Func022001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Squad_3_Func023001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Squad_3_Func024001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Squad_3_Func025001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Create_Squad_3_Actions takes nothing returns nothing
    call GroupAddUnitSimple(udg_MalganisVariable, udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'uabo', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'uabo', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'uabo', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    if ( Trig_Create_Squad_3_Func018001() ) then
        call CreateNUnitsAtLoc(1, 'unec', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Squad_3_Func019001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Squad_3_Func020001() ) then
        call CreateNUnitsAtLoc(1, 'unec', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Squad_3_Func021001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Squad_3_Func022001() ) then
        call CreateNUnitsAtLoc(1, 'umtw', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Squad_3_Func023001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Squad_3_Func024001() ) then
        call CreateNUnitsAtLoc(1, 'uabo', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Create_Squad_3_Func025001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_Create_Squad_3 takes nothing returns nothing
    set gg_trg_Create_Squad_3=CreateTrigger()
    call TriggerAddAction(gg_trg_Create_Squad_3, function Trig_Create_Squad_3_Actions)
endfunction

//===========================================================================
// Trigger: Add To Death Squad Denials at 21
//
// Also signals to AI to start Junkyard Dog behavior.
//===========================================================================
function Trig_Add_To_Death_Squad_Denials_at_21_Func002001 takes nothing returns boolean
    return ( IsUnitDeadBJ(udg_MalganisVariable) == true )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func003001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) < 4 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func004001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) <= 4 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func005001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) < 4 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func006001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) <= 4 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func007001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) < 4 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func008001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) <= 4 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func009001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) < 4 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func010001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) <= 4 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func011001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'uabo')) < 2 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func012001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'uabo')) <= 2 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func013001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'uabo')) < 2 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func014001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'uabo')) <= 2 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func015001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func016001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func017001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Func018001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_21_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func002001() ) then
        return
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func003001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'ugho', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func004001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func005001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'ugho', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func006001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func007001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'ugho', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func008001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func009001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'ugho', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func010001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func011001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'uabo', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func012001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func013001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'uabo', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func014001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func015001() ) then
        call CreateNUnitsAtLoc(1, 'unec', Player(6), GetUnitLoc(udg_MalganisVariable), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func016001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func017001() ) then
        call CreateNUnitsAtLoc(1, 'unec', Player(6), GetUnitLoc(udg_MalganisVariable), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_21_Func018001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    call ConditionalTriggerExecute(gg_trg_Malganis_Booting_Player)
endfunction

//===========================================================================
function InitTrig_Add_To_Death_Squad_Denials_at_21 takes nothing returns nothing
    set gg_trg_Add_To_Death_Squad_Denials_at_21=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Add_To_Death_Squad_Denials_at_21, "udg_ArthasDenials", GREATER_THAN_OR_EQUAL, 21.00)
    call TriggerAddAction(gg_trg_Add_To_Death_Squad_Denials_at_21, function Trig_Add_To_Death_Squad_Denials_at_21_Actions)
endfunction

//===========================================================================
// Trigger: Add To Death Squad Denials at 51
//
// Also signals to AI to start Junkyard Dog behavior.
//===========================================================================
function Trig_Add_To_Death_Squad_Denials_at_51_Func002001 takes nothing returns boolean
    return ( IsUnitDeadBJ(udg_MalganisVariable) == true )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func003001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) < 5 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func004001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) <= 5 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func005001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) < 5 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func006001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) <= 5 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func007001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) < 5 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func008001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) <= 5 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func009001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) < 5 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func010001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) <= 5 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func011001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) < 5 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func012001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'ugho')) <= 5 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func013001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'uabo')) < 3 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func014001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'uabo')) <= 3 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func015001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'uabo')) < 3 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func016001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'uabo')) <= 3 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func017001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'uabo')) < 3 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func018001 takes nothing returns boolean
    return ( CountUnitsInGroup(GetUnitsOfPlayerAndTypeId(Player(6), 'uabo')) <= 3 )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func019001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func020001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func021001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func022001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func023001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func024001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func025001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func026001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func027001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Func028001 takes nothing returns boolean
    return ( GetGameDifficulty() == MAP_DIFFICULTY_HARD )
endfunction

function Trig_Add_To_Death_Squad_Denials_at_51_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func002001() ) then
        return
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func003001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'ugho', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func004001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func005001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'ugho', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func006001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func007001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'ugho', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func008001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func009001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'ugho', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func010001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func011001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'ugho', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func012001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func013001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'uabo', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func014001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func015001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'uabo', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func016001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func017001() ) then
        call CreateNUnitsAtLocFacingLocBJ(1, 'uabo', Player(6), GetUnitLoc(udg_MalganisVariable), GetRectCenter(GetPlayableMapRect()))
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func018001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func019001() ) then
        call CreateNUnitsAtLoc(1, 'ugho', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func020001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func021001() ) then
        call CreateNUnitsAtLoc(1, 'unec', Player(6), GetUnitLoc(udg_MalganisVariable), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func022001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func023001() ) then
        call CreateNUnitsAtLoc(1, 'unec', Player(6), GetUnitLoc(udg_MalganisVariable), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func024001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func025001() ) then
        call CreateNUnitsAtLoc(1, 'umtw', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func026001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func027001() ) then
        call CreateNUnitsAtLoc(1, 'uabo', Player(6), GetRectCenter(gg_rct_MalganisSpawnDS), 0.00)
    else
        call DoNothing()
    endif
    if ( Trig_Add_To_Death_Squad_Denials_at_51_Func028001() ) then
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_MalganisDeathSquad)
    else
        call DoNothing()
    endif
    call ConditionalTriggerExecute(gg_trg_Malganis_Booting_Player)
endfunction

//===========================================================================
function InitTrig_Add_To_Death_Squad_Denials_at_51 takes nothing returns nothing
    set gg_trg_Add_To_Death_Squad_Denials_at_51=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Add_To_Death_Squad_Denials_at_51, "udg_ArthasDenials", GREATER_THAN_OR_EQUAL, 51.00)
    call TriggerAddAction(gg_trg_Add_To_Death_Squad_Denials_at_51, function Trig_Add_To_Death_Squad_Denials_at_51_Actions)
endfunction

//===========================================================================
// Trigger: Das Boot to Arthas
//
// When Arthas is ejected from the city, stop Junkyard Dog.
//===========================================================================
function Trig_Das_Boot_to_Arthas_Func006001001002001 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Das_Boot_to_Arthas_Func006001001002002 takes nothing returns boolean
    return ( GetOwningPlayer(GetFilterUnit()) == udg_ThePlayer )
endfunction

function Trig_Das_Boot_to_Arthas_Func006001001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Das_Boot_to_Arthas_Func006001001002001(), Trig_Das_Boot_to_Arthas_Func006001001002002())
endfunction

function Trig_Das_Boot_to_Arthas_Func007001001002001 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Das_Boot_to_Arthas_Func007001001002002 takes nothing returns boolean
    return ( GetOwningPlayer(GetFilterUnit()) == udg_ThePlayer )
endfunction

function Trig_Das_Boot_to_Arthas_Func007001001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Das_Boot_to_Arthas_Func007001001002001(), Trig_Das_Boot_to_Arthas_Func007001001002002())
endfunction

function Trig_Das_Boot_to_Arthas_Func008001001002001 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Das_Boot_to_Arthas_Func008001001002002 takes nothing returns boolean
    return ( GetOwningPlayer(GetFilterUnit()) == udg_ThePlayer )
endfunction

function Trig_Das_Boot_to_Arthas_Func008001001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Das_Boot_to_Arthas_Func008001001002001(), Trig_Das_Boot_to_Arthas_Func008001001002002())
endfunction

function Trig_Das_Boot_to_Arthas_Conditions takes nothing returns boolean
    if ( not ( CountUnitsInGroup(GetUnitsInRectMatching(gg_rct_DasBoot1, Condition(function Trig_Das_Boot_to_Arthas_Func006001001002))) == 0 ) ) then
        return false
    endif
    if ( not ( CountUnitsInGroup(GetUnitsInRectMatching(gg_rct_DasBoot2, Condition(function Trig_Das_Boot_to_Arthas_Func007001001002))) == 0 ) ) then
        return false
    endif
    if ( not ( CountUnitsInGroup(GetUnitsInRectMatching(gg_rct_DasBoot3, Condition(function Trig_Das_Boot_to_Arthas_Func008001001002))) == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Das_Boot_to_Arthas_Func002001 takes nothing returns boolean
    return ( IsUnitDeadBJ(udg_MalganisVariable) == true )
endfunction

function Trig_Das_Boot_to_Arthas_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    if ( Trig_Das_Boot_to_Arthas_Func002001() ) then
        return
    else
        call DoNothing()
    endif
    set udg_BootingPlayer=false
    set udg_TeleportFast=true
    call ConditionalTriggerExecute(gg_trg_Teleport_Malganis)
endfunction

//===========================================================================
function InitTrig_Das_Boot_to_Arthas takes nothing returns nothing
    set gg_trg_Das_Boot_to_Arthas=CreateTrigger()
    call DisableTrigger(gg_trg_Das_Boot_to_Arthas)
    call TriggerRegisterLeaveRectSimple(gg_trg_Das_Boot_to_Arthas, gg_rct_DasBoot1)
    call TriggerRegisterLeaveRectSimple(gg_trg_Das_Boot_to_Arthas, gg_rct_DasBoot2)
    call TriggerRegisterLeaveRectSimple(gg_trg_Das_Boot_to_Arthas, gg_rct_DasBoot3)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Das_Boot_to_Arthas, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Das_Boot_to_Arthas, Condition(function Trig_Das_Boot_to_Arthas_Conditions))
    call TriggerAddAction(gg_trg_Das_Boot_to_Arthas, function Trig_Das_Boot_to_Arthas_Actions)
endfunction

//===========================================================================
// Trigger: Das Boot Malganis Leaving City
//
// When Arthas is ejected from the city, stop Junkyard Dog.
//===========================================================================
function Trig_Das_Boot_Malganis_Leaving_City_Conditions takes nothing returns boolean
    if ( not ( GetEnteringUnit() == udg_MalganisVariable ) ) then
        return false
    endif
    return true
endfunction

function Trig_Das_Boot_Malganis_Leaving_City_Actions takes nothing returns nothing
    set udg_BootingPlayer=false
    set udg_TeleportFast=true
    call ConditionalTriggerExecute(gg_trg_Teleport_Malganis)
endfunction

//===========================================================================
function InitTrig_Das_Boot_Malganis_Leaving_City takes nothing returns nothing
    set gg_trg_Das_Boot_Malganis_Leaving_City=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Das_Boot_Malganis_Leaving_City, gg_rct_DasMalganisSTOP)
    call TriggerAddCondition(gg_trg_Das_Boot_Malganis_Leaving_City, Condition(function Trig_Das_Boot_Malganis_Leaving_City_Conditions))
    call TriggerAddAction(gg_trg_Das_Boot_Malganis_Leaving_City, function Trig_Das_Boot_Malganis_Leaving_City_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Reacquires Nearest Building
//===========================================================================
function Trig_Malganis_Reacquires_Nearest_Building_Conditions takes nothing returns boolean
    if ( not ( IsUnitDeadBJ(udg_MalganisVariable) == false ) ) then
        return false
    endif
    if ( not ( GetTriggerUnit() == udg_MalganisTargetHouse ) ) then
        return false
    endif
    return true
endfunction

function Trig_Malganis_Reacquires_Nearest_Building_Func003001 takes nothing returns boolean
    return ( udg_EndCinematicPlaying == true )
endfunction

function Trig_Malganis_Reacquires_Nearest_Building_Func004001 takes nothing returns boolean
    return ( udg_BootingPlayer == true )
endfunction

function Trig_Malganis_Reacquires_Nearest_Building_Func005001 takes nothing returns boolean
    return ( IsUnitDeadBJ(udg_MalganisVariable) == true )
endfunction

function Trig_Malganis_Reacquires_Nearest_Building_Func006001 takes nothing returns boolean
    return ( GetRectCenterX(udg_RegionsArray[udg_RegionBucket]) != GetRectCenterX(gg_rct_NULL) )
endfunction

function Trig_Malganis_Reacquires_Nearest_Building_Actions takes nothing returns nothing
    call TriggerSleepAction(10.00)
    if ( Trig_Malganis_Reacquires_Nearest_Building_Func003001() ) then
        return
    else
        call DoNothing()
    endif
    if ( Trig_Malganis_Reacquires_Nearest_Building_Func004001() ) then
        return
    else
        call DoNothing()
    endif
    if ( Trig_Malganis_Reacquires_Nearest_Building_Func005001() ) then
        return
    else
        call DoNothing()
    endif
    if ( Trig_Malganis_Reacquires_Nearest_Building_Func006001() ) then
        call ConditionalTriggerExecute(gg_trg_Malganis_Acquires_Nearest_Building)
    else
        call ConditionalTriggerExecute(gg_trg_Teleport_Malganis)
    endif
endfunction

//===========================================================================
function InitTrig_Malganis_Reacquires_Nearest_Building takes nothing returns nothing
    set gg_trg_Malganis_Reacquires_Nearest_Building=CreateTrigger()
    call TriggerAddCondition(gg_trg_Malganis_Reacquires_Nearest_Building, Condition(function Trig_Malganis_Reacquires_Nearest_Building_Conditions))
    call TriggerAddAction(gg_trg_Malganis_Reacquires_Nearest_Building, function Trig_Malganis_Reacquires_Nearest_Building_Actions)
endfunction

//===========================================================================
// Trigger: Teleport Malganis
//===========================================================================
function Trig_Teleport_Malganis_Conditions takes nothing returns boolean
    if ( not ( udg_Teleporting == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Teleport_Malganis_Func004001 takes nothing returns boolean
    return ( udg_TeleportFast == true )
endfunction

function Trig_Teleport_Malganis_Func005001 takes nothing returns boolean
    return ( udg_EndCinematicPlaying == true )
endfunction

function Trig_Teleport_Malganis_Func011001 takes nothing returns boolean
    return ( udg_EndCinematicPlaying == true )
endfunction

function Trig_Teleport_Malganis_Func019002 takes nothing returns nothing
    call SetUnitPositionLoc(GetEnumUnit(), GetRectCenter(udg_RegionPicked))
endfunction

function Trig_Teleport_Malganis_Func020001 takes nothing returns boolean
    return ( udg_BuildingsGone == false )
endfunction

function Trig_Teleport_Malganis_Actions takes nothing returns nothing
    set udg_Teleporting=true
    call TriggerExecute(gg_trg_Choose_Buildings)
    if ( Trig_Teleport_Malganis_Func004001() ) then
        call TriggerSleepAction(3.00)
    else
        call TriggerSleepAction(11.00)
    endif
    if ( Trig_Teleport_Malganis_Func005001() ) then
        return
    else
        call DoNothing()
    endif
    call SetSoundPositionLocBJ(gg_snd_MassTeleportTarget, GetRectCenter(udg_RegionPicked), 0)
    call PlaySoundBJ(gg_snd_MassTeleportTarget)
    call AddSpecialEffectLocBJ(GetRectCenter(udg_RegionPicked), "Abilities\\Spells\\Undead\\DarkSummoning\\DarkSummonTarget.mdl")
    set udg_TeleportEffect=GetLastCreatedEffectBJ()
    call TriggerSleepAction(2.00)
    if ( Trig_Teleport_Malganis_Func011001() ) then
        return
    else
        call DoNothing()
    endif
    set udg_Teleporting=false
    set udg_BootingPlayer=false
    set udg_MalganisCaptainX=GetLocationX(GetRectCenter(udg_RegionPicked))
    set udg_MalganisCaptainY=GetLocationY(GetRectCenter(udg_RegionPicked))
    call CommandAI(Player(6), 7, 0)
    call CommandAI(Player(6), 6, R2I(udg_MalganisCaptainY))
    call CommandAI(Player(6), 5, R2I(udg_MalganisCaptainX))
    call ForGroupBJ(udg_MalganisDeathSquad, function Trig_Teleport_Malganis_Func019002)
    if ( Trig_Teleport_Malganis_Func020001() ) then
        call ConditionalTriggerExecute(gg_trg_Malganis_Acquires_Nearest_Building)
    else
        call ConditionalTriggerExecute(gg_trg_Malganis_Booting_Zombies)
    endif
    call TriggerSleepAction(0.20)
    call DestroyEffectBJ(udg_TeleportEffect)
endfunction

//===========================================================================
function InitTrig_Teleport_Malganis takes nothing returns nothing
    set gg_trg_Teleport_Malganis=CreateTrigger()
    call TriggerAddCondition(gg_trg_Teleport_Malganis, Condition(function Trig_Teleport_Malganis_Conditions))
    call TriggerAddAction(gg_trg_Teleport_Malganis, function Trig_Teleport_Malganis_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Acquires Nearest Building
//===========================================================================
function Trig_Malganis_Acquires_Nearest_Building_Conditions takes nothing returns boolean
    if ( not ( udg_BootingPlayer == false ) ) then
        return false
    endif
    if ( not ( IsUnitDeadBJ(udg_MalganisVariable) == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Malganis_Acquires_Nearest_Building_Actions takes nothing returns nothing
    set udg_MalganisTargetHouse=GroupPickRandomUnit(udg_BuildingsToAttackArray[udg_RegionBucket])
    set udg_MalganisTargetHouseX=GetLocationX(GetUnitLoc(udg_MalganisTargetHouse))
    set udg_MalganisTargetHouseY=GetLocationY(GetUnitLoc(udg_MalganisTargetHouse))
    call SetUnitOwner(udg_MalganisTargetHouse, Player(10), false)
    call ConditionalTriggerExecute(gg_trg_Malganis_Continuously_Attacks_Buildings)
endfunction

//===========================================================================
function InitTrig_Malganis_Acquires_Nearest_Building takes nothing returns nothing
    set gg_trg_Malganis_Acquires_Nearest_Building=CreateTrigger()
    call TriggerAddCondition(gg_trg_Malganis_Acquires_Nearest_Building, Condition(function Trig_Malganis_Acquires_Nearest_Building_Conditions))
    call TriggerAddAction(gg_trg_Malganis_Acquires_Nearest_Building, function Trig_Malganis_Acquires_Nearest_Building_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Continuously Attacks Buildings
//
// This gets Malganis going to the next building. 
//===========================================================================
//===========================================================================
function Trig_Malganis_Continuously_Attacks_Buildings_Actions takes nothing returns nothing

    if udg_BootingPlayer or IsUnitDeadBJ(udg_MalganisVariable) then
        return
    endif

    loop
        exitwhen udg_MaySendCommands
        call TriggerSleepAction(0.1)
    endloop
    set udg_MaySendCommands=false
    call StartTimerBJ(udg_TimerMaySendCommands, false, 1.00)

    call CommandAI(Player(6), 3, 0)
    call CommandAI(Player(6), 2, R2I(udg_MalganisTargetHouseY))
    call CommandAI(Player(6), 1, R2I(udg_MalganisTargetHouseX))
endfunction

//===========================================================================
function InitTrig_Malganis_Continuously_Attacks_Buildings takes nothing returns nothing
    set gg_trg_Malganis_Continuously_Attacks_Buildings=CreateTrigger()
    call TriggerAddAction(gg_trg_Malganis_Continuously_Attacks_Buildings, function Trig_Malganis_Continuously_Attacks_Buildings_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Booting Player
//===========================================================================
//===========================================================================
function Trig_Malganis_Booting_Player_Actions takes nothing returns nothing

    if IsUnitDeadBJ(udg_MalganisVariable) then
        return
    endif

    loop
        exitwhen udg_MaySendCommands
        call TriggerSleepAction(0.1)
    endloop
    set udg_MaySendCommands=false
    call StartTimerBJ(udg_TimerMaySendCommands, false, 1.00)

    set udg_BootingPlayer=true

    call CommandAI(Player(6), 4, 1)
    call EnableTrigger(gg_trg_Das_Boot_to_Arthas)
endfunction

//===========================================================================
function InitTrig_Malganis_Booting_Player takes nothing returns nothing
    set gg_trg_Malganis_Booting_Player=CreateTrigger()
    call TriggerAddAction(gg_trg_Malganis_Booting_Player, function Trig_Malganis_Booting_Player_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Booting Zombies
//
// This is used in the event that the player has destroyed all the buildings, but left zombies. Then Mal'Ganis should just go after zombies.
//===========================================================================
function Trig_Malganis_Booting_Zombies_Actions takes nothing returns nothing
    call CommandAI(Player(6), 9, 2)
endfunction

//===========================================================================
function InitTrig_Malganis_Booting_Zombies takes nothing returns nothing
    set gg_trg_Malganis_Booting_Zombies=CreateTrigger()
    call TriggerAddAction(gg_trg_Malganis_Booting_Zombies, function Trig_Malganis_Booting_Zombies_Actions)
endfunction

//===========================================================================
// Trigger: May Send Commands
//===========================================================================
function Trig_May_Send_Commands_Actions takes nothing returns nothing
    set udg_MaySendCommands=true
endfunction

//===========================================================================
function InitTrig_May_Send_Commands takes nothing returns nothing
    set gg_trg_May_Send_Commands=CreateTrigger()
    call TriggerRegisterTimerExpireEventBJ(gg_trg_May_Send_Commands, udg_TimerMaySendCommands)
    call TriggerAddAction(gg_trg_May_Send_Commands, function Trig_May_Send_Commands_Actions)
endfunction

//===========================================================================
// Trigger: VillagerSummonedRemoveConversionMan
//===========================================================================
function Trig_VillagerSummonedRemoveConversionMan_Conditions takes nothing returns boolean
    if ( not ( GetSummoningUnit() != udg_MalganisVariable ) ) then
        return false
    endif
    if ( not ( GetUnitTypeId(GetSummonedUnit()) == 'nzom' ) ) then
        return false
    endif
    return true
endfunction

function Trig_VillagerSummonedRemoveConversionMan_Actions takes nothing returns nothing
    call RemoveUnit(GetSummoningUnit())
    call SetUnitOwner(GetSummonedUnit(), Player(2), true)
endfunction

//===========================================================================
function InitTrig_VillagerSummonedRemoveConversionMan takes nothing returns nothing
    set gg_trg_VillagerSummonedRemoveConversionMan=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_VillagerSummonedRemoveConversionMan, Player(7), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(gg_trg_VillagerSummonedRemoveConversionMan, Condition(function Trig_VillagerSummonedRemoveConversionMan_Conditions))
    call TriggerAddAction(gg_trg_VillagerSummonedRemoveConversionMan, function Trig_VillagerSummonedRemoveConversionMan_Actions)
endfunction

//===========================================================================
// Trigger: Convert Villager
//
// This trigger is implimented using script code so that we can have a real local variable to preserve the villager in question during a 2 second delay.
//===========================================================================
function Trig_Convert_Villager_Actions takes nothing returns nothing
    local unit villager

    // Save villager in local variable
    set villager=udg_VillagerToBeConverted
    call TriggerSleepAction(2)

    // Make sure villager is still alive
    if IsUnitDeadBJ(villager) then
        return
    endif
        
    // Handle Conversion
    call CreateNUnitsAtLocFacingLocBJ(1, 'UC05', Player(7), GetUnitLoc(villager), GetUnitLoc(villager))
    call ShowUnitHide(GetLastCreatedUnit())
    call SetHeroLevel(GetLastCreatedUnit(), 10, false)
    call SelectHeroSkill(GetLastCreatedUnit(), 'SNdc')
    call IssueTargetOrderBJ(GetLastCreatedUnit(), "darkconversion", villager)
endfunction

//===========================================================================
function InitTrig_Convert_Villager takes nothing returns nothing
    set gg_trg_Convert_Villager=CreateTrigger()
    call TriggerAddAction(gg_trg_Convert_Villager, function Trig_Convert_Villager_Actions)
endfunction

//===========================================================================
// Trigger: Malganis Gains Convert
//===========================================================================
function Trig_Malganis_Gains_Convert_Conditions takes nothing returns boolean
    if ( not ( udg_EndCinematicPlaying == false ) ) then
        return false
    endif
    if ( not ( GetSummoningUnit() == udg_MalganisVariable ) ) then
        return false
    endif
    if ( not ( GetUnitTypeId(GetSummonedUnit()) == 'nzom' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Malganis_Gains_Convert_Actions takes nothing returns nothing
    set udg_MalganisConversions=( udg_MalganisConversions + 1.00 )
    call ConditionalTriggerExecute(gg_trg_Leaderboard_Tracking)
endfunction

//===========================================================================
function InitTrig_Malganis_Gains_Convert takes nothing returns nothing
    set gg_trg_Malganis_Gains_Convert=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Malganis_Gains_Convert, Player(8), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Malganis_Gains_Convert, Player(6), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Malganis_Gains_Convert, Player(2), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(gg_trg_Malganis_Gains_Convert, Condition(function Trig_Malganis_Gains_Convert_Conditions))
    call TriggerAddAction(gg_trg_Malganis_Gains_Convert, function Trig_Malganis_Gains_Convert_Actions)
endfunction

//===========================================================================
// Trigger: Start AI
//
// Starts the AI, run by Initialization Phase.
// AI is started in Arthas Gets Town
//===========================================================================
function Trig_Start_AI_Actions takes nothing returns nothing
    call StartCampaignAI(Player(3), "h06_purple.ai")
endfunction

//===========================================================================
function InitTrig_Start_AI takes nothing returns nothing
    set gg_trg_Start_AI=CreateTrigger()
    call TriggerAddAction(gg_trg_Start_AI, function Trig_Start_AI_Actions)
endfunction

//===========================================================================
// Trigger: Starting Cash
//===========================================================================
function Trig_Starting_Cash_Actions takes nothing returns nothing
    call SetPlayerStateBJ(Player(3), PLAYER_STATE_RESOURCE_GOLD, 10000)
    call SetPlayerStateBJ(Player(3), PLAYER_STATE_RESOURCE_LUMBER, 10000)
endfunction

//===========================================================================
function InitTrig_Starting_Cash takes nothing returns nothing
    set gg_trg_Starting_Cash=CreateTrigger()
    call TriggerAddAction(gg_trg_Starting_Cash, function Trig_Starting_Cash_Actions)
endfunction

//===========================================================================
// Trigger: Give Them Money
//===========================================================================
function Trig_Give_Them_Money_Actions takes nothing returns nothing
    call AdjustPlayerStateBJ(5000, Player(3), PLAYER_STATE_RESOURCE_GOLD)
endfunction

//===========================================================================
function InitTrig_Give_Them_Money takes nothing returns nothing
    set gg_trg_Give_Them_Money=CreateTrigger()
    call TriggerRegisterPlayerStateEvent(gg_trg_Give_Them_Money, Player(3), PLAYER_STATE_RESOURCE_GOLD, LESS_THAN_OR_EQUAL, 1000.00)
    call TriggerAddAction(gg_trg_Give_Them_Money, function Trig_Give_Them_Money_Actions)
endfunction

//===========================================================================
// Trigger: Give Them Lumber
//===========================================================================
function Trig_Give_Them_Lumber_Actions takes nothing returns nothing
    call AdjustPlayerStateBJ(5000, Player(3), PLAYER_STATE_RESOURCE_LUMBER)
endfunction

//===========================================================================
function InitTrig_Give_Them_Lumber takes nothing returns nothing
    set gg_trg_Give_Them_Lumber=CreateTrigger()
    call TriggerRegisterPlayerStateEvent(gg_trg_Give_Them_Lumber, Player(3), PLAYER_STATE_RESOURCE_LUMBER, LESS_THAN_OR_EQUAL, 1000.00)
    call TriggerAddAction(gg_trg_Give_Them_Lumber, function Trig_Give_Them_Lumber_Actions)
endfunction

//===========================================================================
// Trigger: Death Squad Deaths
//
// Stop Malganis Continuously Attacks trigger.
// Signals AI to suicide on the player with its remaining units.
//===========================================================================
function Trig_Death_Squad_Deaths_Conditions takes nothing returns boolean
    if ( not ( GetDyingUnit() == udg_MalganisVariable ) ) then
        return false
    endif
    return true
endfunction

function Trig_Death_Squad_Deaths_Actions takes nothing returns nothing
    set udg_DeathsOfDeathSquad=( udg_DeathsOfDeathSquad + 1.00 )
endfunction

//===========================================================================
function InitTrig_Death_Squad_Deaths takes nothing returns nothing
    set gg_trg_Death_Squad_Deaths=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Death_Squad_Deaths, Player(6), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Death_Squad_Deaths, Condition(function Trig_Death_Squad_Deaths_Conditions))
    call TriggerAddAction(gg_trg_Death_Squad_Deaths, function Trig_Death_Squad_Deaths_Actions)
endfunction

//===========================================================================
// Trigger: Deny 100 Villagers Victory
//
// Runs Victory Save Cache in "Game Cache."
//===========================================================================
function Trig_Deny_100_Villagers_Victory_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Deny_100_Villagers_Victory_Actions takes nothing returns nothing
    call DisableTrigger(gg_trg_Convert_100_Villagers_Failure)
    call DisableTrigger(gg_trg_All_Buildings_Destroyed)
    call DisableTrigger(gg_trg_Malganis_Countdown_Timer_Hits_0)
    call TriggerExecute(gg_trg_Victory_Save_Cache)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_107")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    call TriggerExecute(gg_trg_Victory_Cinematic)
endfunction

//===========================================================================
function InitTrig_Deny_100_Villagers_Victory takes nothing returns nothing
    set gg_trg_Deny_100_Villagers_Victory=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Deny_100_Villagers_Victory, "udg_ArthasDenials", EQUAL, 100.00)
    call TriggerAddCondition(gg_trg_Deny_100_Villagers_Victory, Condition(function Trig_Deny_100_Villagers_Victory_Conditions))
    call TriggerAddAction(gg_trg_Deny_100_Villagers_Victory, function Trig_Deny_100_Villagers_Victory_Actions)
endfunction

//===========================================================================
// Trigger: Convert 100 Villagers Failure
//===========================================================================
function Trig_Convert_100_Villagers_Failure_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    if ( not ( udg_EndCinematicPlaying == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Convert_100_Villagers_Failure_Actions takes nothing returns nothing
    call DisableTrigger(gg_trg_Deny_100_Villagers_Victory)
    call DestroyLeaderboardBJ(PlayerGetLeaderboardBJ(udg_ThePlayer))
    call TriggerExecute(gg_trg_Die_Fool)
endfunction

//===========================================================================
function InitTrig_Convert_100_Villagers_Failure takes nothing returns nothing
    set gg_trg_Convert_100_Villagers_Failure=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Convert_100_Villagers_Failure, "udg_MalganisConversions", EQUAL, 100.00)
    call TriggerAddCondition(gg_trg_Convert_100_Villagers_Failure, Condition(function Trig_Convert_100_Villagers_Failure_Conditions))
    call TriggerAddAction(gg_trg_Convert_100_Villagers_Failure, function Trig_Convert_100_Villagers_Failure_Actions)
endfunction

//===========================================================================
// Trigger: Die Fool
//===========================================================================
function Trig_Die_Fool_Conditions takes nothing returns boolean
    if ( not ( udg_EndCinematicPlaying == false ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Die_Fool_Func023002 takes nothing returns nothing
    call IssuePointOrderLocBJ(GetEnumUnit(), "attack", GetRectCenter(gg_rct_Arthas_Town))
endfunction

function Trig_Die_Fool_Actions takes nothing returns nothing
    set udg_GameOver=true
    call SetSpeechVolumeGroupsBJ()
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_MalganisVariable, "TRIGSTR_093", gg_snd_H06MalGanis42, "TRIGSTR_094", bj_TIMETYPE_ADD, 0.00, false)
    call DisableTrigger(gg_trg_Das_Boot_Malganis_Leaving_City)
    call DisableTrigger(gg_trg_Das_Boot_to_Arthas)
    call CreateNUnitsAtLoc(3, 'nC03', Player(6), GetRectCenter(gg_rct_Ending_Waves), 0.00)
    call CreateNUnitsAtLoc(3, 'ugho', Player(6), GetRectCenter(gg_rct_Ending_Waves), 0.00)
    call CreateNUnitsAtLoc(3, 'uske', Player(6), GetRectCenter(gg_rct_Ending_Waves), 0.00)
    call TriggerSleepAction(0.20)
    call GroupPointOrderLocBJ(GetUnitsInRectAll(gg_rct_Ending_Waves), "attack", GetRectCenter(gg_rct_Arthas_Town))
    call CreateNUnitsAtLoc(3, 'nC03', Player(6), GetRectCenter(gg_rct_Ending_Waves2), 0.00)
    call CreateNUnitsAtLoc(3, 'ugho', Player(6), GetRectCenter(gg_rct_Ending_Waves2), 0.00)
    call CreateNUnitsAtLoc(3, 'uske', Player(6), GetRectCenter(gg_rct_Ending_Waves2), 0.00)
    call TriggerSleepAction(0.20)
    call GroupPointOrderLocBJ(GetUnitsInRectAll(gg_rct_Ending_Waves2), "attack", GetRectCenter(gg_rct_Arthas_Town))
    call CreateNUnitsAtLoc(3, 'nC03', Player(6), GetRectCenter(gg_rct_Ending_Waves3), 0.00)
    call CreateNUnitsAtLoc(3, 'ugho', Player(6), GetRectCenter(gg_rct_Ending_Waves3), 0.00)
    call CreateNUnitsAtLoc(3, 'uske', Player(6), GetRectCenter(gg_rct_Ending_Waves3), 0.00)
    call TriggerSleepAction(0.20)
    call RemoveAllGuardPositions(Player(6))
    call ForGroupBJ(GetUnitsOfPlayerAll(Player(6)), function Trig_Die_Fool_Func023002)
    call GroupPointOrderLocBJ(GetUnitsInRectAll(gg_rct_Ending_Waves3), "attack", GetRectCenter(gg_rct_Arthas_Town))
    call CommandAI(Player(6), 4, 1)
    call WaitForSoundBJ(gg_snd_H06MalGanis42, 0)
    call VolumeGroupResetBJ()
    call TriggerSleepAction(20.00)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop01)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop02)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop03)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop04)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop05)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop06)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop07)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop08)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_FAILED, "TRIGSTR_108")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 2, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(2)
    call CustomDefeatBJ(udg_ThePlayer, "TRIGSTR_236")
endfunction

//===========================================================================
function InitTrig_Die_Fool takes nothing returns nothing
    set gg_trg_Die_Fool=CreateTrigger()
    call TriggerAddCondition(gg_trg_Die_Fool, Condition(function Trig_Die_Fool_Conditions))
    call TriggerAddAction(gg_trg_Die_Fool, function Trig_Die_Fool_Actions)
endfunction

//===========================================================================
// Trigger: Victory Cinematic Skip
//
// Victory Save Cache enables the proper campaign levels and saves Arthas.
//===========================================================================
function Trig_Victory_Cinematic_Skip_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_VictoryCinSkip=true
    call DestroyTimerDialogBJ(udg_MalganisCountdown)
    call StopSoundBJ(GetLastPlayedSound(), true)
    call ConditionalTriggerExecute(gg_trg_VICTORY)
endfunction

//===========================================================================
function InitTrig_Victory_Cinematic_Skip takes nothing returns nothing
    set gg_trg_Victory_Cinematic_Skip=CreateTrigger()
    call DisableTrigger(gg_trg_Victory_Cinematic_Skip)
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Victory_Cinematic_Skip, Player(1))
    call TriggerAddAction(gg_trg_Victory_Cinematic_Skip, function Trig_Victory_Cinematic_Skip_Actions)
endfunction

//===========================================================================
// Trigger: Victory Cinematic
//
// Victory Save Cache enables the proper campaign levels and saves Arthas.
//===========================================================================
function Trig_Victory_Cinematic_Conditions takes nothing returns boolean
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Victory_Cinematic_Func011002 takes nothing returns nothing
    call SetUnitInvulnerable(GetEnumUnit(), true)
endfunction

function Trig_Victory_Cinematic_Func013002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Victory_Cinematic_Func014002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Victory_Cinematic_Func015002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Victory_Cinematic_Func016002 takes nothing returns nothing
    call ShowUnitHide(GetEnumUnit())
endfunction

function Trig_Victory_Cinematic_Func034001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func036001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func038001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func040001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func043001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func045001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func049001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func052001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func055001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func057001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func059001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func061001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func069001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func073001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func076001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Func088001 takes nothing returns boolean
    return ( udg_VictoryCinSkip == true )
endfunction

function Trig_Victory_Cinematic_Actions takes nothing returns nothing
    set udg_EndCinematicPlaying=true
    call UseTimeOfDayBJ(false)
    call DestroyTimerDialogBJ(udg_MalganisCountdown)
    call DestroyLeaderboardBJ(PlayerGetLeaderboardBJ(Player(6)))
    call DestroyLeaderboardBJ(PlayerGetLeaderboardBJ(udg_ThePlayer))
    call EnableTrigger(gg_trg_Victory_Cinematic_Skip)
    call SetSkyModel("Environment\\Sky\\LordaeronWinterSky\\LordaeronWinterSky.mdl")
    call DisableTrigger(gg_trg_Malganis_Countdown_Timer_Counts)
    call DisableTrigger(gg_trg_Teleport_Malganis)
    call ForGroupBJ(GetUnitsInRectAll(GetEntireMapRect()), function Trig_Victory_Cinematic_Func011002)
    call CinematicModeBJ(true, GetPlayersAll())
    call ForGroupBJ(GetUnitsInRectOfPlayer(GetEntireMapRect(), Player(6)), function Trig_Victory_Cinematic_Func013002)
    call ForGroupBJ(GetUnitsInRectOfPlayer(GetEntireMapRect(), Player(1)), function Trig_Victory_Cinematic_Func014002)
    call ForGroupBJ(GetUnitsInRectOfPlayer(GetEntireMapRect(), Player(3)), function Trig_Victory_Cinematic_Func015002)
    call ForGroupBJ(GetUnitsInRectOfPlayer(GetEntireMapRect(), Player(8)), function Trig_Victory_Cinematic_Func016002)
    call ReviveHeroLoc(udg_ArthasVariable, GetRectCenter(gg_rct_End_Victory_Arthas), false)
    call ReviveHeroLoc(udg_MalganisVariable, GetRectCenter(gg_rct_End_Victory_Arthas), false)
    call RemoveGuardPosition(udg_MalganisVariable)
    call SetUnitMoveSpeed(udg_ArthasVariable, 300.00)
    call PlayThematicMusicBJ("Sound\\Music\\mp3Music\\DarkVictory.mp3")
    call SetUnitMoveSpeed(gg_unit_Umal_0000, 250.00)
    call ShowUnitShow(udg_ArthasVariable)
    call ShowUnitShow(udg_MalganisVariable)
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, udg_ArthasVariable)
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, udg_MalganisVariable)
    call SetUnitPositionLoc(udg_ArthasVariable, GetRectCenter(gg_rct_End_Victory_Arthas))
    call SetUnitPositionLoc(udg_MalganisVariable, GetRectCenter(gg_rct_End_Victory_Malganis))
    call SetUnitFacingToFaceUnitTimed(udg_ArthasVariable, udg_MalganisVariable, 0.00)
    call SetUnitFacingToFaceUnitTimed(udg_MalganisVariable, udg_ArthasVariable, 0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_End_Win_Cinematic_1, udg_ThePlayer, 0.00)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(1.00)
    if ( Trig_Victory_Cinematic_Func034001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_085", gg_snd_H06Arthas43, "TRIGSTR_086", bj_TIMETYPE_ADD, 0.00, true)
    if ( Trig_Victory_Cinematic_Func036001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_MalganisVariable, "TRIGSTR_087", gg_snd_H06MalGanis44, "TRIGSTR_088", bj_TIMETYPE_ADD, 0.00, false)
    if ( Trig_Victory_Cinematic_Func038001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(5.00)
    if ( Trig_Victory_Cinematic_Func040001() ) then
        return
    else
        call DoNothing()
    endif
    call IssuePointOrderLocBJ(udg_MalganisVariable, "move", GetRectCenter(gg_rct_End_Victory_Malganis2))
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.30, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    if ( Trig_Victory_Cinematic_Func043001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(0.30)
    if ( Trig_Victory_Cinematic_Func045001() ) then
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 0.30, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call CameraSetupApplyForPlayer(true, gg_cam_End_Win_Cinematic_2, udg_ThePlayer, 0.00)
    call IssuePointOrderLocBJ(udg_ArthasVariable, "move", GetRectCenter(gg_rct_End_Victory_Malganis))
    if ( Trig_Victory_Cinematic_Func049001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(4.50)
    call WaitForSoundBJ(gg_snd_H06MalGanis44, 0)
    if ( Trig_Victory_Cinematic_Func052001() ) then
        return
    else
        call DoNothing()
    endif
    call SetUnitFacingToFaceUnitTimed(udg_MalganisVariable, udg_ArthasVariable, 0.40)
    call CameraSetupApplyForPlayer(true, gg_cam_End_Win_Cinematic_3, udg_ThePlayer, GetSoundDurationBJ(gg_snd_H06MalGanis45))
    if ( Trig_Victory_Cinematic_Func055001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_MalganisVariable, "TRIGSTR_089", gg_snd_H06MalGanis45, "TRIGSTR_090", bj_TIMETYPE_ADD, 2.00, false)
    if ( Trig_Victory_Cinematic_Func057001() ) then
        return
    else
        call DoNothing()
    endif
    call WaitForSoundBJ(GetLastPlayedSound(), 2.00)
    if ( Trig_Victory_Cinematic_Func059001() ) then
        return
    else
        call DoNothing()
    endif
    call TriggerSleepAction(1.00)
    if ( Trig_Victory_Cinematic_Func061001() ) then
        return
    else
        call DoNothing()
    endif
    call AddSpecialEffectLocBJ(GetUnitLoc(udg_MalganisVariable), "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl")
    call AttachSoundToUnitBJ(gg_snd_DarkSummoningTarget1, udg_MalganisVariable)
    call PlaySoundBJ(gg_snd_DarkSummoningTarget1)
    call AttachSoundToUnitBJ(gg_snd_MassTeleportTarget, udg_MalganisVariable)
    call SetSoundVolumeBJ(gg_snd_MassTeleportTarget, 70.00)
    call PlaySoundBJ(gg_snd_MassTeleportTarget)
    call TriggerSleepAction(1.00)
    if ( Trig_Victory_Cinematic_Func069001() ) then
        return
    else
        call DoNothing()
    endif
    call ShowUnitHide(udg_MalganisVariable)
    call SetUnitPositionLoc(udg_MalganisVariable, GetRectCenter(gg_rct_Malganis_Revive))
    call TriggerSleepAction(1.50)
    if ( Trig_Victory_Cinematic_Func073001() ) then
        return
    else
        call DoNothing()
    endif
    call DestroyEffectBJ(GetLastCreatedEffectBJ())
    call IssuePointOrderLocBJ(udg_ArthasVariable, "move", GetRectCenter(gg_rct_End_Victory_Malganis2))
    if ( Trig_Victory_Cinematic_Func076001() ) then
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), udg_ArthasVariable, "TRIGSTR_091", gg_snd_H06Arthas46, "TRIGSTR_092", bj_TIMETYPE_SUB, 1.50, true)
    call SetUnitAnimation(udg_ArthasVariable, "Stand Victory")
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop01)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop02)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop03)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop04)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop05)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop06)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop07)
    call SetStackedSoundBJ(false, gg_snd_WaterStreamLoop1, gg_rct_StreamLoop08)
    call WaitForSoundBJ(GetLastPlayedSound(), 0)
    if ( Trig_Victory_Cinematic_Func088001() ) then
        return
    else
        call DoNothing()
    endif
    call DisableTrigger(gg_trg_Victory_Cinematic_Skip)
    call ConditionalTriggerExecute(gg_trg_VICTORY)
endfunction

//===========================================================================
function InitTrig_Victory_Cinematic takes nothing returns nothing
    set gg_trg_Victory_Cinematic=CreateTrigger()
    call TriggerAddCondition(gg_trg_Victory_Cinematic, Condition(function Trig_Victory_Cinematic_Conditions))
    call TriggerAddAction(gg_trg_Victory_Cinematic, function Trig_Victory_Cinematic_Actions)
endfunction

//===========================================================================
// Trigger: All Buildings Destroyed
//===========================================================================
function Trig_All_Buildings_Destroyed_Conditions takes nothing returns boolean
    if ( not ( GetPlayerStructureCount(Player(1), true) == 0 ) ) then
        return false
    endif
    if ( not ( udg_GameOver == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_All_Buildings_Destroyed_Actions takes nothing returns nothing
    set udg_GameOver=true
    call DisableTrigger(gg_trg_Deny_100_Villagers_Victory)
    call DisableTrigger(gg_trg_Convert_100_Villagers_Failure)
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_MISSIONFAILED, "TRIGSTR_237")
    call TriggerSleepAction(bj_QUEUE_DELAY_QUEST)
    call CustomDefeatBJ(udg_ThePlayer, "TRIGSTR_238")
endfunction

//===========================================================================
function InitTrig_All_Buildings_Destroyed takes nothing returns nothing
    set gg_trg_All_Buildings_Destroyed=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_All_Buildings_Destroyed, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_All_Buildings_Destroyed, Condition(function Trig_All_Buildings_Destroyed_Conditions))
    call TriggerAddAction(gg_trg_All_Buildings_Destroyed, function Trig_All_Buildings_Destroyed_Actions)
endfunction

//===========================================================================
// Trigger: VICTORY
//===========================================================================
function Trig_VICTORY_Actions takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Victory_Save_Cache)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 2.00, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call TriggerSleepAction(2.00)
    call SetNextLevelBJ("Maps\\Campaign\\Human06Interlude.w3m")
    call CustomVictoryBJ(udg_ThePlayer, true, true)
endfunction

//===========================================================================
function InitTrig_VICTORY takes nothing returns nothing
    set gg_trg_VICTORY=CreateTrigger()
    call TriggerRegisterPlayerEventVictory(gg_trg_VICTORY, Player(1))
    call TriggerAddAction(gg_trg_VICTORY, function Trig_VICTORY_Actions)
endfunction

//===========================================================================
// Trigger: DEFEAT
//===========================================================================
function Trig_DEFEAT_Actions takes nothing returns nothing
    call CustomDefeatBJ(udg_ThePlayer, "TRIGSTR_235")
endfunction

//===========================================================================
function InitTrig_DEFEAT takes nothing returns nothing
    set gg_trg_DEFEAT=CreateTrigger()
    call TriggerRegisterPlayerEventDefeat(gg_trg_DEFEAT, Player(1))
    call TriggerAddAction(gg_trg_DEFEAT, function Trig_DEFEAT_Actions)
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
    call InitTrig_Initialize_Initializations()
    call InitTrig_Difficulty()
    call InitTrig_RestoreVariablesStartCache()
    call InitTrig_Default_Arthas()
    call InitTrig_Victory_Save_Cache()
    call InitTrig_Waterfall_Reveal()
    call InitTrig_Waterfall_Hide()
    call InitTrig_Initialize_Heroes()
    call InitTrig_XP_Cap()
    call InitTrig_Alliance_Sight_Color()
    call InitTrig_Intro_Cancel()
    call InitTrig_Form_Uthers_Group()
    call InitTrig_Cinematic_Uther_Moves_In()
    call InitTrig_Remove_Villager1()
    call InitTrig_Remove_Villager2()
    call InitTrig_Remove_Villager3()
    call InitTrig_Remove_Villager4()
    call InitTrig_Uther_and_co_Leave()
    call InitTrig_Arthas_Gets_Town()
    call InitTrig_New_Unit_Available()
    call InitTrig_Malganis_Attack()
    call InitTrig_Kill_Villager_Deny_Malganis()
    call InitTrig_Kill_Zombie_Deny_Malganis()
    call InitTrig_Setup_Leaderboard()
    call InitTrig_Leaderboard_Tracking()
    call InitTrig_Hint_for_Killing_Villagers()
    call InitTrig_Hint_for_Killing_Villagers_Que()
    call InitTrig_Malganis_First_Attacks()
    call InitTrig_Malganis_First_Teleport_Cin_Skip()
    call InitTrig_Malganis_First_Teleport_Cinematic()
    call InitTrig_Malganis_First_Building_Attack()
    call InitTrig_Malganis_First_Get_Arthas_Alt()
    call InitTrig_Villagers_Run_District_1()
    call InitTrig_Villagers_Run_District_2()
    call InitTrig_Villagers_Run_District_3()
    call InitTrig_Villagers_Run_District_4()
    call InitTrig_Villagers_Run_District_5()
    call InitTrig_If_Building_Pops_MakeVillagers()
    call InitTrig_If_Building_Pops_Shake_Camera()
    call InitTrig_Spawn_Villagers()
    call InitTrig_Create_Man()
    call InitTrig_Create_Woman()
    call InitTrig_Create_Child()
    call InitTrig_Create_Rats()
    call InitTrig_Malganis_AI_and_Level()
    call InitTrig_Form_Building_Groups()
    call InitTrig_Building_Destroyed_Remove_From_Group1()
    call InitTrig_Building_Destroyed_Remove_From_Group2()
    call InitTrig_Building_Destroyed_Remove_From_Group3()
    call InitTrig_Building_Destroyed_Remove_From_Group4()
    call InitTrig_Building_Destroyed_Remove_From_Group5()
    call InitTrig_Initialize_Region_Array()
    call InitTrig_Choose_Buildings()
    call InitTrig_Choose_Default_Region()
    call InitTrig_Choose_Random_Region()
    call InitTrig_Create_Target_Array()
    call InitTrig_Target_Array_Loop()
    call InitTrig_Add_To_Target_Array()
    call InitTrig_Malganis_Countdown_Timer_Create()
    call InitTrig_Malganis_Countdown_Timer_Counts()
    call InitTrig_Malganis_Countdown_Timer_Hits_0()
    call InitTrig_Arthas_Says_Forgive_Me()
    call InitTrig_Arthas_Says_Forgive_Me_Que()
    call InitTrig_Initialize_Buildings_To_Attack_Array()
    call InitTrig_Malganis_Death_Squad_1()
    call InitTrig_Create_Sqaud_1()
    call InitTrig_Malganis_Death_Squad_2()
    call InitTrig_Create_Squad_2()
    call InitTrig_Malganis_Death_Squad_3()
    call InitTrig_Create_Squad_3()
    call InitTrig_Add_To_Death_Squad_Denials_at_21()
    call InitTrig_Add_To_Death_Squad_Denials_at_51()
    call InitTrig_Das_Boot_to_Arthas()
    call InitTrig_Das_Boot_Malganis_Leaving_City()
    call InitTrig_Malganis_Reacquires_Nearest_Building()
    call InitTrig_Teleport_Malganis()
    call InitTrig_Malganis_Acquires_Nearest_Building()
    call InitTrig_Malganis_Continuously_Attacks_Buildings()
    call InitTrig_Malganis_Booting_Player()
    call InitTrig_Malganis_Booting_Zombies()
    call InitTrig_May_Send_Commands()
    call InitTrig_VillagerSummonedRemoveConversionMan()
    call InitTrig_Convert_Villager()
    call InitTrig_Malganis_Gains_Convert()
    call InitTrig_Start_AI()
    call InitTrig_Starting_Cash()
    call InitTrig_Give_Them_Money()
    call InitTrig_Give_Them_Lumber()
    call InitTrig_Death_Squad_Deaths()
    call InitTrig_Deny_100_Villagers_Victory()
    call InitTrig_Convert_100_Villagers_Failure()
    call InitTrig_Die_Fool()
    call InitTrig_Victory_Cinematic_Skip()
    call InitTrig_Victory_Cinematic()
    call InitTrig_All_Buildings_Destroyed()
    call InitTrig_VICTORY()
    call InitTrig_DEFEAT()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Initialize_Initializations)
endfunction

//***************************************************************************
//*
//*  Upgrades
//*
//***************************************************************************

function InitUpgrades_Player1 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(1), 'Rhgb', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Rhhb', 0)
endfunction

function InitUpgrades_Player2 takes nothing returns nothing
    call SetPlayerTechResearched(Player(2), 'Rune', 2)
endfunction

function InitUpgrades takes nothing returns nothing
    call InitUpgrades_Player1()
    call InitUpgrades_Player2()
endfunction

//***************************************************************************
//*
//*  TechTree
//*
//***************************************************************************

function InitTechTree_Player1 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(1), 'hgyr', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hgry', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hamg', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hmkg', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'Hpal', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hgra', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'hmtt', 0)
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

    // Player 5
    call SetPlayerStartLocation(Player(5), 3)
    call ForcePlayerStartLocation(Player(5), 3)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(5), false)
    call SetPlayerController(Player(5), MAP_CONTROL_NEUTRAL)

    // Player 6
    call SetPlayerStartLocation(Player(6), 4)
    call ForcePlayerStartLocation(Player(6), 4)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(6), false)
    call SetPlayerController(Player(6), MAP_CONTROL_COMPUTER)

    // Player 8
    call SetPlayerStartLocation(Player(8), 5)
    call ForcePlayerStartLocation(Player(8), 5)
    call SetPlayerColor(Player(8), ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(8), false)
    call SetPlayerController(Player(8), MAP_CONTROL_COMPUTER)

    // Player 9
    call SetPlayerStartLocation(Player(9), 6)
    call ForcePlayerStartLocation(Player(9), 6)
    call SetPlayerColor(Player(9), ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(9), false)
    call SetPlayerController(Player(9), MAP_CONTROL_NEUTRAL)

    // Player 10
    call SetPlayerStartLocation(Player(10), 7)
    call ForcePlayerStartLocation(Player(10), 7)
    call SetPlayerColor(Player(10), ConvertPlayerColor(10))
    call SetPlayerRacePreference(Player(10), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(10), false)
    call SetPlayerController(Player(10), MAP_CONTROL_NEUTRAL)

    // Player 11
    call SetPlayerStartLocation(Player(11), 8)
    call ForcePlayerStartLocation(Player(11), 8)
    call SetPlayerColor(Player(11), ConvertPlayerColor(11))
    call SetPlayerRacePreference(Player(11), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(11), false)
    call SetPlayerController(Player(11), MAP_CONTROL_NEUTRAL)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_242
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerTeam(Player(5), 0)
    call SetPlayerTeam(Player(9), 0)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(5), true)

    // Force: TRIGSTR_240
    call SetPlayerTeam(Player(2), 1)
    call SetPlayerState(Player(2), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(3), 1)
    call SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(6), 1)
    call SetPlayerState(Player(6), PLAYER_STATE_ALLIED_VICTORY, 1)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(3), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(3), true)

    // Force: TRIGSTR_036
    call SetPlayerTeam(Player(8), 2)
    call SetPlayerTeam(Player(10), 2)
    call SetPlayerTeam(Player(11), 2)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(10), true)

endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 5376.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 9472.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 12672.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 8320.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 5376.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 8320.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 12672.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 9472.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("CityScapeDay")
    call SetAmbientNightSound("CityScapeNight")
    call SetMapMusic("Music", true, 0)
    call InitSounds()
    call CreateRegions()
    call CreateCameras()
    call InitUpgrades()
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
    call SetMapDescription("TRIGSTR_008")
    call SetPlayers(9)
    call SetTeams(9)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)

    call DefineStartLocation(0, 11328.0, 5568.0)
    call DefineStartLocation(1, 4224.0, 6848.0)
    call DefineStartLocation(2, - 2176.0, - 8064.0)
    call DefineStartLocation(3, - 3328.0, 576.0)
    call DefineStartLocation(4, - 4224.0, - 6592.0)
    call DefineStartLocation(5, 8192.0, 4544.0)
    call DefineStartLocation(6, 10432.0, 7936.0)
    call DefineStartLocation(7, 2752.0, - 832.0)
    call DefineStartLocation(8, 2816.0, - 832.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
endfunction




//Struct method generated initializers/callers:

