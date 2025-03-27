// version: 0
// Triggers: 88
//\\// Trigger #52
function Trig_Muradin_DwarfVisibilityMods_Actions takes nothing returns nothing
    call CreateFogModifierRadiusLocSimple( Player(1), FOG_OF_WAR_MASKED, GetRectCenter(gg_rct_VisibilityDwarves01), 640.00, true )
    set udg_VisibilityDwarf01 = GetLastCreatedFogModifier()
    call FogModifierStart(udg_VisibilityDwarf01)
    call CreateFogModifierRadiusLocSimple( Player(1), FOG_OF_WAR_MASKED, GetRectCenter(gg_rct_VisibilityDwarves02), 512.00, true )
    set udg_VisibilityDwarf02 = GetLastCreatedFogModifier()
    call FogModifierStart(udg_VisibilityDwarf02)
endfunction

//===========================================================================
function InitTrig_Muradin_DwarfVisibilityMods takes nothing returns nothing
    set gg_trg_Muradin_DwarfVisibilityMods = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Muradin_DwarfVisibilityMods, function Trig_Muradin_DwarfVisibilityMods_Actions )
endfunction
//\\// End