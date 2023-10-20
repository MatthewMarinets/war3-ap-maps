function StartSave takes nothing returns nothing
    call PreloadGenClear()
    call PreloadGenStart()
endfunction

function EndSave takes nothing returns nothing
    call Preload("\")\nendfunction\nfunction recyclebin takes nothing returns nothing//")
    call PreloadGenEnd("MyFile.pld")
endfunction

function AddInteger takes integer Offset, integer Value returns nothing
    call Preload("\")\ncall SetPlayerName(Player(1), \"Testing sending a somewhat large string in this field\")//")
endfunction

function StartLoad takes nothing returns nothing
    local string my_string
    call Preloader("MyFile.pld")
    set my_string = GetPlayerName(Player(1))
    call DisplayTextToForce(GetPlayersAll(), my_string)
endfunction

function mm_init takes nothing returns nothing
    
    // write
    call StartSave()
    call AddInteger(0, 1)
    call EndSave()

    // write2
    call PreloadGenClear()
    call PreloadGenStart()
    call Preload("This is some string")
    call Preload("Converting data " + I2S(5) + "-" + "1234")
    call PreloadGenEnd("MyFile2.txt")
    // read
    call StartLoad()
    
endfunction

struct fileio
private static method onInit takes nothing returns nothing
    call mm_init()
endmethod

endstruct
