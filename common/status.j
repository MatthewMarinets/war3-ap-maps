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
