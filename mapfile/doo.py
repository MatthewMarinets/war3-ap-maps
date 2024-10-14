"""
Utilities for working with .doo (doodad / unit placement) files
"""

from dataclasses import dataclass, field, asdict
import enum
import tomllib

from mapfile import binary
from mapfile.util import savetext


class War3PlacementVersion:
    ROC = 7
    TFT = 8


class EntityFlag(enum.IntFlag):
    disabled = 0
    VISIBLE = 1 << 0
    SOLID = 1 << 1
    NOT_TRIGGERED = 1 << 2  # Note(mm): Not sure of this one, I'm guessing at the meaning from invetigating Hu 5


@dataclass
class DropItem:
    item_id: str = ''
    chance_percent: int = 0


@dataclass
class DooEntity:
    type_id: str = ''
    variation: int = 0
    x: float = 0.0
    y: float = 0.0
    z: float = 0.0
    facing: float = 0.0
    scale_x: float = 0.0
    scale_y: float = 0.0
    scale_z: float = 0.0
    flags: EntityFlag = EntityFlag.disabled  # u8
    life_percent: int = 0  # s8
    random_table_id: int = -1
    entity_id: int = 0
    item_drops: list[list[DropItem]] = field(default_factory=list)


@dataclass
class ImmobileEntity:
    doodad_id: str = ''
    z: int = 0
    y: int = 0
    x: int = 0


@dataclass
class War3PlacementInfo:
    version: int = War3PlacementVersion.TFT
    sub_version: int = 0
    describes_units: bool = False
    entities: list[DooEntity] = field(default_factory=list)
    immobile_doodads: list[ImmobileEntity] = field(default_factory=list)


def read_doo(raw_bytes: bytes, describes_units: bool = False) -> War3PlacementInfo:
    reader = binary.ByteArrayParser(raw_bytes)
    result = War3PlacementInfo()
    result.describes_units = describes_units
    magic = reader.read_id()
    assert magic == 'W3do', 'Not a valid .doo file; missing magic number header'
    result.version = reader.read_int32()
    result.sub_version = reader.read_int32()
    assert (result.version, result.sub_version) in (
        (War3PlacementVersion.ROC, 9),
        (War3PlacementVersion.TFT, 11),
    )
    num_entities = reader.read_int32()
    for _ in range(num_entities):
        entity = DooEntity(
            type_id=reader.read_id(),
            variation=reader.read_int32(),
            x=reader.read_float(),
            y=reader.read_float(),
            z=reader.read_float(),
            facing=reader.read_float(),
            scale_x=reader.read_float(),
            scale_y=reader.read_float(),
            scale_z=reader.read_float(),
            flags=EntityFlag(reader.read_u8()),
            life_percent=reader.read_s8(),
        )
        if result.version == War3PlacementVersion.TFT:
            entity.random_table_id = reader.read_int32()
            num_item_drop_sets = reader.read_int32()
            assert entity.random_table_id == -1 or num_item_drop_sets == 0
            for _ in range(num_item_drop_sets):
                num_items_in_set = reader.read_int32()
                item_set: list[DropItem] = []
                for _ in range(num_items_in_set):
                    item_set.append(DropItem(
                        item_id=reader.read_id(),
                        chance_percent=reader.read_int32(),
                    ))
                    assert item_set[-1].chance_percent > 0, 'Drop chance percent must be >0'
                    assert item_set[-1].chance_percent <= 100, 'Drop chance percent must be <=100'
                entity.item_drops.append(item_set)
        entity.entity_id = reader.read_int32()
        result.entities.append(entity)
    # Note(mm): Always 0 for doodads; possibly used for unit placement?
    mystery = reader.read_int32()
    assert mystery == 0
    if not describes_units:
        num_immobile_doodads = reader.read_int32()
        for _ in range(num_immobile_doodads):
            result.immobile_doodads.append(ImmobileEntity(
                doodad_id=reader.read_id(),
                z=reader.read_int32(),
                y=reader.read_int32(),
                x=reader.read_int32(),
            ))
    assert reader.index == len(raw_bytes)
    return result


def to_binary(data: War3PlacementInfo) -> bytes:
    writer = binary.ByteArrayWriter()
    writer.write_id('W3do')
    writer.write_int32(data.version)
    writer.write_int32(data.sub_version)
    writer.write_int32(len(data.entities))
    for entity in data.entities:
        writer.write_id(entity.type_id)
        writer.write_int32(entity.variation)
        writer.write_float(entity.x)
        writer.write_float(entity.y)
        writer.write_float(entity.z)
        writer.write_float(entity.facing)
        writer.write_float(entity.scale_x)
        writer.write_float(entity.scale_y)
        writer.write_float(entity.scale_z)
        writer.write_u8(entity.flags.value)
        writer.write_s8(entity.life_percent)
        if data.version == War3PlacementVersion.TFT:
            writer.write_int32(entity.random_table_id)
            writer.write_int32(len(entity.item_drops))
            for item_drop_set in entity.item_drops:
                writer.write_int32(len(item_drop_set))
                for item_drop in item_drop_set:
                    writer.write_id(item_drop.item_id)
                    writer.write_int32(item_drop.chance_percent)
        writer.write_int32(entity.entity_id)
    # Note(mm): Always 0 for doodads; possibly used for unit placement?
    writer.write_int32(0)
    if not data.describes_units:
        writer.write_int32(len(data.immobile_doodads))
        for immobile_doodad in data.immobile_doodads:
            writer.write_id(immobile_doodad.doodad_id)
            writer.write_int32(immobile_doodad.z)
            writer.write_int32(immobile_doodad.y)
            writer.write_int32(immobile_doodad.x)
    return writer.as_bytes()


def as_text(data: War3PlacementInfo) -> str:
    data_dict = asdict(data)
    return savetext.to_toml(
        data_dict,
        ("Warcraft 3 Doodad placement file (.doo)", "See doo.py for type definitions",)
    )


def _parse_entity(entity: dict) -> DooEntity:
    flags = savetext.parse_enum_flags(entity.pop('flags')['value'], EntityFlag)
    item_drops_dict = entity.pop('item_drops')
    item_drops = [
        [DropItem(**item_drop) for item_drop in item_drop_set]
        for item_drop_set in item_drops_dict
    ]
    return DooEntity(**entity, flags=flags, item_drops=item_drops)


def _parse_immobile_doodad(entity: dict) -> ImmobileEntity:
    return ImmobileEntity(**entity)


def from_text(text: str) -> War3PlacementInfo:
    result = tomllib.loads(text)
    entities = [_parse_entity(d) for d in result.pop('entities')]
    immobile_doodads = [_parse_immobile_doodad(d) for d in result.pop('immobile_doodads')]
    return War3PlacementInfo(**result, entities=entities, immobile_doodads=immobile_doodads)


if __name__ == '__main__':
    from work import manifest
    filenames = [f'work/{x}/war3map.doo' for x in manifest.all_directories]
    # filenames = [f'work/Human05/war3map.doo']
    # filenames += ['extract/test_dalaran_ruins/war3map.w3i']
    import os
    os.makedirs('scratch/doo', exist_ok=True)
    for filename in filenames:
        map_name = os.path.basename(os.path.dirname(filename))
        with open(filename, 'rb') as fp2:
            raw_data = fp2.read()
        data = read_doo(raw_data)
        print(filename)
        text = as_text(data)
        with open(f'scratch/doo/doo_{map_name}.toml', 'w') as fp:
            print(text, file=fp)
        retrieved_data = from_text(text)
        round_tripped = to_binary(retrieved_data)
        assert round_tripped == raw_data
    print('done')
