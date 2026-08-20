
function activate_chaos takes nothing returns nothing
    local integer i=0
    local integer t
    local unit u
    local integer special_case_level = 0
    local integer special_case_hero = 0
    local integer num_special_case_heroes = 0
    loop
        exitwhen i >= 4
        set u = hero_get_unit_from_index(i)
        if GetUnitTypeId(u) == 'Nalc' or GetUnitTypeId(u) == 'Nalm' or GetUnitTypeId(u) == 'Nal2' or GetUnitTypeId(u) == 'Nal3' then
            set special_case_level = 10 * special_case_level + GetUnitAbilityLevel(u, 'ANcr')
            set special_case_hero = 10 * special_case_hero + i
            set num_special_case_heroes = num_special_case_heroes + 1
            call SetUnitAbilityLevel(u, 'ANcr', 0)
        endif
        set i = i + 1
    endloop
    call SetPlayerTechResearched(USER_PLAYER, 'Roch', 1)
    if num_special_case_heroes > 0 then
        set i = 0
        loop
            exitwhen i >= num_special_case_heroes
            set t = special_case_hero / 10
            set u = hero_get_unit_from_index(special_case_hero - 10*t)
            set special_case_hero = t
            set t = special_case_level / 10
            call SetUnitAbilityLevel(u, 'A;00', special_case_level - 10*t)
            set special_case_level = 10
            set i = i + 1
        endloop
    endif
endfunction
