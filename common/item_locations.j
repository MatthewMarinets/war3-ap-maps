// triggers for sending locations when picking up location-linked items
// depends: status
globals
trigger t_location_found = null
trigger t_item_purchased = null
endglobals

function item_location_send takes integer item_id returns nothing
    if (item_id == 'I010') then
        call status_check_location(0)
    elseif (item_id == 'I011') then
        call status_check_location(1)
    elseif (item_id == 'I012') then
        call status_check_location(2)
    elseif (item_id == 'I013') then
        call status_check_location(3)
    elseif (item_id == 'I014') then
        call status_check_location(4)
    elseif (item_id == 'I015') then
        call status_check_location(5)
    elseif (item_id == 'I016') then
        call status_check_location(6)
    elseif (item_id == 'I017') then
        call status_check_location(7)
    elseif (item_id == 'I018') then
        call status_check_location(8)
    elseif (item_id == 'I019') then
        call status_check_location(9)
    elseif (item_id == 'I01a') then
        call status_check_location(10)
    elseif (item_id == 'I01b') then
        call status_check_location(11)
    elseif (item_id == 'I01c') then
        call status_check_location(12)
    elseif (item_id == 'I01d') then
        call status_check_location(13)
    elseif (item_id == 'I01e') then
        call status_check_location(14)
    elseif (item_id == 'I01f') then
        call status_check_location(15)
    elseif (item_id == 'I020') then
        call status_check_location(16)
    elseif (item_id == 'I021') then
        call status_check_location(17)
    elseif (item_id == 'I022') then
        call status_check_location(18)
    elseif (item_id == 'I023') then
        call status_check_location(19)
    elseif (item_id == 'I024') then
        call status_check_location(20)
    elseif (item_id == 'I025') then
        call status_check_location(21)
    elseif (item_id == 'I026') then
        call status_check_location(22)
    elseif (item_id == 'I027') then
        call status_check_location(23)
    elseif (item_id == 'I028') then
        call status_check_location(24)
    elseif (item_id == 'I029') then
        call status_check_location(25)
    elseif (item_id == 'I02a') then
        call status_check_location(26)
    elseif (item_id == 'I02b') then
        call status_check_location(27)
    elseif (item_id == 'I02c') then
        call status_check_location(28)
    elseif (item_id == 'I02d') then
        call status_check_location(29)
    elseif (item_id == 'I02e') then
        call status_check_location(30)
    elseif (item_id == 'I02f') then
        call status_check_location(31)
    endif
endfunction

function item_location_in_range takes integer item_id returns boolean
    if item_id < 'I010' or item_id > 'I02f' then
        return false
    endif
    return true
endfunction

function trigger_function_pick_up_item takes nothing returns nothing
    local integer item_id = GetItemTypeId(GetManipulatedItem())
    if item_location_in_range(item_id) then
        call item_location_send(item_id)
    endif
endfunction

function trigger_function_remove_from_stock takes nothing returns nothing
    local integer item_type = GetItemTypeId(GetSoldItem())
    if item_location_in_range(item_type) then
        call RemoveItemFromStock(GetSellingUnit(), item_type)
    endif
endfunction

function InitTrig_item_locations takes nothing returns nothing
    set t_location_found = CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_location_found, USER_PLAYER, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(t_location_found, function trigger_function_pick_up_item)
    set t_item_purchased = CreateTrigger()
    call TriggerRegisterPlayerUnitEvent(t_item_purchased, Player(PLAYER_NEUTRAL_PASSIVE), EVENT_PLAYER_UNIT_SELL_ITEM, null)
    call TriggerAddAction(t_item_purchased, function trigger_function_remove_from_stock)
endfunction
