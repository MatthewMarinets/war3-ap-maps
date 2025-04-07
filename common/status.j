// defines the packets that communicate with the client
// depends: map_config, fileio
globals
integer last_unlock_packet = -1
integer last_location_packet = -1
integer last_message_packet = -1
integer last_hero_packet = -1
integer checks_before_timeout = -1
string player_index = ""
boolean array locations_checked
constant integer MAX_LOCATIONS = 30
integer update_index = 0
timer status_ack_ping_timer
endglobals

function status_send takes nothing returns nothing
    local integer i = 0
    call io_open_write("status.txt")
    call io_write(I2S(update_index))
    call io_write(I2S(MISSION_ID))
    call io_write(player_index)
    call io_write(I2S(last_unlock_packet) + "," + I2S(last_location_packet) + "," + I2S(last_message_packet) + "," + I2S(last_hero_packet))
    set update_index = update_index + 1
    if update_index >= 10000 then
        set update_index = 0
    endif
    loop
        exitwhen i >= MAX_LOCATIONS
        if locations_checked[i] then
            call io_write(I2S(i))
        endif
        set i = i + 1
    endloop
    call io_close_write()
    set checks_before_timeout = 3
endfunction

function status_load_unlocks takes nothing returns nothing
    local player p = Player(0)
    call SetPlayerTechMaxAllowed(p, 'nech', -1)
    call io_read_file_simple("unlocks.txt")
    set last_unlock_packet = GetPlayerTechMaxAllowed(p, 'nech')
endfunction

function status_load_locations takes nothing returns nothing
    local player p = Player(0)
    local integer i = 0
    local integer loc_id = 0
    call SetPlayerTechMaxAllowed(p, 'nech', -1)
    call io_read_file("locations.txt")
    loop
        exitwhen i + 2 > StringLength(io_lines[0])
        set loc_id = S2I(SubString(io_lines[0], i, i+2))
        if loc_id < MAX_LOCATIONS then
            set locations_checked[loc_id] = true
        endif
        set i = i + 2
    endloop
    set i = 0
    loop
        exitwhen i + 2 > StringLength(io_lines[1])
        set loc_id = S2I(SubString(io_lines[1], i, i+2))
        if loc_id < MAX_LOCATIONS then
            set locations_checked[loc_id] = false
        endif
        set i = i + 2
    endloop
    set last_location_packet = GetPlayerTechMaxAllowed(p, 'nech')
endfunction

function status_check_location takes integer location_id returns nothing
    if location_id >= MAX_LOCATIONS then
        call DisplayTextToForce(GetPlayersAll(), "|cffff2222Error: Attempted to check invalid location ID: " + I2S(location_id) + "|r")
        return
    endif
    set locations_checked[location_id] = true
    call status_send()
endfunction

function status_load_messages takes nothing returns nothing
    local integer i = 0
    local player p = Player(0)
    local integer num_messages
    call SetPlayerTechMaxAllowed(p, 'nech', -1)
    call SetPlayerTechMaxAllowed(p, 'nalb', 0)
    call io_read_file("messages.txt")
    set num_messages = GetPlayerTechMaxAllowed(p, 'nalb')
    if num_messages > NUM_FILE_LINES then
        debug call DisplayTextToForce(GetPlayersAll(), "Error: Too many messages sent in a packet, " + I2S(num_messages) + " > " + I2S(NUM_FILE_LINES))
        set num_messages = NUM_FILE_LINES
    endif
    loop
        exitwhen i >= num_messages
        call DisplayTextToForce(GetPlayersAll(), io_lines[i])
        set i = i + 1
    endloop
    set last_message_packet = GetPlayerTechMaxAllowed(p, 'nech')
endfunction

function status_check_ping takes nothing returns nothing
    local integer bitmask = 0
    local boolean should_send = false
    local player p = Player(0)
    call SetPlayerTechMaxAllowed(p, 'nske', -1)
    call SetPlayerTechMaxAllowed(p, 'nvlk', -1)
    call SetPlayerTechMaxAllowed(p, 'nvk2', -1)
    call io_read_file_simple("ping.txt")
    if GetPlayerTechMaxAllowed(p, 'nske') != update_index or GetPlayerTechMaxAllowed(p, 'nvlk') != MISSION_ID then
        if checks_before_timeout > 0 then
            set checks_before_timeout = checks_before_timeout - 1
        elseif checks_before_timeout == 0 then
            set checks_before_timeout = -1
            call DisplayTextToForce(GetPlayersAll(), "|cffff2222Error: Client communication timeout|r")
            call DisplayTextToForce(GetPlayersAll(), "|cffff2222Check the client is started correctly. Locations will not send until communication is established|r")
        endif
        return
    endif
    set bitmask = GetPlayerTechMaxAllowed(p, 'nvk2')
    if bitmask > 0 then
        set should_send = true
    endif
    if bitmask >= 4 then
        set bitmask = bitmask - 4
        call status_load_messages()
    endif
    if bitmask >= 2 then
        set bitmask = bitmask - 2
        call status_load_locations()
    endif
    if bitmask >= 1 then
        set bitmask = bitmask - 1
        call status_load_unlocks()
    endif
    if should_send then
        call status_send()
    endif
endfunction

function InitTrig_status takes nothing returns nothing
    local integer i = 0
    loop
        exitwhen i >= MAX_LOCATIONS
        set locations_checked[i] = false
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen GetPlayerController(Player(i)) == MAP_CONTROL_USER
        exitwhen i > 10
        set i = i + 1
    endloop
    set player_index = I2S(i)
    set status_ack_ping_timer = CreateTimer()
    call status_send()
    call TimerStart(status_ack_ping_timer, 1, true, function status_check_ping)
endfunction
