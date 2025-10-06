// version: 1
// Triggers: 139
//\\// Trigger #0
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

function io_read_file_simple takes string file_name returns nothing
    call Preloader(file_name)
endfunction

function io_read_file takes string file_name returns nothing
    local integer i = 0

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

//\\// Trigger #1
// Map-specific setup used by other scripts
globals
constant integer MISSION_ID = 101
integer NUM_HEROES = 1
constant player USER_PLAYER = Player(1)
integer array hero_global_slots
constant integer item_channel_1 = 1
constant integer item_channel_2 = -1
constant integer item_channel_2_hero_slot = -1
constant integer HERO_ID_ALL = -1
constant integer HERO_ID_NONE = 0
constant integer HERO_ID_PALADIN_ARTHAS = 1
constant integer HERO_ID_JAINA = 2
constant integer HERO_ID_MURADIN_BRONZEBEARD = 3
constant integer HERO_ID_THRALL = 4
constant integer HERO_ID_CAIRNE_BLOODHOOF = 5
constant integer HERO_ID_GROM_HELLSCREAM = 6
constant integer HERO_ID_DEATH_KNIGHT_ARTHAS = 7
constant integer HERO_ID_KEL_THUZAD = 8
constant integer HERO_ID_ARTHAS_TFT = 9
constant integer HERO_ID_SYLVANAS = 10
constant integer HERO_ID_VARIMATHRAS = 11
constant integer HERO_ID_ANUB_ARAK = 12
constant integer HERO_ID_TYRANDE = 13
constant integer HERO_ID_FURION = 14
constant integer HERO_ID_ILLIDAN = 15
constant integer HERO_ID_TYRANDE_TFT = 16
constant integer HERO_ID_MALFURION = 17
constant integer HERO_ID_MAIEV = 18
constant integer HERO_ID_KAEL_THAS = 19
constant integer HERO_ID_DEMON_ILLIDAN = 20
constant integer HERO_ID_LADY_VASHJ = 21
constant integer HERO_ID_AKAMA = 22
constant integer HERO_ID_LORD_GARITHOS = 23
endglobals

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
    local integer i = 0
    loop
        exitwhen hero_get_unit_from_index(i) == hero
        set i = i + 1
        exitwhen i >= NUM_HEROES
    endloop
    return i
endfunction

function hero_update_variable takes integer slot, unit hero returns nothing
    if slot == 0 then
        set udg_Arthas = hero
    elseif slot == 1 then
        set udg_Arthas = hero
    elseif slot == 2 then
        set udg_Arthas = hero
    else
        set udg_Arthas = hero
    endif
endfunction

function InitTrig_map_config takes nothing returns nothing
    set hero_global_slots[0] = HERO_ID_PALADIN_ARTHAS
    set hero_global_slots[1] = HERO_ID_NONE
    set hero_global_slots[2] = HERO_ID_NONE
    set hero_global_slots[3] = HERO_ID_NONE
endfunction

//\\// Trigger #2
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

function B2I takes boolean b returns integer
    if b then
        return 1
    endif
    return 0
endfunction

function captains_set_ability_usable takes player p returns nothing
    local integer available = GetPlayerTechMaxAllowed(p, 'hcth') - GetPlayerTechCount(p, 'AP00', true)
    if available < 0 then
        set available = 0
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

//\\// Trigger #3
// Functions to control and configure heroes
// depends: fileio, map_config, status
globals
unit item_channel_1_target = null
unit item_channel_2_target = null
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
endglobals

function hero_apply_max_level takes unit hero, integer level returns nothing
    if GetHeroLevel(hero) >= level then
        call SetHeroLevelBJ(hero, level, false)
        call SuspendHeroXP(hero, true)
    else
        call SuspendHeroXP(hero, false)
    endif
endfunction

function hero_set_max_level takes integer slot, integer level returns nothing
    local unit hero = hero_get_unit_from_index(slot)
    set HERO_MAX_LEVEL[slot] = level
    call hero_apply_max_level(hero, level)
endfunction

function hero_load takes integer hero_slot returns boolean
    local player p = Player(0)
    call SetPlayerTechMaxAllowed(p, 'nech', -1)
    call SetPlayerTechMaxAllowed(p, 'nske', -1)
    call SetPlayerTechMaxAllowed(p, 'npng', -1)
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
        set HERO_MAX_LEVEL[hero_slot] = GetPlayerTechMaxAllowed(p, 'nder')
        set hero_abil_1[hero_slot] = GetPlayerTechMaxAllowed(Player(0), 'nfro')
        set hero_abil_2[hero_slot] = GetPlayerTechMaxAllowed(Player(1), 'nfro')
        set hero_abil_3[hero_slot] = GetPlayerTechMaxAllowed(Player(2), 'nfro')
        set hero_abil_4[hero_slot] = GetPlayerTechMaxAllowed(Player(3), 'nfro')
        set last_hero_packet = GetPlayerTechMaxAllowed(p, 'nech')
    endif

    return GetPlayerTechMaxAllowed(p, 'nske') == 1
endfunction

// should be called after hero_load()
function hero_configure takes unit hero, integer slot returns nothing
    local player p = Player(0)
    local integer val
    local integer i = 0
    local item i_item
    call SetHeroXP(hero, GetPlayerTechMaxAllowed(p, 'ncrb'), false)
    set val = GetPlayerTechMaxAllowed(p, 'ndog')
    if val > 0 then
        call SetHeroAgi(hero, val, true)
    endif
    set val = GetPlayerTechMaxAllowed(p, 'nskk')
    if val > 0 then
        call SetHeroStr(hero, val, true)
    endif
    set val = GetPlayerTechMaxAllowed(p, 'npig')
    if val > 0 then
        call SetHeroInt(hero, val, true)
    endif
    set val = GetPlayerTechMaxAllowed(p, 'nsea')
    if val > 0 then
        call SetUnitState(hero, UNIT_STATE_MAX_LIFE, I2R(val))
        call SetUnitState(hero, UNIT_STATE_LIFE, I2R(val))
    endif
    call BlzSetHeroProperName(hero, io_lines[0])
    // abilities
    loop
        exitwhen i > 3
        set val = GetPlayerTechMaxAllowed(Player(i), 'nrac')
        loop
            exitwhen val <= 0
            set val = val - 1
            call SelectHeroSkill(hero, GetPlayerTechMaxAllowed(Player(i), 'nfro'))
        endloop
        set i = i + 1
    endloop
    // items
    set i = 0
    loop
        exitwhen i > 5
        set val = GetPlayerTechMaxAllowed(Player(i), 'nvul')
        if val > 0 then
            set i_item = UnitAddItemById(hero, val)
        else
            // pad out empty slots with a dummy item so later items go to the correct slots
            set i_item = UnitAddItemById(hero, 'wtlg')
        endif
        set val = GetPlayerTechMaxAllowed(Player(i), 'nsno')
        if val > 0 and GetItemCharges(i_item) > 0 then
            call SetItemCharges(i_item, val)
        endif
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen i > 5
        if GetItemTypeId(UnitItemInSlot(hero, i)) == 'wtlg' then
            set i_item = UnitRemoveItemFromSlot(hero, i)
            call RemoveItem(i_item)
        endif
        set i = i + 1
    endloop
    // max level
    set val = GetPlayerTechMaxAllowed(p, 'nder')
    if val > 0 then
        set HERO_MAX_LEVEL[slot] = val
        call hero_apply_max_level(hero, val)
    endif
endfunction

function hero_configure_all takes nothing returns nothing
    local integer slot = 0
    local unit hero
    loop
        exitwhen slot >= NUM_HEROES
        call hero_load(slot)
        set hero = hero_get_unit_from_index(slot)
        // todo: handle hero unit type mismatch
        call hero_configure(hero, slot)
        set slot = slot + 1
    endloop
endfunction

function hero_set_all_max_level takes nothing returns nothing
    local integer slot = 0
    local unit hero
    loop
        exitwhen slot >= NUM_HEROES
        call hero_load(slot)
        call hero_set_max_level(slot, GetPlayerTechMaxAllowed(Player(0), 'nder'))
        set slot = slot + 1
    endloop
endfunction

function hero_create takes integer hero_slot, player for_player, real x, real y, real facing returns unit
    local unit hero = null
    if not hero_load(hero_slot) then
        return null
    endif
    set hero = CreateUnit(for_player, GetPlayerTechMaxAllowed(Player(0), 'npng'), x, y, facing)
    return hero
endfunction

function hero_hide_replace takes integer slot, unit replace returns unit
    local unit old_hero = hero_get_unit_from_index(slot)
    local unit hero
    call ShowUnit(old_hero, false)
    set hero = hero_create(slot, GetOwningPlayer(old_hero), GetUnitX(old_hero), GetUnitY(old_hero), GetUnitFacing(old_hero))
    if hero == null then
        call ShowUnit(old_hero, true)
        return old_hero
    endif
    call hero_configure(hero, slot)
    call hero_update_variable(slot, hero)
    call RemoveUnit(hero)
    return hero
endfunction

function hero_hash_state takes unit hero, integer slot returns integer
    local integer result = 0
    set result = result + GetHeroLevel(hero)
    set result = result * 3 + GetHeroAgi(hero, false)
    set result = result * 3 + GetHeroStr(hero, false)
    set result = result * 3 + GetHeroInt(hero, false)
    set result = result * 3 + R2I(GetUnitState(hero, UNIT_STATE_MAX_LIFE))
    set result = result * 3 + GetUnitAbilityLevel(hero, hero_abil_1[slot])
    set result = result * 3 + GetUnitAbilityLevel(hero, hero_abil_2[slot])
    set result = result * 3 + GetUnitAbilityLevel(hero, hero_abil_3[slot])
    set result = result * 3 + GetUnitAbilityLevel(hero, hero_abil_4[slot])
    set result = result * 3 + GetItemTypeId(UnitItemInSlot(hero, 0))
    set result = result * 3 + GetItemTypeId(UnitItemInSlot(hero, 1))
    set result = result * 3 + GetItemTypeId(UnitItemInSlot(hero, 2))
    set result = result * 3 + GetItemTypeId(UnitItemInSlot(hero, 3))
    set result = result * 3 + GetItemTypeId(UnitItemInSlot(hero, 4))
    set result = result * 3 + GetItemTypeId(UnitItemInSlot(hero, 5))
    return result
endfunction

function hero_publish_status takes integer slot returns nothing
    local unit hero = hero_get_unit_from_index(slot)
    local integer this_hash = hero_hash_state(hero, slot)
    local integer i = 0
    local item i_item
    if this_hash == hero_hashes[slot] then
        return
    endif
    set hero_hashes[slot] = this_hash
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
        set i_item = UnitItemInSlot(hero, i)
        call io_write(I2S(GetItemTypeId(i_item)))
        if i_item == null then
            call io_write("0")
        else
            call io_write(I2S(GetItemCharges(i_item)))
        endif
        set i = i + 1
    endloop
    call io_close_write()

    set hero_status_index = hero_status_index + 1
    if hero_status_index >= MAX_UPDATE_ID then
        set hero_status_index = 0
    endif
endfunction

function hero_publish_all_statuses takes nothing returns nothing
    local integer i = 0
    local integer starting_hero_status_index = hero_status_index
    loop
        exitwhen i >= NUM_HEROES
        call hero_publish_status(i)
        set i = i + 1
    endloop
    if hero_status_index != starting_hero_status_index then
        call status_send()
    endif
endfunction

function hero_on_level takes unit hero returns nothing
    local integer hero_index = hero_get_index_from_unit(hero)
    if hero_index >= NUM_HEROES then
        debug call DisplayTextToForce(GetPlayersAll(), "Error: Couldn't find hero index for levelling hero")
        return
    endif
    call hero_apply_max_level(hero, HERO_MAX_LEVEL[hero_index])
endfunction

function hero_on_level_triggerfunction takes nothing returns nothing
    call hero_on_level(GetTriggerUnit())
endfunction

function hero_on_item_pickup takes nothing returns nothing
    local integer hero_index = hero_get_index_from_unit(GetTriggerUnit())
    if not IsHeroUnitId(GetUnitTypeId(GetTriggerUnit())) then
        return
    endif
    if hero_index == item_channel_2_hero_slot then
        return
    endif
    set item_channel_1_target = GetTriggerUnit()
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
    set item_channel_1_target = hero_get_unit_from_index(0)
    set item_channel_2_target = hero_get_unit_from_index(item_channel_2_hero_slot)
    set hero_hashes[0] = 0
    set hero_hashes[1] = 0
    set hero_hashes[2] = 0
    set hero_hashes[3] = 0
endfunction

//\\// Trigger #4
// triggers for sending locations when picking up location-linked items
// depends: status
globals
trigger t_location_found = null
endglobals

function trigger_function_item_locations takes nothing returns nothing
    local integer item_id = GetItemTypeId(GetManipulatedItem())
    if (item_id == 'I010') then
        call status_check_location(0)
    elseif (item_id == 'I011') then
        call status_check_location(1)
    elseif (item_id == 'I012') then
        call status_check_location(2)
    elseif (item_id == 'I013') then
        call status_check_location(3)
    elseif (item_id == 'I014') then
        call status_check_location(4)
    elseif (item_id == 'I015') then
        call status_check_location(5)
    elseif (item_id == 'I016') then
        call status_check_location(6)
    elseif (item_id == 'I017') then
        call status_check_location(7)
    elseif (item_id == 'I018') then
        call status_check_location(8)
    elseif (item_id == 'I019') then
        call status_check_location(9)
    elseif (item_id == 'I01A') then
        call status_check_location(10)
    elseif (item_id == 'I01B') then
        call status_check_location(11)
    elseif (item_id == 'I01C') then
        call status_check_location(12)
    elseif (item_id == 'I01D') then
        call status_check_location(13)
    elseif (item_id == 'I01E') then
        call status_check_location(14)
    elseif (item_id == 'I01F') then
        call status_check_location(15)
    elseif (item_id == 'I020') then
        call status_check_location(16)
    elseif (item_id == 'I021') then
        call status_check_location(17)
    elseif (item_id == 'I022') then
        call status_check_location(18)
    elseif (item_id == 'I023') then
        call status_check_location(19)
    elseif (item_id == 'I024') then
        call status_check_location(20)
    elseif (item_id == 'I025') then
        call status_check_location(21)
    elseif (item_id == 'I026') then
        call status_check_location(22)
    elseif (item_id == 'I027') then
        call status_check_location(23)
    elseif (item_id == 'I028') then
        call status_check_location(24)
    elseif (item_id == 'I029') then
        call status_check_location(25)
    elseif (item_id == 'I02A') then
        call status_check_location(26)
    elseif (item_id == 'I02B') then
        call status_check_location(27)
    elseif (item_id == 'I02C') then
        call status_check_location(28)
    elseif (item_id == 'I02D') then
        call status_check_location(29)
    elseif (item_id == 'I02E') then
        call status_check_location(30)
    elseif (item_id == 'I02F') then
        call status_check_location(31)
    endif
endfunction

function InitTrig_item_locations takes nothing returns nothing
    set t_location_found = CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_location_found, USER_PLAYER, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(t_location_found, function trigger_function_item_locations)
endfunction

//\\// Trigger #5
// debug commands
globals
trigger t_help
trigger t_print
trigger t_xp
trigger t_xp2
trigger t_health
trigger t_dragon
trigger t_speed
endglobals

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
    local string s_locations_checked = ""
    local integer index = 0
    call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "world_id: " + I2S(world_id))
    loop
        exitwhen index >= MAX_LOCATIONS
        if locations_checked[index] then
            set s_locations_checked = s_locations_checked + "," + I2S(index)
        endif
        set index = index + 1
    endloop
    call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "checked: " + s_locations_checked)
    set index = 0
    loop
        exitwhen index >= NUM_HEROES
        call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "Hero " + I2S(index) + " max level: " + I2S(HERO_MAX_LEVEL[index]))
        set index = index + 1
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

//\\// Trigger #6
globals
trigger t_zoom
endglobals

function Trig_zoom_Actions takes nothing returns nothing
    call SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, S2R(SubStringBJ(GetEventPlayerChatString(), 7, 10)), 0)
endfunction

//===========================================================================
function InitTrig_zoom takes nothing returns nothing
    set t_zoom = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_zoom, USER_PLAYER, "-zoom ", false)
    call TriggerAddAction(t_zoom, function Trig_zoom_Actions)
endfunction

//\\// Trigger #8
globals
trigger t_irregulars_on_cast
endglobals

function irregular_transform takes unit u, integer abil_id returns effect
    local effect e = AddSpecialEffect("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl", GetUnitX(u), GetUnitY(u))
    call UnitAddAbility(u, abil_id)
    call IssueImmediateOrder(u, "ravenform")
    return e
endfunction

function irregulars_on_cast takes nothing returns nothing
    local integer a = GetSpellAbilityId()
    local effect e = null
    if a == 'AP00' then
        // captain
        set e = irregular_transform(GetSpellAbilityUnit(), 'AP0a')
    elseif a == 'AP01' then
        // footman
        set e = irregular_transform(GetSpellAbilityUnit(), 'AP0b')
    elseif a == 'AP02' then
        // rifleman
        set e = irregular_transform(GetSpellAbilityUnit(), 'AP0c')
    elseif a == 'AP03' then
        // archer
        set e = irregular_transform(GetSpellAbilityUnit(), 'AP0d')
    elseif a == 'AP04' then
        // knight
        set e = irregular_transform(GetSpellAbilityUnit(), 'AP0e')
    elseif a == 'AP05' then
        // priest
        set e = irregular_transform(GetSpellAbilityUnit(), 'AP0f')
    elseif a == 'AP06' then
        // sorceress
        set e = irregular_transform(GetSpellAbilityUnit(), 'AP0g')
    elseif a == 'AP07' then
        // spell breaker
        set e = irregular_transform(GetSpellAbilityUnit(), 'AP0h')
    elseif a == 'AP08' then
        // mortar team
        set e = irregular_transform(GetSpellAbilityUnit(), 'AP0i')
    endif
    if e != null then
        call TriggerSleepAction(2.0)
        call DestroyEffect(e)
    endif
endfunction

//===========================================================================
function InitTrig_irregulars takes nothing returns nothing
    set t_irregulars_on_cast = CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_irregulars_on_cast, USER_PLAYER, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddAction(t_irregulars_on_cast, function irregulars_on_cast)
    call Preload("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl")
endfunction

//\\// End