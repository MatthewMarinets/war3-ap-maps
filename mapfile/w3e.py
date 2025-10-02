"""
Utilities for working with .w3e (environment) files
"""

from dataclasses import dataclass, field, asdict
import tomllib
import os

from mapfile import binary
from mapfile.util import savetext


EXTENSION = '.w3e'
_MAGIC = 'W3E!'


TILESET_CODE_TO_NAME = {
    'A': 'Ashenvale',
    'B': 'Barrens',
    'C': 'Felwood',
    'D': 'Dungeon',
    'F': 'Lordaeron Fall',
    'G': 'Underground',
    'L': 'Lordaeron Summer',
    'N': 'Northrend',
    'Q': 'Village Fall',
    'V': 'Village',
    'W': 'Lordaeron Winter',
    'X': 'Dalaran',
    'Y': 'Cityscape',
    'Z': 'Sunken Ruins',
    'I': 'Icecrown',
    'J': 'Dalaran Ruins',
    'O': 'Outland',
    'K': 'Black Citadel',
}


@dataclass
class Tile:
    height: int = 0  # int16
    water_level: int = 0  # int16
    flags: int = 0  # int4
    tile_type: str = ''  # int4
    texture_variation: int = 0  # int8
    cliff_type: str = ''  # int4
    cliff_level: int = 0  # int4


# based on guide in https://867380699.github.io/blog/2019/05/09/W3X_Files_Format#war3mapw3e


@dataclass
class War3Environment:
    version: int
    tileset: str = ''
    using_custom_tilesets: bool = False
    tile_ids: list[str] = field(default_factory=list)
    cliff_ids: list[str] = field(default_factory=list)
    width_plus_1: int = 0
    height_plus_1: int = 0
    min_x: float = 0.0
    min_y: float = 0.0
    tile_data: bytes = field(default=b'', repr=False)

    def get_tile_data(self, x: int, y: int) -> Tile:
        assert x < self.width_plus_1
        assert y < self.height_plus_1
        byte_offset = 7 * (x + y * self.width_plus_1)
        raw_data = self.tile_data[byte_offset:byte_offset+7]
        reader = binary.ByteArrayParser(raw_data)
        result = Tile()
        result.height = (reader.read_s16() - 0x2000) / 4
        result.water_level = reader.read_s16()
        packed = reader.read_u8()
        result.flags = packed >> 4
        result.tile_type = self.tile_ids[packed & 0xf]
        result.texture_variation = reader.read_u8()
        packed = reader.read_u8()
        result.cliff_type = self.cliff_ids[packed >> 4]
        result.cliff_level = packed & 0xf

        result.height += (result.cliff_level - 2) * 0x200 / 4
        return result
    
    def coord_to_height(self, x: float, y: float) -> float:
        x_point = (x - self.min_x) / 128
        y_point = (y - self.min_y) / 128
        x_int = int(x_point)
        y_int = int(y_point)

        tile_bot_left = self.get_tile_data(x_int, y_int)
        tile_bot_right = self.get_tile_data(x_int+1, y_int)
        tile_top_left = self.get_tile_data(x_int, y_int+1)
        tile_top_right = self.get_tile_data(x_int+1, y_int+1)

        right_weight = x_point - x_int
        top_weight = y_point - y_int
        left_weight = 1 - right_weight
        bottom_weight = 1 - top_weight
        lerp = (
            bottom_weight * left_weight * tile_bot_left.height
            + bottom_weight * right_weight * tile_bot_right.height
            + top_weight * left_weight * tile_top_left.height
            + top_weight * right_weight * tile_top_right.height
        )
        return lerp


def read_binary(raw_bytes: bytes) -> War3Environment:
    reader = binary.ByteArrayParser(raw_bytes)
    magic = reader.read_id()
    assert magic == _MAGIC
    data = War3Environment(version=reader.read_int32())
    assert data.version == 11, f"Unknown .w3e version: {data.version}"
    data.tileset = reader.read_bytes(1)
    data.using_custom_tilesets = reader.read_bool32()
    num_tile_ids = reader.read_int32()
    assert num_tile_ids <= 16, num_tile_ids
    for _ in range(num_tile_ids):
        data.tile_ids.append(reader.read_id())
    num_cliff_ids = reader.read_int32()
    for _ in range(num_cliff_ids):
        data.cliff_ids.append(reader.read_id())
    data.width_plus_1 = reader.read_int32()
    data.height_plus_1 = reader.read_int32()
    data.min_x = reader.read_float()
    data.min_y = reader.read_float()
    data.tile_data = reader.raw_bytes[reader.index:]
    return data


def to_binary(data: War3Environment) -> bytes:
    writer = binary.ByteArrayWriter()
    writer.write_id(_MAGIC)
    writer.write_int32(data.version)
    writer.write_bytes(data.tileset)
    writer.write_bool32(data.using_custom_tilesets)
    writer.write_int32(len(data.tile_ids))
    for tile_id in data.tile_ids:
        writer.write_id(tile_id)
    writer.write_int32(len(data.cliff_ids))
    for cliff_id in data.cliff_ids:
        writer.write_id(cliff_id)
    writer.write_int32(data.width_plus_1)
    writer.write_int32(data.height_plus_1)
    writer.write_float(data.min_x)
    writer.write_float(data.min_y)
    return writer.as_bytes() + data.tile_data


def read_binary_file(filename: str) -> War3Environment:
    with open(filename, 'rb') as fp:
        raw_data = fp.read()
    return read_binary(raw_data)


if __name__ == '__main__':
    with open('maps/Human01/war3map.w3e', 'rb') as fp:
        raw_bytes = fp.read()
    data = read_binary(raw_bytes)
    round_tripped = to_binary(data)
    assert round_tripped == raw_bytes
    del round_tripped

    import readline
    running = True
    while running:
        cmd = input('> ')
        if cmd in ('help', 'show', '-h', '-help', '--help', 'usage'):
            print('exit: exits the program')
            print('d: print header data')
            print('<x>, <y>: print tile data at x, y')
        elif cmd in ('exit', 'x'):
            running = False
            break
        elif cmd == 'd':
            print(data)
        elif cmd.startswith('f '):
            parts = [x for x in cmd.split() if x]
            if len(parts) != 3:
                print("Error: Expected two coordinate components")
                continue
            print(data.coord_to_height(float(parts[1]), float(parts[2])))
        else:
            parts = [x for x in cmd.split() if x]
            if len(parts) != 2:
                print("Error: Expected two coordinate components")
                continue
            print(data.get_tile_data(int(parts[0]), int(parts[1])))
