
function activate_chaos takes nothing returns nothing
    local integer i=0
    local integer j=0
    local integer abil_1_level
    local integer abil_2_level
    local integer abil_3_level
    local integer abil_4_level
    local boolean was_selected
    local unit u
    loop
        exitwhen i >= NUM_HEROES
        set u=hero_get_unit_from_index(i)
        if GetUnitTypeId(u) == 'Nalc' or GetUnitTypeId(u) == 'Nalm' or GetUnitTypeId(u) == 'Nal2' or GetUnitTypeId(u) == 'Nal3' then
            call print("Updating hero " + I2S(i))
            set was_selected = IsUnitSelected(u, USER_PLAYER)
            set abil_1_level=GetUnitAbilityLevel(u, hero_abil_1[i])
            set abil_2_level=GetUnitAbilityLevel(u, hero_abil_2[i])
            set abil_3_level=GetUnitAbilityLevel(u, hero_abil_3[i])
            set abil_4_level=GetUnitAbilityLevel(u, hero_abil_4[i])
            set u=ReplaceUnitBJ(u, 'HE0N', bj_UNIT_STATE_METHOD_DEFAULTS)
            call hero_update_variable(i, u)
            set j=0
            loop
                exitwhen j >= abil_1_level
                call SelectHeroSkill(u, hero_abil_1[i])
                set j=j + 1
            endloop
            set j=0
            loop
                exitwhen j >= abil_2_level
                call SelectHeroSkill(u, 'A;01')
                set j=j + 1
            endloop
            set j=0
            loop
                exitwhen j >= abil_3_level
                call SelectHeroSkill(u, hero_abil_3[i])
                set j=j + 1
            endloop
            set j=0
            loop
                exitwhen j >= abil_4_level
                call SelectHeroSkill(u, hero_abil_4[i])
                set j=j + 1
            endloop
            if was_selected then
                call SelectUnit(u, true)
            endif
            call print("Old: " + I2S(GetUnitAbilityLevel(u, 'ANcr')))
            call print("New: " + I2S(GetUnitAbilityLevel(u, 'A;01')))
        endif
        set i=i + 1
    endloop
    call SetPlayerTechResearched(USER_PLAYER, 'Roch', 1)
endfunction

function InitTrig_Chaos_heroes takes nothing returns nothing
    set gg_trg_Chaos_heroes=CreateTrigger()
    call TriggerAddAction(gg_trg_Chaos_heroes, function activate_chaos)
endfunction
