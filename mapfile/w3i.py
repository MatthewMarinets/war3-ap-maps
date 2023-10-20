"""
Utilities for working with .w3i (map information) files
"""
from typing import *
import enum
from dataclasses import dataclass

from mapfile import binary

class W3iVersions(enum.IntEnum):
    ROC = 18
    # TFT_beta = 19
    TFT = 25

class MapFlags(enum.IntFlag):
    HIDE_MINIMAP           = 0x0001
    MODIFY_ALLY_PRIORITIES = 0x0002
    MELEE_MAP              = 0x0004
    LARGE_MAP              = 0x0008
    VISIBLE_BLACK_MASK     = 0x0010
    FIXED_FORCES           = 0x0020
    CUSTOM_FORCES          = 0x0040
    CUSTOM_TECH_TREE       = 0x0080
    CUSTOM_ABILITIES       = 0x0100
    CUSTOM_UPGRADES        = 0x0200
    PROPERTIES_MENU_OPENED = 0x0400
    WAVES_ON_CLIFFS        = 0x0800
    WAVES_ON_SHORES        = 0x1000

class PlayerType(enum.IntEnum):
    Human = 1
    Computer = 2
    Neutral = 3
    Rescuable = 4

class PlayerFaction(enum.IntEnum):
    Human = 1
    Orc = 2
    Undead = 3
    NightElf = 4

@dataclass
class PlayerInfo:
    player_id: int
    player_type: PlayerType
    player_faction: PlayerFaction
    fixed_start_position: bool
    name: str
    start_pos: tuple[float, float]
    ally_low_priorities: int
    ally_high_priorities: int

class War3MapInformation(NamedTuple):
    version: Literal[W3iVersions.TFT, W3iVersions.ROC]
    map_revision: int
    editor_version: int
    map_name: str
    map_author: str
    map_description: str
    players_recommended: str
    camera_bounds: Tuple[float, float, float, float, float, float, float, float]
    map_padding_left: int
    map_padding_right: int
    map_padding_top: int
    map_padding_bottom: int
    map_playable_width: int
    map_playable_height: int
    flags: MapFlags
    tileset: bytes
    campaign_background: int
    tft_unknown_string1: str
    map_loading_screen_text: str
    map_loading_screen_title: str
    map_loading_screen_subtitle: str
    map_loading_screen_number: int
    roc_prologue_screen_text: str
    roc_prologue_screen_title: str
    roc_prologue_screen_subtitle: str
    tft_magic1: int
    tft_magic2: int
    tft_magic3: int
    tft_unknown_string2: str
    tft_flags1: int
    tft_flags2: int
    tft_flags3: int
    tft_flags4: int
    tft_magic4: int
    tft_weather: int
    tft_scenario_type: str
    tft_flags5: int
    tft_magic5: int
    max_players: int
    players: list[PlayerInfo]


def read_w3i(filename: str) -> War3MapInformation:
    with open(filename, 'rb') as file_handle:
        raw_bytes = file_handle.read()
    
    reader = binary.ByteArrayParser(raw_bytes)
    version = reader.read_int32()
    assert version in [v.value for v in W3iVersions]
    result = War3MapInformation(
        version,
        map_revision=reader.read_int32(),
        editor_version=reader.read_int32(),
        map_name=reader.read_cstring(),
        map_author=reader.read_cstring(),
        map_description=reader.read_cstring(),
        players_recommended=reader.read_cstring(),
        camera_bounds=reader.read('=ffffffff'),
        map_padding_left=reader.read_int32(),
        map_padding_right=reader.read_int32(),
        map_padding_top=reader.read_int32(),
        map_padding_bottom=reader.read_int32(),
        map_playable_width=reader.read_int32(),
        map_playable_height=reader.read_int32(),
        flags=reader.read_int32(),
        tileset=reader.read('=c')[0],
        campaign_background=reader.read_int32(),
        tft_unknown_string1=('' if version == W3iVersions.ROC else reader.read_cstring()),
        map_loading_screen_text=reader.read_cstring(),
        map_loading_screen_title=reader.read_cstring(),
        map_loading_screen_subtitle=reader.read_cstring(),
        map_loading_screen_number=(reader.read_int32() if version == W3iVersions.ROC else -1),
        roc_prologue_screen_text=(reader.read_cstring() if version == W3iVersions.ROC else ''),
        roc_prologue_screen_title=(reader.read_cstring() if version == W3iVersions.ROC else ''),
        roc_prologue_screen_subtitle=(reader.read_cstring() if version == W3iVersions.ROC else ''),
        tft_magic1=(reader.read_int32() if version == W3iVersions.TFT else -1),
        tft_magic2=(reader.read_int32() if version == W3iVersions.TFT else 0),
        tft_magic3=(reader.read_int32() if version == W3iVersions.TFT else 0),
        tft_unknown_string2=(reader.read_cstring() if version == W3iVersions.TFT else ""),
        tft_flags1=(reader.read_u32() if version == W3iVersions.TFT else 0),
        tft_flags2=(reader.read_u32() if version == W3iVersions.TFT else 0),
        tft_flags3=(reader.read_u32() if version == W3iVersions.TFT else 0),
        tft_flags4=(reader.read('=H')[0] if version == W3iVersions.TFT else 0),
        tft_magic4=(reader.read('=B')[0] if version == W3iVersions.TFT else 0xff),
        tft_weather=(reader.read('=I')[0] if version == W3iVersions.TFT else 0),
        tft_scenario_type=(reader.read_cstring() if version == W3iVersions.TFT else ""),
        tft_flags5=(reader.read_u32() if version == W3iVersions.TFT else 0),
        tft_magic5=(reader.read('=B')[0] if version == W3iVersions.TFT else 0xff),
        max_players=reader.read_int32(),
        players=[],
    )
    assert result.tft_magic1 == -1
    assert result.tft_magic2 == 0
    assert result.tft_magic3 == 0
    assert result.tft_magic4 == 0xff
    assert result.tft_magic5 == 0xff
    assert result.max_players < 32

    for player_index in range(result.max_players):
        player = PlayerInfo(
            player_id=reader.read_int32(),
            player_type=reader.read_int32(),
            player_faction=reader.read_int32(),
            fixed_start_position=reader.read_bool32(),
            name=reader.read_cstring(),
            start_pos=reader.read('=ff'),
            ally_low_priorities=reader.read_int32(),
            ally_high_priorities=reader.read_int32(),
        )
        result.players.append(player)

    return result


if __name__ == '__main__':
    filenames = [
        'work/Human02Interlude/war3map.w3i',
        # 'extract/test_dalaran_ruins/war3map.w3i',
        # 'work/HumanX01/war3map.w3i',
        # 'work/HumanX02/war3map.w3i',
        # 'work/HumanX03/war3map.w3i',
        # 'work/HumanX03Interlude/war3map.w3i',
        # 'work/HumanX03Secret/war3map.w3i',
        # 'work/HumanX04/war3map.w3i',
        # 'work/HumanX04Interlude/war3map.w3i',
        # 'work/HumanX05/war3map.w3i',
        # 'work/HumanX06/war3map.w3i',
        # 'work/HumanX06Finale/war3map.w3i',
        # 'work/NightElfX01/war3map.w3i',
        # 'work/NightElfX02/war3map.w3i',
        # 'work/NightElfX03/war3map.w3i',
        # 'work/NightElfX04/war3map.w3i',
        # 'work/NightElfX04Interlude/war3map.w3i',
        # 'work/NightElfX05/war3map.w3i',
        # 'work/NightElfX06/war3map.w3i',
        # 'work/NightElfX06Interlude/war3map.w3i',
        # 'work/NightElfX07/war3map.w3i',
        # 'work/NightElfX08/war3map.w3i',
        # 'work/NightElfX08Finale/war3map.w3i',
        # 'work/OrcX01/war3map.w3i',
        # 'work/OrcX01_02/war3map.w3i',
        # 'work/OrcX01_03/war3map.w3i',
        # 'work/OrcX01_04/war3map.w3i',
        # 'work/OrcX01_05/war3map.w3i',
        # 'work/UndeadX01/war3map.w3i',
        # 'work/UndeadX01Interlude/war3map.w3i',
        # 'work/UndeadX02/war3map.w3i',
        # 'work/UndeadX02Interlude/war3map.w3i',
        # 'work/UndeadX03/war3map.w3i',
        # 'work/UndeadX04/war3map.w3i',
        # 'work/UndeadX05/war3map.w3i',
        # 'work/UndeadX06/war3map.w3i',
        # 'work/UndeadX07a/war3map.w3i',
        # 'work/UndeadX07b/war3map.w3i',
        # 'work/UndeadX07c/war3map.w3i',
        # 'work/UndeadX07Interlude/war3map.w3i',
        # 'work/UndeadX08/war3map.w3i',
        # 'work/War3XBonusCredits/war3map.w3i',
        # 'work/War3XRegularCreditsIce/war3map.w3i',
    ]
    with open('scratch/result.txt', 'w') as fp:
        for filename in filenames:
            print(str(read_w3i(filename)).replace(',', ',\n   ').replace('PlayerInfo(', 'PlayerInfo(\n       '), file=fp)

    print('done')



