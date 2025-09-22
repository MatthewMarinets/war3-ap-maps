# Linux setup
## Battle.net setup
* Running through [Lutris](https://lutris.net/games/battlenet/)
  * Lutris put Battle.net folder in a bugged location
  * Fix with a symlink `~/Games/battlenet/drive_c/Program Files (x86)/Battle.net` -> `~Games/battlenet/Battle.net`
  * This got Battle.net up to the point where it starts but couldn't view games without an "Agent going to sleep" error
* Installed protonplus through software manager/flatpak
  * Top left -> Lutris
  * Wine -> Wine-staging-Tkg (Kron4ek) 10.15
* Under Lutris: Runners->Wine->Configure
  * Wine Version: wine-10.15-staging-tkg-amd64
  * Battle.net now starts properly through Lutris

## Starcraft 2 setup
* Install Starcraft 2 in Battle.net
  * Can now run sc2 through Battle.net
* Note: Installing Starcraft 2 in Lutris only resulted in starting battle.net
  * The added argument `--exec="launch S2"` didn't seem to work
  * Still using this install as a base for the cover art and metadata
* Right click->Configure
  * Executable: `<Path/To/Starcraft2/install>/Support64/SC2Switcher_x64.exe`
  * Wine prefix: same as battlenet
  * Note: Using SC2Switcher skips battle.net entirely, but requires typing the password when starting every time

## Warcraft 3 setup
### Modern/reforged version
* [untested] Basically just follow the same install instructions as Starcraft 2

### Using a pre-existing 1.30 install
* Lutris: hamburger menu -> Add locally installed game
  * Name: Warcraft III
  * Runner: Wine
  * Release Year: 2002
* Right click -> Configure
  * Executable: location of Warcaft III executable
  * Wine prefix: same as battlenet
  * Wine version: I used same wine version as battle.net, not sure if necessary
  * Enable VK3d3: off
    * Not sure if necessary, but it was necessary to keep the editor from crashing
* The first time you run the game, it will prompt you for your CD keys

### Editor using pre-existing 1.30 install
* Lutris: hamburger menu -> Add locally installed game
  * Name: Warcraft III Editor
  * Runner: wine
  * Release Year: 2002
* Right click -> Configure
  * Executable: location of Warcraft III executable
  * Enable VKD3D: Off
    * Leaving this on resulted in the editor crashing ~10s after starting
    * Error message from running through a script: "DxvkMemoryAllocator: Memory allocation failed"
  * At this point the editor should work, but the 3D display will flicker when panning
  * Note: World Editor uses DirectX9
  * Note: I tried passing in the arguments `-graphicsapi OpenGL2`
    and it also prevented a crash but failed to render anything other than black
  * Note: Turning DXVK on or off doesn't seem to affect anything

## Setting games up to run outside Lutris
* Open a terminal in home directory
* `lutris -l` to show indices of all installed games. Looks like:
```
 1 | Battle.net       | battlenet     | wine      | /home/matthew/Games/battlenet
 2 | StarCraft II     | starcraft-ii  | wine      | /home/matthew/Games/battlenet
 3 | Warcraft III     | warcraft-iii  | wine      | -
```
* We care about the number to the left of the game we want to generate a script for -- that's the ID
* Run `lutris lutris:rungameid/<ID> --output-script <scriptname>.sh`
  * Where `<ID>` is our game's ID and `<scriptname>` will be the name of our shortcut, like `wc3.sh`
* This should generate a file `<scriptname>.sh` in our home directory.
  Move/copy that to wherever you want to keep your shortcuts
* Run the script to start the game
