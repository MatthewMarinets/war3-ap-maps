"""
Utilities for handling .mdx (model) files
"""

from dataclasses import dataclass, field, fields, is_dataclass
from typing import Generic, TypeVar, Callable, Any, Union
from types import GenericAlias
import tomllib
from logging import getLogger
import enum
from . import binary

# ##### Sources #####
# * This thread from the Hive: https://www.hiveworkshop.com/threads/mdx-specifications.240487/
# * wowdev.wiki has a page on the format: https://wowdev.wiki/MDX
# * ReterasModelStudio:
#   https://github.com/Retera/ReterasModelStudio
#   Specifically craft3data/src/com/hiveworkshop/wc3/mdx/MdxModel.java
#   * This seems to encode some extra data in some of the blocks


logger = getLogger("mdx")

PATH_LENGTH = 260

class MdxVersions:
    Basegame = 800
    Reforged = 900
    Reforged_2 = 1000


@dataclass
class Extent:
    bounds_radius: float = 0.0
    minimum: tuple[float, float, float] = (0.0, 0.0, 0.0)
    maximum: tuple[float, float, float] = (0.0, 0.0, 0.0)


T = TypeVar('T')
class Track(Generic[T]):
    def __init__(self, interpolation_type: int, global_sequence_id: int) -> None:
        self.interpolation_type = interpolation_type
        """None=0, linear=1, hermite=2, bezier=3"""
        self.global_sequence_id = global_sequence_id
        self.frames: list[int] = []
        self.values: list[T] = []
        self.interp_values: list[tuple[T, T]] = []

    def __str__(self) -> str:
        return (
            f'Track('
            f'interpolation_type={self.interpolation_type}, seq_id={self.global_sequence_id}, '
            f'values={self.values}, '
            f'<{len(self.interp_values)} interp values>'
            ')'
        )

    def __repr__(self) -> str:
        return str(self)

    def __eq__(self, other: 'Track') -> bool:
        return (
            isinstance(other, Track)
            and self.interpolation_type == other.interpolation_type
            and self.global_sequence_id == other.global_sequence_id
            and self.frames == other.frames
            and self.values == other.values
            and self.interp_values == other.interp_values
        )


@dataclass
class ModelChunk:
    model_name: str = ''
    file_path: str = ''
    unknown: str = ''
    extent: Extent = field(default_factory=Extent)
    blend_time: int = 0


@dataclass
class Sequence:
    name: str = ''
    start_time: int = 0
    end_time: int = -1
    move_speed: float = 0.0
    flags: int = 0  # 0 = looping, 1 = non-looping
    rarity: float = 0.0
    sync_point: int = 0
    extent: Extent = field(default_factory=Extent)


@dataclass
class Texture:
    id: int = -1
    file_path: str = ''
    flags: int = 0


class LayerFilterMode(enum.IntEnum):
    NONE = 0
    TRANSPARENT = 1
    BLEND = 2
    ADDITIVE = 3
    ADD_ALPHA = 4
    MODULATE = 5
    MODULATE_X2 = 6


class LayerShadingFlags(enum.IntFlag):
    NONE = 0
    UNSHADED = 0x1
    SPHERE_ENVIRONMENT_MAP = 0x2
    UNKNOWN_4 = 0x4
    UNKNOWN_8 = 0x8
    TWO_SIDED = 0x10
    UNFOGGED = 0x20
    NO_DEPTH_TEST = 0x40
    NO_DEPTH_SET = 0x80


@dataclass
class Layer:
    # element_size = 28
    filter_mode: LayerFilterMode = LayerFilterMode.NONE
    shading_flags: LayerShadingFlags = LayerShadingFlags.NONE
    texture_id: int = 0
    texture_animation_id: int = -1
    coord_id: int = 0
    alpha: float = 0.0
    # emissive_gain: float = 0.0  # (v > 800)
    # fresnel_colour: tuple[float, float, float] = (0.0, 0.0, 0.0)  # (v > 800)
    # fresnel_opacity: float = 0.0  # (v > 800)
    # fresnel_team_colour: float = 0.0  # (v > 800)
    texture_id_track: Track[int] | None = None
    alpha_track: Track[float] | None = None
    # KMTE (v > 800)
    # KFC3 (v > 900)
    # KFCA (v > 900)
    # KFTC (v > 900)


@dataclass
class Material:
    # element_size: int = 0
    priority_plane: int = 0
    flags: int = 0
    # shader: str = ''  # Reforged only (v >800), 80 chars
    layers: list[Layer] = field(default_factory=list)


@dataclass
class GeoSet:
    vertices: list[tuple[float, float, float]] = field(default_factory=list)
    normals: list[tuple[float, float, float]] = field(default_factory=list)
    primitive_types: list[int] = field(default_factory=list)
    """GL_POINTS=0, GL_LINES, GL_LONE_LOOP, GL_LINE_STRIP, GL_TRIANGLES, GL_TRIANGLE_STRIP
    GL_TRIANGLE_FAN, GL_QUADS, GL_QUAD_STRIP, GL_POLYGON=9"""
    primitive_counts: list[int] = field(default_factory=list)
    vertex_ids: list[int] = field(default_factory=list)
    vertex_id_to_group: list[int] = field(default_factory=list)
    group_id_to_matrix_id: list[int] = field(default_factory=list)
    matrices: list[int] = field(default_factory=list)
    material_id: int = 0
    selection_group: int = 0
    selection_flags: int = 0
    base_extent: Extent = field(default_factory=Extent)
    extents: list[Extent] = field(default_factory=list)
    uv_groups: list[list[tuple[float, float]]] = field(default_factory=list)


@dataclass
class GeosetAnimation:
    alpha: float = 0.0
    flags: int = 0
    colour: tuple[float, float, float] = (0.0, 0.0, 0.0)
    geoset_id: int = 0
    alpha_track: Track[float] | None = None
    colour_track: Track[tuple[float, float, float]] | None = None


class NodeFlag(enum.IntFlag):
    NONE = 0
    NO_INHERIT_TRANSLATION = 0x1
    NO_INHERIT_ROTATION = 0x2
    NO_INHERIT_SCALING = 0x4
    BILLBOARD = 0x8
    BILLBOARD_LOCK_X = 0x10
    BILLBOARD_LOCK_Y = 0x20
    BILLBOARD_LOCK_Z = 0x40
    CAMERA_ANCHORED = 0x80
    BONE = 0x100
    LIGHT = 0x200
    EVENT_OBJECT = 0x400
    ATTACHMENT = 0x800
    PARTICLE_EMITTER = 0x1000
    COLLISION_SHAPE = 0x2000
    RIBBON_EMITTER = 0x4000
    USES_MDL_OR_UNSHADED = 0x8000
    USES_TGA_OR_SORT_PRIMITIVES_FAR_Z = 0x10000
    LINE_EMITTER = 0x20000
    UNFOGGED = 0x40000
    MODEL_SPACE = 0x80000
    XY_QUAD = 0x100000


@dataclass
class Node:
    name: str = ''
    object_id: int = 0
    parent_id: int = 0
    flags: NodeFlag = NodeFlag.NONE
    translation: Track[tuple[float, float, float]] | None = None
    rotation: Track[tuple[float, float, float, float]] | None = None
    scaling: Track[tuple[float, float, float]] | None = None


@dataclass
class Bone:
    node: Node = field(default_factory=Node)
    geoset_id: int = 0
    geoset_animation_id: int = 0


@dataclass
class Light:
    type: int = 0
    """omni=0, directional=1, ambient=2"""
    attenuation_start: float = 0.0
    attenuation_end: float = 0.0
    colour: tuple[float, float, float] = (0.0, 0.0, 0.0)
    intensity: float = 0.0
    ambient_colour: tuple[float, float, float] = (0.0, 0.0, 0.0)
    ambient_intensity: float = 0.0
    attenuation_start_track: Track[float] | None = None
    attenuation_end_track: Track[float] | None = None
    colour_track: Track[tuple[float, float, float]] | None = None
    intensity_track: Track[float] | None = None
    ambient_intensity_track: Track[float] | None = None
    ambient_colour_track: Track[tuple[float, float, float]] | None = None
    visibility_track: Track[float] | None = None


@dataclass
class Attachment:
    node: Node = field(default_factory=Node)
    path: str = ''
    attachment_id: int = 0
    visibility_track: Track[float] | None = None


@dataclass
class ParticleEmitter2:
    node: Node = field(default_factory=Node)
    speed: float = 0.0
    variation: float = 0.0
    latitude: float = 0.0
    gravity: float = 0.0
    lifespan: float = 0.0
    emission_rate: float = 0.0
    length: float = 0.0
    width: float = 0.0
    filter_mode: int = 0
    """Blend=0, Additive=1, Modulate=2, Modulate_x2=3, alpha_key=4"""
    rows: int = 0
    columns: int = 0
    head_or_tail: int = 0
    """Head=0, Tail=1, Both=2"""
    tail_length: float = 0.0
    time: float = 0.0
    segment_colour: tuple[tuple, tuple, tuple] = ((0.0, 0.0, 0.0),) * 3
    segment_alpha: tuple[int, int, int] = (0, 0, 0)
    segment_scaling: tuple[float, float, float] = (0.0, 0.0, 0.0)
    head_interval: tuple[int, int, int] = (0, 0, 0)
    head_decay_interval: tuple[int, int, int] = (0, 0, 0)
    tail_interval: tuple[int, int, int] = (0, 0, 0)
    tail_decay_interval: tuple[int, int, int] = (0, 0, 0)
    texture_id: int = 0
    squirt: int = 0
    priority_plane: int = 0
    replaceable_id: int = 0
    speed_track: Track[float] | None = None
    variation_track: Track[float] | None = None
    latitude_track: Track[float] | None = None
    gravity_track: Track[float] | None = None
    emission_rate_track: Track[float] | None = None
    length_track: Track[float] | None = None
    width_track: Track[float] | None = None
    visibility_track: Track[float] | None = None


@dataclass
class Event:
    node: Node = field(default_factory=Node)
    global_sequence_id: int = 0
    tracks: list[int] = field(default_factory=list)


@dataclass
class Camera:
    name: str = ''
    position: tuple[float, float, float] = (0.0, 0.0, 0.0)
    fov: float = 0.0
    far_clipping_plane: float = 0.0
    near_clipping_plane: float = 0.0
    look_at: tuple[float, float, float] = (0.0, 0.0, 0.0)
    translation_track: Track[tuple[float, float, float]] | None = None
    rotation_track: Track[float] | None = None
    look_at_track: Track[tuple[float, float, float]] | None = None


class CollisionShapeType(enum.IntEnum):
    CUBE = 0
    PLANE = 1
    SPHERE = 2
    CYLINDER = 3


@dataclass
class CollisionShape:
    node: Node = field(default_factory=Node)
    type: CollisionShapeType = CollisionShapeType.CUBE
    vertices: list[tuple[float, float, float]] = field(default_factory=list)
    radius: float = 0.0


@dataclass
class MdxModel:
    version: int = -1
    model_chunk: ModelChunk = field(default_factory=ModelChunk)
    sequences: list[Sequence] = field(default_factory=list)
    global_sequences: list[int] = field(default_factory=list)
    textures: list[Texture] = field(default_factory=list)
    materials: list[Material] = field(default_factory=list)
    geosets: list[GeoSet] = field(default_factory=list)
    geoset_animations: list[GeosetAnimation] = field(default_factory=list)
    bones: list[Bone] = field(default_factory=list)
    lights: list[Light] = field(default_factory=list)
    helpers: list[Node] = field(default_factory=list)
    attachments: list[Attachment] = field(default_factory=list)
    pivots: list[tuple[float, float, float]] = field(default_factory=list)
    particle_emitter_2s: list[ParticleEmitter2] = field(default_factory=list)
    events: list[Event] = field(default_factory=list)
    cameras: list[Camera] = field(default_factory=list)
    collision_shapes: list[CollisionShape] = field(default_factory=list)


@dataclass
class TrackInfo:
    tag: bytes = b''
    num_tracks: int = 0
    interpolation_type: int = 0
    """None=0, linear=1, hermite=2, bezier=3"""
    global_sequence_id: int = 0


def _read_track_info(reader: binary.ByteArrayParser) -> TrackInfo:
    result = TrackInfo()
    result.tag = reader.read_bytes(4)
    result.num_tracks = reader.read_int32()
    result.interpolation_type = reader.read_int32()
    result.global_sequence_id = reader.read_int32()
    return result


def _read_track(
    reader: binary.ByteArrayParser, tag_to_getter: dict[bytes, tuple[Callable, tuple, str]]
) -> tuple[Track[T]]:
    track_info = _read_track_info(reader)
    track: Track[T] = Track(track_info.interpolation_type, track_info.global_sequence_id)
    getter, args, _ = tag_to_getter[track_info.tag]
    for _ in range(track_info.num_tracks):
        track.frames.append(reader.read_int32())
        track.values.append(getter(*args))
        if track.interpolation_type > 1:
            value_in = getter(*args)
            value_out = getter(*args)
            track.interp_values.append((value_in, value_out))
    return track


def _read_all_tracks(
    reader: binary.ByteArrayParser,
    tag_to_getter: dict[bytes, tuple[Callable, tuple, str]],
    result: Any,
) -> None:
    track_tag = reader.peek(4)
    while track_tag in tag_to_getter:
        track = _read_track(reader, tag_to_getter)
        _, _, target_field = tag_to_getter[track_tag]
        assert target_field in result.__dict__
        result.__dict__[target_field] = track
        track_tag = reader.peek(4)


TRACK_INFO = {
    'KGTR': 'fff',
    'KGRT': 'ffff',
    'KGSC': 'fff',
    'KMTF': 'u',
    'KMTA': 'f',
    'KMTE': 'f',
    'KFC3': 'fff',
    'KFCA': 'f',
    'KFTC': 'f',
    'KTAT': 'fff',
    'KTAR': 'ffff',
    'KTAS': 'fff',
    'KGAO': 'f',
    'KGAC': 'fff',
    'KLAS': 'f',
    'KLAE': 'f',
    'KLAC': 'fff',
    'KLAI': 'f',
    'KLBI': 'f',
    'KLBC': 'fff',
    'KLAV': 'f',
    'KATV': 'f',
    'KPEE': 'f',
    'KPEG': 'f',
    'KPLN': 'f',
    'KPLT': 'f',
    'KPEL': 'f',
    'KPES': 'f',
    'KPEV': 'f',
    'KP2E': 'f',
    'KP2G': 'f',
    'KP2L': 'f',
    'KP2S': 'f',
    'KP2V': 'f',
    'KP2R': 'f',
    'KP2N': 'f',
    'KP2W': 'f',
    'KRVS': 'f',
    'KRHA': 'f',
    'KRHB': 'f',
    'KRAL': 'f',
    'KRCO': 'fff',
    'KRTX': 'u',
    'KCTR': 'fff',
    'KCRL': 'f',
    'KTTR': 'fff',
    'KPPA': 'f',
    'KPPC': 'fff',
    'KPPE': 'f',
    'KPPL': 'f',
    'KPPS': 'f',
    'KPPV': 'f',
}


def _write_track(writer: binary.ByteArrayWriter, track: Track | None, tag: str) -> None:
    if track is None:
        return
    writer.write_id(tag)
    writer.write_int32(len(track.values))
    writer.write_int32(track.interpolation_type)
    writer.write_int32(track.global_sequence_id)
    if not track.values:
        return
    type_code = TRACK_INFO[tag]
    _write_value: Callable[[Any], Any]
    if type_code == 'u':
        _write_value = writer.write_int32
    elif type_code == 'f':
        _write_value = writer.write_float
    elif type_code in 'ffff':
        def _write_value(value: tuple[float, ...]) -> None:
            for v in value:
                writer.write_float(v)
    else:
        raise NotImplemented
    for index in range(len(track.values)):
        writer.write_int32(track.frames[index])
        _write_value(track.values[index])
        if track.interpolation_type > 1:
            _write_value(track.interp_values[index][0])
            _write_value(track.interp_values[index][1])


def read_version(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    assert chunk_size == 4
    result.version = reader.read_int32()


def write_version(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    writer.write_id('VERS')
    writer.write_int32(4)
    writer.write_int32(data.version)


def _read_extent(reader: binary.ByteArrayParser, result: Extent) -> None:
    result.bounds_radius = reader.read_float()
    result.minimum = reader.read('=fff')
    result.maximum = reader.read('=fff')


def _write_extent(writer: binary.ByteArrayWriter, data: Extent) -> None:
    writer.write_float(data.bounds_radius)
    for value in data.minimum:
        writer.write_float(value)
    for value in data.maximum:
        writer.write_float(value)


def read_model_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index
    data = result.model_chunk
    data.model_name = reader.read_buffer_string(80)
    data.file_path = reader.read_buffer_string(PATH_LENGTH - 8)
    data.unknown = reader.read_buffer_string(8)
    _read_extent(reader, data.extent)
    data.blend_time = reader.read_int32()
    assert reader.index == start_index + chunk_size


def write_model_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    writer.write_id('MODL')
    chunk_writer = binary.ByteArrayWriter()
    chunk_writer.write_buffer_string(data.model_chunk.model_name, 80)
    chunk_writer.write_buffer_string(data.model_chunk.file_path, PATH_LENGTH - 8)
    chunk_writer.write_buffer_string(data.model_chunk.unknown, 8)
    _write_extent(chunk_writer, data.model_chunk.extent)
    chunk_writer.write_int32(data.model_chunk.blend_time)

    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def read_sequence_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index
    while reader.index < start_index + chunk_size:
        sequence = Sequence()
        sequence.name = reader.read_buffer_string(80)
        sequence.start_time = reader.read_int32()
        sequence.end_time = reader.read_int32()
        sequence.move_speed = reader.read_float()
        sequence.flags = reader.read_int32()
        sequence.rarity = reader.read_float()
        sequence.sync_point = reader.read_int32()
        _read_extent(reader, sequence.extent)
        result.sequences.append(sequence)
    assert reader.index == start_index + chunk_size


def write_sequence_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.sequences:
        return
    writer.write_id('SEQS')
    chunk_writer = binary.ByteArrayWriter()
    for sequence in data.sequences:
        chunk_writer.write_buffer_string(sequence.name, 80)
        chunk_writer.write_int32(sequence.start_time)
        chunk_writer.write_int32(sequence.end_time)
        chunk_writer.write_float(sequence.move_speed)
        chunk_writer.write_int32(sequence.flags)
        chunk_writer.write_float(sequence.rarity)
        chunk_writer.write_int32(sequence.sync_point)
        _write_extent(chunk_writer, sequence.extent)

    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def read_global_sequence_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    assert chunk_size % 4 == 0
    for _ in range(chunk_size // 4):
        result.global_sequences.append(reader.read_int32())


def write_global_sequence_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.global_sequences:
        return
    writer.write_id('GLBS')
    chunk_writer = binary.ByteArrayWriter()
    for global_sequence_id in data.global_sequences:
        chunk_writer.write_int32(global_sequence_id)

    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def read_materials_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index
    tag_to_getter = {
        b'KMTF': (reader.read_int32, (), 'texture_id_track'),
        b'KMTA': (reader.read_float, (), 'alpha_track'),
    }
    while reader.index < start_index + chunk_size:
        material = Material()
        material_start_index = reader.index
        material_element_size = reader.read_int32()
        material.priority_plane = reader.read_int32()
        material.flags = reader.read_int32()
        # v > 800: shader here (80 bytes)
        magic_lays = reader.read_id()
        assert magic_lays == 'LAYS'
        num_layers = reader.read_int32()
        for _ in range(num_layers):
            layer = Layer()
            layer_start_index = reader.index
            layer_element_size = reader.read_int32()
            layer.filter_mode = LayerFilterMode(reader.read_int32())
            layer.shading_flags = LayerShadingFlags(reader.read_int32())
            layer.texture_id = reader.read_int32()
            layer.texture_animation_id = reader.read_int32()
            layer.coord_id = reader.read_int32()
            layer.alpha = reader.read_float()
            _read_all_tracks(reader, tag_to_getter, layer)
            material.layers.append(layer)
            assert reader.index == layer_start_index + layer_element_size
        result.materials.append(material)
        assert reader.index == material_start_index + material_element_size
    assert reader.index == start_index + chunk_size


def write_materials_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.materials:
        return
    writer.write_id('MTLS')
    chunk_writer = binary.ByteArrayWriter()

    for material in data.materials:
        element_writer = binary.ByteArrayWriter()
        element_writer.write_int32(material.priority_plane)
        element_writer.write_int32(material.flags)
        element_writer.write_id('LAYS')
        element_writer.write_int32(len(material.layers))
        for layer in material.layers:
            e2_writer = binary.ByteArrayWriter()
            e2_writer.write_int32(layer.filter_mode.value)
            e2_writer.write_int32(layer.shading_flags.value)
            e2_writer.write_int32(layer.texture_id)
            e2_writer.write_int32(layer.texture_animation_id)
            e2_writer.write_int32(layer.coord_id)
            e2_writer.write_float(layer.alpha)
            _write_track(e2_writer, layer.texture_id_track, 'KMTF')
            _write_track(e2_writer, layer.alpha_track, 'KMTA')
            element_writer.write_int32(len(e2_writer.data) + 4)
            element_writer.write_bytes(e2_writer.as_bytes())
        chunk_writer.write_int32(len(element_writer.data) + 4)
        chunk_writer.write_bytes(element_writer.as_bytes())

    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def read_texture_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index
    while reader.index < start_index + chunk_size:
        texture = Texture()
        texture.id = reader.read_int32()
        texture.file_path = reader.read_buffer_string(PATH_LENGTH)
        texture.flags = reader.read_int32()
        result.textures.append(texture)
    assert reader.index == start_index + chunk_size


def write_texture_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.textures:
        return
    writer.write_id('TEXS')
    chunk_writer = binary.ByteArrayWriter()
    for texture in data.textures:
        chunk_writer.write_int32(texture.id)
        chunk_writer.write_buffer_string(texture.file_path, PATH_LENGTH)
        chunk_writer.write_int32(texture.flags)

    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def read_geoset_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index
    while reader.index < start_index + chunk_size:
        geoset = GeoSet()
        geoset_start_index = reader.index
        geoset_element_size = reader.read_int32()
        magic_vrtx = reader.read_id()
        assert magic_vrtx == 'VRTX'
        num_vertices = reader.read_int32()
        for _ in range(num_vertices):
            geoset.vertices.append(reader.read('=fff'))
        magic_nrms = reader.read_id()
        assert magic_nrms == 'NRMS'
        num_normals = reader.read_int32()
        for _ in range(num_normals):
            geoset.normals.append(reader.read('=fff'))
        magic_ptyp = reader.read_id()
        assert magic_ptyp == 'PTYP'
        num_primitive_types = reader.read_int32()
        for _ in range(num_primitive_types):
            geoset.primitive_types.append(reader.read_int32())
        magic_pcnt = reader.read_id()
        assert magic_pcnt == 'PCNT'
        num_primitive_counts = reader.read_int32()
        for _ in range(num_primitive_counts):
            geoset.primitive_counts.append(reader.read_int32())
        magic_pvtx = reader.read_id()
        assert magic_pvtx == 'PVTX'
        num_primitive_vertices = reader.read_int32()
        for _ in range(num_primitive_vertices):
            geoset.vertex_ids.append(reader.read_u16())
        magic_gndx = reader.read_id()
        assert magic_gndx == 'GNDX'
        num_vertex_group_assignments = reader.read_int32()
        for _ in range(num_vertex_group_assignments):
            geoset.vertex_id_to_group.append(reader.read_u8())
        magic_mtgc = reader.read_id()
        assert magic_mtgc == 'MTGC'
        num_matrix_group_assignments = reader.read_int32()
        for _ in range(num_matrix_group_assignments):
            geoset.group_id_to_matrix_id.append(reader.read_u32())
        magic_mats = reader.read_id()
        assert magic_mats == 'MATS'
        num_materials = reader.read_int32()
        for _ in range(num_materials):
            geoset.matrices.append(reader.read_u32())
        geoset.material_id = reader.read_u32()
        geoset.selection_group = reader.read_u32()
        geoset.selection_flags = reader.read_u32()
        # (version > 800) -- LOD, LOD name
        _read_extent(reader, geoset.base_extent)
        num_sequence_extents = reader.read_int32()
        for _ in range(num_sequence_extents):
            extent = Extent()
            _read_extent(reader, extent)
            geoset.extents.append(extent)
        # (version > 800) -- Tangents, skin
        magic_uvas = reader.read_id()
        assert magic_uvas == 'UVAS'
        num_uv_groups = reader.read_int32()
        for _ in range(num_uv_groups):
            uvs: list[tuple[float, float]] = []
            geoset.uv_groups.append(uvs)
            magic_uvbs = reader.read_id()
            assert magic_uvbs == 'UVBS'
            num_uvs = reader.read_int32()
            for __ in range(num_uvs):
                uvs.append(reader.read('=ff'))
        result.geosets.append(geoset)
        assert reader.index == geoset_start_index + geoset_element_size
    assert reader.index == start_index + chunk_size


def write_geoset_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.geosets:
        return
    writer.write_id('GEOS')
    chunk_writer = binary.ByteArrayWriter()

    for geoset in data.geosets:
        element_writer = binary.ByteArrayWriter()

        element_writer.write_id('VRTX')
        element_writer.write_int32(len(geoset.vertices))
        for v in geoset.vertices:
            for f in v:
                element_writer.write_float(f)

        element_writer.write_id('NRMS')
        element_writer.write_int32(len(geoset.normals))
        for v in geoset.normals:
            for f in v:
                element_writer.write_float(f)

        element_writer.write_id('PTYP')
        element_writer.write_int32(len(geoset.primitive_types))
        for v in geoset.primitive_types:
            element_writer.write_int32(v)

        element_writer.write_id('PCNT')
        element_writer.write_int32(len(geoset.primitive_counts))
        for v in geoset.primitive_counts:
            element_writer.write_int32(v)

        element_writer.write_id('PVTX')
        element_writer.write_int32(len(geoset.vertex_ids))
        for v in geoset.vertex_ids:
            element_writer.write_u16(v)

        element_writer.write_id('GNDX')
        element_writer.write_int32(len(geoset.vertex_id_to_group))
        for v in geoset.vertex_id_to_group:
            element_writer.write_u8(v)

        element_writer.write_id('MTGC')
        element_writer.write_int32(len(geoset.group_id_to_matrix_id))
        for v in geoset.group_id_to_matrix_id:
            element_writer.write_u32(v)

        element_writer.write_id('MATS')
        element_writer.write_int32(len(geoset.matrices))
        for v in geoset.matrices:
            element_writer.write_u32(v)

        element_writer.write_u32(geoset.material_id)
        element_writer.write_u32(geoset.selection_group)
        element_writer.write_u32(geoset.selection_flags)

        # (version > 800) -- LOD, LOD name
        _write_extent(element_writer, geoset.base_extent)
        element_writer.write_int32(len(geoset.extents))
        for extent in geoset.extents:
            _write_extent(element_writer, extent)
        # (version > 800) -- Tangents, skin

        element_writer.write_id('UVAS')
        element_writer.write_int32(len(geoset.uv_groups))
        for uv_group in geoset.uv_groups:
            element_writer.write_id('UVBS')
            element_writer.write_int32(len(uv_group))
            for u, v in uv_group:
                element_writer.write_float(u)
                element_writer.write_float(v)

        chunk_writer.write_int32(len(element_writer.data) + 4)
        chunk_writer.write_bytes(element_writer.as_bytes())

    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def read_geoset_animation_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index

    tag_to_getter: dict[bytes, tuple[Callable, tuple]] = {
        b'KGAO': (reader.read_float, (), 'alpha_track',),
        b'KGAC': (reader.read, ('=fff',), 'colour_track',),
    }
    while reader.index < start_index + chunk_size:
        animation = GeosetAnimation()
        animation_start_index = reader.index
        animation_element_size = reader.read_int32()
        animation.alpha = reader.read_float()
        animation.flags = reader.read_u32()
        animation.colour = reader.read('=fff')
        animation.geoset_id = reader.read_int32()
        _read_all_tracks(reader, tag_to_getter, animation)

        result.geoset_animations.append(animation)
        assert reader.index == animation_start_index + animation_element_size
    assert reader.index == start_index + chunk_size


def write_geoset_animation_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.geoset_animations:
        return
    writer.write_id('GEOA')
    chunk_writer = binary.ByteArrayWriter()

    for animation in data.geoset_animations:
        element_writer = binary.ByteArrayWriter()
        element_writer.write_float(animation.alpha)
        element_writer.write_u32(animation.flags)
        for c in animation.colour:
            element_writer.write_float(c)
        element_writer.write_int32(animation.geoset_id)
        _write_track(element_writer, animation.alpha_track, 'KGAO')
        _write_track(element_writer, animation.colour_track, 'KGAC')

        chunk_writer.write_int32(len(element_writer.data) + 4)
        chunk_writer.write_bytes(element_writer.as_bytes())
    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def _read_node(reader: binary.ByteArrayParser, node: Node) -> None:
    node_start_index = reader.index
    node_element_size = reader.read_int32()
    node.name = reader.read_buffer_string(80)
    node.object_id = reader.read_int32()
    node.parent_id = reader.read_int32()
    node.flags = NodeFlag(reader.read_u32())

    tag_to_getter = {
        b'KGTR': (reader.read, ('=fff',), 'translation',),
        b'KGRT': (reader.read, ('=ffff',), 'rotation',),
        b'KGSC': (reader.read, ('=fff',), 'scaling',),
    }
    _read_all_tracks(reader, tag_to_getter, node)
    assert reader.index == node_start_index + node_element_size


def _write_node(writer: binary.ByteArrayWriter, node: Node) -> None:
    element_writer = binary.ByteArrayWriter()
    element_writer.write_buffer_string(node.name, 80)
    element_writer.write_int32(node.object_id)
    element_writer.write_int32(node.parent_id)
    element_writer.write_u32(node.flags.value)
    _write_track(element_writer, node.translation, 'KGTR')
    _write_track(element_writer, node.rotation, 'KGRT')
    _write_track(element_writer, node.scaling, 'KGSC')
    writer.write_int32(len(element_writer.data) + 4)
    writer.write_bytes(element_writer.as_bytes())


def read_bone_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index
    while reader.index < start_index + chunk_size:
        bone = Bone()
        _read_node(reader, bone.node)
        bone.geoset_id = reader.read_int32()
        bone.geoset_animation_id = reader.read_int32()
        result.bones.append(bone)
    assert reader.index == start_index + chunk_size


def write_bone_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.bones:
        return
    writer.write_id('BONE')
    chunk_writer = binary.ByteArrayWriter()
    for bone in data.bones:
        _write_node(chunk_writer, bone.node)
        chunk_writer.write_int32(bone.geoset_id)
        chunk_writer.write_int32(bone.geoset_animation_id)
    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def read_light_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index

    tag_to_getter = {
        b'KLAS': (reader.read_float, (), 'attenuation_start_track',),
        b'KLAE': (reader.read_float, (), 'attenuation_end_track',),
        b'KLAC': (reader.read, ('=fff',), 'colour_track',),
        b'KLAI': (reader.read_float, (), 'intensity_track',),
        b'KLBC': (reader.read, ('=fff',), 'ambient_colour_track',),
        b'KLBI': (reader.read_float, (), 'ambient_intensity_track',),
        b'KLAV': (reader.read_float, (), 'visibility_track',),
    }
    while reader.index < start_index + chunk_size:
        light = GeosetAnimation()
        light_start_index = reader.index
        light_element_size = reader.read_int32()
        light.type = reader.read_int32()
        light.attenuation_start = reader.read_float()
        light.attenuation_end = reader.read_float()
        light.colour = reader.read('=fff')
        light.intensity = reader.read_float()
        light.ambient_colour = reader.read('=fff')
        light.ambient_intensity = reader.read_float()
        _read_all_tracks(reader, tag_to_getter, light)

        result.lights.append(light)
        assert reader.index == light_start_index + light_element_size
    assert reader.index == start_index + chunk_size


def write_light_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.lights:
        return
    writer.write_id('LITE')
    chunk_writer = binary.ByteArrayWriter()
    for light in data.lights:
        element_start = len(chunk_writer.data)
        chunk_writer.write_int32(0)
        chunk_writer.write_int32(light.type)
        chunk_writer.write_float(light.attenuation_start)
        chunk_writer.write_float(light.attenuation_end)
        for f in light.colour:
            chunk_writer.write_float(f)
        chunk_writer.write_float(light.intensity)
        for f in light.ambient_colour:
            chunk_writer.write_float(f)
        chunk_writer.write_float(light.ambient_intensity)
        _write_track(chunk_writer, light.attenuation_start_track, 'KLAS')
        _write_track(chunk_writer, light.attenuation_end_track, 'KLAE')
        _write_track(chunk_writer, light.colour_track, 'KLAC')
        _write_track(chunk_writer, light.intensity_track, 'KLAI')
        _write_track(chunk_writer, light.ambient_colour_track, 'KLBC')
        _write_track(chunk_writer, light.ambient_intensity_track, 'KLBI')
        _write_track(chunk_writer, light.visibility_track, 'KLAV')

        chunk_writer.data[element_start:element_start+4] = (
            (len(chunk_writer.data)-element_start).to_bytes(length=4, byteorder='little')
        )
    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def read_helper_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index
    while reader.index < start_index + chunk_size:
        node = Node()
        _read_node(reader, node)
        result.helpers.append(node)
    assert reader.index == start_index + chunk_size


def write_helper_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.helpers:
        return
    writer.write_id('HELP')
    chunk_writer = binary.ByteArrayWriter()
    for helper in data.helpers:
        _write_node(chunk_writer, helper)
    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def read_attachment_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index

    tag_to_getter = {
        b'KATV': (reader.read_float, (), 'visibility_track'),
    }
    while reader.index < start_index + chunk_size:
        attachment = Attachment()
        attachment_start_index = reader.index
        attachment_element_size = reader.read_int32()
        _read_node(reader, attachment.node)
        attachment.path = reader.read_buffer_string(PATH_LENGTH)
        attachment.attachment_id = reader.read_int32()
        _read_all_tracks(reader, tag_to_getter, attachment)

        result.attachments.append(attachment)
        assert reader.index == attachment_start_index + attachment_element_size
    assert reader.index == start_index + chunk_size


def write_attachment_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.attachments:
        return
    writer.write_id('ATCH')
    chunk_writer = binary.ByteArrayWriter()
    for attachment in data.attachments:
        element_writer = binary.ByteArrayWriter()
        _write_node(element_writer, attachment.node)
        element_writer.write_buffer_string(attachment.path, PATH_LENGTH)
        element_writer.write_int32(attachment.attachment_id)
        _write_track(element_writer, attachment.visibility_track, 'KATV')

        chunk_writer.write_int32(len(element_writer.data) + 4)
        chunk_writer.write_bytes(element_writer.as_bytes())
    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def read_pivot_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index
    while reader.index < start_index + chunk_size:
        result.pivots.append(reader.read('=fff'))
    assert reader.index == start_index + chunk_size


def write_pivot_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.pivots:
        return
    writer.write_id('PIVT')
    chunk_writer = binary.ByteArrayWriter()
    for pivot in data.pivots:
        for f in pivot:
            chunk_writer.write_float(f)
    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def read_particle_emitter_2_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index

    tag_to_getter = {
        b'KP2S': (reader.read_float, (), 'speed_track'),
        b'KP2R': (reader.read_float, (), 'variation_track'),
        b'KP2L': (reader.read_float, (), 'latitude_track'),
        b'KP2G': (reader.read_float, (), 'gravity_track'),
        b'KP2E': (reader.read_float, (), 'emission_rate_track'),
        b'KP2N': (reader.read_float, (), 'length_track'),
        b'KP2W': (reader.read_float, (), 'width_track'),
        b'KP2V': (reader.read_float, (), 'visibility_track'),
    }
    while reader.index < start_index + chunk_size:
        emitter = ParticleEmitter2()
        emitter_start_index = reader.index
        emitter_element_size = reader.read_int32()
        _read_node(reader, emitter.node)
        emitter.speed = reader.read_float()
        emitter.variation = reader.read_float()
        emitter.latitude = reader.read_float()
        emitter.gravity = reader.read_float()
        emitter.lifespan = reader.read_float()
        emitter.emission_rate = reader.read_float()
        emitter.length = reader.read_float()
        emitter.width = reader.read_float()
        emitter.filter_mode = reader.read_int32()
        emitter.rows = reader.read_int32()
        emitter.columns = reader.read_int32()
        emitter.head_or_tail = reader.read_int32()
        emitter.tail_length = reader.read_float()
        emitter.time = reader.read_float()
        matrix_parts = reader.read('=fffffffff')
        emitter.segment_colour = (matrix_parts[0:3], matrix_parts[3:6], matrix_parts[6:9])
        emitter.segment_alpha = reader.read('<BBB')
        emitter.segment_scaling = reader.read('=fff')
        emitter.head_interval = reader.read('<iii')
        emitter.head_decay_interval = reader.read('<iii')
        emitter.tail_interval = reader.read('<iii')
        emitter.tail_decay_interval = reader.read('<iii')
        emitter.texture_id = reader.read_int32()
        emitter.squirt = reader.read_int32()
        emitter.priority_plane = reader.read_int32()
        emitter.replaceable_id = reader.read_int32()
        _read_all_tracks(reader, tag_to_getter, emitter)

        result.particle_emitter_2s.append(emitter)
        assert reader.index == emitter_start_index + emitter_element_size, f'{hex(reader.index)} != {hex(emitter_start_index + emitter_element_size)}'
    assert reader.index == start_index + chunk_size


def write_particle_emitter_2_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.particle_emitter_2s:
        return
    writer.write_id('PRE2')
    chunk_writer = binary.ByteArrayWriter()
    for emitter in data.particle_emitter_2s:
        element_start = len(chunk_writer.data)
        chunk_writer.write_int32(0)
        _write_node(chunk_writer, emitter.node)
        chunk_writer.write_float(emitter.speed)
        chunk_writer.write_float(emitter.variation)
        chunk_writer.write_float(emitter.latitude)
        chunk_writer.write_float(emitter.gravity)
        chunk_writer.write_float(emitter.lifespan)
        chunk_writer.write_float(emitter.emission_rate)
        chunk_writer.write_float(emitter.length)
        chunk_writer.write_float(emitter.width)
        chunk_writer.write_int32(emitter.filter_mode)
        chunk_writer.write_int32(emitter.rows)
        chunk_writer.write_int32(emitter.columns)
        chunk_writer.write_int32(emitter.head_or_tail)
        chunk_writer.write_float(emitter.tail_length)
        chunk_writer.write_float(emitter.time)
        for t in emitter.segment_colour:
            for f in t:
                chunk_writer.write_float(f)
        for b in emitter.segment_alpha:
            chunk_writer.write_u8(b)
        for f in emitter.segment_scaling:
            chunk_writer.write_float(f)
        for i in emitter.head_interval:
            chunk_writer.write_int32(i)
        for i in emitter.head_decay_interval:
            chunk_writer.write_int32(i)
        for i in emitter.tail_interval:
            chunk_writer.write_int32(i)
        for i in emitter.tail_decay_interval:
            chunk_writer.write_int32(i)
        chunk_writer.write_int32(emitter.texture_id)
        chunk_writer.write_int32(emitter.squirt)
        chunk_writer.write_int32(emitter.priority_plane)
        chunk_writer.write_int32(emitter.replaceable_id)
        _write_track(chunk_writer, emitter.speed_track, 'KP2S')
        _write_track(chunk_writer, emitter.variation_track, 'KP2R')
        _write_track(chunk_writer, emitter.latitude_track, 'KP2L')
        _write_track(chunk_writer, emitter.gravity_track, 'KP2G')
        _write_track(chunk_writer, emitter.emission_rate_track, 'KP2E')
        _write_track(chunk_writer, emitter.length_track, 'KP2N')
        _write_track(chunk_writer, emitter.width_track, 'KP2W')
        _write_track(chunk_writer, emitter.visibility_track, 'KP2V')

        chunk_writer.data[element_start:element_start+4] = (
            (len(chunk_writer.data)-element_start).to_bytes(length=4, byteorder='little')
        )
    chunk_bytes = chunk_writer.as_bytes()
    writer.write_int32(len(chunk_bytes))
    writer.write_bytes(chunk_bytes)


def read_event_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index
    while reader.index < start_index + chunk_size:
        event = Event()
        _read_node(reader, event.node)
        magic_kevt = reader.read_id()
        assert magic_kevt == 'KEVT'
        num_tracks = reader.read_int32()
        event.global_sequence_id = reader.read_int32()
        for _ in range(num_tracks):
            event.tracks.append(reader.read_int32())
        result.events.append(event)
    assert reader.index == start_index + chunk_size


def write_event_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.events:
        return
    writer.write_id('EVTS')
    chunk_writer = binary.ByteArrayWriter()
    for event in data.events:
        _write_node(chunk_writer, event.node)
        chunk_writer.write_id('KEVT')
        chunk_writer.write_int32(len(event.tracks))
        chunk_writer.write_int32(event.global_sequence_id)
        for track in event.tracks:
            chunk_writer.write_int32(track)
    writer.write_int32(len(chunk_writer.data))
    writer.write_bytes(chunk_writer.as_bytes())


def read_camera_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index

    tag_to_getter = {
        b'KCTR': (reader.read, ('=fff',), 'translation_track'),
        b'KCRL': (reader.read_float, (), 'rotation_track'),
        b'KTTR': (reader.read, ('=fff',), 'look_at_track'),
    }
    while reader.index < start_index + chunk_size:
        camera = Camera()
        camera_start_index = reader.index
        camera_element_size = reader.read_int32()
        camera.name = reader.read_buffer_string(80)
        camera.position = reader.read('=fff')
        camera.fov = reader.read_float()
        camera.far_clipping_plane = reader.read_float()
        camera.near_clipping_plane = reader.read_float()
        camera.look_at = reader.read('=fff')
        print(hex(reader.index))
        _read_all_tracks(reader, tag_to_getter, camera)

        result.cameras.append(camera)
        assert reader.index == camera_start_index + camera_element_size
    assert reader.index == start_index + chunk_size


def write_camera_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.cameras:
        return
    writer.write_id('CAMS')
    chunk_writer = binary.ByteArrayWriter()
    for camera in data.cameras:
        element_start = len(chunk_writer.data)
        chunk_writer.write_int32(0)
        chunk_writer.write_buffer_string(camera.name, 80)
        for f in camera.position:
            chunk_writer.write_float(f)
        chunk_writer.write_float(camera.fov)
        chunk_writer.write_float(camera.far_clipping_plane)
        chunk_writer.write_float(camera.near_clipping_plane)
        for f in camera.look_at:
            chunk_writer.write_float(f)
        _write_track(chunk_writer, camera.translation_track, 'KCTR')
        _write_track(chunk_writer, camera.rotation_track, 'KCRL')
        _write_track(chunk_writer, camera.look_at_track, 'KTTR')

        chunk_writer.data[element_start:element_start+4] = (
            (len(chunk_writer.data)-element_start).to_bytes(length=4, byteorder='little')
        )
    writer.write_int32(len(chunk_writer.data))
    writer.write_bytes(chunk_writer.as_bytes())


def read_collision_shape_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    chunk_size = reader.read_int32()
    start_index = reader.index
    type_to_vertices = {
        CollisionShapeType.CUBE: 2,
        CollisionShapeType.PLANE: 2,
        CollisionShapeType.SPHERE: 1,
        CollisionShapeType.CYLINDER: 2,
    }
    while reader.index < start_index + chunk_size:
        collision_shape = CollisionShape()
        _read_node(reader, collision_shape.node)
        collision_shape.type = CollisionShapeType(reader.read_int32())
        num_vertices = type_to_vertices[collision_shape.type]
        for _ in range(num_vertices):
            collision_shape.vertices.append(reader.read('=fff'))
        if collision_shape.type in (CollisionShapeType.SPHERE, CollisionShapeType.CYLINDER):
            collision_shape.radius = reader.read_float()
        result.collision_shapes.append(collision_shape)
    assert reader.index == start_index + chunk_size


def write_collision_shape_chunk(writer: binary.ByteArrayWriter, data: MdxModel) -> None:
    if not data.collision_shapes:
        return
    writer.write_id('CLID')
    chunk_writer = binary.ByteArrayWriter()
    for collision_shape in data.collision_shapes:
        _write_node(chunk_writer, collision_shape.node)
        chunk_writer.write_int32(collision_shape.type)
        for vertex in collision_shape.vertices:
            for f in vertex:
                chunk_writer.write_float(f)
        if collision_shape.type in (CollisionShapeType.SPHERE, CollisionShapeType.CYLINDER):
            chunk_writer.write_float(collision_shape.radius)
    writer.write_int32(len(chunk_writer.data))
    writer.write_bytes(chunk_writer.as_bytes())


def read_unknown_chunk(reader: binary.ByteArrayParser, result: MdxModel) -> None:
    reader.index -= 4
    chunk_id = reader.read_id()
    chunk_size = reader.read_int32()
    print(f"Unknown chunk type encountered: {chunk_id} (length {chunk_size}). Skipping.")
    reader.index += chunk_size


CHUNK_ID_TO_PARSER = {
    'VERS': read_version,
    'MODL': read_model_chunk,
    'SEQS': read_sequence_chunk,
    'GLBS': read_global_sequence_chunk,
    'MTLS': read_materials_chunk,
    'TEXS': read_texture_chunk,
    # 'TXAN': read_texture_animation_chunk,
    'GEOS': read_geoset_chunk,
    'GEOA': read_geoset_animation_chunk,
    'BONE': read_bone_chunk,
    'LITE': read_light_chunk,
    'HELP': read_helper_chunk,
    'ATCH': read_attachment_chunk,
    'PIVT': read_pivot_chunk,
    # 'PREM': read_particle_emitter_chunk,
    'PRE2': read_particle_emitter_2_chunk,
    # 'RIBB': read_ribbon_chunk,
    'EVTS': read_event_chunk,
    'CAMS': read_camera_chunk,
    'CLID': read_collision_shape_chunk,
    # Version > 800:
    # 'BPOS': read_bind_pose_chunk,
    # 'FAFX': read_face_effect_chunk,
    # 'CORN': read_corn_emitter_chunk,
}


def read_binary(raw_bytes: bytes) -> MdxModel:
    reader = binary.ByteArrayParser(raw_bytes)
    result = MdxModel()
    magic = reader.read_id()
    assert magic == 'MDLX'
    for _ in range(23):
        if reader.index >= len(raw_bytes):
            break
        chunk_id = reader.read_id()
        parser = CHUNK_ID_TO_PARSER.get(chunk_id, read_unknown_chunk)
        parser(reader, result)
    return result


CHUNK_WRITERS = [
    write_version,
    write_model_chunk,
    write_sequence_chunk,
    write_global_sequence_chunk,
    write_materials_chunk,
    write_texture_chunk,
    # write_texture_animation_chunk,
    write_geoset_chunk,
    write_geoset_animation_chunk,
    write_bone_chunk,
    write_light_chunk,
    write_helper_chunk,
    write_attachment_chunk,
    write_pivot_chunk,
    # write_particle_emitter_chunk,
    write_particle_emitter_2_chunk,
    # write_ribbon_chunk,
    write_event_chunk,
    write_camera_chunk,
    write_collision_shape_chunk,
    # Version > 800:
    # write_bind_pose_chunk,
    # write_face_effect_chunk,
    # write_corn_emitter_chunk,
]


def write_binary(data: MdxModel) -> bytes:
    writer = binary.ByteArrayWriter
    writer.write_id('MDLX')
    for write_function in CHUNK_WRITERS:
        write_function(writer, data)
    return writer.as_bytes()


def is_simple_type(data: object) -> bool:
    return isinstance(data, (int, float, bool, str))


def is_inline_tuple(data: tuple | list) -> bool:
    return isinstance(data[0], (int, float, bool, str, list, tuple))


def write_inline_toml(data: object, indent: str = '') -> str:
    if isinstance(data, (float, int)):
        if isinstance(data, enum.IntEnum):
            return f'{data}  # {data.name}'
        return str(data)
    if isinstance(data, bool):
        return str(data).lower()
    if isinstance(data, str):
        escaped = data.replace('\\', '\\\\').replace('"', r'\"')
        return f'"{escaped}"'
    if isinstance(data, (tuple, list)):
        if not data:
            return '[]'
        if isinstance(data[0], (float, int, bool)):
            if len(data) > 12:
                parts = ['[\n', indent]
                for part_start in range(0, len(data), 12):
                    parts.append('  ')
                    for index in range(part_start, part_start+12):
                        parts.append(write_inline_toml(data[index], indent))
                        parts.append(', ')
                    parts.append(f' # {part_start}~{part_start+11}')
                    parts.append(f'\n{indent}')
                parts.append(']')
                return ''.join(parts)
            return f'[{", ".join(map(write_inline_toml, data))}]'
        parts = ['[\n', indent]
        for value in data:
            parts.append('  ')
            parts.append(write_inline_toml(value, indent + '  '))
            parts.append(f',\n{indent}')
        parts.append(']')
        return ''.join(parts)
    if isinstance(data, dict):
        raise NotImplemented
    parts = ['{']
    has_printed = False
    for key, value in data.__dict__.items():
        if key.startswith('_'):
            continue
        if has_printed:
            parts.append(', ')
        has_printed = True
        parts.append(key)
        parts.append(' = ')
        parts.append(write_inline_toml(value, indent + '  '))
    parts.append('}')
    return ''.join(parts)


def write_toml(data: object, nesting: list[str] = []) -> str:
    lines: list[str] = []
    early_lines: list[str] = []
    for _field in data.__dict__:
        if _field.startswith('_'):
            continue
        value = data.__dict__[_field]
        full_key = '.'.join(nesting + [_field])
        if is_simple_type(value):
            early_lines.append(f'{_field} = {write_inline_toml(value)}')
        elif value is None:
            early_lines.append(f'# {_field} = null')
        elif isinstance(value, (list, tuple)) and not value:
            early_lines.append(f'{_field} = []')
        elif isinstance(value, (tuple, list)) and is_inline_tuple(value):
            early_lines.append(f'{_field} = {write_inline_toml(value)}')
        elif isinstance(value, (list, tuple)):
            for subvalue in value:
                lines.append(f'[[{full_key}]]')
                lines.append(write_toml(subvalue, nesting + [_field]))
            lines.append('')
        elif isinstance(value, object):
            lines.append(f'[{full_key}]')
            lines.append(write_toml(value, nesting + [_field]))
            lines.append('')
    return '\n'.join(early_lines + lines)


def write_toml_to_file(data: object, file: str) -> None:
    text = write_toml(data)
    with open(file, 'w') as fp:
        fp.write(text)


class DictReadError(Exception):
    pass


def dataclass_from_dict(
    key: str,
    class_: GenericAlias | type,
    data: dict | list | int | float | str | bool,
) -> object:
    # Use __origin__ and __args__
    if is_dataclass(class_):
        if not isinstance(data, dict):
            raise DictReadError(f"{key} got {data} ({type(data)}), expected dict")
        field_types = {_field.name: _field.type for _field in fields(class_)}
        return class_(
            **{
                field_name: dataclass_from_dict(f'{key}.{field_name}', field_types[field_name], value)
                for field_name, value in data.items()
            }
        )
    if isinstance(class_, GenericAlias):
        if issubclass(class_.__origin__, tuple):
            element_types = class_.__args__
            if not isinstance(data, list):
                raise DictReadError(f"{key} got {data} ({type(data)}), expected list")
            if not len(element_types) == len(data):
                raise DictReadError(f"{key} got {len(data)} elements, expected {len(element_types)}")
            return tuple(
                dataclass_from_dict(f'{key}.{index}', element_types[index], x)
                for index, x in enumerate(data)
            )
        if issubclass(class_.__origin__, list):
            element_type = class_.__args__[0]
            if not isinstance(data, list):
                raise DictReadError(f"{key} got {data} ({type(data)}), expected list")
            return [dataclass_from_dict(f'{key}.{index}', element_type, x) for index, x in enumerate(data)]
        raise DictReadError(f"Unknown generic type {class_.__origin__}")
    if hasattr(class_, '__args__'):
        non_null_classes = [c for c in class_.__args__ if c is not type(None)]
        assert len(non_null_classes) == 1
        assert issubclass(non_null_classes[0].__origin__, Track)
        if not isinstance(data, dict):
            raise DictReadError(f"{key} got {data} ({type(data)}), expected dict")
        result = Track(data['interpolation_type'], data['global_sequence_id'])
        result.frames = dataclass_from_dict(f'{key}.frames', list[int], data['frames'])
        if data['interp_values'] and len(data['values']) != len(data['interp_values']):
            raise DictReadError(
                f'{key} got mismatching values and interp_values lengths: '
                f'{len(data["values"])}, {len(data["interp_values"])}'
            )
        if data['values']:
            if isinstance(data['values'][0], list):
                target_type = tuple
            elif isinstance(data['values'][0], int):
                target_type = int
            elif isinstance(data['values'][0], float):
                target_type = float
            else:
                raise DictReadError(
                    f'{key} got unknown type {type(data["values"][0])}, expected tuple|float|int'
                )
            result.values = [target_type(value) for value in data['values']]
            if 'interp_values' in data:
                result.interp_values = [
                    (target_type(left), target_type(right)) for left, right in data['interp_values']
                ]
        return result
    if issubclass(class_, enum.Enum):
        return class_(data)
    if not isinstance(data, class_):
        raise DictReadError(f"{key} got {data} ({type(data)}), expected {class_}")
    return data


def read_toml_file(filename: str) -> MdxModel:
    with open(filename, 'rb') as fp:
        data = tomllib.load(fp)
    return dataclass_from_dict('top', MdxModel, data)


if __name__ == '__main__':
    MODEL_FILE = 'mods/general/war3mapImported/questionmark_item.mdx'
    with open(MODEL_FILE, 'rb') as fp:
        _raw_bytes = fp.read()
    _data = read_binary(_raw_bytes)
    for f in fields(_data):
        if f.name in ('geosets', 'helpers'):
            continue
        print(f'# {f.name}')
        print(_data.__dict__[f.name])
        print()
    write_toml_to_file(_data, 'output.toml')
    round_tripped_data = read_toml_file('output.toml')

    writer = binary.ByteArrayWriter()
    writer.write_id('MDLX')
    for index, writer_function in enumerate(CHUNK_WRITERS):
        writer_function(writer, round_tripped_data)
        bytes_so_far = writer.as_bytes()
        with open('output.bin', 'wb') as fp:
            fp.write(bytes_so_far)
        assert bytes_so_far == _raw_bytes[:len(bytes_so_far)], (
            f"Failed on function {index}: {writer_function.__name__}"
        )
