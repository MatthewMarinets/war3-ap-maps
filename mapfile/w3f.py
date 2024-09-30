"""
Utilities for working with .w3f (campaign info) files
"""

"""
Notes:
* thehelper.net has reliable information on this file type
* wc3edit.net source has incorrect information on this file
* wc3-project.ag.vu doesn't have any information on .w3f files
"""

from typing import *
from dataclasses import dataclass, asdict
import enum
import tomllib

from mapfile import binary
from mapfile.util import savetext


class CampaignFlag(enum.IntEnum):
    ROC_Fixed = 0
    ROC_Variable = 1
    TFT_Fixed = 2
    TFT_Variable = 3


@dataclass
class War3MapTitleInfo:
    starts_visible: bool = False
    chapter_title: str = ''
    map_title: str = ''
    path: str = ''


@dataclass
class War3MapPathInfo:
    path: str = ''


@dataclass
class War3CampaignInfo:
    file_format_version: int
    times_saved: int
    editor_version: int
    campaign_name: str
    campaign_difficulty: str
    author_name: str
    campaign_description: str
    flags: CampaignFlag
    background_screen_index: int
    custom_background_screen_path: str
    minimap_picture_path: str
    ambient_sound_index: int
    custom_ambient_sound_path: str
    terrain_fog: int
    fog_start_z: float
    fog_end_z: float
    fog_density: float
    fog_red: int    # 1 byte
    fog_green: int  # 1 byte
    fog_blue: int   # 1 byte
    fog_alpha: int  # 1 byte
    ui_race_index: int
    map_titles: list[War3MapTitleInfo]
    map_paths: list[War3MapPathInfo]


def read_w3f(raw_bytes: bytes) -> War3CampaignInfo:
    reader = binary.ByteArrayParser(raw_bytes)
    file_format_version = reader.read_int32()
    assert file_format_version == 1, f'Unable to handle .w3f of version {file_format_version}'
    result = War3CampaignInfo(
        file_format_version=file_format_version,
        times_saved=reader.read_int32(),
        editor_version=reader.read_int32(),
        campaign_name=reader.read_cstring(),
        campaign_difficulty=reader.read_cstring(),
        author_name=reader.read_cstring(),
        campaign_description=reader.read_cstring(),
        flags=CampaignFlag(reader.read_int32()),
        background_screen_index=reader.read_int32(),
        custom_background_screen_path=reader.read_cstring(),
        minimap_picture_path=reader.read_cstring(),
        ambient_sound_index=reader.read_int32(),
        custom_ambient_sound_path=reader.read_cstring(),
        terrain_fog=reader.read_int32(),
        fog_start_z=reader.read_float(),
        fog_end_z=reader.read_float(),
        fog_density=reader.read_float(),
        fog_red=reader.read_u8(),
        fog_green=reader.read_u8(),
        fog_blue=reader.read_u8(),
        fog_alpha=reader.read_u8(),
        ui_race_index=reader.read_int32(),
        map_titles=[],
        map_paths=[],
    )
    num_map_titles = reader.read_int32()
    for _ in range(num_map_titles):
        map_title = War3MapTitleInfo(
            reader.read_bool32(),
            reader.read_cstring(),
            reader.read_cstring(),
            reader.read_cstring(),
        )
        result.map_titles.append(map_title)
    num_map_paths = reader.read_int32()
    for _ in range(num_map_paths):
        unknown_0 = reader.read_u8()
        assert unknown_0 == 0
        map_path = War3MapPathInfo(
            reader.read_cstring(),
        )
        result.map_paths.append(map_path)
    assert len(result.map_titles) == num_map_titles
    assert len(result.map_paths) == num_map_paths
    assert reader.index == len(raw_bytes)
    return result


def to_binary(data: War3CampaignInfo) -> bytes:
    writer = binary.ByteArrayWriter()
    writer.write_int32(data.file_format_version)
    writer.write_int32(data.times_saved)
    writer.write_int32(data.editor_version)
    writer.write_cstring(data.campaign_name)
    writer.write_cstring(data.campaign_difficulty)
    writer.write_cstring(data.author_name)
    writer.write_cstring(data.campaign_description)
    writer.write_int32(data.flags)
    writer.write_int32(data.background_screen_index)
    writer.write_cstring(data.custom_background_screen_path)
    writer.write_cstring(data.minimap_picture_path)
    writer.write_int32(data.ambient_sound_index)
    writer.write_cstring(data.custom_ambient_sound_path)
    writer.write_int32(data.terrain_fog)
    writer.write_float(data.fog_start_z)
    writer.write_float(data.fog_end_z)
    writer.write_float(data.fog_density)
    writer.write_u8(data.fog_red)
    writer.write_u8(data.fog_green)
    writer.write_u8(data.fog_blue)
    writer.write_u8(data.fog_alpha)
    writer.write_int32(data.ui_race_index)

    writer.write_int32(len(data.map_titles))
    for title in data.map_titles:
        writer.write_cstring(title.chapter_title)
        writer.write_cstring(title.map_title)
        writer.write_cstring(title.path)
    writer.write_int32(len(data.map_paths))
    for path in data.map_paths:
        writer.write_u8(0)
        writer.write_cstring(path.path)
    return writer.as_bytes()


def as_text(data: War3CampaignInfo) -> str:
    return savetext.to_toml(
        asdict(data),
        ("Warcraft 3 Campaign Info File (.w3f)", "See w3f.py for type definitions",)
    )


def from_text(text: str) -> War3CampaignInfo:
    result = tomllib.loads(text)
    map_titles = [War3MapTitleInfo(**x) for x in result.pop('map_titles', [])]
    map_paths = [War3MapPathInfo(**x) for x in result.pop('map_paths', [])]
    flags_dict: dict = result.pop('flags')
    assert flags_dict is not None
    assert flags_dict['type'] == 'CampaignFlag'
    flags = CampaignFlag[flags_dict['value']]
    return War3CampaignInfo(**result, flags=flags, map_titles=map_titles, map_paths=map_paths)
