// triggers for sending locations when picking up location-linked items
globals
trigger t_location_found = null
endglobals

function trigger_function_item_locations takes nothing returns nothing
    local integer item_id = GetItemTypeId(GetManipulatedItem())
    if (item_id == 'I010') then
        call status_check_location(0)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 0|r")
    elseif (item_id == 'I011') then
        call status_check_location(1)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 1|r")
    elseif (item_id == 'I012') then
        call status_check_location(2)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 2|r")
    elseif (item_id == 'I013') then
        call status_check_location(3)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 3|r")
    elseif (item_id == 'I014') then
        call status_check_location(4)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 4|r")
    elseif (item_id == 'I015') then
        call status_check_location(5)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 5|r")
    elseif (item_id == 'I016') then
        call status_check_location(6)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 6|r")
    elseif (item_id == 'I017') then
        call status_check_location(7)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 7|r")
    elseif (item_id == 'I018') then
        call status_check_location(8)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 8|r")
    elseif (item_id == 'I019') then
        call status_check_location(9)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 9|r")
    elseif (item_id == 'I01A') then
        call status_check_location(10)
        call DisplayTextToForce(GetPlayersAll(), "|cffff22ffChecked location 10|r")
    endif
endfunction

function InitTrig_item_locations takes nothing returns nothing
    set t_location_found = CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(t_location_found, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(t_location_found, function trigger_function_item_locations)
endfunction
