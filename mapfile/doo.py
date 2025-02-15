"""
Utilities for working with .doo (doodad / unit placement) files
"""

from dataclasses import dataclass, field, asdict
import enum
import tomllib
import os

from mapfile import binary
from mapfile.util import savetext


EXTENSION = '.doo'


class War3PlacementVersion:
    ROC = 7
    TFT = 8


class EntityFlag(enum.IntFlag):
    disabled = 0
    PATHABLE = 1 << 0
    ENABLED = 1 << 1
    NOT_TRIGGERED = 1 << 2  # Note(mm): Not sure of this one, I'm guessing at the meaning from investigating Hu 5


@dataclass
class DropItem:
    item_id: str = ''
    chance_percent: int = 0


@dataclass
class InventoryItem:
    slot: int = 0
    item_id: str = ''


@dataclass
class RandomClassInfo:
    random_type: str = 'class'
    level: int = 1  # s24
    item_class: int = 0  # u8


@dataclass
class AbilityModification:
    abil_id: str
    autocast_active: bool = False
    abil_level: int = 1


@dataclass
class DoodadEntity:
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
class UnitEntity:
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
    player_owner: int = 0
    hit_points: int = -1
    mana_points: int = -1
    random_item_table_id: int = -1
    item_drops: list[list[DropItem]] = field(default_factory=list)
    goldmine_gold_amount: int = 12500
    target_acquisition: float = -1
    hero_level: int = 1
    hero_strength: int = 0      # TFT only
    hero_agility: int = 0       # TFT only
    hero_intelligence: int = 0  # TFT only
    inventory_items: list[InventoryItem] = field(default_factory=list)
    modified_abilities: list[AbilityModification] = field(default_factory=list)
    random_unit_info: RandomClassInfo | int = -1  # todo(mm): random unit tables
    custom_colour: int = -1
    waygate_destination: int = -1
    entity_id: int = -1


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
    doodads: list[DoodadEntity] = field(default_factory=list)
    units: list[UnitEntity] = field(default_factory=list)
    immobile_doodads: list[ImmobileEntity] = field(default_factory=list)


def convert(source: str, target: str) -> None:
    source_ext = os.path.splitext(source)[1]
    if source_ext == EXTENSION:
        with open(source, 'rb') as fp:
            contents = fp.read()
        data = read_binary(contents, os.path.basename(source) == 'war3mapUnits.doo' )
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


def _read_item_drop_sets(reader: binary.ByteArrayParser, ) -> list[DropItem]:
    num_items_in_set = reader.read_int32()
    item_set: list[DropItem] = []
    for _ in range(num_items_in_set):
        item_set.append(DropItem(
            item_id=reader.read_id(),
            chance_percent=reader.read_int32(),
        ))
        assert item_set[-1].chance_percent > 0, 'Drop chance percent must be >0'
        assert item_set[-1].chance_percent <= 100, 'Drop chance percent must be <=100'
    return item_set


def read_binary(raw_bytes: bytes, describes_units: bool = False) -> War3PlacementInfo:
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
    if describes_units:
        num_units = reader.read_int32()
        num_doodads = 0
    else:
        num_units = 0
        num_doodads = reader.read_int32()
    for _ in range(num_doodads):
        doodad = DoodadEntity(
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
            doodad.random_table_id = reader.read_int32()
            num_item_drop_sets = reader.read_int32()
            assert doodad.random_table_id == -1 or num_item_drop_sets == 0
            for _ in range(num_item_drop_sets):
                doodad.item_drops.append(_read_item_drop_sets(reader))
        doodad.entity_id = reader.read_int32()
        result.doodads.append(doodad)
    for _ in range(num_units):
        unit = UnitEntity(
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
            player_owner=reader.read_int32(),
        )
        mystery0 = reader.read_u16()
        assert mystery0 == 0
        unit.hit_points = reader.read_int32()
        unit.mana_points = reader.read_int32()
        if result.version == War3PlacementVersion.TFT:
            unit.random_item_table_id = reader.read_int32()
        num_item_drop_sets = reader.read_int32()
        assert unit.random_item_table_id == -1 or num_item_drop_sets == 0
        for _ in range(num_item_drop_sets):
            unit.item_drops.append(_read_item_drop_sets(reader))
        unit.goldmine_gold_amount = reader.read_int32()
        unit.target_acquisition = reader.read_float()
        unit.hero_level = reader.read_int32()
        if result.version == War3PlacementVersion.TFT:
            unit.hero_strength = reader.read_int32()
            unit.hero_agility = reader.read_int32()
            unit.hero_intelligence = reader.read_int32()
        num_inventory_items = reader.read_int32()
        for _ in range(num_inventory_items):
            unit.inventory_items.append(InventoryItem(slot=reader.read_int32(), item_id=reader.read_id()))
        num_modified_abilities = reader.read_int32()
        for _ in range(num_modified_abilities):
            unit.modified_abilities.append(AbilityModification(
                abil_id=reader.read_id(),
                autocast_active=reader.read_bool32(),
                abil_level=reader.read_int32(),
            ))
        random_unit_info_type = reader.read_int32()
        # todo(mm): Support random unit groups from w3i table (1) and from custom table (2)
        assert random_unit_info_type in (0, -1), "Random unit groups are not supported"
        if random_unit_info_type == 0:
            unit.random_unit_info = RandomClassInfo(
                level=reader.read_s16(),
                item_class=reader.read_u16(),
            )
        unit.custom_colour = reader.read_int32()
        unit.waygate_destination = reader.read_int32()
        unit.entity_id = reader.read_int32()
        result.units.append(unit)

    if not describes_units:
        mystery = reader.read_int32()
        assert mystery == 0
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
    if data.describes_units:
        assert not data.doodads, "Doodad data contained in a unit .doo file"
        assert not data.immobile_doodads, "Immobile doodad data contained in a unit .doo file"
        writer.write_int32(len(data.units))
    else:
        assert not data.units, "Unit data contained in a doodad .doo file"
        writer.write_int32(len(data.doodads))
    for unit in data.units:
        writer.write_id(unit.type_id)
        writer.write_int32(unit.variation)
        writer.write_float(unit.x)
        writer.write_float(unit.y)
        writer.write_float(unit.z)
        writer.write_float(unit.facing)
        writer.write_float(unit.scale_x)
        writer.write_float(unit.scale_y)
        writer.write_float(unit.scale_z)
        writer.write_u8(unit.flags.value)
        writer.write_int32(unit.player_owner)
        writer.write_u16(0)
        writer.write_int32(unit.hit_points)
        writer.write_int32(unit.mana_points)
        if data.version == War3PlacementVersion.TFT:
            assert unit.random_item_table_id == -1 or len(unit.item_drops) == 0, "Unit drop tables can only come from one source"
            writer.write_int32(unit.random_item_table_id)
        writer.write_int32(len(unit.item_drops))
        for item_drop_set in unit.item_drops:
            writer.write_int32(len(item_drop_set))
            for item_drop in item_drop_set:
                writer.write_id(item_drop.item_id)
                writer.write_int32(item_drop.chance_percent)
        writer.write_int32(unit.goldmine_gold_amount)
        writer.write_float(unit.target_acquisition)
        writer.write_int32(unit.hero_level)
        if data.version == War3PlacementVersion.TFT:
            writer.write_int32(unit.hero_strength)
            writer.write_int32(unit.hero_agility)
            writer.write_int32(unit.hero_intelligence)
        writer.write_int32(len(unit.inventory_items))
        for inventory_item in unit.inventory_items:
            writer.write_int32(inventory_item.slot)
            writer.write_id(inventory_item.item_id)
        writer.write_int32(len(unit.modified_abilities))
        for modified_ability in unit.modified_abilities:
            writer.write_id(modified_ability.abil_id)
            writer.write_int32(modified_ability.autocast_active)
            writer.write_int32(modified_ability.abil_level)
        if isinstance(unit.random_unit_info, int):
            writer.write_int32(unit.random_unit_info)
        else:
            assert isinstance(unit.random_unit_info, RandomClassInfo)
            writer.write_int32(0)
            writer.write_s16(unit.random_unit_info.level)
            writer.write_u16(unit.random_unit_info.item_class)
        writer.write_int32(unit.custom_colour)
        writer.write_int32(unit.waygate_destination)
        writer.write_int32(unit.entity_id)
    for entity in data.doodads:
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
    if not data.describes_units:
        writer.write_int32(0)
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


def _parse_entity(entity: dict) -> DoodadEntity:
    flags = savetext.parse_enum_flags(entity.pop('flags'), EntityFlag)
    item_drops_dict = entity.pop('item_drops')
    item_drops = [
        [DropItem(**item_drop) for item_drop in item_drop_set]
        for item_drop_set in item_drops_dict
    ]
    return DoodadEntity(**entity, flags=flags, item_drops=item_drops)


def _parse_immobile_doodad(entity: dict) -> ImmobileEntity:
    return ImmobileEntity(**entity)


def _parse_unit(entity: dict) -> UnitEntity:
    entity['flags'] = savetext.parse_enum_flags(entity['flags'], EntityFlag)
    item_drops_dict = entity.pop('item_drops')
    entity['item_drops'] = [
        [DropItem(**item_drop) for item_drop in item_drop_set]
        for item_drop_set in item_drops_dict
    ]
    inventory_items_dict = entity.pop('inventory_items')
    entity['inventory_items'] = [
        InventoryItem(**inventory_item)
        for inventory_item in inventory_items_dict
    ]
    modified_abilities_dict = entity.pop('modified_abilities')
    entity['modified_abilities'] = [
        AbilityModification(**modified_ability)
        for modified_ability in modified_abilities_dict
    ]
    if entity['random_unit_info'] != -1:
        assert entity['random_unit_info']['random_type'] == 'class'
        entity['random_unit_info'] = RandomClassInfo(**entity['random_unit_info'])
    return UnitEntity(**entity)


def from_text(text: str) -> War3PlacementInfo:
    result = tomllib.loads(text)
    doodads = [_parse_entity(d) for d in result.pop('doodads')]
    immobile_doodads = [_parse_immobile_doodad(d) for d in result.pop('immobile_doodads')]
    units = [_parse_unit(d) for d in result.pop('units')]
    return War3PlacementInfo(**result, doodads=doodads, immobile_doodads=immobile_doodads, units=units)


if __name__ == '__main__':
    from work import manifest
    # filenames = [f'work/{x}/war3map.doo' for x in manifest.all_directories]
    filenames = [f'work/{x}/war3mapUnits.doo' for x in manifest.all_directories]
    describes_units = True
    # os.makedirs('scratch/doo', exist_ok=True)
    os.makedirs('scratch/units', exist_ok=True)
    for filename in filenames:
        print(filename)
        map_name = os.path.basename(os.path.dirname(filename))
        with open(filename, 'rb') as fp2:
            raw_data = fp2.read()
        data = read_binary(raw_data, describes_units)
        text = as_text(data)
        # with open(f'scratch/doo/doo_{map_name}.toml', 'w') as fp:
        with open(f'scratch/units/doounits_{map_name}.toml', 'w') as fp:
            print(text, file=fp)
        retrieved_data = from_text(text)
        round_tripped = to_binary(retrieved_data)
        assert round_tripped == raw_data
    print('done')
