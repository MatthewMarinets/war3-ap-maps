// This file defines file IO functions for the JASS side of things
// Based off the FileIO module created by Nestharus, see:
// https://www.hiveworkshop.com/threads/codeless-save-load-its-now-a-reality-demo-map-included.226082/

globals
string array p_original_names
string array io_lines
constant integer NUM_FILE_LINES = 10
string last_filename = ""
endglobals

function InitTrig_fileio takes nothing returns nothing
    local integer i = 0

    loop
        exitwhen i >= NUM_FILE_LINES
        set p_original_names[i] = GetPlayerName(Player(i))
        set i = i + 1
    endloop
endfunction

function io_read_file takes string file_name returns nothing
    local integer i = 0
    local string output = ""

    call Preloader(file_name)

    loop
        exitwhen i >= NUM_FILE_LINES
        set io_lines[i] = GetPlayerName(Player(i))
        call SetPlayerName(Player(i), p_original_names[i])
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
