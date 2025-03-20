
function PreloadFiles takes nothing returns nothing
    local integer p = 0
    loop
        exitwhen GetPlayerController(Player(p)) == MAP_CONTROL_USER
        exitwhen p > 9
        set p = p + 1
    endloop
    // human units
    call SetPlayerTechMaxAllowed(Player(p), 'hpea', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'hfoo', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'hkni', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'hrif', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'hmtm', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'hgyr', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'hgry', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'hmpr', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'hsor', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'hmtt', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'hspt', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'hdhw', 0)
    
    // human upgrades
    call SetPlayerTechMaxAllowed(Player(p), 'Rhme', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhra', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhhb', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhar', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhgb', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhac', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhde', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhan', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhpt', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhst', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhla', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhri', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhlh', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhse', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhfl', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhss', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhrt', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhpm', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhfc', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhfs', 0)
    call SetPlayerTechMaxAllowed(Player(p), 'Rhcd', 0)

    // items
    call SetPlayerTechMaxAllowed(Player(0), 'sreg', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'mcri', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'plcl', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'phea', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'pman', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'stwp', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'tsct', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'ofir', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'ssan', 0)

    // abilities (sample)
    call SetPlayerAbilityAvailable(Player(p), 'AHbz', false)

    // neutral shops
    call SetPlayerTechMaxAllowed(Player(0), 'nzep', 0)
endfunction