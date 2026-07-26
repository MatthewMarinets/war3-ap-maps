globals
unit array disco_balls
trigger recolour_disco_balls_t
trigger resize_disco_balls_t
trigger adventurer_lightning_t
integer disco_ball_step = 0
real disco_ball_resize_step = 0.0
real arena_min_x
real arena_max_x
real arena_min_y
real arena_max_y
endglobals

function start_victory_actions takes nothing returns nothing
    local integer i = 0
    local weathereffect we
    set arena_min_x = GetRectMinX(gg_rct_mission_select_vision) + 512
    set arena_max_x = GetRectMaxX(gg_rct_mission_select_vision) - 512
    set arena_min_y = GetRectMinY(gg_rct_mission_select_vision) + 512
    set arena_max_y = GetRectMaxY(gg_rct_mission_select_vision) - 512
    set we = AddWeatherEffect(gg_rct_mission_select_vision, 'LRma')
    call EnableWeatherEffect(we, true)
    call AddSpecialEffect("Units\\NightElf\\Owl\\Owl.mdl", 0, 2432)
    call AddSpecialEffect("Units\\NightElf\\Owl\\Owl.mdl", -128, 2304)
    call AddSpecialEffect("Units\\NightElf\\Owl\\Owl.mdl", 3072, 2432)
    call AddSpecialEffect("Units\\NightElf\\Owl\\Owl.mdl", 3200, 2304)
    call AddSpecialEffect("Units\\NightElf\\Owl\\Owl.mdl", -128, -768)
    call AddSpecialEffect("Units\\NightElf\\Owl\\Owl.mdl", 0, -896)
    call AddSpecialEffect("Units\\NightElf\\Owl\\Owl.mdl", 3200, -768)
    call AddSpecialEffect("Units\\NightElf\\Owl\\Owl.mdl", 3072, -896)
    // torches
    loop
        exitwhen i >= 5
        call AddSpecialEffect("Doodads\\LordaeronSummer\\Props\\BrazierOmni\\BrazierOmni.mdl", 512 + 512*i, 2432)
        call AddSpecialEffect("Doodads\\LordaeronSummer\\Props\\BrazierOmni\\BrazierOmni.mdl", -128, 1792 - 512*i)
        call AddSpecialEffect("Doodads\\LordaeronSummer\\Props\\BrazierOmni\\BrazierOmni.mdl", 512 + 512*i, -896)
        call AddSpecialEffect("Doodads\\LordaeronSummer\\Props\\BrazierOmni\\BrazierOmni.mdl", 3200, 1792 - 512*i)
        set i = i + 1
    endloop
    set i = 0
    // disco balls
    loop
        exitwhen i >= 20
        set disco_balls[i] = CreateUnit(Player(2), 'e001', GetRandomReal(arena_min_x, arena_max_x), GetRandomReal(arena_min_y, arena_max_y), GetRandomReal(0, 360))
        call SetUnitColor(disco_balls[i], ConvertPlayerColor(i+1))
        call IssuePointOrder(disco_balls[i], "move", GetUnitX(disco_balls[i]) + 500 * Cos(Deg2Rad(GetUnitFacing(disco_balls[i]))), GetUnitY(disco_balls[i]) + 500 * Sin(Deg2Rad(GetUnitFacing(disco_balls[i]))))
        set i = i + 1
    endloop
    call EnableTrigger(recolour_disco_balls_t)
    call EnableTrigger(resize_disco_balls_t)
    call EnableTrigger(adventurer_lightning_t)
endfunction

function recolour_disco_balls takes nothing returns nothing
    local integer i = 0
    local integer offset = disco_ball_step
    local real scale
    set disco_ball_step = disco_ball_step + 1
    if disco_ball_step >= 20 then
        set disco_ball_step = 1
    endif
    loop
        exitwhen i >= 20
        call SetUnitColor(disco_balls[i], ConvertPlayerColor(offset))
        if GetUnitX(disco_balls[i]) > arena_max_x or GetUnitX(disco_balls[i]) < arena_min_x or GetUnitY(disco_balls[i]) > arena_max_y or GetUnitY(disco_balls[i]) < arena_min_y then
            call IssuePointOrder(disco_balls[i], "move", GetRandomReal(arena_min_x+512, arena_max_x-512), GetRandomReal(arena_min_y+512, arena_max_y-512))
        else
            call IssuePointOrder(disco_balls[i], "move", GetUnitX(disco_balls[i]) + 500 * Cos(Deg2Rad(GetUnitFacing(disco_balls[i]))), GetUnitY(disco_balls[i]) + 500 * Sin(Deg2Rad(GetUnitFacing(disco_balls[i]))))
        endif
        set offset = offset + 1
        if offset >= 20 then
            set offset = 1
        endif
        set i = i + 1
    endloop
endfunction

function resize_disco_balls takes nothing returns nothing
    local integer i = 0
    local real scale
    set disco_ball_resize_step = disco_ball_resize_step + 0.157
    if disco_ball_resize_step > 4 * 3.14159 then
        set disco_ball_resize_step = 0
    endif
    loop
        exitwhen i >= 20
        set scale = 1.0 + 0.4 * Sin(disco_ball_resize_step + i)
        call SetUnitScale(disco_balls[i], scale, scale, scale)
        set i = i + 1
    endloop
endfunction

function adventurer_lightning takes nothing returns nothing
    // local effect e1 = AddSpecialEffect("Doodads\\Cinematic\\Lightningbolt\\Lightningbolt.mdl", GetUnitX(udg_adventurer), GetUnitY(udg_adventurer))
    local effect e2 = AddSpecialEffect("Abilities\\Spells\\Items\\AIfb\\AIfbTarget.mdl", GetUnitX(udg_adventurer), GetUnitY(udg_adventurer))
    call TriggerSleepAction(2)
    // call DestroyEffect(e1)
    call DestroyEffect(e2)
endfunction

//===========================================================================
function InitTrig_start_victory takes nothing returns nothing
    set gg_trg_start_victory = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(gg_trg_start_victory, Player(0), "-victory", true)
    call TriggerAddAction(gg_trg_start_victory, function start_victory_actions)
    set recolour_disco_balls_t = CreateTrigger()
    call TriggerAddAction(recolour_disco_balls_t, function recolour_disco_balls)
    call DisableTrigger(recolour_disco_balls_t)
    call TriggerRegisterTimerEventPeriodic(recolour_disco_balls_t, 1.0)
    set resize_disco_balls_t = CreateTrigger()
    call TriggerAddAction(resize_disco_balls_t, function resize_disco_balls)
    call DisableTrigger(resize_disco_balls_t)
    call TriggerRegisterTimerEventPeriodic(resize_disco_balls_t, 0.1)
    set adventurer_lightning_t = CreateTrigger()
    call TriggerAddAction(adventurer_lightning_t, function adventurer_lightning)
    call DisableTrigger(adventurer_lightning_t)
    call TriggerRegisterTimerEventPeriodic(adventurer_lightning_t, 0.2)
endfunction

