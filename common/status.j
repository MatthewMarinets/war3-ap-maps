// defines the packets that communicate with the client
// depends: map_config, fileio
globals
constant string COMM_VERSION = "1.0"
constant integer MAX_UPDATE_ID = 100000
integer error_state = 0
integer world_id = -1
integer last_unlock_packet = -1
integer last_location_packet = -1
integer last_message_packet = -1
integer last_hero_packet = -1
integer last_item_packet = -1
integer last_item_channel_packet = -1
integer checks_before_timeout = 2
boolean array locations_checked
constant integer MAX_LOCATIONS = 30
constant integer MAX_ITEMS_PER_PACKET = 12
integer update_index = -1
integer hero_status_index = -1
integer num_channel_1_items_received = 0
integer num_channel_2_items_received = 0
timer status_ack_ping_timer
trigger t_captain_promoted
endglobals

function status_send takes nothing returns nothing
    local integer i = 0
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
    set update_index = update_index + 1
    if update_index >= MAX_UPDATE_ID then
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
endfunction

function captains_set_ability_usable takes player p returns nothing
    local integer available = GetPlayerTechMaxAllowed(p, 'hcth') - GetPlayerTechCount(p, 'AP00', true)
    if available < 0 then
        set available = 0
    endif
    call SetPlayerTechResearched(p, 'R100', available)
endfunction

function status_load_unlocks_for_player takes integer target_player returns nothing
    local player p = Player(0)
    call SetPlayerTechMaxAllowed(p, 'nech', -1)
    call SetPlayerTechMaxAllowed(p, 'nvil', target_player)
    call io_read_file_simple("unlocks.txt")
    set last_unlock_packet = GetPlayerTechMaxAllowed(p, 'nech')
    // captains
    call captains_set_ability_usable(Player(target_player))
endfunction

function status_captain_promoted_actions takes nothing returns nothing
    local player p = GetOwningPlayer(GetTriggerUnit())
    local effect special_effect
    if GetSpellAbilityId() != 'AP00' then
        return
    endif
    call AddPlayerTechResearched(p, 'AP00', 1)
    call captains_set_ability_usable(p)
endfunction

function captains_init takes nothing returns nothing
    call SetPlayerTechMaxAllowed(USER_PLAYER, 'hcth', 0)
    set t_captain_promoted = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t_captain_promoted, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddAction(t_captain_promoted, function status_captain_promoted_actions)
endfunction

function status_load_unlocks takes nothing returns nothing
    call status_load_unlocks_for_player(GetPlayerId(USER_PLAYER))
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
        call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "|cffff2222Error: Attempted to check invalid location ID: " + I2S(location_id) + "|r")
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

function status_load_items takes nothing returns nothing
    local integer num_items = -1
    local integer i = 0
    local integer item_id = 0
    local player p = Player(0)
    local unit target_unit = null
    call SetPlayerTechMaxAllowed(p, 'nech', -1)
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
    set last_item_packet = GetPlayerTechMaxAllowed(p, 'nech')
    set num_items = GetPlayerTechMaxAllowed(p, 'nalb')
    if num_items < 0 then
        set num_items = 0
    elseif num_items > MAX_ITEMS_PER_PACKET then
        set num_items = MAX_ITEMS_PER_PACKET
    endif

    if GetPlayerTechMaxAllowed(p, 'ndog') == 0 then
        set target_unit = item_channel_1_target
        set num_channel_1_items_received = num_channel_1_items_received + num_items
    else
        set target_unit = item_channel_2_target
        set num_channel_2_items_received = num_channel_2_items_received + num_items
    endif

    loop
        exitwhen i >= num_items
        set item_id = GetPlayerTechMaxAllowed(Player(i), 'ncrb')
        if item_id != 0 then
            call UnitAddItemById(target_unit, item_id)
        endif
        set i = i + 1
    endloop
endfunction

function status_init_item_channels takes integer local_channel_id returns nothing
    if local_channel_id == 1 then
        call SetPlayerTechMaxAllowed(Player(0), 'nalb', item_channel_1)
    else
        call SetPlayerTechMaxAllowed(Player(0), 'nalb', item_channel_2)
    endif
    call SetPlayerTechMaxAllowed(Player(0), 'nech', -1)
    call SetPlayerTechMaxAllowed(Player(0), 'nske', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'npng', -1)
    call io_read_file_simple("item_channels.txt")
    set last_item_channel_packet = GetPlayerTechMaxAllowed(Player(0), 'nech')
    if GetPlayerTechMaxAllowed(Player(0), 'nech') == 0 then
        return
    endif
    if local_channel_id == 1 then
        set num_channel_1_items_received = GetPlayerTechMaxAllowed(Player(0), 'npng')
    else
        set num_channel_2_items_received = GetPlayerTechMaxAllowed(Player(0), 'npng')
    endif
endfunction

function status_check_ping takes nothing returns nothing
    local integer bitmask = 0
    local boolean should_send = false
    local player p = Player(0)
    call SetPlayerTechMaxAllowed(p, 'nske', -1)
    call SetPlayerTechMaxAllowed(p, 'nwgt', -1)
    call SetPlayerTechMaxAllowed(p, 'nvlk', -1)
    call SetPlayerTechMaxAllowed(p, 'nvk2', -1)
    call io_read_file_simple("ping.txt")
    if GetPlayerTechMaxAllowed(p, 'nske') != update_index or GetPlayerTechMaxAllowed(p, 'nvlk') != MISSION_ID then
        if checks_before_timeout > 0 then
            set checks_before_timeout = checks_before_timeout - 1
        elseif checks_before_timeout == 0 then
            set checks_before_timeout = -1
            set error_state = 1
            call DisplayTextToForce(GetPlayersAll(), "|cffff2222Error: Client communication timeout|r")
            call DisplayTextToForce(GetPlayersAll(), "|cffff2222Check the client is started correctly. Locations will not send until communication is established|r")
        endif
        return
    elseif world_id >= 0 and GetPlayerTechMaxAllowed(p, 'nwgt') != world_id then
        if error_state != 2 then
            set error_state = 2
            call DisplayTextToForce(GetPlayersAll(), "|cffff2222Error: Client is connected to a different world seed|r")
            call DisplayTextToForce(GetPlayersAll(), "|cffff2222Restart the level or connect the client to a different room|r")
        endif
        return
    elseif error_state > 0 and world_id >= 0 then
        set error_state = 0
        call DisplayTextToForce(GetPlayersAll(), "|cff2266ffClient communications re-established.|r")
    endif
    set world_id = GetPlayerTechMaxAllowed(p, 'nwgt')
    set checks_before_timeout = 2
    set bitmask = GetPlayerTechMaxAllowed(p, 'nvk2')
    if bitmask > 0 then
        set should_send = true
    endif
    if bitmask >= 256 then
        // bitmask & 255
        set bitmask = bitmask - ((bitmask / 256) * 256)
    endif
    if bitmask >= 128 then
        set bitmask = bitmask - 128
        // unused
    endif
    if bitmask >= 64 then
        set bitmask = bitmask - 64
        call TriggerExecute(t_hero_set_all_max_level)
    endif
    if bitmask >= 32 then
        set bitmask = bitmask - 32
        call status_init_item_channels(0)
        if item_channel_2 > 0 then
            call status_init_item_channels(1)
        endif
    endif
    if bitmask >= 16 then
        set bitmask = bitmask - 16
        call status_load_items()
    endif
    if bitmask >= 8 then
        set bitmask = bitmask - 8
        call TriggerExecute(t_hero_configure_all)
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
    set status_ack_ping_timer = CreateTimer()
    call status_send()
    call TimerStart(status_ack_ping_timer, 1, true, function status_check_ping)
    // Captains
    call captains_init()
endfunction
