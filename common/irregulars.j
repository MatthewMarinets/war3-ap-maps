globals
trigger t_irregulars_on_cast
sound human_no_gold_sound
endglobals

function irregular_transform takes unit u, integer abil_id returns effect
    local effect e = AddSpecialEffect("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl", GetUnitX(u), GetUnitY(u))
    call UnitAddAbility(u, abil_id)
    call IssueImmediateOrder(u, "ravenform")
    return e
endfunction

function irregular_check_money takes unit u, integer amount returns boolean
    local player p = GetOwningPlayer(u)
    local integer current_gold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
    if current_gold < amount then
        if not GetSoundIsPlaying(human_no_gold_sound) then
            call StartSound(human_no_gold_sound)
        endif
        call IssueImmediateOrder(u, "stop")
        return false
    endif
    call AdjustPlayerStateBJ(amount, p, PLAYER_STATE_RESOURCE_GOLD)
    return true
endfunction

function irregulars_on_cast takes nothing returns nothing
    local integer a = GetSpellAbilityId()
    local unit u = GetSpellAbilityUnit()
    local effect e = null
    if a == 'AP00' then
        // captain
        if irregular_check_money(u, 80) then
            set e = irregular_transform(u, 'AP0a')
        endif
    elseif a == 'AP01' then
        // footman
        if irregular_check_money(u, 80) then
            set e = irregular_transform(u, 'AP0b')
        endif
    elseif a == 'AP02' then
        // rifleman
        if irregular_check_money(u, 125) then
            set e = irregular_transform(u, 'AP0c')
        endif
    elseif a == 'AP03' then
        // archer
        if irregular_check_money(u, 80) then
            set e = irregular_transform(u, 'AP0d')
        endif
    elseif a == 'AP04' then
        // knight
        if irregular_check_money(u, 225) then
            set e = irregular_transform(u, 'AP0e')
        endif
    elseif a == 'AP05' then
        // priest
        if irregular_check_money(u, 80) then
            set e = irregular_transform(u, 'AP0f')
        endif
    elseif a == 'AP06' then
        // sorceress
        if irregular_check_money(u, 90) then
            set e = irregular_transform(u, 'AP0g')
        endif
    elseif a == 'AP07' then
        // spell breaker
        if irregular_check_money(u, 150) then
            set e = irregular_transform(u, 'AP0h')
        endif
    elseif a == 'AP08' then
        // mortar team
        if irregular_check_money(u, 150) then
            set e = irregular_transform(u, 'AP0i')
        endif
    endif
    if e != null then
        call TriggerSleepAction(2.0)
        call DestroyEffect(e)
    endif
endfunction

//===========================================================================
function InitTrig_irregulars takes nothing returns nothing
    set t_irregulars_on_cast = CreateTrigger()
    set human_no_gold_sound = CreateSound("Sound\\Interface\\warning\\human\\knightnogold1.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(human_no_gold_sound, "NoGoldHuman")
    call SetSoundDuration(human_no_gold_sound, GetSoundDuration(human_no_gold_sound))
    call TriggerRegisterPlayerUnitEventSimple(t_irregulars_on_cast, USER_PLAYER, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddAction(t_irregulars_on_cast, function irregulars_on_cast)
    call Preload("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl")
endfunction
