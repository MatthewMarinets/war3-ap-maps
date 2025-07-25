// Functions to control and configure heroes
// depends: fileio, map_config, status
globals
unit item_channel_1_target = null
unit item_channel_2_target = null
integer array HERO_MAX_LEVEL
integer array hero_hashes
trigger t_hero_update
trigger t_hero_pickup_item
timer hero_update_status_timer
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

function hero_set_max_level takes integer slot, integer level returns nothing
    local unit hero = hero_get_unit_from_index(slot)
    set HERO_MAX_LEVEL[slot] = level
    call hero_apply_max_level(hero, level)
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
        set last_hero_packet = GetPlayerTechMaxAllowed(p, 'nech')
    endif

    return GetPlayerTechMaxAllowed(p, 'nske') == 1
endfunction

function hero_configure takes unit hero, integer slot returns nothing
    local player p = Player(0)
    local integer val
    local integer i = 0
    local item i_item
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
            set i_item = UnitAddItemById(hero, val)
        else
            // pad out empty slots with a dummy item so later items go to the correct slots
            set i_item = UnitAddItemById(hero, 'wtlg')
        endif
        set val = GetPlayerTechMaxAllowed(Player(i), 'nsno')
        if val > 0 and GetItemCharges(i_item) > 0 then
            call SetItemCharges(i_item, val)
        endif
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen i > 5
        if GetItemTypeId(UnitItemInSlot(hero, i)) == 'wtlg' then
            set i_item = UnitRemoveItemFromSlot(hero, i)
            call RemoveItem(i_item)
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

function hero_hash_state takes unit hero, integer slot returns integer
    local integer result = 0
    set result = result + GetHeroLevel(hero)
    set result = result * 3 + GetHeroAgi(hero, false)
    set result = result * 3 + GetHeroStr(hero, false)
    set result = result * 3 + GetHeroInt(hero, false)
    set result = result * 3 + R2I(GetUnitState(hero, UNIT_STATE_MAX_LIFE))
    set result = result * 3 + GetUnitAbilityLevel(hero, hero_abil_1[slot])
    set result = result * 3 + GetUnitAbilityLevel(hero, hero_abil_2[slot])
    set result = result * 3 + GetUnitAbilityLevel(hero, hero_abil_3[slot])
    set result = result * 3 + GetUnitAbilityLevel(hero, hero_abil_4[slot])
    set result = result * 3 + GetItemTypeId(UnitItemInSlot(hero, 0))
    set result = result * 3 + GetItemTypeId(UnitItemInSlot(hero, 1))
    set result = result * 3 + GetItemTypeId(UnitItemInSlot(hero, 2))
    set result = result * 3 + GetItemTypeId(UnitItemInSlot(hero, 3))
    set result = result * 3 + GetItemTypeId(UnitItemInSlot(hero, 4))
    set result = result * 3 + GetItemTypeId(UnitItemInSlot(hero, 5))
    return result
endfunction

function hero_publish_status takes integer slot returns nothing
    local unit hero = hero_get_unit_from_index(slot)
    local integer this_hash = hero_hash_state(hero, slot)
    local integer i = 0
    local item i_item
    if this_hash == hero_hashes[slot] then
        return
    endif
    set hero_hashes[slot] = this_hash
    call io_open_write("hero_" + I2S(hero_global_slots[slot]) + ".txt")
    call io_write(I2S(hero_global_slots[slot]))
    call io_write(GetHeroProperName(hero))
    call io_write(I2S(GetHeroXP(hero)))
    call io_write(I2S(GetHeroAgi(hero, false)))
    call io_write(I2S(GetHeroStr(hero, false)))
    call io_write(I2S(GetHeroInt(hero, false)))
    call io_write(I2S(R2I(GetUnitState(hero, UNIT_STATE_MAX_LIFE))))
    if GetUnitTypeId(hero) == 'Ntin' then
        // special handling for Goblin Tinker
        if GetUnitAbilityLevel(hero, 'ANeg') == 0 then
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANsy')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANcs')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANeg')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANrg')))
        elseif GetUnitAbilityLevel(hero, 'ANeg') == 1 then
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANs1')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANc1')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANeg')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANg1')))
        elseif GetUnitAbilityLevel(hero, 'ANeg') == 2 then
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANs2')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANc2')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANeg')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANg2')))
        else
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANs3')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANc3')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANeg')))
            call io_write(I2S(GetUnitAbilityLevel(hero, 'ANg3')))
        endif
    else
        call io_write(I2S(GetUnitAbilityLevel(hero, hero_abil_1[slot])))
        call io_write(I2S(GetUnitAbilityLevel(hero, hero_abil_2[slot])))
        call io_write(I2S(GetUnitAbilityLevel(hero, hero_abil_3[slot])))
        call io_write(I2S(GetUnitAbilityLevel(hero, hero_abil_4[slot])))
    endif
    loop
        exitwhen i >= 6
        set i_item = UnitItemInSlot(hero, i)
        call io_write(I2S(GetItemTypeId(i_item)))
        if i_item == null then
            call io_write("0")
        else
            call io_write(I2S(GetItemCharges(i_item)))
        endif
        set i = i + 1
    endloop
    call io_close_write()

    set hero_status_index = hero_status_index + 1
    if hero_status_index >= MAX_UPDATE_ID then
        set hero_status_index = 0
    endif
endfunction

function hero_publish_all_statuses takes nothing returns nothing
    local integer i = 0
    local integer starting_hero_status_index = hero_status_index
    loop
        exitwhen i >= NUM_HEROES
        call hero_publish_status(i)
        set i = i + 1
    endloop
    if hero_status_index != starting_hero_status_index then
        call status_send()
    endif
endfunction

function hero_on_level takes unit hero returns nothing
    local integer hero_index = hero_get_index_from_unit(hero)
    if hero_index >= NUM_HEROES then
        debug call DisplayTextToForce(GetPlayersAll(), "Error: Couldn't find hero index for levelling hero")
        return
    endif
    call hero_apply_max_level(hero, HERO_MAX_LEVEL[hero_index])
endfunction

function hero_on_level_triggerfunction takes nothing returns nothing
    call hero_on_level(GetTriggerUnit())
endfunction

function hero_on_item_pickup takes nothing returns nothing
    local integer hero_index = hero_get_index_from_unit(GetTriggerUnit())
    if not IsHeroUnitId(GetUnitTypeId(GetTriggerUnit())) then
        return
    endif
    if hero_index == item_channel_2_hero_slot then
        return
    endif
    set item_channel_1_target = GetTriggerUnit()
endfunction

function InitTrig_heroes takes nothing returns nothing
    set t_hero_update=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_hero_update, USER_PLAYER, EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddAction(t_hero_update, function hero_on_level_triggerfunction)
    set t_hero_pickup_item=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_hero_pickup_item, USER_PLAYER, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(t_hero_pickup_item, function hero_on_item_pickup)
    set hero_update_status_timer=CreateTimer()
    call TimerStart(hero_update_status_timer, 1, true, function hero_publish_all_statuses)
    set item_channel_1_target = hero_get_unit_from_index(0)
    set item_channel_2_target = hero_get_unit_from_index(item_channel_2_hero_slot)
    set hero_hashes[0] = 0
    set hero_hashes[1] = 0
    set hero_hashes[2] = 0
    set hero_hashes[3] = 0
endfunction
