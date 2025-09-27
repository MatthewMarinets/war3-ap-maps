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
* Lutris: [export script for wc3](#setting-games-up-to-run-outside-lutris)
* Ensure the `WINEARCH` variable in the script is set to win32
  * If this is a change (ie wc3 is on win64):
    * Also change the `WINEPREFIX`
    * Ensure the wine executable used on the command line is `/usr/bin/wine`
      * The experimental Wine-staging-tkg does not support win32 prefixes at time of writing this
    * Run Warcraft III under this new `WINEPREFIX` once to input the CD keys
* Modify the script to point at `World Editor.exe` instead of `Warcraft III.exe`
* Note trying to run the world editor under win64 doesn't seem to work
  * With DXVK turned on, the editor crashes after ~5 seconds
  * With DXVK turned on, the editor doesn't crash, but is incredibly laggy, only getting around 2 fps

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

## Example wine scripts
To avoid interacting with Lutris, it's possible to adjust someone else's export to your needs.
A lightly modified version of my exported script for Warcraft 3 is provided below.

Many of the variables in these scripts may be superfluous.
The known important ones are `WINEPREFIX`, `WINEARCH`, and the actual wine binary used in the final command.
Additionally, the path to the executable may also have to change.

### Warcraft 3
```sh
#!/bin/bash

# Environment variables
export __GL_SHADER_DISK_CACHE="1"
export __GL_SHADER_DISK_CACHE_PATH="/home/$USER/Games/WarcraftIII_130_4/Warcraft III"
export LD_LIBRARY_PATH="/home/$USER/.local/share/lutris/runners/wine/wine-10.15-staging-tkg-amd64/lib:/lib/x86_64-linux-gnu:/lib/i386-linux-gnu:/lib:/usr/lib/x86_64-linux-gnu/libfakeroot:/lib64:/usr/lib:/usr/lib64:/usr/lib/i386-linux-gnu:/usr/lib/x86_64-linux-gnu:/home/$USER/.local/share/lutris/runtime/Ubuntu-18.04-i686:/home/$USER/.local/share/lutris/runtime/steam/i386/lib/i386-linux-gnu:/home/$USER/.local/share/lutris/runtime/steam/i386/lib:/home/$USER/.local/share/lutris/runtime/steam/i386/usr/lib/i386-linux-gnu:/home/$USER/.local/share/lutris/runtime/steam/i386/usr/lib:/home/$USER/.local/share/lutris/runtime/Ubuntu-18.04-x86_64:/home/$USER/.local/share/lutris/runtime/steam/amd64/lib/x86_64-linux-gnu:/home/$USER/.local/share/lutris/runtime/steam/amd64/lib:/home/$USER/.local/share/lutris/runtime/steam/amd64/usr/lib/x86_64-linux-gnu:/home/$USER/.local/share/lutris/runtime/steam/amd64/usr/lib"
export WINEDEBUG="-all"
export DXVK_LOG_LEVEL="debug"
export UMU_LOG="debug"
export WINEARCH="win64"
export WINE="/home/$USER/.local/share/lutris/runners/wine/wine-10.15-staging-tkg-amd64/bin/wine"
export WINE_MONO_CACHE_DIR="/home/$USER/.local/share/lutris/runners/wine/wine-10.15-staging-tkg-amd64/mono"
export WINE_GECKO_CACHE_DIR="/home/$USER/.local/share/lutris/runners/wine/wine-10.15-staging-tkg-amd64/gecko"
export WINEPREFIX="/home/$USER/Games/battlenet"
export WINEESYNC="1"
export WINEFSYNC="1"
export WINE_FULLSCREEN_FSR="1"
export DXVK_NVAPIHACK="0"
export DXVK_ENABLE_NVAPI="1"
export PROTON_BATTLEYE_RUNTIME="/home/$USER/.local/share/lutris/runtime/battleye_runtime"
export PROTON_EAC_RUNTIME="/home/$USER/.local/share/lutris/runtime/eac_runtime"
export WINEDLLOVERRIDES="d3d10core,d3d11,d3d8,d3d9,d3dcompiler_33,d3dcompiler_34,d3dcompiler_35,d3dcompiler_36,d3dcompiler_37,d3dcompiler_38,d3dcompiler_39,d3dcompiler_40,d3dcompiler_41,d3dcompiler_42,d3dcompiler_43,d3dcompiler_46,d3dcompiler_47,d3dx10,d3dx10_33,d3dx10_34,d3dx10_35,d3dx10_36,d3dx10_37,d3dx10_38,d3dx10_39,d3dx10_40,d3dx10_41,d3dx10_42,d3dx10_43,d3dx11_42,d3dx11_43,d3dx9_24,d3dx9_25,d3dx9_26,d3dx9_27,d3dx9_28,d3dx9_29,d3dx9_30,d3dx9_31,d3dx9_32,d3dx9_33,d3dx9_34,d3dx9_35,d3dx9_36,d3dx9_37,d3dx9_38,d3dx9_39,d3dx9_40,d3dx9_41,d3dx9_42,d3dx9_43,dxgi,nvapi,nvapi64,nvofapi64=n;winemenubuilder="
export WINE_LARGE_ADDRESS_AWARE="1"
export TERM="xterm"

# Working Directory
cd '/home/$USER/Games/WarcraftIII_130_4/Warcraft III'

# Command
gamemoderun /home/$USER/.local/share/lutris/runners/wine/wine-10.15-staging-tkg-amd64/bin/wine '/home/$USER/Games/WarcraftIII_130_4/Warcraft III/Warcraft III.exe' "$@"
```
