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
    call TriggerRegisterPlayerUnitEventSimple(t_irregulars_on_cast, USER_PLAYER, EVENT_PLAYER_UNIT_SPELL_CAST )
    call TriggerAddAction(t_irregulars_on_cast, function irregulars_on_cast)
    call Preload("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl")
endfunction
