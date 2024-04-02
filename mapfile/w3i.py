"""
Utilities for working with .w3i (map information) files
"""
from typing import *
import enum
from mapfile.util import savetext
import dataclasses
from dataclasses import dataclass

from mapfile import binary

class W3iVersions(enum.IntEnum):
    ROC = 18
    # TFT_beta = 19
    TFT = 25

class MapFlags(enum.IntFlag):
    HIDE_MINIMAP            = 0x0001
    MODIFY_ALLY_PRIORITIES  = 0x0002
    MELEE_MAP               = 0x0004
    LARGE_MAP               = 0x0008
    VISIBLE_BLACK_MASK      = 0x0010
    FIXED_FORCES            = 0x0020
    CUSTOM_FORCES           = 0x0040
    CUSTOM_TECH_TREE        = 0x0080
    CUSTOM_ABILITIES        = 0x0100
    CUSTOM_UPGRADES         = 0x0200
    PROPERTIES_MENU_OPENED  = 0x0400
    WAVES_ON_CLIFFS         = 0x0800
    WAVES_ON_SHORES         = 0x1000
    USE_TERRAIN_FOG         = 0x2000
    REQUIRES_EXPANSION      = 0x4000  # Note(mm): The meaning of this flag is an educated guess
    USE_ITEM_CLASSIFICATION = 0x8000
    USE_WATER_TINTING       = 0x10000

class FactionController(enum.IntEnum):
    Human = 1
    Computer = 2
    Neutral = 3
    Rescuable = 4

class PlayerFaction(enum.IntEnum):
    Human = 1
    Orc = 2
    Undead = 3
    NightElf = 4
    Selectable = 5

class ForcesFlags(enum.IntFlag):
    Allied = 0x1
    AlliedVictory = 0x2
    # Note(mm): 0x4 seems unused?
    ShareVision = 0x8
    ShareUnitControl = 0x10
    FullShareUnitControl = 0x20

class UpgradeAvailability(enum.IntEnum):
    Unavailable = 0
    Available = 1
    Researched = 2

class RandomEntityType(enum.IntEnum):
    Unit = 0
    Building = 1
    Item = 2

@dataclass
class PlayerInfo:
    player_id: int
    player_type: FactionController
    player_faction: PlayerFaction
    fixed_start_position: bool
    name: str
    start_pos: tuple[float, float]
    ally_low_priorities_flags: int
    ally_high_priorities_flags: int

@dataclass(init=False, slots=True)
class ForceInfo:
    flags: ForcesFlags = ForcesFlags(0)
    player_mask_flags: int = 0
    name: str = ""
    def __init__(self, flags: int | ForcesFlags, player_mask_flags: int, name: str) -> None:
        if isinstance(flags, int):
            self.flags = ForcesFlags(flags)
        else:
            self.flags = flags
        self.player_mask_flags = player_mask_flags
        self.name = name

@dataclass
class UpgradeInfo:
    player_flags: int
    upgrade_id: str
    level: int
    availability: UpgradeAvailability

@dataclass
class TechnologyInfo:
    player_flags: int
    tech_id: str

@dataclass
class RandomEntity:
    probability_percent: int
    entity_id: list[str]

@dataclass
class RandomEntityGroup:
    group_id: int
    name: str
    num_positions: int
    position_type: list[RandomEntityType]
    num_entities: int
    entities: list[RandomEntity] = dataclasses.field(default_factory=[])

@dataclass
class RandomEntityInfo:
    num_groups: int
    groups: list[RandomEntityGroup] = dataclasses.field(default_factory=lambda x: [])

@dataclass
class RandomItemInfo:
    num_groups: int
    # Todo(mm): finish this

@dataclass
class War3MapInformation:
    version: Literal[W3iVersions.TFT, W3iVersions.ROC]
    map_revision: int
    editor_version: int
    map_name: str
    map_author: str
    map_description: str
    players_recommended: str
    camera_bounds: Tuple[float, float, float, float, float, float, float, float]
    map_padding_left: int
    map_padding_right: int
    map_padding_top: int
    map_padding_bottom: int
    map_playable_width: int
    map_playable_height: int
    flags: MapFlags
    tileset: bytes
    campaign_background: int = -1
    tft_loading_screen_model_path: str = ""
    map_loading_screen_text: str = ""
    map_loading_screen_title: str = ""
    map_loading_screen_subtitle: str = ""
    # Note(mm): For TFT, this seems to change with Map Options -> Game Data Set
    map_loading_screen_number: int = -1
    tft_prologue_screen_path: str = ""
    prologue_screen_text: str = ""
    prologue_screen_title: str = ""
    prologue_screen_subtitle: str = ""
    tft_uses_terrain_fog: int = 0
    tft_fog_start_z: float = 0.0
    tft_fog_end_z: float = 0.0
    tft_fog_density: float = 0.0
    tft_fog_red: int = 0
    tft_fog_green: int = 0
    tft_fog_blue: int = 0
    tft_fog_alpha: int = 0
    tft_weather: str = ""
    tft_custom_sound_environment: str = ""
    tft_custom_light_tileset: bytes = b'0'
    tft_water_tint_red: int = 0
    tft_water_tint_green: int = 0
    tft_water_tint_blue: int = 0
    tft_water_tint_alpha: int = 0
    num_players: int = 0
    players: list[PlayerInfo] = dataclasses.field(default_factory=lambda: [])
    num_forces: int = 0
    forces: list[ForceInfo] = dataclasses.field(default_factory=lambda: [])
    num_upgrades: int = 0
    upgrades: list[UpgradeInfo] = dataclasses.field(default_factory=lambda: [])
    num_technologies: int = 0
    technologies: list[TechnologyInfo] = dataclasses.field(default_factory=lambda: [])
    num_random_entities: int = 0
    random_entities: list[RandomEntityInfo] = dataclasses.field(default_factory=lambda: [])
    num_random_items: int = 0
    random_items: list[RandomItemInfo] = dataclasses.field(default_factory=lambda: [])


def read_w3i(raw_bytes: bytes) -> War3MapInformation:
    reader = binary.ByteArrayParser(raw_bytes)
    version = reader.read_int32()
    assert version in [v.value for v in W3iVersions]
    result = War3MapInformation(
        W3iVersions(version),
        map_revision=reader.read_int32(),
        editor_version=reader.read_int32(),
        map_name=reader.read_cstring(),
        map_author=reader.read_cstring(),
        map_description=reader.read_cstring(),
        players_recommended=reader.read_cstring(),
        camera_bounds=reader.read('=ffffffff'),  # type: ignore
        map_padding_left=reader.read_int32(),
        map_padding_right=reader.read_int32(),
        map_padding_top=reader.read_int32(),
        map_padding_bottom=reader.read_int32(),
        map_playable_width=reader.read_int32(),
        map_playable_height=reader.read_int32(),
        flags=MapFlags(reader.read_int32()),
        tileset=reader.read('=c')[0],
        campaign_background=reader.read_int32(),
    )
    if version == W3iVersions.TFT:
        result.tft_loading_screen_model_path = reader.read_cstring()
    result.map_loading_screen_text = reader.read_cstring()
    result.map_loading_screen_title = reader.read_cstring()
    result.map_loading_screen_subtitle = reader.read_cstring()
    result.map_loading_screen_number = reader.read_int32()
    if version == W3iVersions.TFT:
        result.tft_prologue_screen_path = reader.read_cstring()
    result.prologue_screen_text = reader.read_cstring()
    result.prologue_screen_title = reader.read_cstring()
    result.prologue_screen_subtitle = reader.read_cstring()
    if version == W3iVersions.TFT:
        result.tft_uses_terrain_fog = reader.read_u32()
        result.tft_fog_start_z = reader.read_float()
        result.tft_fog_end_z = reader.read_float()
        result.tft_fog_density = reader.read_float()
        result.tft_fog_red = reader.read_u8()
        result.tft_fog_green = reader.read_u8()
        result.tft_fog_blue = reader.read_u8()
        result.tft_fog_alpha = reader.read_u8()
        result.tft_weather = reader.read_id()
        result.tft_custom_sound_environment = reader.read_cstring()
        result.tft_custom_light_tileset = reader.read('=c')[0]
        result.tft_water_tint_red = reader.read_u8()
        result.tft_water_tint_green = reader.read_u8()
        result.tft_water_tint_blue = reader.read_u8()
        result.tft_water_tint_alpha = reader.read_u8()
    result.num_players = reader.read_int32()
    for _ in range(result.num_players):
        player = PlayerInfo(
            player_id=reader.read_int32(),
            player_type=FactionController(reader.read_int32()),
            player_faction=PlayerFaction(reader.read_int32()),
            fixed_start_position=reader.read_bool32(),
            name=reader.read_cstring(),
            start_pos=reader.read('=ff'),  # type: ignore
            ally_low_priorities_flags=reader.read_u32(),
            ally_high_priorities_flags=reader.read_u32(),
        )
        result.players.append(player)
    result.num_forces = reader.read_int32()
    for _ in range(result.num_forces):
        force = ForceInfo(
            flags=ForcesFlags(reader.read_u32()),
            player_mask_flags=reader.read_u32(),
            name=reader.read_cstring(),
        )
        result.forces.append(force)
    result.num_upgrades = reader.read_int32()
    for _ in range(result.num_upgrades):
        upgrade = UpgradeInfo(
            player_flags=reader.read_u32(),
            upgrade_id=reader.read_id(),
            level=reader.read_int32(),
            availability=UpgradeAvailability(reader.read_int32()),
        )
        result.upgrades.append(upgrade)
    result.num_technologies = reader.read_int32()
    for _ in range(result.num_technologies):
        technology = TechnologyInfo(
            player_flags=reader.read_u32(),
            tech_id=reader.read_id(),
        )
        result.technologies.append(technology)
    result.num_random_entities = reader.read_int32()
    for _ in range(result.num_random_entities):
        num_groups = reader.read_int32()
        random_entity = RandomEntityInfo(
            num_groups=num_groups,
        )
        for _ in range(num_groups):
            random_entity_group = RandomEntityGroup(
                reader.read_int32(),
                reader.read_cstring(),
                (num_positions := reader.read_int32()),
                [RandomEntityType(reader.read_int32()) for _ in range(num_positions)],
                reader.read_int32(),
            )
            for _ in range(random_entity_group.num_entities):
                random_entity_group.entities.append(RandomEntity(
                    reader.read_int32(),
                    [reader.read_id() for _ in range(num_positions)],
                ))
            random_entity.groups.append(random_entity_group)
        result.random_entities.append(random_entity)
    if version == W3iVersions.TFT:
        result.num_random_items = reader.read_int32()
        if result.num_random_items > 0:
            assert False, 'Random items detected; not implemented'
    assert reader.index == len(reader.raw_bytes), "Unknown bytes at end of w3i file"
    return result


def to_binary(data: War3MapInformation) -> bytes:
    writer = binary.ByteArrayWriter()
    writer.write_int32(data.version)
    writer.write_int32(data.map_revision)
    writer.write_int32(data.editor_version)
    writer.write_string(data.map_name)
    writer.write_string(data.map_author)
    writer.write_string(data.map_description)
    writer.write_string(data.players_recommended)
    assert len(data.camera_bounds) == 8
    for x in range(8):
        writer.write_float(data.camera_bounds[x])
    writer.write_int32(data.map_padding_left)
    writer.write_int32(data.map_padding_right)
    writer.write_int32(data.map_padding_top)
    writer.write_int32(data.map_padding_bottom)
    writer.write_int32(data.map_playable_width)
    writer.write_int32(data.map_playable_height)
    writer.write_u32(data.flags)
    writer.write_bytes(data.tileset)
    writer.write_int32(data.campaign_background)
    if data.version == W3iVersions.TFT:
        writer.write_string(data.tft_loading_screen_model_path)
    writer.write_string(data.map_loading_screen_text)
    writer.write_string(data.map_loading_screen_title)
    writer.write_string(data.map_loading_screen_subtitle)
    writer.write_int32(data.map_loading_screen_number)
    if data.version == W3iVersions.TFT:
        writer.write_string(data.tft_prologue_screen_path)
    writer.write_string(data.prologue_screen_text)
    writer.write_string(data.prologue_screen_title)
    writer.write_string(data.prologue_screen_subtitle)
    if data.version == W3iVersions.TFT:
        writer.write_int32(data.tft_uses_terrain_fog)
        writer.write_float(data.tft_fog_start_z)
        writer.write_float(data.tft_fog_end_z)
        writer.write_float(data.tft_fog_density)
        writer.write_u8(data.tft_fog_red)
        writer.write_u8(data.tft_fog_green)
        writer.write_u8(data.tft_fog_blue)
        writer.write_u8(data.tft_fog_alpha)
        writer.write_id(data.tft_weather)
        writer.write_string(data.tft_custom_sound_environment)
        writer.write_bytes(data.tft_custom_light_tileset)
        writer.write_u8(data.tft_water_tint_red)
        writer.write_u8(data.tft_water_tint_green)
        writer.write_u8(data.tft_water_tint_blue)
        writer.write_u8(data.tft_water_tint_alpha)
    writer.write_int32(data.num_players)
    for x in range(data.num_players):
        writer.write_int32(data.players[x].player_id)
        writer.write_int32(data.players[x].player_type)
        writer.write_int32(data.players[x].player_faction)
        writer.write_int32(data.players[x].fixed_start_position)
        writer.write_string(data.players[x].name)
        writer.write_float(data.players[x].start_pos[0])
        writer.write_float(data.players[x].start_pos[1])
        writer.write_u32(data.players[x].ally_low_priorities_flags)
        writer.write_u32(data.players[x].ally_high_priorities_flags)
    writer.write_int32(data.num_forces)
    for x in range(data.num_forces):
        writer.write_u32(data.forces[x].flags)
        writer.write_u32(data.forces[x].player_mask_flags)
        writer.write_string(data.forces[x].name)
    writer.write_int32(data.num_upgrades)
    for x in range(data.num_upgrades):
        writer.write_u32(data.upgrades[x].player_flags)
        writer.write_id(data.upgrades[x].upgrade_id)
        writer.write_int32(data.upgrades[x].level)
        writer.write_int32(data.upgrades[x].availability)
    writer.write_int32(data.num_technologies)
    for x in range(data.num_technologies):
        writer.write_u32(data.technologies[x].player_flags)
        writer.write_id(data.technologies[x].tech_id)
    writer.write_int32(data.num_random_entities)
    for x in range(data.num_random_entities):
        writer.write_int32(data.random_entities[x].num_groups)
        for group_index in range(data.random_entities[x].num_groups):
            writer.write_int32(data.random_entities[x].groups[group_index].group_id)
            writer.write_string(data.random_entities[x].groups[group_index].name)
            writer.write_int32(data.random_entities[x].groups[group_index].num_positions)
            for position_index in range(data.random_entities[x].groups[group_index].num_positions):
                writer.write_int32(data.random_entities[x].groups[group_index].position_type[position_index])
            writer.write_int32(data.random_entities[x].groups[group_index].num_entities)
            for entity_index in range(data.random_entities[x].groups[group_index].num_entities):
                writer.write_int32(data.random_entities[x].groups[group_index].entities[entity_index].probability_percent)
                for position_index in range(data.random_entities[x].groups[group_index].num_positions):
                    writer.write_id(data.random_entities[x].groups[group_index].entities[entity_index].entity_id[position_index])
    if data.version == W3iVersions.TFT:
        writer.write_int32(data.num_random_items)
        # Todo(mm): Handle random items
    return writer.as_bytes()


def as_text(data: War3MapInformation) -> str:
    dict_data = dataclasses.asdict(data)
    savetext.clean_data(dict_data)
    return savetext.to_toml(
        dict_data,
        ("Warcraft 3 Map Info File(.w3i)", "See w3i.py for type definitions")
    )


def _unpack_types(data: dict[str, Any]) -> None:
    for key in data:
        value = data[key]
        if isinstance(value, dict) and 'type' in value:
            value_type = value['type']
            value_literal = value['value']
            if value_type == 'bytes':
                data[key] = bytes(value_literal, encoding='utf-8').replace(b'0', b'\0')
            elif value_type == W3iVersions.__name__:
                data[key] = W3iVersions[value_literal]
            elif value_type == FactionController.__name__:
                data[key] = FactionController[value_literal]
            elif value_type == PlayerFaction.__name__:
                data[key] = PlayerFaction[value_literal]
            elif value_type == UpgradeAvailability.__name__:
                data[key] = UpgradeAvailability[value_literal]
            elif value_type == MapFlags.__name__:
                data[key] = savetext.parse_enum_flags(value_literal, MapFlags)
            elif value_type == ForcesFlags.__name__:
                data[key] = savetext.parse_enum_flags(value_literal, ForcesFlags)
            else:
                assert False, f'Unknown custom type {value_type}'
        elif isinstance(value, dict):
            _unpack_types(value)
        elif isinstance(value, list):
            custom_type = False
            for val in value:
                if isinstance(val, dict):
                    _unpack_types(val)
                    custom_type = True
            if key == 'players':
                data[key] = [PlayerInfo(**val) for val in value]
            elif key == 'forces':
                data[key] = [ForceInfo(**val) for val in value]
            elif key == 'upgrades':
                data[key] = [UpgradeInfo(**val) for val in value]
            elif key == 'technologies':
                data[key] = [TechnologyInfo(**val) for val in value]
            else:
                assert not custom_type, f'Unknown list type for key {key}'

def from_text(text: str) -> War3MapInformation:
    import tomllib
    result = tomllib.loads(text)
    _unpack_types(result)
    result['num_players'] = len(result['players'])
    result['num_forces'] = len(result['forces'])
    result['num_upgrades'] = len(result['upgrades'])
    result['num_technologies'] = len(result['technologies'])
    result['num_random_entities'] = len(result['random_entities'])
    return War3MapInformation(**result)


if __name__ == '__main__':
    from work import manifest
    filenames = [f'work/{x}/war3map.w3i' for x in manifest.all_directories]
    # filenames += ['extract/test_dalaran_ruins/war3map.w3i']
    import os
    os.makedirs('scratch/w3i', exist_ok=True)
    for filename in filenames:
        map_name = os.path.basename(os.path.dirname(filename))
        with open(filename, 'rb') as fp2:
            raw_data = fp2.read()
        data = read_w3i(raw_data)
        text = as_text(data)
        with open(f'scratch/w3i/w3i_{map_name}.toml', 'w') as fp:
            print(text, file=fp)
        retrived_data = from_text(text)
        round_tripped = to_binary(retrived_data)
        assert round_tripped == raw_data


    print('done')



