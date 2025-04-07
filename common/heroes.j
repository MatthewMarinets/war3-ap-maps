// Functions to control and configure heroes
// depends: fileio
globals
unit array heroes
integer array HERO_MAX_LEVEL
trigger t_disable_hero_level
integer array hero_abil_1
integer array hero_abil_2
integer array hero_abil_3
integer array hero_abil_4
endglobals

function hero_apply_max_level takes unit hero, integer level returns nothing
    if GetHeroLevel(hero) >= level then
        call SetHeroLevelBJ(hero, level, false)
        call SuspendHeroXP(hero, true)
    else
        call SuspendHeroXP(hero, false)
    endif
endfunction

function hero_set_max_level takes integer hero_index, integer level returns nothing
    local unit hero = hero_get_unit_from_index(hero_index)
    set HERO_MAX_LEVEL[hero_index] = level
    call hero_apply_max_level(hero, level)
endfunction

function hero_disable_leveling takes nothing returns nothing
    local integer i = 0
    loop
        exitwhen hero_get_unit_from_index(i) == GetTriggerUnit()
        set i = i + 1
        exitwhen i > 4
    endloop
    if i > 4 then
        debug call DisplayTextToForce(GetPlayersAll(), "Error: Couldn't find hero index for levelling hero")
        return
    endif
    if GetHeroLevel(GetTriggerUnit()) >= HERO_MAX_LEVEL[i] then
        call SuspendHeroXP(GetTriggerUnit(), true)
    endif
endfunction

function hero_load takes integer hero_slot returns boolean
    local player p = Player(0)
    call SetPlayerTechMaxAllowed(p, 'nech', -1)
    call SetPlayerTechMaxAllowed(p, 'nske', -1)
    call SetPlayerTechMaxAllowed(p, 'npng', -1)
    call SetPlayerTechMaxAllowed(p, 'ndog', 0)
    call SetPlayerTechMaxAllowed(p, 'nskk', 0)
    call SetPlayerTechMaxAllowed(p, 'npig', 0)
    call SetPlayerTechMaxAllowed(p, 'nsea', 0)
    call SetPlayerTechMaxAllowed(p, 'ncrb', 0)
    call SetPlayerTechMaxAllowed(p, 'nder', 0)
    // nfro = abil IDs
    call SetPlayerTechMaxAllowed(Player(0), 'nfro', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'nfro', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'nfro', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'nfro', 0)
    // nrac = abil skillpoints
    call SetPlayerTechMaxAllowed(Player(0), 'nrac', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'nrac', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'nrac', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'nrac', 0)
    // nvul = items
    call SetPlayerTechMaxAllowed(Player(0), 'nvul', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'nvul', 0)
    call SetPlayerTechMaxAllowed(Player(2), 'nvul', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'nvul', 0)
    call SetPlayerTechMaxAllowed(Player(4), 'nvul', 0)
    call SetPlayerTechMaxAllowed(Player(5), 'nvul', 0)

    call SetPlayerTechMaxAllowed(p, 'nalb', hero_global_slots[hero_slot])
    call io_read_file("heroes.txt")

    if GetPlayerTechMaxAllowed(p, 'nske') == 1 then
        set HERO_MAX_LEVEL[hero_slot] = GetPlayerTechMaxAllowed(p, 'nder')
        set hero_abil_1[hero_slot] = GetPlayerTechMaxAllowed(Player(0), 'nfro')
        set hero_abil_2[hero_slot] = GetPlayerTechMaxAllowed(Player(1), 'nfro')
        set hero_abil_3[hero_slot] = GetPlayerTechMaxAllowed(Player(2), 'nfro')
        set hero_abil_4[hero_slot] = GetPlayerTechMaxAllowed(Player(3), 'nfro')
    endif

    return GetPlayerTechMaxAllowed(p, 'nske') == 1
endfunction

function hero_configure takes unit hero, integer slot returns nothing
    local player p = Player(0)
    local integer val
    local integer i = 0
    call SetHeroXP(hero, GetPlayerTechMaxAllowed(p, 'ncrb'), false)
    set val = GetPlayerTechMaxAllowed(p, 'ndog')
    if val > 0 then
        call SetHeroAgi(hero, val, true)
    endif
    set val = GetPlayerTechMaxAllowed(p, 'nskk')
    if val > 0 then
        call SetHeroStr(hero, val, true)
    endif
    set val = GetPlayerTechMaxAllowed(p, 'npig')
    if val > 0 then
        call SetHeroInt(hero, val, true)
    endif
    set val = GetPlayerTechMaxAllowed(p, 'nsea')
    if val > 0 then
        call SetUnitState(hero, UNIT_STATE_MAX_LIFE, I2R(val))
        call SetUnitState(hero, UNIT_STATE_LIFE, I2R(val))
    endif
    call BlzSetHeroProperName(hero, io_lines[0])
    // abilities
    loop
        exitwhen i > 3
        set val = GetPlayerTechMaxAllowed(Player(i), 'nrac')
        loop
            exitwhen val <= 0
            set val = val - 1
            call SelectHeroSkill(hero, GetPlayerTechMaxAllowed(Player(i), 'nfro'))
        endloop
        set i = i + 1
    endloop
    // items
    set i = 0
    loop
        exitwhen i > 5
        set val = GetPlayerTechMaxAllowed(Player(i), 'nvul')
        if val > 0 then
            call UnitAddItemById(hero, val)
        else
            // pad out empty slots with a dummy item so later items go to the correct slots
            call UnitAddItemById(hero, 'wtlg')
        endif
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen i > 5
        if GetItemTypeId(UnitItemInSlot(hero, i)) == 'wtlg' then
            call UnitRemoveItemFromSlot(hero, i)
        endif
        set i = i + 1
    endloop
    // max level
    set val = GetPlayerTechMaxAllowed(p, 'nder')
    if val > 0 then
        set HERO_MAX_LEVEL[slot] = val
        call hero_apply_max_level(hero, val)
    endif
endfunction

function hero_create takes integer hero_slot, player for_player, real x, real y, real facing returns unit
    local unit hero = null
    if not hero_load(hero_slot) then
        return null
    endif
    set hero = CreateUnit(for_player, GetPlayerTechMaxAllowed(Player(0), 'npng'), x, y, facing)
    call hero_configure(hero, hero_slot)
    return hero
endfunction

function hero_hide_replace takes integer slot, unit replace returns unit
    local unit old_hero = hero_get_unit_from_index(slot)
    local unit hero
    call ShowUnit(old_hero, false)
    set hero = hero_create(slot, GetOwningPlayer(old_hero), GetUnitX(old_hero), GetUnitY(old_hero), GetUnitFacing(old_hero))
    if hero == null then
        call ShowUnit(old_hero, true)
        return old_hero
    endif
    call hero_update_variable(slot, hero)
    call RemoveUnit(hero)
    return hero
endfunction

function hero_publish_status takes integer slot, string filename returns nothing
    local unit hero = hero_get_unit_from_index(slot)
    call io_open_write(filename)
    call io_write(I2S(hero_global_slots[slot]))
    call io_write(I2S(MISSION_ID))
    call io_write(I2S(GetHeroXP(hero)))
    call io_write(I2S(GetHeroAgi(hero, false)))
    call io_write(I2S(GetHeroStr(hero, false)))
    call io_write(I2S(GetHeroInt(hero, false)))
    call io_write(R2S(GetUnitState(hero, UNIT_STATE_MAX_LIFE)))
    call io_write(I2S(GetUnitAbilityLevel(hero, hero_abil_1[slot])))
    call io_write(I2S(GetUnitAbilityLevel(hero, hero_abil_2[slot])))
    call io_write(I2S(GetUnitAbilityLevel(hero, hero_abil_3[slot])))
    call io_write(I2S(GetUnitAbilityLevel(hero, hero_abil_4[slot])))
    call io_write(I2S(GetItemTypeId(UnitItemInSlot(hero, 0))))
    call io_write(I2S(GetItemTypeId(UnitItemInSlot(hero, 1))))
    call io_write(I2S(GetItemTypeId(UnitItemInSlot(hero, 2))))
    call io_write(I2S(GetItemTypeId(UnitItemInSlot(hero, 3))))
    call io_write(I2S(GetItemTypeId(UnitItemInSlot(hero, 4))))
    call io_write(I2S(GetItemTypeId(UnitItemInSlot(hero, 5))))
    call io_close_write()
endfunction

function InitTrig_heroes takes nothing returns nothing
    set t_disable_hero_level=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_disable_hero_level, USER_PLAYER, EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddAction(t_disable_hero_level, function hero_disable_leveling)
endfunction
