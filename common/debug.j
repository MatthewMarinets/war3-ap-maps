// debug commands
globals
trigger t_xp
endglobals

function debug_xp_tome takes nothing returns nothing
    call DisplayTextToForce(GetPlayersAll(), "XPXPXP")
    call CreateItem('texp', GetStartLocationX(GetPlayerId(USER_PLAYER)), GetStartLocationY(GetPlayerId(USER_PLAYER)))
endfunction

function InitTrig_debug takes nothing returns nothing
    set t_xp=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_xp, USER_PLAYER, "xp", false)
    call TriggerAddAction(t_xp, function debug_xp_tome)
endfunction
