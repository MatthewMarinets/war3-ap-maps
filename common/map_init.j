// Map initialization function template
function map_init_load_status takes nothing returns nothing
    call DestroyTimer(GetExpiredTimer())
    call status_load()
endfunction

function InitTrig_map_init takes nothing returns nothing
    set mission_name = "$(MISSION_NAME)"
    call status_send()
    call TimerStart(CreateTimer(), 2, false, function map_init_load_status)
endfunction
