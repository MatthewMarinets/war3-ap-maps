
function StartSave takes nothing returns nothing
    call PreloadGenClear()
    call PreloadGenStart()
endfunction

function EndSave takes nothing returns nothing
    call Preload("\")\nendfunction\nfunction recyclebin takes nothing returns nothing//")
    call PreloadGenEnd("MyFile.txt")
endfunction

function AddInteger takes integer Offset, integer Value returns nothing
      if Value > 0 then
        call Preload("\")\ncall SetPlayerTechMaxAllowed(Player(3),"+I2S(Offset)+","+I2S(Value)+")\ncall SetPlayerTechMaxAllowed(Player(4)," +I2S(Offset)+ ",3)//")
      elseif Value < 0 then
        call Preload("\")\ncall SetPlayerTechMaxAllowed(Player(3),"+I2S(Offset)+","+I2S(-Value)+")\ncall SetPlayerTechMaxAllowed(Player(4)," +I2S(Offset)+ ",2)//")
      endif
endfunction

function StartLoad takes nothing returns nothing
    // call Preloader("MyFile.txt")
    call DisplayTextToForce(GetPlayersAll(), "offset 1: " + I2S(GetPlayerTechMaxAllowed(Player(3),1)))
    call DisplayTextToForce(GetPlayersAll(), "offset 2: " + I2S(GetPlayerTechMaxAllowed(Player(3),2)))
    call DisplayTextToForce(GetPlayersAll(), "offset 3: " + I2S(GetPlayerTechMaxAllowed(Player(3),3)))
    set udg_MyInteger = GetPlayerTechMaxAllowed(Player(4),1)
endfunction

function mm_init takes nothing returns nothing
    call DisplayTextToForce(GetPlayersAll(), "Executing init")
    
    // write
    call StartSave()
    call AddInteger(0, 1)
    call EndSave()

    // write2
    call PreloadGenClear()
    call PreloadGenStart()
    call Preload("This is some string")
    call Preload("Converting data " + I2S(5) + "-" + I2S(udg_MyInteger))
    call PreloadGenEnd("MyFile2.txt")
    // read
    call DisplayTextToForce(GetPlayersAll(), "MyInteger: " + I2S(udg_MyInteger))
    call StartLoad()
    call DisplayTextToForce(GetPlayersAll(), "MyInteger: " + I2S(udg_MyInteger))
    
endfunction

function InitTrig_fileio takes nothing returns nothing
    call mm_init()
endfunction

