// triggers for sending locations when picking up location-linked items
// depends: status
globals
trigger t_location_found = null
endglobals

function trigger_function_item_locations takes nothing returns nothing
    local integer item_id = GetItemTypeId(GetManipulatedItem())
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
    elseif (item_id == 'I01A') then
        call status_check_location(10)
    elseif (item_id == 'I01B') then
        call status_check_location(11)
    elseif (item_id == 'I01C') then
        call status_check_location(12)
    elseif (item_id == 'I01D') then
        call status_check_location(13)
    elseif (item_id == 'I01E') then
        call status_check_location(14)
    elseif (item_id == 'I01F') then
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
    elseif (item_id == 'I02A') then
        call status_check_location(26)
    elseif (item_id == 'I02B') then
        call status_check_location(27)
    elseif (item_id == 'I02C') then
        call status_check_location(28)
    elseif (item_id == 'I02D') then
        call status_check_location(29)
    elseif (item_id == 'I02E') then
        call status_check_location(30)
    elseif (item_id == 'I02F') then
        call status_check_location(31)
    endif
endfunction

function InitTrig_item_locations takes nothing returns nothing
    set t_location_found = CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_location_found, USER_PLAYER, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(t_location_found, function trigger_function_item_locations)
endfunction
