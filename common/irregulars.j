globals
trigger t_irregulars_on_cast
sound human_no_gold_sound
sound undead_no_gold_sound
endglobals

function irregular_human_transform takes unit u, integer abil_id returns effect
    local effect e = AddSpecialEffect("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl", GetUnitX(u), GetUnitY(u))
    call UnitAddAbility(u, abil_id)
    call IssueImmediateOrder(u, "ravenform")
    return e
endfunction

function irregular_undead_transform takes unit u, integer abil_id returns effect
    local effect e = AddSpecialEffect("Units\\Undead\\Abomination\\AbominationExplosion.mdl", GetUnitX(u), GetUnitY(u))
    call UnitAddAbility(u, abil_id)
    call IssueImmediateOrder(u, "ravenform")
    return e
endfunction

function irregular_check_money takes unit u, integer amount, sound s returns boolean
    local player p = GetOwningPlayer(u)
    local integer current_gold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
    if current_gold < amount then
        if not GetSoundIsPlaying(s) then
            call StartSound(s)
        endif
        call IssueImmediateOrder(u, "stop")
        return false
    endif
    call AdjustPlayerStateBJ(-amount, p, PLAYER_STATE_RESOURCE_GOLD)
    return true
endfunction

function irregulars_on_cast takes nothing returns nothing
    local integer a = GetSpellAbilityId()
    local unit u = GetSpellAbilityUnit()
    local effect e = null
    if a == 'AP00' then
        // captain
        if irregular_check_money(u, 120, human_no_gold_sound) then
            set e = irregular_human_transform(u, 'AP0a')
        endif
    elseif a == 'AP01' then
        // footman
        if irregular_check_money(u, 120, human_no_gold_sound) then
            set e = irregular_human_transform(u, 'AP0b')
        endif
    elseif a == 'AP02' then
        // rifleman
        if irregular_check_money(u, 180, human_no_gold_sound) then
            set e = irregular_human_transform(u, 'AP0c')
        endif
    elseif a == 'AP03' then
        // archer
        if irregular_check_money(u, 120, human_no_gold_sound) then
            set e = irregular_human_transform(u, 'AP0d')
        endif
    elseif a == 'AP04' then
        // knight
        if irregular_check_money(u, 240, human_no_gold_sound) then
            set e = irregular_human_transform(u, 'AP0e')
        endif
    elseif a == 'AP05' then
        // priest
        if irregular_check_money(u, 125, human_no_gold_sound) then
            set e = irregular_human_transform(u, 'AP0f')
            call SetUnitState(u, UNIT_STATE_MANA, 0.5)
        endif
    elseif a == 'AP06' then
        // sorceress
        if irregular_check_money(u, 140, human_no_gold_sound) then
            set e = irregular_human_transform(u, 'AP0g')
            call SetUnitState(u, UNIT_STATE_MANA, 0.5)
        endif
    elseif a == 'AP07' then
        // spell breaker
        if irregular_check_money(u, 200, human_no_gold_sound) then
            set e = irregular_human_transform(u, 'AP0h')
            call SetUnitState(u, UNIT_STATE_MANA, 0.5)
        endif
    elseif a == 'AP08' then
        // mortar team
        if irregular_check_money(u, 160, human_no_gold_sound) then
            set e = irregular_human_transform(u, 'AP0i')
        endif
    elseif a == 'AP10' then
        // ghoul
        if irregular_check_money(u, 110, undead_no_gold_sound) then
            set e = irregular_undead_transform(u, 'AP1a')
        endif
    elseif a == 'AP11' then
        // crypt fiend
        if irregular_check_money(u, 190, undead_no_gold_sound) then
            set e = irregular_undead_transform(u, 'AP1b')
        endif
    elseif a == 'AP12' then
        // skeletal archer
        if irregular_check_money(u, 95, undead_no_gold_sound) then
            set e = irregular_undead_transform(u, 'AP1c')
        endif
    elseif a == 'AP13' then
        // necromancer
        if irregular_check_money(u, 130, undead_no_gold_sound) then
            set e = irregular_undead_transform(u, 'AP1d')
            call SetUnitState(u, UNIT_STATE_MANA, 0.5)
        endif
    elseif a == 'AP14' then
        // banshee
        if irregular_check_money(u, 140, undead_no_gold_sound) then
            set e = irregular_undead_transform(u, 'AP1e')
            call SetUnitState(u, UNIT_STATE_MANA, 0.5)
        endif
    elseif a == 'AP15' then
        // meat wagon
        if irregular_check_money(u, 210, undead_no_gold_sound) then
            set e = irregular_undead_transform(u, 'AP1f')
        endif
    elseif a == 'AP16' then
        // abomination
        if irregular_check_money(u, 220, undead_no_gold_sound) then
            set e = irregular_undead_transform(u, 'AP1g')
        endif
    elseif a == 'AP17' then
        // obsidian statue
        if irregular_check_money(u, 180, undead_no_gold_sound) then
            set e = irregular_undead_transform(u, 'AP1h')
            call SetUnitState(u, UNIT_STATE_MANA, 0.5)
        endif
    elseif a == 'AP18' then
        // shade
        if irregular_check_money(u, 25, undead_no_gold_sound) then
            set e = irregular_undead_transform(u, 'AP1i')
        endif
    endif
    if e != null then
        call AddUnitAnimationProperties(u, "Alternate", false)
        call TriggerSleepAction(2.0)
        call DestroyEffect(e)
    endif
endfunction

//===========================================================================
function InitTrig_irregulars takes nothing returns nothing
    set t_irregulars_on_cast = CreateTrigger()
    set human_no_gold_sound = CreateSound("Sound\\Interface\\warning\\human\\knightnogold1.wav", false, false, false, 10, 10, "")
    set undead_no_gold_sound = CreateSound("Sound\\Interface\\warning\\undead\\necromancernogold1.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(human_no_gold_sound, "NoGoldHuman")
    call SetSoundDuration(human_no_gold_sound, GetSoundDuration(human_no_gold_sound))
    call TriggerRegisterPlayerUnitEventSimple(t_irregulars_on_cast, USER_PLAYER, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddAction(t_irregulars_on_cast, function irregulars_on_cast)
    call Preload("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl")
endfunction
