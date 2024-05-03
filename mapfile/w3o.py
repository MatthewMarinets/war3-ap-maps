"""
Utilities for working with .w3o (game object) files
This also handles the different subtypes:
* .w3u (units)
* .w3t (items)
* .w3b (destructibles)
* .w3d (doodads)
* .w3a (abilities)
* .w3h (buffs)
* .w3q (upgraades)
"""
from typing import *
import enum
from mapfile.util import savetext
import dataclasses
from dataclasses import dataclass

from mapfile import binary

class DataType(enum.IntEnum):
    Integer = 0
    Float = 1
    Unreal = 2
    String = 3
    Bool = 4
    Char = 5
    UnitList = 6
    ItemList = 7
    RegenType = 8
    AttackType = 9
    WeaponType = 10
    TargetType = 11
    MoveType = 12
    DefenseType = 13
    PathingTexture = 14
    UpgradeList = 15
    StringList = 16
    AbilityList = 17
    HeroAbilityList = 18
    MissileArt = 19
    AttributeType = 20
    AttackBits = 21

@dataclass
class Modification:
    modification_id: str
    data_type: DataType
    variation_level: int = 0
    table_column: int = 0
    value: str | int | float | list = 0
    object_id: int = 0

@dataclass
class Entity:
    parent_id: str
    entity_id: str
    num_modifications: int
    modifications: list[Modification] = dataclasses.field(default_factory=lambda: [])

@dataclass
class EntityTable:
    num_entities: int
    entities: list[Entity] = dataclasses.field(default_factory=lambda: [])

@dataclass
class War3ObjectData:
    version: int
    blizzard_objects: EntityTable
    map_objects: EntityTable

def _parse_entity_table(reader: binary.ByteArrayParser, has_levels: bool = False) -> EntityTable:
    table = EntityTable(reader.read_int32())
    for _ in  range(table.num_entities):
        entity = Entity(
            reader.read_id(),
            reader.read_id(),
            reader.read_int32(),
        )
        for _ in range(entity.num_modifications):
            modification = Modification(
                reader.read_id(),
                DataType(reader.read_int32()),
            )
            if has_levels:
                modification.variation_level = reader.read_int32()
                modification.table_column = reader.read_int32()
            if modification.data_type == DataType.Integer:
                modification.value = reader.read_int32()
            elif modification.data_type == DataType.Float:
                modification.value = reader.read_float()
            elif modification.data_type == DataType.Unreal:
                modification.value = reader.read_float()
            elif modification.data_type == DataType.String:
                modification.value = reader.read_cstring()
            elif modification.data_type == DataType.Bool:
                modification.value = reader.read_bool32()
            elif modification.data_type == DataType.Char:
                modification.value = reader.read_bytes(1).decode('utf-8')
            else:
                assert False, f'Data type {modification.data_type} is unsupported'
            modification.object_id = reader.read_id()
            # assert modification.object_id in (binary.NULL_ID, entity.entity_id, entity.parent_id)
            entity.modifications.append(modification)
        table.entities.append(entity)
    return table


def read_w3u(raw_data: bytes) -> War3ObjectData:
    reader = binary.ByteArrayParser(raw_data)
    version = reader.read_int32()
    assert version == 1, f'Unknown .w3u version: {version}'
    blizzard_table = _parse_entity_table(reader)
    map_table = _parse_entity_table(reader)
    assert reader.index == len(reader.raw_bytes), 'Extra bytes remain'
    return War3ObjectData(version, blizzard_table, map_table)

def as_text(data: War3ObjectData) -> str:
    dict_data = dataclasses.asdict(data)
    savetext.clean_data(dict_data)
    return savetext.to_toml(
        dict_data,
        ("Warcraft 3 Map Objects File (.w3o)", "See w3o.py for type definitions")
    )

def from_text(text: str) -> War3ObjectData:
    import tomllib
    result = tomllib.loads(text)
    # Todo(mm): Properly unpack types
    return War3ObjectData(**result)

if __name__ == '__main__':
    from work import manifest
    filenames = [f'work/{x}/war3map.w3u' for x in manifest.all_directories]
    # filenames += ['extract/test_dalaran_ruins/war3map.w3i']
    import os
    os.makedirs('scratch/w3o', exist_ok=True)
    for filename in filenames:
        if not os.path.exists(filename):
            print(f'Warning: {filename} does not exist; skipping')
            continue
        map_name = os.path.basename(os.path.dirname(filename))
        with open(filename, 'rb') as fp2:
            raw_data = fp2.read()
        data = read_w3u(raw_data)
        text = as_text(data)
        with open(f'scratch/w3o/w3u_{map_name}.toml', 'w') as fp:
            print(text, file=fp)
        retrived_data = from_text(text)
        # round_tripped = to_binary(retrived_data)
        # assert round_tripped == raw_data

    print('done')
