"""
Utilities for working with .w3c (camera definition) files
"""

from dataclasses import dataclass, field, asdict
import tomllib
import os

from mapfile import binary
from mapfile.util import savetext


EXTENSION = '.w3c'


@dataclass
class War3Camera:
    target_x: float
    target_y: float
    z_offset: float
    rotation: float
    angle_of_attack: float
    distance: float
    roll: float
    fov: float
    far_z: float
    name: str = ''


@dataclass
class War3CameraInfo:
    version: int = 0
    cameras: list[War3Camera] = field(default_factory=list)


def convert(source: str, target: str) -> None:
    source_ext = os.path.splitext(source)[1]
    if source_ext == EXTENSION:
        with open(source, 'rb') as fp:
            contents = fp.read()
        data = read_w3c(contents)
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


def read_w3c(raw_bytes: bytes) -> War3CameraInfo:
    reader = binary.ByteArrayParser(raw_bytes)
    data = War3CameraInfo(reader.read_int32())
    assert data.version == 0, "Unknown file version"
    num_cameras = reader.read_int32()
    for _ in range(num_cameras):
        data.cameras.append(War3Camera(
            target_x=reader.read_float(),
            target_y=reader.read_float(),
            z_offset=reader.read_float(),
            rotation=reader.read_float(),
            angle_of_attack=reader.read_float(),
            distance=reader.read_float(),
            roll=reader.read_float(),
            fov=reader.read_float(),
            far_z=reader.read_float(),
        ))
        unknown = reader.read_float()
        assert unknown == 100
        data.cameras[-1].name = reader.read_cstring()
    assert reader.index == len(raw_bytes)
    return data


def to_binary(data: War3CameraInfo) -> bytes:
    writer = binary.ByteArrayWriter()
    writer.write_int32(data.version)
    writer.write_int32(len(data.cameras))
    for camera in data.cameras:
        writer.write_float(camera.target_x)
        writer.write_float(camera.target_y)
        writer.write_float(camera.z_offset)
        writer.write_float(camera.rotation)
        writer.write_float(camera.angle_of_attack)
        writer.write_float(camera.distance)
        writer.write_float(camera.roll)
        writer.write_float(camera.fov)
        writer.write_float(camera.far_z)
        writer.write_float(100.0)
        writer.write_cstring(camera.name)
    return writer.as_bytes()


def as_text(data: War3CameraInfo) -> str:
    data_dict = asdict(data)
    return savetext.to_toml(
        data_dict,
        ("Warcraft 3 Camera file (.w3c)", "See w3c.py for type definitions",)
    )


def from_text(text: str) -> War3CameraInfo:
    result = tomllib.loads(text)
    result['cameras'] = [War3Camera(**region) for region in result.pop('cameras')]
    return War3CameraInfo(**result)


if __name__ == '__main__':
    from work import manifest
    filenames = [f'work/{x}/war3map.w3c' for x in manifest.all_directories]
    os.makedirs('scratch/w3c', exist_ok=True)
    for filename in filenames:
        print(filename)
        map_name = os.path.basename(os.path.dirname(filename))
        with open(filename, 'rb') as fp2:
            raw_data = fp2.read()
        data = read_w3c(raw_data)
        text = as_text(data)
        with open(f'scratch/w3c/w3c_{map_name}.toml', 'w') as fp:
            print(text, file=fp)
        retrieved_data = from_text(text)
        round_tripped = to_binary(retrieved_data)
        assert round_tripped == raw_data
    print('done')
