"""
Utilities for working with .w3o (game object) files
This also handles the different subtypes:
* .w3u (units)
* .w3t (items)
* .w3b (destructibles)
* .w3d (doodads)
* .w3a (abilities)
* .w3h (buffs)
* .w3q (upgrades)
"""
from typing import *
import enum
from mapfile.util import savetext
import dataclasses
from dataclasses import dataclass

from mapfile import binary

EXTENSION = '.w3o'


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

    @staticmethod
    def _from_dict(data: dict) -> 'Modification':
        args = data.copy()
        args['data_type'] = DataType[args['data_type']]
        return Modification(**args)

@dataclass
class Entity:
    parent_id: str
    entity_id: str
    modifications: list[Modification] = dataclasses.field(default_factory=lambda: [])

    @staticmethod
    def _from_dict(data: dict) -> 'Entity':
        return Entity(
            data['parent_id'],
            data['entity_id'],
            [Modification._from_dict(x) for x in data['modifications']]
        )

@dataclass
class EntityTable:
    entities: list[Entity] = dataclasses.field(default_factory=lambda: [])

    @staticmethod
    def _from_dict(data: dict) -> 'EntityTable':
        return EntityTable([Entity._from_dict(x) for x in data['entities']])

@dataclass
class War3ObjectData:
    version: int
    has_levels: bool
    blizzard_objects: EntityTable
    map_objects: EntityTable

    @staticmethod
    def _from_dict(data: dict) -> 'War3ObjectData':
        return War3ObjectData(
            data['version'],
            data['has_levels'],
            EntityTable._from_dict(data['blizzard_objects']),
            EntityTable._from_dict(data['map_objects'])
        )


def _parse_entity_table(reader: binary.ByteArrayParser, has_levels: bool = False) -> EntityTable:
    table = EntityTable()
    num_entities = reader.read_int32()
    for _ in  range(num_entities):
        entity = Entity(
            reader.read_id(),
            reader.read_id(),
        )
        num_modifications = reader.read_int32()
        for _ in range(num_modifications):
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


def read_binary(raw_data: bytes, has_levels: bool = False) -> War3ObjectData:
    reader = binary.ByteArrayParser(raw_data)
    version = reader.read_int32()
    assert version == 1, f'Unknown .w3u version: {version}'
    blizzard_table = _parse_entity_table(reader, has_levels)
    map_table = _parse_entity_table(reader, has_levels)
    assert reader.index == len(reader.raw_bytes), 'Extra bytes remain'
    return War3ObjectData(version, has_levels, blizzard_table, map_table)


def to_binary(data: War3ObjectData) -> bytes:
    has_levels = data.has_levels
    writer = binary.ByteArrayWriter()
    writer.write_int32(data.version)
    for table in (data.blizzard_objects, data.map_objects):
        writer.write_int32(len(table.entities))
        for entity in table.entities:
            writer.write_id(entity.parent_id)
            writer.write_id(entity.entity_id)
            writer.write_int32(len(entity.modifications))
            for modification in entity.modifications:
                writer.write_id(modification.modification_id)
                writer.write_int32(modification.data_type)
                
                if has_levels:
                    writer.write_int32(modification.variation_level)
                    writer.write_int32(modification.table_column)
                if modification.data_type == DataType.Integer:
                    writer.write_int32(modification.value)
                elif modification.data_type == DataType.Float:
                    writer.write_float(modification.value)
                elif modification.data_type == DataType.Unreal:
                    writer.write_float(modification.value)
                elif modification.data_type == DataType.String:
                    writer.write_string(modification.value)
                elif modification.data_type == DataType.Bool:
                    writer.write_int32(modification.value)
                elif modification.data_type == DataType.Char:
                    writer.write_bytes(modification.value.encode('utf-8'))
                else:
                    assert False, f'Data type {modification.data_type} is unsupported'
                writer.write_id(modification.object_id)
    return writer.as_bytes()


class W3oTomlWriter(savetext.TomlWriter):
    def __init__(self) -> None:
        super().__init__()
        self.handlers = {
            'version': self._write_int,
            'blizzard_objects': self._write_dict,
            'entities': self._write_dict,
            'parent_id': self._write_id,
            'entity_id': self._write_id,
            'modifications': self._write_dict,
            'modification_id': self._write_id,
            'data_type': self._write_enum,
            'variation_level': self._write_int,
            'table_column': self._write_int,  # todo(mm): This can probably reference a column header with translate
            'value': self._write_stringify,
            'object_id': self._write_id,
        }
        self.short_arrays = {
            'map_objects.entities.modifications.value',
            'blizzard_objects.entities.modifications.value',
        }
    def write(self, data: War3ObjectData) -> str:
        self.lines.append("# Warcraft 3 Map Objects File (.w3o)")
        self.lines.append("# See w3o.py for type definitions")
        self.lines.append(f'version = {data.version}')
        self.lines.append(f'has_levels = {str(data.has_levels).lower()}')
        self.lines.append('')
        self._write_dict('blizzard_objects', dataclasses.asdict(data.blizzard_objects), 'blizzard_objects')
        self._write_dict('map_objects', dataclasses.asdict(data.map_objects), 'map_objects')
        result = '\n'.join(self.lines)
        self.lines.clear()
        return result


def as_text(data: War3ObjectData) -> str:
    return W3oTomlWriter().write(data)


def from_text(text: str) -> War3ObjectData:
    import tomllib
    result = tomllib.loads(text)
    return War3ObjectData._from_dict(result)


if __name__ == '__main__':
    from work import manifest
    filenames: list[tuple[str, bool]] = []
    filenames.extend([(f'work/{x}/war3map.w3u', False) for x in manifest.all_directories])
    filenames.extend([(f'work/{x}/war3map.w3t', False) for x in manifest.all_directories])
    filenames.extend([(f'work/{x}/war3map.w3b', False) for x in manifest.all_directories])
    filenames.extend([(f'work/{x}/war3map.w3d', False) for x in manifest.all_directories])
    filenames.extend([(f'work/{x}/war3map.w3a', True) for x in manifest.all_directories])
    filenames.extend([(f'work/{x}/war3map.w3h', False) for x in manifest.all_directories])
    filenames.extend([(f'work/{x}/war3map.w3q', True) for x in manifest.all_directories])
    import os
    os.makedirs('scratch/w3o', exist_ok=True)
    for filename, has_levels in filenames:
        if not os.path.exists(filename):
            # print(f'Warning: {filename} does not exist; skipping')
            continue
        print(f'Converting {filename}')
        map_name = os.path.basename(os.path.dirname(filename))
        with open(filename, 'rb') as fp2:
            raw_data = fp2.read()
        data = read_binary(raw_data, has_levels)
        text = as_text(data)
        ext = os.path.splitext(filename)[1].strip('.')
        with open(f'scratch/w3o/{ext}_{map_name}.toml', 'w') as fp:
            print(text, file=fp)
        retrieved_data = from_text(text)
        assert retrieved_data == data
        round_tripped = to_binary(retrieved_data)
        assert round_tripped == raw_data

    print('done')
