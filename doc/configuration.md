# Configuration
## External program interface configuration
An external program interfacing with a Warcraft 3 map needs to know the following:
* Warcraft 3 installation directory
* Warcraft 3 version
* Campaign profiles directory (should be `~/Saved Games/Warcraft III/Profile*/`)
  * Can be found in registry under `HKEY_CURRENT_USER\SOFTWARE\Blizzard Entertainment\Warcraft III`, key `User Game Save Folder`
    * This key doesn't seem to be added by reforged?
  * Used for gamecache files
* Location of local files directory
  * Version dependent

## Version considerations
* local files directory changed for different versions
  * 1.26: Game installation directory
  * 1.28+: `~/Documents/Warcraft III/CustomMapData/`
* <1.30: To enable reading from files, a registry key must be set
  * `HKEY_CURRENT_USER\SOFTWARE\Blizzard Entertainment\Warcraft III`, key `Allow Local Files` (REG_DWORD) should be set to 1
  * Not necessary on Reforged (1.36), worked on 1.30 without this key
* Map files moved in Reforged
  * 1.30-: `<installation>/Maps/`
  * 1.36: `~/Documents/Warcraft III/Maps/`
