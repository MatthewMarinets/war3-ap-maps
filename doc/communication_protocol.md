# Communication Protocol
The mod and client communicate by reading and writing preloader files.
On the mod-side, this is done with the preloader bug.
On the client-side, this is done with normal Python file reads/writes.

Preloader are read/written on the user's file system at `~/Documents/Warcraft III/CustomMapData`.

## Client -> Game
The client can effect changes through the player API, using functions like:
* `SetPlayerTechMaxAllowed(player whichPlayer, integer techid, integer maximum)`
* `SetPlayerName(player whichPlayer, string name)`
* `GetPlayerController(player whichPlayer) -> mapcontrol`
* `SetPlayerStartLocation(player whichPlayer, integer startLocIndex)`

(These can be looked up in [common.j](./reference/1.30/common.j#L1768))

The fileio script saves player names before reading files, copies player names to a buffer, and restores player names.
This means `NUM_FILE_LINES` strings can be passed to the game through player names.

Integers may be passed by setting tech max allowed amounts on units the player cannot build/acquire.
The standard is to use critter unit IDs as the various channels, which can allow passing a few dozen integers at a time.
More integers may be passed in future by adding more IDs to the protocol, such as neutral buildings.

The Player 0 critter skeleton ID (`'nske'`) will generally be used to acknowledge the last status transmission number, to help validate the packet.

Changes to player tech max allowed aren't restored, so setting this on acquirable units and items allows the script to control unlocks without intervention on the mod's part.

Example:
```sh
function PreloadFiles takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(0), 'nske', 4)
    call SetPlayerName(Player(0), "message 1")
    call SetPlayerName(Player(1), "message 2")
    call SetPlayerName(Player(2), "message 3")
    call SetPlayerName(Player(2), "message 4")
endfunction
```

## Game -> Client
The game can write arbitrary strings in arbitrary numbers to preload files, which will come out in roughly the following format:
```sh
function PreloadFiles takes nothing returns nothing

    call Preload( "<data line 1>" )
    call Preload( "<data line 2>" )
    call PreloadEnd( 0.0 )

endfunction
```

## Game -> Game
I don't expect to use this often, but noting it for completeness.

It's possible to get the game to write arbitrary scripts to the preloader output file which may then be executed in the future.
It takes advantage of the somewhat broken escape behaviour (or lack thereof) of the generated output,
the so-called "Preloader bug".

Example:
```sh
call PreloadClear()
call PreloadGenStart()
call Preload("\")\r\n\tcall SetPlayerName(Player(0), \"Sample data\")\r\n//")
call Preload("\")\r\nendfunction\r\nfunction XXX takes nothing returns nothing \r\n//")
call PreloadGenEnd("output_script.pld")
```

Which generates something like this to output_script.pld:
```lua
function PreloadFiles takes nothing returns nothing

    call Preload( "")
    call SetPlayerName(Player(0), "Sample data")
//" )
    call Preload( "")
endfunction
function XXX takes nothing returns nothing
//" )
    call PreloadEnd( 0.0 )

endfunction
```

## Packets
Every status packet has an ID, which increments from one transmission to the next.

A common issue is that as files are not cleaned up, merely overwritten, care must be taken to ensure
data is up-to-date.
The connection is generally validated by the game, and so it may ignore packets if they do not pass an up-to-date
check.

Commands that are not safely repeatable, such as "uncollect location" commands, should be marked out-of-date after executing and should not be executed if out-of-date.

### status.txt
* Game -> Client
* 4+ lines
* Communicates map data, communication information, and collected locations

| Line | Contains                      | type                       |
| ---- | ----------------------------- | -------------------------- |
| 1    | Transmission number mod 10000 | integer                    |
| 2    | mission ID                    | integer                    |
| 3    | player index                  | comma-separated integers*  |
| 4    | last message IDs              | comma-separated integers** |
| 5+   | Collected location index      | integer                    |

*Note player index is going to be a single element in almost all missions.
NEx8 is the only mission that needs special handling as the user controls two players.

**List indices refer to packets in order of increasing bitmask (unlocks, locations, messages).
This means as new packet types are added, they get appended to the end of the list
and an outdated client can still work with older packet types.

### ping.txt
* Client -> Game
* Acknowledges status messages sent by the game
  * If this is not received within 3s of sending a status.txt packet, the communication channel should be considered unresponsive and the user notified with a text prompt
* Also lets the game know it should read other packets

| Line                  | Contains                                    |
| --------------------- | ------------------------------------------- |
| MaxTech(0, 'nske')    | Last status transmission index + 1          |
| MaxTech(0, 'nvlk')    | mission ID                                  |
| MaxTech(0, 'nvk2')    | reload packets bitmask                      |

| bitmask | meaning              |
| ------- | -------------------- |
|       1 | reload unlocks       |
|       2 | reload locations     |
|       4 | load messages        |

### unlocks.txt
* Client -> Game
* Set unlocks for the player
* Sets their tech directly with `SetPlayerTechMaxAllowed()`
* Sends additional data for other unlocks like hero max level

| Line                       | Contains                                      |
| -------------------------- | --------------------------------------------- |
| MaxTech(Player(0), 'nech') | Unlocks ID; echoed back in status.txt         |
| MaxTech(Player(0), 'nsno') | Hero 0 max level                              |
| MaxTech(Player(0), 'nfro') | Hero 1 max level                              |
| MaxTech(Player(0), 'npng') | Hero 2 max level                              |
| MaxTech(Player(0), 'ncrb') | Hero 3 max level                              |

### locations.txt
* Client -> Game
* Mark locations as collected or uncollected
* Locations greater than MAX_LOCATIONS are ignored

| Line                       | Contains                                      |
| -------------------------- | --------------------------------------------- |
| MaxTech(Player(0), 'nech') | Locations ID; echoed back in status.txt       |
| PlayerName(0)              | String encoding locations to mark collected   |
| PlayerName(1)              | String encoding locations to mark uncollected |

Encoded IDs are two-character stringified integers. Ex: " 0 710" says locations 0, 7, and 10 are collected.

### messages.txt
* Client -> Game
* Display a message to the player
* Only read on request of ping.txt; assumed to be up-to-date

| Line                       | Contains                                      |
| -------------------------- | --------------------------------------------- |
| MaxTech(Player(0), 'nech') | Message ID; echoed back in status.txt         |
| MaxTech(Player(0), 'nalb') | Number of messsages (max NUM_FILE_LINES)      |
| PlayerName(N)              | Message N                                     |
