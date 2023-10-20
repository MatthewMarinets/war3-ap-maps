# Jass File IO
* File IO with Jass is jank, but possible and likely faster than muddling with gamecaches

## Theory
* The `PreLoad*()` functions work with storing lines of code to be read back later; they have a bug that can be exploited to print arbitrary code
```jass
function StartSave takes nothing returns nothing
    call PreloadGenClear()
    call PreloadGenStart()
endfunction

function EndSave takes nothing returns nothing
    call Preload("\")\nendfunction\nfunction preloadcapture takes nothing returns nothing//")
    call PreloadGenEnd("MyFile.txt")
endfunction

function AddContent takes nothing returns nothing
    call Preload("\")\ncall SetPlayerName(Player(1), \"data goes here\")//")
endfunction
```

* Produces a file like
```jass
function PreloadFiles takes nothing returns nothing

	call Preload( "")
call SetPlayerName(Player(1), \"data goes here\")//")
	call Preload( "")
endfunction
function preloadcapture takes nothing returns nothing//" )
	call PreloadEnd( 0.0 )

endfunction
```

* Which can theoretically be loaded back in with `Preloader(filename)`
* Preloading user files requires a registry setting on older versions of the game:
  * In `HKEY_CURRENT_USER\SOFTWARE\Blizzard Entertainment\Warcraft III`,
  * Define REG_DWORD `Allow Local Files` = 1
* Note `PreloadFiles()` cannot call a function defined in the map scripts
  * Can pass string data in player name data fields (limit 400 chars)
  * Can pass more string data in ability tooltips (using `BlzGetAbilityTooltip()`, >=v1.29)
  * Can pass int data in max tech allowed
* As of 1.29, there are 24 players for 24 string slots

## Where are the files?
* on 1.26, `filename` is relative to `<warcraft3install>/Logs`
* on 1.30, `filename` is relative to `~/Documents/Warcraft III/CustomMapData`
  * `Preloader()` does not accept absolute paths
  * Filenames are extension sensitive -- save with .txt or .pld for text
* *untested* on 1.32+, local files can also be loaded relative to `<warcraft3install>/_retail_`
  * According to [this forum post](https://www.hiveworkshop.com/threads/local-files.330849/)
