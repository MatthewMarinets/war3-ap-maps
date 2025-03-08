// This file defines file IO functions for JASS side of things
// Based off the FileIO module created by Nestharus, see:
// https://www.hiveworkshop.com/threads/codeless-save-load-its-now-a-reality-demo-map-included.226082/

globals
integer array File_Ability_List
string array original_descriptions
string array read_lines
constant integer NUM_FILE_ABILITIES = 10
string last_filename = ""
endglobals

function constants_init takes nothing returns nothing
    local string i = 0
    set File_Ability_List[0] = 'Amls'  // Aerial Shackles
    set File_Ability_List[1] = 'Aroc'  // Barrage
    set File_Ability_List[2] = 'Amic'  // Call to Arms
    set File_Ability_List[3] = 'Amil'  // Call to Arms
    set File_Ability_List[4] = 'Aclf'  // Cloud
    set File_Ability_List[5] = 'Acmg'  // Control Magic
    set File_Ability_List[6] = 'Adef'  // Defend
    set File_Ability_List[7] = 'Adis'  // Dispel Magic
    set File_Ability_List[8] = 'Afbt'  // Feedback
    set File_Ability_List[9] = 'Afbk'  // Feedback

    loop
        exitwhen i >= NUM_FILE_ABILITIES
        set original_descriptions[i] = BlzGetAbilityTooltip(File_Ability_List[i], 0)
        set i = i + 1
    endloop
endfunction

function main takes nothing returns nothing
    call constants_init()
endfunction

function read_file takes string map_name, string file_name returns File
    local integer i = 0
    local string output = ""

    call Preloader(file_name)

    loop
        exitwhen i >= NUM_FILE_ABILITIES
        set read_lines[i] = BlzGetAbilityTooltip(File_Ability_List[i], 0)
        call BlzSetAbilityTooltip(File_Ability_List[i], original_descriptions[i], 0)
        set i = i + 1
    endloop
endfunction

function open_write takes string filename returns nothing
    call PreloadGenClear()
    call PreloadGenStart()
    set last_filename = filename
endfunction

function write_string takes string contents returns nothing
    Preload(contents)
endfunction

function close_write takes nothing returns nothing
    call PreloadGenEnd(last_filename)
    set last_filename = ""
endfunction
