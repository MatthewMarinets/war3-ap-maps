globals
    // User-defined
integer array udg_File_Ability_List
string array udg_original_descriptions
string array udg_read_lines
integer udg_NUM_FILE_ABILITIES= 0
string udg_last_filename

    // Generated
rect gg_rct_Starting_Region= null
rect gg_rct_Test_Region= null
trigger gg_trg_Melee_Initialization= null
trigger gg_trg_fileio= null
trigger gg_trg_status= null
trigger gg_trg_item_locations= null
trigger gg_trg_map_init= null
trigger gg_trg_unlocks= null
string array p_original_names
string array io_lines
constant integer NUM_FILE_LINES= 10
string last_filename= ""
string mission_name= "unknown"
boolean array locations_checked
constant integer MAX_LOCATIONS= 20
integer update_number= 0
trigger t_location_found= null


//JASSHelper struct globals:

endglobals


//===========================================================================
// 
// General Config
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Mon Mar 17 01:49:55 2025
//   Map Author: phaneros
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    local integer i= 0
    set i=0
    loop
        exitwhen ( i > 10 )
        set udg_File_Ability_List[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 10 )
        set udg_original_descriptions[i]=""
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 10 )
        set udg_read_lines[i]=""
        set i=i + 1
    endloop

    set udg_NUM_FILE_ABILITIES=10
    set udg_last_filename=""
endfunction

//***************************************************************************
//*
//*  Unit Item Tables
//*
//***************************************************************************

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
        call RandomDistAddItem('rat3', 100)
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

function Unit000039_DropItems takes nothing returns nothing
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
        call RandomDistAddItem('tdex', 30)
        call RandomDistAddItem('tstr', 40)
        call RandomDistAddItem('tint', 30)
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
//*  Items
//*
//***************************************************************************

function CreateAllItems takes nothing returns nothing
    local integer itemID

    call CreateItem('I010', 51.6, 219.1)
    call CreateItem('I011', 63.3, 85.8)
    call CreateItem('I012', 188.9, 85.7)
    call CreateItem('I013', 303.3, 89.0)
    call CreateItem('I014', 413.2, 100.5)
    call CreateItem('I015', 528.4, 89.0)
    call CreateItem('I016', 76.3, - 36.3)
    call CreateItem('I017', 185.5, - 33.2)
    call CreateItem('I018', 307.5, - 46.4)
    call CreateItem('I019', 403.9, - 27.2)
    call CreateItem('I01A', 505.4, - 30.0)
    call CreateItem('gold', - 316.9, - 243.1)
    call CreateItem('gold', - 324.7, - 193.9)
    call CreateItem('gold', - 324.1, - 133.7)
    call CreateItem('lmbr', - 232.0, - 268.8)
    call CreateItem('lmbr', - 237.5, - 154.1)
    call CreateItem('manh', - 125.4, - 264.3)
    call CreateItem('rhe3', - 122.8, - 163.7)
    call CreateItem('sbch', - 294.5, 11.8)
    call CreateItem('ssil', - 293.5, 150.3)
    call CreateItem('tgrh', - 296.5, 279.5)
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

    set u=CreateUnit(p, 'hcas', - 640.0, - 192.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1664.0, - 448.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1664.0, - 576.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1792.0, - 448.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1792.0, - 576.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1664.0, - 64.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1792.0, - 64.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1792.0, 64.0, 270.000)
    set u=CreateUnit(p, 'hhou', - 1664.0, 64.0, 270.000)
    set u=CreateUnit(p, 'hbar', - 1984.0, - 896.0, 270.000)
    set u=CreateUnit(p, 'harm', - 1984.0, - 1280.0, 270.000)
    set u=CreateUnit(p, 'hars', - 1984.0, - 1664.0, 270.000)
    set u=CreateUnit(p, 'hgra', - 1984.0, - 2048.0, 270.000)
    set u=CreateUnit(p, 'hlum', - 608.0, - 864.0, 270.000)
    set u=CreateUnit(p, 'hbla', - 1984.0, - 512.0, 270.000)
    set u=CreateUnit(p, 'hgtw', 1152.0, 896.0, 270.000)
    set u=CreateUnit(p, 'hctw', 1024.0, 896.0, 270.000)
    set u=CreateUnit(p, 'hatw', 896.0, 896.0, 270.000)
    set u=CreateUnit(p, 'hvlt', - 640.0, 384.0, 270.000)
    set u=CreateUnit(p, 'halt', - 992.0, 416.0, 270.000)
    set u=CreateUnit(p, 'ogre', - 1344.0, 2112.0, 270.000)
    set u=CreateUnit(p, 'ostr', - 1344.0, 2624.0, 270.000)
    set u=CreateUnit(p, 'ofrt', - 1344.0, 3136.0, 270.000)
    set u=CreateUnit(p, 'obar', - 896.0, 2048.0, 270.000)
    set u=CreateUnit(p, 'obea', - 896.0, 2432.0, 270.000)
    set u=CreateUnit(p, 'osld', - 896.0, 2816.0, 270.000)
    set u=CreateUnit(p, 'otto', - 896.0, 3200.0, 270.000)
    set u=CreateUnit(p, 'ofor', - 1824.0, 2144.0, 270.000)
    set u=CreateUnit(p, 'oalt', - 1824.0, 2528.0, 270.000)
    set u=CreateUnit(p, 'ovln', - 896.0, 1664.0, 270.000)
    set u=CreateUnit(p, 'owtw', - 576.0, 2176.0, 270.000)
    set u=CreateUnit(p, 'otrb', - 544.0, 2400.0, 270.000)
    set u=CreateUnit(p, 'unpl', 2176.0, 4352.0, 270.000)
    set u=CreateUnit(p, 'unp1', 2176.0, 4864.0, 270.000)
    set u=CreateUnit(p, 'unp2', 2176.0, 5376.0, 270.000)
    set u=CreateUnit(p, 'usep', 1728.0, 4352.0, 270.000)
    set u=CreateUnit(p, 'uslh', 1728.0, 4736.0, 270.000)
    set u=CreateUnit(p, 'utod', 1728.0, 5120.0, 270.000)
    set u=CreateUnit(p, 'ubon', 1728.0, 5568.0, 270.000)
    set u=CreateUnit(p, 'usap', 2176.0, 5824.0, 270.000)
    set u=CreateBlightedGoldmine(p, 2176.0, 6272.0, 270.000)
    call SetResourceAmount(u, 12500)
    set u=CreateUnit(p, 'utom', 1344.0, 4352.0, 270.000)
    set u=CreateUnit(p, 'uaod', 1376.0, 4768.0, 270.000)
    set u=CreateUnit(p, 'ugrv', 1344.0, 5120.0, 270.000)
    set u=CreateUnit(p, 'uzig', 2016.0, 3872.0, 270.000)
    set u=CreateUnit(p, 'uzg1', 1824.0, 3872.0, 270.000)
    set u=CreateUnit(p, 'uzg2', 1632.0, 3872.0, 270.000)
    set u=CreateUnit(p, 'etol', - 896.0, 3840.0, 270.000)
    set u=CreateUnit(p, 'etoa', - 896.0, 4224.0, 270.000)
    set u=CreateUnit(p, 'etoe', - 896.0, 4608.0, 270.000)
    set u=CreateUnit(p, 'emow', - 608.0, 3808.0, 270.000)
    set u=CreateUnit(p, 'etrp', - 608.0, 4064.0, 270.000)
    set u=CreateUnit(p, 'eden', - 320.0, 3904.0, 270.000)
    set u=CreateUnit(p, 'eate', - 288.0, 4256.0, 270.000)
    set u=CreateUnit(p, 'eaom', - 1280.0, 3712.0, 270.000)
    set u=CreateUnit(p, 'eaoe', - 1280.0, 4096.0, 270.000)
    set u=CreateUnit(p, 'eaow', - 1280.0, 4480.0, 270.000)
    set u=CreateUnit(p, 'edos', - 1280.0, 4800.0, 270.000)
    set u=CreateUnit(p, 'edob', - 256.0, 4608.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'Hapm', - 124.9, 124.0, 329.908)
    set u=CreateUnit(p, 'Hart', - 336.2, - 486.5, 176.424)
    set u=CreateUnit(p, 'Hjai', - 210.1, - 476.6, 62.558)
    set u=CreateUnit(p, 'hfoo', 293.3, 687.1, 249.936)
    set u=CreateUnit(p, 'hrif', 374.6, 672.4, 233.313)
    set u=CreateUnit(p, 'hkni', 471.8, 678.6, 24.335)
    set u=CreateUnit(p, 'hmtm', 303.4, 535.5, 353.122)
    set u=CreateUnit(p, 'hgyr', 638.6, 677.0, 115.008)
    set u=CreateUnit(p, 'hgry', 782.5, 705.7, 179.522)
    set u=CreateUnit(p, 'hmtt', 416.9, 522.0, 340.762)
    set u=CreateUnit(p, 'hmpr', 291.0, 371.2, 63.887)
    set u=CreateUnit(p, 'hsor', 338.9, 336.1, 357.781)
    set u=CreateUnit(p, 'hspt', 410.9, 339.2, 176.270)
    set u=CreateUnit(p, 'hdhw', 926.6, 682.8, 343.421)
    set u=CreateUnit(p, 'Hmbr', - 111.4, - 471.0, 147.979)
    set u=CreateUnit(p, 'hpea', - 983.2, - 31.9, 109.284)
    set u=CreateUnit(p, 'hpea', - 981.8, - 101.6, 48.067)
    set u=CreateUnit(p, 'hpea', - 979.6, - 144.5, 355.166)
    set u=CreateUnit(p, 'hpea', - 976.1, - 215.9, 321.569)
    set u=CreateUnit(p, 'hpea', - 967.7, - 268.7, 195.299)
    set u=CreateUnit(p, 'opeo', - 1932.0, 1926.3, 56.362)
    set u=CreateUnit(p, 'opeo', - 1834.4, 1940.8, 177.753)
    set u=CreateUnit(p, 'ogru', - 250.0, 2573.5, 193.629)
    set u=CreateUnit(p, 'orai', - 135.2, 2566.2, 261.087)
    set u=CreateUnit(p, 'otau', - 4.8, 2551.6, 353.276)
    set u=CreateUnit(p, 'ohun', 131.8, 2551.6, 9.668)
    set u=CreateUnit(p, 'ocat', - 471.8, 2651.5, 174.523)
    set u=CreateUnit(p, 'okod', - 471.2, 2836.9, 349.596)
    set u=CreateUnit(p, 'odoc', - 264.9, 2384.5, 237.301)
    set u=CreateUnit(p, 'oshm', - 149.4, 2401.9, 52.692)
    set u=CreateUnit(p, 'ospw', - 51.3, 2391.5, 15.063)
    set u=CreateUnit(p, 'owyv', - 214.0, 2852.8, 111.163)
    set u=CreateUnit(p, 'otbr', - 83.7, 2785.7, 276.446)
    set u=CreateUnit(p, 'ewsp', - 748.7, 3588.2, 186.576)
    set u=CreateUnit(p, 'uaco', 1972.5, 6027.0, 353.529)
endfunction

//===========================================================================
function CreateBuildingsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'hcas', - 2560.0, 6400.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'hfoo', - 2276.9, 6571.3, 90.387)
    set u=CreateUnit(p, 'hfoo', - 2165.8, 6586.5, 194.662)
endfunction

//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'nftb', 1946.2, - 2310.7, 100.000)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000038_DropItems)
    set u=CreateUnit(p, 'nfsp', 2098.7, - 2296.2, 178.160)
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000039_DropItems)
    set u=CreateUnit(p, 'nftr', 1823.0, - 2287.9, 90.000)
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ngme', 960.0, 64.0, 270.000)
    set u=CreateUnit(p, 'ngol', - 1344.0, 0.0, 270.000)
    call SetResourceAmount(u, 500000)
    set u=CreateUnit(p, 'ngol', - 1344.0, - 512.0, 270.000)
    call SetResourceAmount(u, 1600)
    set u=CreateUnit(p, 'ngad', 960.0, - 320.0, 270.000)
    set u=CreateUnit(p, 'nshp', 1920.0, 320.0, 270.000)
    set u=CreateUnit(p, 'nmer', 960.0, - 768.0, 270.000)
    call SetUnitColor(u, ConvertPlayerColor(0))
    set u=CreateUnit(p, 'nmr3', 960.0, - 1152.0, 270.000)
    call SetUnitColor(u, ConvertPlayerColor(1))
    set u=CreateUnit(p, 'nmr2', 576.0, - 768.0, 270.000)
    call SetUnitColor(u, ConvertPlayerColor(12))
    set u=CreateUnit(p, 'nmr7', 576.0, - 1152.0, 270.000)
    call SetUnitColor(u, ConvertPlayerColor(3))
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0()
    call CreateBuildingsForPlayer1()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
    call CreateUnitsForPlayer1()
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreateNeutralHostile()
    call CreatePlayerUnits()
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_Starting_Region=Rect(- 1152.0, - 416.0, 800.0, 864.0)
    set gg_rct_Test_Region=Rect(- 448.0, 960.0, 96.0, 1408.0)
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Melee Initialization
//
// Default melee game initialization for all players
//===========================================================================
function Trig_Melee_Initialization_Actions takes nothing returns nothing
    call MeleeStartingVisibility()
    call MeleeStartingHeroLimit()
    call MeleeStartingResources()
    call MeleeClearExcessUnits()
endfunction

//===========================================================================
function InitTrig_Melee_Initialization takes nothing returns nothing
    set gg_trg_Melee_Initialization=CreateTrigger()
    call TriggerAddAction(gg_trg_Melee_Initialization, function Trig_Melee_Initialization_Actions)
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

function io_read_file takes string file_name returns nothing
    local integer i= 0
    local string output= ""

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
// Trigger: status
//===========================================================================
// defines the status packet and prior_status packets
// ## status.txt ##
// game -> client
// - Mission identifier
// - list of locations checked
// 
// ## prior_status.txt ##
// client -> game
// (line 0, Amls) - Mission identifier
// (line 1, Aroc) - List of locations checked (packed 2-digit integers)


function InitTrig_status takes nothing returns nothing
    local integer i= 0
    loop
        exitwhen i >= MAX_LOCATIONS
        set locations_checked[i]=false
        set i=i + 1
    endloop
endfunction

function status_send takes nothing returns nothing
    local integer i= 0
    call io_open_write("status.txt")
    call io_write(mission_name)
    call io_write(I2S(update_number))
    set update_number=update_number + 1
    if update_number >= 100 then
        set update_number=0
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

function status_load takes nothing returns nothing
    local integer i= 0
    call io_read_file("prior_status.txt")
    if io_lines[0] != mission_name then
        call DisplayTextToForce(GetPlayersAll(), "|cffff2222Error: Client Communications not established|r (Wrong mission)")
        call DisplayTextToForce(GetPlayersAll(), "Got \"" + io_lines[0] + "\", expected \"" + mission_name + "\".")
        return
    endif
    if S2I(io_lines[1]) != update_number then
        call DisplayTextToForce(GetPlayersAll(), "|cffff2222Error: Client Communications not established|r (Wrong transmission)")
        return
    endif
    loop
        exitwhen i + 2 > StringLength(io_lines[2])
        set locations_checked[S2I(SubString(io_lines[2], i, i + 2))]=true
    endloop
    call status_send()
endfunction

function status_check_location takes integer location_id returns nothing
    if location_id >= MAX_LOCATIONS then
        call DisplayTextToForce(GetPlayersAll(), "Attempted to check invalid location ID: " + I2S(location_id))
        return
    endif
    set locations_checked[location_id]=true
    call status_send()
endfunction
//===========================================================================
// Trigger: item_locations
//===========================================================================
// triggers for sending locations when picking up location-linked items

function trigger_function_item_locations takes nothing returns nothing
    local integer item_id= GetItemTypeId(GetManipulatedItem())
    if ( item_id == 'I010' ) then
        call status_check_location(0)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 0|r")
    elseif ( item_id == 'I011' ) then
        call status_check_location(1)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 1|r")
    elseif ( item_id == 'I012' ) then
        call status_check_location(2)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 2|r")
    elseif ( item_id == 'I013' ) then
        call status_check_location(3)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 3|r")
    elseif ( item_id == 'I014' ) then
        call status_check_location(4)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 4|r")
    elseif ( item_id == 'I015' ) then
        call status_check_location(5)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 5|r")
    elseif ( item_id == 'I016' ) then
        call status_check_location(6)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 6|r")
    elseif ( item_id == 'I017' ) then
        call status_check_location(7)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 7|r")
    elseif ( item_id == 'I018' ) then
        call status_check_location(8)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 8|r")
    elseif ( item_id == 'I019' ) then
        call status_check_location(9)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 9|r")
    elseif ( item_id == 'I01A' ) then
        call status_check_location(10)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 10|r")
    endif
endfunction

function InitTrig_item_locations takes nothing returns nothing
    set t_location_found=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_location_found, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(t_location_found, function trigger_function_item_locations)
endfunction
//===========================================================================
// Trigger: map_init
//===========================================================================
// Map initialization function template
function map_init_load_status takes nothing returns nothing
    call DestroyTimer(GetExpiredTimer())
    call status_load()
endfunction

function InitTrig_map_init takes nothing returns nothing
    set mission_name="General"
    call status_send()
    call TimerStart(CreateTimer(), 2, false, function map_init_load_status)
endfunction
//===========================================================================
// Trigger: unlocks
//===========================================================================
function Trig_unlocks_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_unlocks takes nothing returns nothing
    set gg_trg_unlocks=CreateTrigger()
    call TriggerAddAction(gg_trg_unlocks, function Trig_unlocks_Actions)
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Melee_Initialization()
    call InitTrig_fileio()
    call InitTrig_status()
    call InitTrig_item_locations()
    call InitTrig_map_init()
    call InitTrig_unlocks()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Melee_Initialization)
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_004
    call SetPlayerTeam(Player(0), 0)

endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 7168.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 7168.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call CreateRegions()
    call CreateAllItems()
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
    call SetMapName("TRIGSTR_009")
    call SetMapDescription("TRIGSTR_011")
    call SetPlayers(1)
    call SetTeams(1)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)

    call DefineStartLocation(0, - 640.0, 0.0)

    // Player setup
    call InitCustomPlayerSlots()
    call SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    call InitGenericPlayerSlots()
endfunction




//Struct method generated initializers/callers:

