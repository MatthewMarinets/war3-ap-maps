// version: 0
// Triggers: 97
//\\// Trigger #77
//===========================================================================
function Trig_Malganis_Continuously_Attacks_Buildings_Actions takes nothing returns nothing

    if udg_BootingPlayer or IsUnitDeadBJ(udg_MalganisVariable) then
        return
    endif

    loop
        exitwhen udg_MaySendCommands 
        call TriggerSleepAction( 0.1 )
    endloop
    set udg_MaySendCommands = false
    call StartTimerBJ( udg_TimerMaySendCommands, false, 1.00 )

    call CommandAI( Player(6), 3, 0 )
    call CommandAI( Player(6), 2, R2I(udg_MalganisTargetHouseY) )
    call CommandAI( Player(6), 1, R2I(udg_MalganisTargetHouseX) )
endfunction

//===========================================================================
function InitTrig_Malganis_Continuously_Attacks_Buildings takes nothing returns nothing
    set gg_trg_Malganis_Continuously_Attacks_Buildings = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Malganis_Continuously_Attacks_Buildings, function Trig_Malganis_Continuously_Attacks_Buildings_Actions )
endfunction


//\\// Trigger #78
//===========================================================================
function Trig_Malganis_Booting_Player_Actions takes nothing returns nothing

    if IsUnitDeadBJ(udg_MalganisVariable) then
        return false
    endif

    loop
        exitwhen udg_MaySendCommands 
        call TriggerSleepAction( 0.1 )
    endloop
    set udg_MaySendCommands = false
    call StartTimerBJ( udg_TimerMaySendCommands, false, 1.00 )

    set udg_BootingPlayer = true

    call CommandAI( Player(6), 4, 1 )
    call EnableTrigger( gg_trg_Das_Boot_to_Arthas )
endfunction

//===========================================================================
function InitTrig_Malganis_Booting_Player takes nothing returns nothing
    set gg_trg_Malganis_Booting_Player = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Malganis_Booting_Player, function Trig_Malganis_Booting_Player_Actions )
endfunction


//\\// Trigger #82
function Trig_Convert_Villager_Actions takes nothing returns nothing
    local unit villager

    // Save villager in local variable
    set villager = udg_VillagerToBeConverted
    call TriggerSleepAction( 2 )

    // Make sure villager is still alive
    if IsUnitDeadBJ(villager) then
        return
    endif
        
    // Handle Conversion
    call CreateNUnitsAtLocFacingLocBJ( 1, 'UC05', Player(7), GetUnitLoc(villager), GetUnitLoc(villager) )
    call ShowUnitHide( GetLastCreatedUnit() )
    call SetHeroLevel( GetLastCreatedUnit(), 10, false )
    call SelectHeroSkill( GetLastCreatedUnit(), 'SNdc' )
    call IssueTargetOrderBJ( GetLastCreatedUnit(), "darkconversion", villager )
endfunction

//===========================================================================
function InitTrig_Convert_Villager takes nothing returns nothing
    set gg_trg_Convert_Villager = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Convert_Villager, function Trig_Convert_Villager_Actions )
endfunction


//\\// End