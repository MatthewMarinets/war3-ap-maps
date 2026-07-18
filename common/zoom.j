globals
trigger t_zoom
endglobals

function zoom_change_zoom takes nothing returns nothing
    call SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, S2R(SubStringBJ(GetEventPlayerChatString(), 7, 10)), 0)
endfunction

//===========================================================================
function InitTrig_zoom takes nothing returns nothing
    set t_zoom = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t_zoom, USER_PLAYER, "-zoom ", false)
    call TriggerAddAction(t_zoom, function zoom_change_zoom)
endfunction
