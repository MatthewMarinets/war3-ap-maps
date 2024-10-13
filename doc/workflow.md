# Workflow
* Note: Map names containing an 'X' (for eXpansion) are Frozen Throne maps

## Background
* Warcraft 3 map files are basically fancy .mpq files
* Zezula's MPQEditor can extract the map files so they can be checked into git with plaintext triggers and re-pack them for use in game or in editor
    * [Download it here](http://www.zezula.net/en/mpq/download.html)
* The editor's save functionality compresses the maps significantly, at the cost of wiping out comments, spacing, and some metadata. A test on Human01 showed:

| state                                         | size         |
| --------------------------------------------- | ------------ |
| original file                                 | 241744 bytes |
| saved with World edit                         | 240858 bytes |
| original repacked with MPQEditor              | 371582 bytes |
| saved repacked with MPQEditor                 | 370719 bytes |
| original reloaded into World Editor and saved | 240879 bytes |
| saved reloaded into World Editor and saved    | 240770 bytes |

Making a new map file with MPQEditor seems to make it significantly larger. However, it's possible to remove files from an existing map file; by making a template `empty.w3x`, using MPQEditor to remove all files from it, then adding desired files, we can keep the compression. The secret sauce seems to live in the `(attributes)` file, which I'm not sure how to edit from MPQEditor. The difference is only a handful of bytes for Human01.

| state                                                       | size         |
| ----------------------------------------------------------- | ------------ |
| take existing .w3m, remove all files, add all desired files | 240894 bytes |
| open and save above in WorldEdit                            | 240820 bytes |

Note that map files also store flags outside of the MPQ region; these will also have to be accounted for in such a tool

### Making an empty .w3x
Run mpqeditor console with `mpqeditor /console` in the directory containing the unprocessed empty.w3x.

```sh
open empty.w3x
list empty.w3x
# For every filename listed
d empty.w3x <filename>
list empty.w3x
```

## Workflow
* Extract original map files from Warcraft 3 install with MPQEditor
* Extract map files into exploded directories under `work/`
  * This is the root of future edits
* Repack map files with MPQEditor under `out/`
* **Optional** Reload and save map files with WorldEdit
* Changes made in WorldEdit can be extracted and ported back to `work/`, with two exceptions:
  * .wts files (strings) should be ported piecemeal to preserve comments
  * .j files (jass scripts) should be ported piecemeal to preserve code formatting
  * All other files are binary files and should be possible to port back on a per-file basis *unverified*

## Helper scripts
* `mapfile/pack.py` -- packs an extracted directory into a map file
* `mapfile/extract_map.py` -- extracts a map file into an exploded directory
* `mapfile/extract_gamecache.py` -- reads a gamecache file
* `quick_start.py` -- launches Warcraft 3 with the current map file

### Configuration
* The scripts try to read a workspace.ini file for executable paths and script arguments. This allows a developer to set and reuse arguments for a current task

## Notes on differences made by saving in World Editor
* Comments in .wts (sound) files are removed
* Unnecessary spacing in .j files removed
* `CommentString()` replaced with comments
* `.tga` textures replaced with `.blp`
* `ForGroup()` replaced with `ForGroupBJ()`
* Some large header comments / triggers can get reordered
* `SetPlayerRaceSelectable(player, true)` true replaced with false
* in `main()`, added `NewSoundEnvironment("Default")`
