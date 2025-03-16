// version: 1
// Triggers: 5
// Enter map-specific custom script code below.  This text will be included in the map script after variables are declared and before any trigger code.
//\\// Trigger #1
// This file defines file IO functions for the JASS side of things
// Based off the FileIO module created by Nestharus, see:
// https://www.hiveworkshop.com/threads/codeless-save-load-its-now-a-reality-demo-map-included.226082/

globals
integer array p_ability_lines
string array p_original_descriptions
string array io_lines
constant integer NUM_FILE_ABILITIES = 10
string last_filename = ""
endglobals

function InitTrig_fileio takes nothing returns nothing
    local integer i = 0
    set p_ability_lines[0] = 'Amls'  // Aerial Shackles
    set p_ability_lines[1] = 'Aroc'  // Barrage
    set p_ability_lines[2] = 'Amic'  // Call to Arms
    set p_ability_lines[3] = 'Amil'  // Call to Arms
    set p_ability_lines[4] = 'Aclf'  // Cloud
    set p_ability_lines[5] = 'Acmg'  // Control Magic
    set p_ability_lines[6] = 'Adef'  // Defend
    set p_ability_lines[7] = 'Adis'  // Dispel Magic
    set p_ability_lines[8] = 'Afbt'  // Feedback
    set p_ability_lines[9] = 'Afbk'  // Feedback

    loop
        exitwhen i >= NUM_FILE_ABILITIES
        set p_original_descriptions[i] = BlzGetAbilityTooltip(p_ability_lines[i], 0)
        set i = i + 1
    endloop
endfunction

function io_read_file takes string file_name returns nothing
    local integer i = 0
    local string output = ""

    call Preloader(file_name)

    loop
        exitwhen i >= NUM_FILE_ABILITIES
        set io_lines[i] = BlzGetAbilityTooltip(p_ability_lines[i], 0)
        call BlzSetAbilityTooltip(p_ability_lines[i], p_original_descriptions[i], 0)
        set i = i + 1
    endloop
endfunction

function io_open_write takes string filename returns nothing
    call PreloadGenClear()
    call PreloadGenStart()
    set last_filename = filename
endfunction

function io_write takes string contents returns nothing
    call Preload(contents)
endfunction

function io_close_write takes nothing returns nothing
    call PreloadGenEnd(last_filename)
    set last_filename = ""
endfunction

//\\// Trigger #2
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

globals
string mission_name = "unknown"
boolean array locations_checked
constant integer MAX_LOCATIONS = 20
endglobals

function InitTrig_status takes nothing returns nothing
    local integer i = 0
    loop
        exitwhen i >= MAX_LOCATIONS
        set locations_checked[i] = false
        set i = i + 1
    endloop
endfunction

function status_send takes nothing returns nothing
    local integer i = 0
    call io_open_write("status.txt")
    call io_write(mission_name)
    loop
        exitwhen i >= MAX_LOCATIONS
        if locations_checked[i] then
            call io_write(I2S(i))
        endif
        set i = i + 1
    endloop
    call io_close_write()
endfunction

function status_load takes nothing returns nothing
    local integer i = 0
    call io_read_file("prior_status.txt")
    if io_lines[0] != mission_name then
        return
    endif
    loop
        exitwhen i + 2 > StringLength(io_lines[1])
        set locations_checked[S2I(SubString(io_lines[1], i, i+2))] = true
    endloop
    call status_send()
endfunction

function status_check_location takes integer location_id returns nothing
    if location_id >= MAX_LOCATIONS then
        call DisplayTextToForce(GetPlayersAll(), "Attempted to check invalid location ID: " + I2S(location_id))
        return
    endif
    set locations_checked[location_id] = true
    call status_send()
endfunction

//\\// Trigger #3
// triggers for sending locations when picking up location-linked items
globals
trigger t_location_found = null
endglobals

function trigger_function_item_locations takes nothing returns nothing
    local integer item_id = GetItemTypeId(GetManipulatedItem())
    if (item_id == 'I010') then
        call status_check_location(0)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 0|r")
    elseif (item_id == 'I011') then
        call status_check_location(1)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 1|r")
    elseif (item_id == 'I012') then
        call status_check_location(2)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 2|r")
    elseif (item_id == 'I013') then
        call status_check_location(3)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 3|r")
    elseif (item_id == 'I014') then
        call status_check_location(4)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 4|r")
    elseif (item_id == 'I015') then
        call status_check_location(5)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 5|r")
    elseif (item_id == 'I016') then
        call status_check_location(6)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 6|r")
    elseif (item_id == 'I017') then
        call status_check_location(7)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 7|r")
    elseif (item_id == 'I018') then
        call status_check_location(8)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 8|r")
    elseif (item_id == 'I019') then
        call status_check_location(9)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 9|r")
    elseif (item_id == 'I01A') then
        call status_check_location(10)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 10|r")
    endif
endfunction

function InitTrig_item_locations takes nothing returns nothing
    set t_location_found = CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_location_found, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(t_location_found, function trigger_function_item_locations)
endfunction

//\\// Trigger #4
function InitTrig_map_info takes nothing returns nothing
    set mission_name = "General"
    call status_send()
    call status_load()
endfunction


//\\// End