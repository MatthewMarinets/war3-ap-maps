# war3-ap-maps
A repository containing map data for Archipelago Warcraft 3, along with tools to deal with Warcraft 3 file formats.

## Licensing
The original campaign maps are property of Blizzard Entertainment, used per their license at [license/Blizzard.LICENSE](license/Blizzard.LICENSE).

Tools used to handle warcraft 3 files are under the MIT License, included at [license/LICENSE](license/LICENSE)

## Development
### Example workspace.ini file:
```ini
wc3_path=D:\war3_1304\Warcraft III\Warcraft III.exe
mpqeditor_path=C:\Tools\mpqeditor\x64\MPQEditor.exe

verbose=true

# general
map_file=test_dalaran_ruins
map_format=w3x

# extract
extract_source=./scratch
extract_file=${extract_source}/${map_file}.${map_format}
extract_dir=./extract

# pack
pack_source=${extract_dir}/${map_file}
pack_out_dir=./pack
pack_ext=${map_format}

# gamecache
```
