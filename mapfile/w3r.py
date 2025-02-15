"""
Utilities for working with .w3r (region definition) files
"""

from dataclasses import dataclass, field, asdict
import tomllib
import os

from mapfile import binary
from mapfile.util import savetext

EXTENSION = '.w3r'


@dataclass
class War3Region:
    left: float
    bottom: float
    right: float
    top: float
    region_name: str
    region_id: int
    weather_effect_id: str
    ambient_sound: str
    colour_b: int  # u8
    colour_g: int  # u8
    colour_r: int  # u8


@dataclass
class War3RegionInfo:
    version: int = 5
    regions: list[War3Region] = field(default_factory=list)


def convert(source: str, target: str) -> None:
    source_ext = os.path.splitext(source)[1]
    if source_ext == EXTENSION:
        with open(source, 'rb') as fp:
            contents = fp.read()
        data = read_w3r(contents)
    else:
        with open(source, 'r') as fp:
            str_contents = fp.read()
        data = from_text(str_contents)
    target_ext = os.path.splitext(target)[1]
    if target_ext == EXTENSION:
        write_bytes = to_binary(data)
        with open(target, 'wb') as fp:
            fp.write(write_bytes)
    else:
        write_str = as_text(data)
        with open(target, 'w') as fp:
            fp.write(write_str)


def read_w3r(raw_bytes: bytes) -> War3RegionInfo:
    reader = binary.ByteArrayParser(raw_bytes)
    data = War3RegionInfo(reader.read_int32())
    assert data.version == 5, "Unknown file version"
    num_regions = reader.read_int32()
    for _ in range(num_regions):
        data.regions.append(War3Region(
            left=reader.read_float(),
            bottom=reader.read_float(),
            right=reader.read_float(),
            top=reader.read_float(),
            region_name=reader.read_cstring(),
            region_id=reader.read_int32(),
            weather_effect_id=reader.read_id(),
            ambient_sound=reader.read_cstring(),
            colour_b=reader.read_u8(),
            colour_g=reader.read_u8(),
            colour_r=reader.read_u8(),
        ))
        assert reader.read_s8() == -1
    assert reader.index == len(raw_bytes)
    return data


def to_binary(data: War3RegionInfo) -> bytes:
    writer = binary.ByteArrayWriter()
    writer.write_int32(data.version)
    writer.write_int32(len(data.regions))
    for region in data.regions:
        writer.write_float(region.left)
        writer.write_float(region.bottom)
        writer.write_float(region.right)
        writer.write_float(region.top)
        writer.write_cstring(region.region_name)
        writer.write_int32(region.region_id)
        writer.write_id(region.weather_effect_id)
        writer.write_cstring(region.ambient_sound)
        writer.write_u8(region.colour_b)
        writer.write_u8(region.colour_g)
        writer.write_u8(region.colour_r)
        writer.write_s8(-1)
    return writer.as_bytes()


def as_text(data: War3RegionInfo) -> str:
    data_dict = asdict(data)
    return savetext.to_toml(
        data_dict,
        ("Warcraft 3 Region file (.w3r)", "See w3r.py for type definitions",)
    )


def from_text(text: str) -> War3RegionInfo:
    result = tomllib.loads(text)
    result['regions'] = [War3Region(**region) for region in result.pop('regions')]
    return War3RegionInfo(**result)


if __name__ == '__main__':
    from work import manifest
    filenames = [f'work/{x}/war3map.w3r' for x in manifest.all_directories]
    os.makedirs('scratch/w3r', exist_ok=True)
    for filename in filenames:
        print(filename)
        map_name = os.path.basename(os.path.dirname(filename))
        with open(filename, 'rb') as fp2:
            raw_data = fp2.read()
        data = read_w3r(raw_data)
        text = as_text(data)
        with open(f'scratch/w3r/w3r_{map_name}.toml', 'w') as fp:
            print(text, file=fp)
        retrieved_data = from_text(text)
        round_tripped = to_binary(retrieved_data)
        assert round_tripped == raw_data
    print('done')
