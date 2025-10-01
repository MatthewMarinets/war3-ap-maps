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
