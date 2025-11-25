globals
unit mercenary_camp = null
integer units_added = 0
endglobals

function mercenaries_create_camp takes nothing returns nothing
    if mercenary_camp != null then
        return
    endif
    // grid hexes are multiples of 64
    set mercenary_camp = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'nmrd', -960.0, -896.0, 270.0)
    call SetUnitColor(mercenary_camp, ConvertPlayerColor(7))
endfunction

function mercenaries_apply takes nothing returns nothing
    local integer index = 0
    local integer mask = 536870912  // 1 << 29
    local integer scanned = 0
    local integer signal = 'ncrb'
    local unit target_camp = mercenary_camp
    local integer u
    loop
        exitwhen mask == 0
        if mask == 524288 then  // 1 << 19
            set signal = 'ndog'
            set index = 0
            set target_camp = null
        elseif mask == 512 then  // 1 << 9
            set signal = 'ndwm'
            set index = 0
            set target_camp = null
        endif
        set u = GetPlayerTechMaxAllowed(Player(index), signal)
        if units_added - scanned >= mask then
            // already added
            set scanned = scanned + mask
        elseif u > 0 then
            // add the unit
            call AddUnitToStock(target_camp, u, 0, 2)
            set scanned = scanned + mask
            set units_added = units_added + mask
        endif
        set mask = mask / 2
        set index = index + 1
    endloop
endfunction

function InitTrig_AP_mercenaries takes nothing returns nothing
    set t_create_mercenary_camps = CreateTrigger()
    call TriggerAddAction(t_create_mercenary_camps, function mercenaries_create_camp)
    set t_apply_mercenaries = CreateTrigger()
    call TriggerAddAction(t_apply_mercenaries, function mercenaries_apply)
endfunction
