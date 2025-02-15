"""
Utilities for working with minimap icon (.mmp) files
"""

from dataclasses import dataclass, asdict
import enum
import tomllib
import os

from mapfile.util import savetext
from mapfile import binary


EXTENSION = '.mmp'


class MinimapIconType(enum.IntEnum):
    GoldMine = 0
    House = 1
    PlayerStart = 2


@dataclass
class War3MinimapIcon:
    icon_type: MinimapIconType
    x: int
    """ranges from 10~160"""
    y: int
    """ranges from 10~160"""
    colour_blue: int
    colour_green: int
    colour_red: int
    colour_alpha: int


@dataclass
class War3MinimapInfo:
    file_format_version: int
    icons: list[War3MinimapIcon]


def read_binary(raw_bytes: bytes) -> War3MinimapInfo:
    reader = binary.ByteArrayParser(raw_bytes)
    version = reader.read_int32()
    assert version == 0
    result = War3MinimapInfo(version, [])
    num_icons = reader.read_int32()
    for _ in range(num_icons):
        icon = War3MinimapIcon(
            icon_type=MinimapIconType(reader.read_int32()),
            x=reader.read_int32(),
            y=reader.read_int32(),
            colour_blue=reader.read_u8(),
            colour_green=reader.read_u8(),
            colour_red=reader.read_u8(),
            colour_alpha=reader.read_u8(),
        )
        result.icons.append(icon)
    return result


def to_binary(data: War3MinimapInfo) -> bytes:
    writer = binary.ByteArrayWriter()
    writer.write_int32(data.file_format_version)
    writer.write_int32(len(data.icons))
    for icon in data.icons:
        writer.write_int32(icon.icon_type)
        writer.write_int32(icon.x)
        writer.write_int32(icon.y)
        writer.write_u8(icon.colour_blue)
        writer.write_u8(icon.colour_green)
        writer.write_u8(icon.colour_red)
        writer.write_u8(icon.colour_alpha)
    return writer.as_bytes()


def as_text(data: War3MinimapInfo) -> str:
    return savetext.to_toml(
        asdict(data),
        ("Warcraft 3 Minimap Info File (.mmp)", "See mmp.py for type definitions",)
    )


def from_text(text: str) -> War3MinimapInfo:
    result = tomllib.loads(text)
    version = result.get('file_format_version', 0)
    icons: list[War3MinimapIcon] = []
    for icon_data in result.get('icons', []):
        icon_type_data = icon_data.pop('icon_type')
        icon_type = MinimapIconType[icon_type_data]
        icons.append(War3MinimapIcon(
            icon_type=icon_type,
            **icon_data,
        ))
    return War3MinimapInfo(file_format_version=version, icons=icons)


if __name__ == '__main__':
    from work import manifest
    filenames = [f'work/{x}/war3map.mmp' for x in manifest.all_directories]
    os.makedirs('scratch/mmp', exist_ok=True)
    for filename in filenames:
        map_name = os.path.basename(os.path.dirname(filename))
        with open(filename, 'rb') as fp2:
            raw_data = fp2.read()
        data = read_binary(raw_data)
        text = as_text(data)
        with open(f'scratch/mmp/{map_name}.mmp.toml', 'w') as fp:
            print(text, file=fp)
        retrieved_data = from_text(text)
        round_tripped = to_binary(retrieved_data)
        assert round_tripped == raw_data

    print('done')
