"""
Utilities for translating 4-character game IDs to names.
"""

import glob
import os
from mapfile import slk
from mapfile.util.failable import Error


VERBOSE = False
GAME_DATA_DIR = os.path.normpath(os.path.join(os.path.dirname(__file__), "..", "gamedata/1_30_4"))
ROC_STRINGS_DIR = f"{GAME_DATA_DIR}/enus-strings/custom_v0/units"
"""Contains data from the era of ROC campaign"""
TFT_STRINGS_DIR = f"{GAME_DATA_DIR}/enus-strings/custom_v1/units"
"""Contains data from the era of TFT campaign"""
MODERN_STRINGS_DIR = f"{GAME_DATA_DIR}/enus-strings/units"
"""Contains updated melee TFT game data as of 1.30.4"""
UI_STRINGS = f"{GAME_DATA_DIR}/enus-strings/ui"
"""Contains various UI and internal property names"""
WORLD_EDIT_STRINGS = f"{UI_STRINGS}/worldeditstrings.txt"


STRING_FILE_SUFFIX = "strings.txt"
_id_to_strings_map: dict[str, dict[str, str]] = {}
_roc_id_to_strings_map: dict[str, dict[str, str]] = {}
_world_edit_strings: dict[str, dict[str, str]] = {}
_id_to_world_edit_string: dict[str, str] = {}
_id_to_display_prefix: dict[str, str] = {}


display_name_slk_files = [
    f'{GAME_DATA_DIR}/doodads/doodadmetadata.slk',
    f'{GAME_DATA_DIR}/units/abilitybuffmetadata.slk',
    f'{GAME_DATA_DIR}/units/abilitymetadata.slk',
    f'{GAME_DATA_DIR}/units/destructablemetadata.slk',
    f'{GAME_DATA_DIR}/units/miscmetadata.slk',
    f'{GAME_DATA_DIR}/units/unitmetadata.slk',
    f'{GAME_DATA_DIR}/units/upgradeeffectmetadata.slk',
    f'{GAME_DATA_DIR}/units/upgrademetadata.slk',
]


def type_from_filename(filename: str) -> str:
    return os.path.basename(filename[:-len(STRING_FILE_SUFFIX)])


def init_map(map: dict, game_data_files: list[str]) -> None:
    for file in game_data_files:
        with open(file, 'r') as fp:
            lines = fp.readlines()
        if lines and lines[0][:3] == 'ï»¿':
            # Python struggling to deal with a BOM
            lines[0] = lines[0][3:]
        current_id = ''
        current_data: dict[str, str] = {}
        for line_number, line in enumerate(lines):
            line = line.strip()
            if not line:
                continue
            if line.startswith('//'):
                continue
            if line.startswith('['):
                assert line.endswith(']')
                if current_data:
                    map[current_id] = current_data
                current_id = line[1:-1]
                if current_id in map:
                    current_data = map[current_id]
                else:
                    current_data = {"type": type_from_filename(file)}
            elif '=' in line:
                key, val = line.split('=', 1)
                key = key.strip()
                if VERBOSE and key in current_data:
                    print(f"Warning: '{key}' double defined for {current_id} ({current_data['type']} and {type_from_filename(file)})")
                current_data[key] = val.strip()
            elif 'Purchase Medusa Pebble' in line:
                # Poor formatting, only seems to happen for this one removed item
                continue
            else:
                assert False, f"Unhandled line in file {file} line {line_number}: '{line}'"
        if current_data:
            map[current_id] = current_data


def init_tft_map() -> None:
    if _id_to_strings_map:
        return
    init_map(_id_to_strings_map, glob.glob(f"{MODERN_STRINGS_DIR}/*{STRING_FILE_SUFFIX}"))

def init_roc_map() -> None:
    if _roc_id_to_strings_map:
        return
    init_map(_roc_id_to_strings_map, glob.glob(f"{ROC_STRINGS_DIR}/*{STRING_FILE_SUFFIX}"))

def init_worldedit_map() -> None:
    if _world_edit_strings:
        return
    global _id_to_world_edit_string
    global _id_to_display_prefix
    init_map(_world_edit_strings, [WORLD_EDIT_STRINGS])
    for file in display_name_slk_files:
        slk_data = slk.parse_slk_file(file)
        if isinstance(slk_data, Error):
            raise ValueError(slk_data.message)
        id_index = slk_data[0].index('ID')
        display_name_index = slk_data[0].index('displayName')
        try:
            slk_name_index = slk_data[0].index('slk')
        except:
            slk_name_index = -1
        for table_row in slk_data[1:]:
            id_value = table_row[id_index]
            display_name = table_row[display_name_index]
            if id_value and display_name:
                assert id_value not in _id_to_world_edit_string
                _id_to_world_edit_string[id_value] = display_name
                if slk_name_index != -1:
                    _id_to_display_prefix[id_value] = f"{table_row[slk_name_index]}."


def get_name(object_id: str) -> str | None:
    init_tft_map()
    init_worldedit_map()
    if object_id in _id_to_strings_map and "Name" in _id_to_strings_map[object_id]:
        return _id_to_strings_map[object_id]["Name"]
    world_edit_string = _id_to_world_edit_string.get(object_id)
    return _id_to_display_prefix.get(object_id, '') + _world_edit_strings["WorldEditStrings"].get(world_edit_string, '')


if __name__ == '__main__':
    # print(get_name("ncer"))
    # print(get_name("usle"))
    # print(get_name("ncim"))
    print(get_name("uabi"))
