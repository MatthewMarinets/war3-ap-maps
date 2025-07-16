// debug commands
globals
trigger t_help
trigger t_xp
trigger t_xp2
trigger t_health
trigger t_dragon
endglobals

function debug_print_help takes nothing returns nothing
    call DisplayTextToForce(GetPlayersAll(), "Commands: 'xp', 'xp2', 'health', 'dragon'")
endfunction

function debug_xp_tome takes nothing returns nothing
    // call CreateItem('texp', GetStartLocationX(GetPlayerId(USER_PLAYER)), GetStartLocationY(GetPlayerId(USER_PLAYER)))
    call CreateItem('texp', GetUnitX(item_channel_1_target), GetUnitX(item_channel_1_target))
endfunction

function debug_xp2_tome takes nothing returns nothing
    call CreateItem('tkno', GetUnitX(item_channel_1_target), GetUnitX(item_channel_1_target))
endfunction

function debug_health_tome takes nothing returns nothing
    call CreateItem('manh', GetUnitX(item_channel_1_target), GetUnitX(item_channel_1_target))
endfunction

function debug_dragon_egg takes nothing returns nothing
    call CreateItem('fgrd', GetUnitX(item_channel_1_target), GetUnitX(item_channel_1_target))
endfunction

function InitTrig_debug takes nothing returns nothing
    set t_help=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_help, USER_PLAYER, "help", false)
    call TriggerAddAction(t_help, function debug_print_help)
    set t_xp=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_xp, USER_PLAYER, "xp", false)
    call TriggerAddAction(t_xp, function debug_xp_tome)
    set t_xp2=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_xp2, USER_PLAYER, "xp2", false)
    call TriggerAddAction(t_xp2, function debug_xp2_tome)
    set t_health=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_health, USER_PLAYER, "health", false)
    call TriggerAddAction(t_health, function debug_health_tome)
    set t_dragon=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_dragon, USER_PLAYER, "dragon", false)
    call TriggerAddAction(t_dragon, function debug_dragon_egg)
endfunction
