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
