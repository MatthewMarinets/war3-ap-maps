// Map-specific setup used by other scripts
globals
constant integer MISSION_ID = $(MISSION_ID)
integer NUM_HEROES = $(NUM_HEROES)
constant player USER_PLAYER = $(USER_PLAYER)
integer array hero_global_slots
constant integer item_channel_1 = $(ITEM_CHANNEL_1)
constant integer item_channel_2 = $(ITEM_CHANNEL_2)
constant integer item_channel_2_hero_slot = $(ITEM_CHANNEL_2_HERO_SLOT)
constant integer HERO_ID_ALL = -1
constant integer HERO_ID_NONE = 0
constant integer HERO_ID_PALADIN_ARTHAS = 1
constant integer HERO_ID_JAINA = 2
constant integer HERO_ID_MURADIN_BRONZEBEARD = 3
constant integer HERO_ID_THRALL = 4
constant integer HERO_ID_CAIRNE_BLOODHOOF = 5
constant integer HERO_ID_GROM_HELLSCREAM = 6
constant integer HERO_ID_DEATH_KNIGHT_ARTHAS = 7
constant integer HERO_ID_KEL_THUZAD = 8
constant integer HERO_ID_ARTHAS_TFT = 9
constant integer HERO_ID_KEL_THUZAD_TFT = 10
constant integer HERO_ID_SYLVANAS = 11
constant integer HERO_ID_VARIMATHRAS = 12
constant integer HERO_ID_ANUB_ARAK = 13
constant integer HERO_ID_TYRANDE = 14
constant integer HERO_ID_FURION = 15
constant integer HERO_ID_ILLIDAN = 16
constant integer HERO_ID_TYRANDE_TFT = 17
constant integer HERO_ID_MALFURION = 18
constant integer HERO_ID_MAIEV = 19
constant integer HERO_ID_KAEL_THAS = 20
constant integer HERO_ID_DEMON_ILLIDAN = 21
constant integer HERO_ID_LADY_VASHJ = 22
constant integer HERO_ID_AKAMA = 23
constant integer HERO_ID_LORD_GARITHOS = 24
endglobals

function hero_get_unit_from_index takes integer slot returns unit
    if slot == 0 then
        return $(HERO_VAR_0)
    elseif slot == 1 then
        return $(HERO_VAR_1)
    elseif slot == 2 then
        return $(HERO_VAR_2)
    elseif slot == 3 then
        return $(HERO_VAR_3)
    endif
    return null
endfunction

function hero_get_index_from_unit takes unit hero returns integer
    local integer i = 0
    loop
        exitwhen hero_get_unit_from_index(i) == hero
        set i = i + 1
        exitwhen i >= NUM_HEROES
    endloop
    return i
endfunction

function hero_update_variable takes integer slot, unit hero returns nothing
    if slot == 0 then
        set $(HERO_VAR_0) = hero
    elseif slot == 1 then
        set $(HERO_VAR_1) = hero
    elseif slot == 2 then
        set $(HERO_VAR_2) = hero
    else
        set $(HERO_VAR_3) = hero
    endif
endfunction

function InitTrig_map_config takes nothing returns nothing
    set hero_global_slots[0] = $(HERO_ID_0)
    set hero_global_slots[1] = $(HERO_ID_1)
    set hero_global_slots[2] = $(HERO_ID_2)
    set hero_global_slots[3] = $(HERO_ID_3)
endfunction
