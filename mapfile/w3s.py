"""
Utilities for working with .w3s (sound definition) files
"""

from dataclasses import dataclass, field, asdict
import enum
import tomllib
import os

from mapfile import binary
from mapfile.util import savetext


EXTENSION = '.w3s'
UNSET_FLOAT = 4294967296.0


class SoundFlags(enum.IntFlag):
    NONE = 0
    Looping = 1 << 0
    Three_D = 1 << 1
    Stop_Outside_Range = 1 << 2
    Music = 1 << 3


class SoundChannel(enum.IntEnum):
    Default = -1
    General = 0
    Unit_Selection = 1
    Unit_Ack = 2
    Unit_Movement = 3
    Unit_Ready = 4
    Combat = 5
    Error = 6
    Music = 7
    UI = 8
    Looping_Movement = 9
    Looping_Ambient = 10
    Animation = 11
    Construction = 12
    Birth = 13
    Fire = 14


@dataclass
class War3Sound:
    name: str = ''
    file: str = ''
    effects: str = ''
    flags: SoundFlags = SoundFlags.NONE
    fade_in: int = 0
    fade_out: int = 0
    volume: int = -1
    pitch: float = UNSET_FLOAT
    channel: SoundChannel = SoundChannel.General
    min_distance: float = UNSET_FLOAT
    max_distance: float = UNSET_FLOAT
    distance_cutoff: float = UNSET_FLOAT
    min_distance: float = UNSET_FLOAT



@dataclass
class War3SoundInfo:
    version: int = 1
    sounds: list[War3Sound] = field(default_factory=list)


def read_binary(raw_bytes: bytes) -> War3SoundInfo:
    reader = binary.ByteArrayParser(raw_bytes)
    data = War3SoundInfo(reader.read_int32())
    assert data.version == 1, "Unknown file version"
    num_sounds = reader.read_int32()
    for _ in range(num_sounds):
        sound = War3Sound(
            name=reader.read_cstring(),
            file=reader.read_cstring(),
            effects=reader.read_cstring(),
            flags=SoundFlags(reader.read_int32()),
            fade_in=reader.read_int32(),
            fade_out=reader.read_int32(),
            volume=reader.read_int32(),
            pitch=reader.read_float(),
        )
        if sound.flags == SoundFlags.Music:
            unset_float = 0.0
            unset_int = 0
        else:
            unset_float = UNSET_FLOAT
            unset_int = -1
        assert reader.read_float() == unset_float
        assert reader.read_int32() == unset_int
        sound.channel = SoundChannel(reader.read_int32())
        sound.min_distance = reader.read_float()
        sound.max_distance = reader.read_float()
        sound.distance_cutoff = reader.read_float()
        assert reader.read_float() == unset_float
        assert reader.read_float() == unset_float
        assert reader.read_int32() == unset_int
        assert reader.read_float() == unset_float
        assert reader.read_float() == unset_float
        assert reader.read_float() == unset_float
        data.sounds.append(sound)
    assert reader.index == len(raw_bytes)
    return data


def to_binary(data: War3SoundInfo) -> bytes:
    writer = binary.ByteArrayWriter()
    writer.write_int32(data.version)
    writer.write_int32(len(data.sounds))
    for sound in data.sounds:
        if sound.flags == SoundFlags.Music:
            unset_float = 0.0
            unset_int = 0
        else:
            unset_float = UNSET_FLOAT
            unset_int = -1
        writer.write_cstring(sound.name)
        writer.write_cstring(sound.file)
        writer.write_cstring(sound.effects)
        writer.write_int32(sound.flags.value)
        writer.write_int32(sound.fade_in)
        writer.write_int32(sound.fade_out)
        writer.write_int32(sound.volume)
        writer.write_float(sound.pitch)
        writer.write_float(unset_float)
        writer.write_int32(unset_int)
        writer.write_int32(sound.channel.value)
        writer.write_float(sound.min_distance)
        writer.write_float(sound.max_distance)
        writer.write_float(sound.distance_cutoff)
        writer.write_float(unset_float)
        writer.write_float(unset_float)
        writer.write_int32(unset_int)
        writer.write_float(unset_float)
        writer.write_float(unset_float)
        writer.write_float(unset_float)
    return writer.as_bytes()


def as_text(data: War3SoundInfo) -> str:
    data_dict = asdict(data)
    return savetext.to_toml(
        data_dict,
        ("Warcraft 3 Sound file (.w3s)", "See w3s.py for type definitions",)
    )


def _parse_sound(sound: dict) -> War3Sound:
    sound['flags'] = savetext.parse_enum_flags(sound['flags'], SoundFlags)
    sound['channel'] = savetext.parse_enum_flags(sound['channel'], SoundChannel)
    return War3Sound(**sound)


def from_text(text: str) -> War3SoundInfo:
    result = tomllib.loads(text)
    result['sounds'] = [_parse_sound(sound) for sound in result.pop('sounds')]
    return War3SoundInfo(**result)


if __name__ == '__main__':
    from work import manifest
    filenames = [f'work/{x}/war3map.w3s' for x in manifest.all_directories]
    os.makedirs('scratch/w3s', exist_ok=True)
    for filename in filenames:
        if not os.path.isfile(filename):
            continue
        print(filename)
        map_name = os.path.basename(os.path.dirname(filename))
        with open(filename, 'rb') as fp2:
            raw_data = fp2.read()
        data = read_binary(raw_data)
        text = as_text(data)
        with open(f'scratch/w3s/w3s_{map_name}.toml', 'w') as fp:
            print(text, file=fp)
        retrieved_data = from_text(text)
        round_tripped = to_binary(retrieved_data)
        assert round_tripped == raw_data
    print('done')
