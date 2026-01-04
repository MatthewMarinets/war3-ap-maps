"""
Utilities for handling jpg files.
Note some of the compression steps here are suboptimal,
prioritizing doing as Blizzard does over standard jpg practice.
This implementation is based on jed by Daniel Harding -- https://github.com/dannye/jed
"""
from typing import Literal
from dataclasses import dataclass, field
from collections import Counter
import math
from .. import binary
from .common import ImageData
from . import dct


@dataclass
class HuffmanTable:
    is_ac: bool = False
    symbol_map: dict[tuple[int, int], int] = field(default_factory=dict)


@dataclass
class JpgData:
    width: int = 0
    height: int = 0
    num_components: int = 0
    restart_interval: int = 0
    are_components_1_indexed: bool = False
    channel_to_sampling_factor: list[tuple[int, int]] = field(default_factory=list)
    channel_to_quantization_table: list[int] = field(default_factory=list)
    channel_to_huffman_tables: list[tuple[int, int]] = field(default_factory=list)
    pixel_data: bytearray = field(default_factory=bytearray)
    huffman_tables: dict[int, HuffmanTable] = field(default_factory=dict)
    quantization_tables: dict[int, bytes] = field(default_factory=dict)
    # blp-specific
    is_bgr_format: bool = False


def clamp(value: int, _min: int, _max: int) -> int:
    if value < _min:
        return _min
    if value > _max:
        return _max
    return value


def YCbCr_to_BGR(ycrcb: list[int] | tuple[int, int, int]) -> bytes:
    """This assumes Y, Cr, Cb in [-128, 127]"""
    assert len(ycrcb) == 3
    Y, Cb, Cr = ycrcb
    # green = int(Y - 0.344136*Cb - 0.714136*Cr + 128)
    red = math.floor(Y                 + 1.402*Cr    + 128.5)
    green = math.floor(Y - 0.344136*Cb - 0.714146*Cr + 128.5)
    blue = math.floor(Y  + 1.772*Cb                  + 128.5)
    red = clamp(red, 0, 255)
    green = clamp(green, 0, 255)
    blue = clamp(blue, 0, 255)
    return bytes([blue, green, red])


def BGR_to_YCbCr(bgr: bytes | tuple[int, int, int] | list[int]) -> tuple[int, int, int]:
    b, g, r = bgr
    Y =  math.floor(0.299*r     + 0.587*g    + 0.114*b    - 127.5)
    Cb = math.floor(-0.168736*r - 0.331264*g + 0.5*b      + 0.5)
    Cr = math.floor(0.5*r       - 0.418688*g - 0.081312*b + 0.5)
    Y = clamp(Y, -128, 127)
    Cb = clamp(Cb, -128, 127)
    Cr = clamp(Cr, -128, 127)
    return Y, Cb, Cr


# ################## #
#        JFIF        #
# ################## #


def _read_comment_block(reader: binary.ByteArrayParser) -> None:
    unknown = reader.read_u8()
    assert unknown == 0
    reader.read_cstring()


def _read_app0(reader: binary.ByteArrayParser) -> None:
    frame_start = reader.index
    length = reader.read('>H')[0]
    assert length == 0x10
    magic_jfif = reader.read_buffer_string(5)
    assert magic_jfif == 'JFIF'
    version = reader.read_bytes(2)
    assert version == b'\x01\x01'
    units = reader.read_u8()
    pixel_density_x = reader.read('>H')[0]
    # assert pixel_density_x == 1, f'pixel_density_x = {pixel_density_x}'
    pixel_density_y = reader.read('>H')[0]
    # assert pixel_density_y == 1
    thumbnail_width = reader.read_u8()
    thumbnail_height = reader.read_u8()
    assert thumbnail_width == 0
    assert thumbnail_height == 0
    # reader.index += 3*thumbnail_height*thumbnail_width
    assert reader.index == frame_start + length


def _read_quantization_table(reader: binary.ByteArrayParser, data: JpgData) -> None:
    frame_start = reader.index
    length = reader.read('>H')[0]
    while reader.index < frame_start + length:
        flags = reader.read_u8()
        if flags & 0xf0:
            raise NotImplementedError("16 bit quantization tables are not supported")
        table_id = flags & 0xf
        assert table_id not in data.quantization_tables, f"Redefining quantization table {table_id}"
        assert table_id <= 3, f"Out of bounds table ID {table_id}"
        data.quantization_tables[table_id] = reader.read_bytes(64)
    assert reader.index == frame_start + length


def _read_huffman_table(reader: binary.ByteArrayParser, data: JpgData) -> None:
    frame_start = reader.index
    length = reader.read('>H')[0]
    while reader.index < frame_start + length:
        table = HuffmanTable()
        table_id = reader.read_u8()
        table.is_ac = (table_id & 0xf0) != 0
        length_to_symbols = [b'']
        character_sizes = reader.read_bytes(16)
        if sum(character_sizes) > 176:
            raise ValueError(f'Too many symbols in Huffman table: {sum(character_sizes)} > 176')
        for character_size in character_sizes:
            length_to_symbols.append(reader.read_bytes(character_size))
        if table_id in data.huffman_tables:
            raise ValueError(f'Multiple huffman tables defined for ID {table_id}')
        table.symbol_map = _huffman_table_to_dict(length_to_symbols)
        data.huffman_tables[table_id] = table
    assert reader.index == frame_start + length


def _read_restart_interval(reader: binary.ByteArrayParser, data: JpgData) -> None:
    frame_start = reader.index
    length = reader.read('>H')[0]
    data.restart_interval = reader.read('>H')[0]
    assert reader.index == frame_start + length


def _read_start_of_frame(reader: binary.ByteArrayParser, data: JpgData) -> None:
    assert not data.num_components, "Duplicate SOF markers"
    frame_start = reader.index
    length = reader.read('>H')[0]
    bits_per_pixel = reader.read_u8()
    assert bits_per_pixel == 8
    data.height = reader.read('>H')[0]
    # todo(mm): Subsampled channels affect the MCU size; calculate that here
    data.width = reader.read('>H')[0]
    data.num_components = reader.read_u8()
    assert data.num_components != 0, f"Invalid number of channels: {data.num_components}"
    for index in range(data.num_components):
        component = reader.read_u8()
        if component == index + 1:
            data.are_components_1_indexed = True
        else:
            assert component == index, f"At {hex(reader.index)}"
        sampling_factor_bitfield = reader.read_u8()
        sampling_factor = (
            sampling_factor_bitfield >> 4,
            sampling_factor_bitfield & 0xf,
        )
        assert sampling_factor == (1, 1), "Subsampling is not supported"
        data.channel_to_sampling_factor.append(sampling_factor)
        data.channel_to_quantization_table.append(reader.read_u8())
    assert reader.index == frame_start + length


def _read_start_of_scan(reader: binary.ByteArrayParser, data: JpgData) -> None:
    assert not data.pixel_data, f'Encountered second SOS tag at {reader.index}'
    frame_start = reader.index
    length = reader.read('>H')[0]
    num_components = reader.read_u8()
    assert num_components
    assert num_components == data.num_components
    for index in range(num_components):
        component = reader.read_u8()
        assert component == index + data.are_components_1_indexed
        target_huffman_tables = reader.read_u8()
        huffman_table_ids = (
            target_huffman_tables >> 4,   # DC
            target_huffman_tables & 0xf,  # AC
        )
        data.channel_to_huffman_tables.append(huffman_table_ids)
    spectral_info = reader.read_bytes(3)
    # start of selection, end of selection, successive approximation
    # This is always 0, 63, 0 for baseline/non-progressive jpegs
    assert spectral_info == b'\x00\x3f\x00'
    assert reader.index == frame_start + length


def _read_scan(reader: binary.ByteArrayParser, data: JpgData) -> None:
    assert data.channel_to_huffman_tables
    remaining_bytes = reader.raw_bytes[reader.index:]
    parts = remaining_bytes.split(b'\xff')
    pixel_data = bytearray(parts[0])
    num_bytes = len(pixel_data)
    for part in parts[1:]:
        if not part:
            break
        if part.startswith(b'\0'):
            pixel_data.append(0xff)
            pixel_data.extend(part[1:])
            num_bytes += len(part) + 1
        elif part[0] >= 0xd0 and part[0] <= 0xd7:
            # restart markers
            raise NotImplementedError('Restart markers are not implemented')
        elif part[0] == 0xd9:
            break
        else:
            raise ValueError(f'Unknown final tag in stream: ff {hex(part[0])[2:]}')
    data.pixel_data = pixel_data
    reader.index += num_bytes


def _read_unknown_block(reader: binary.ByteArrayParser) -> None:
    frame_start = reader.index
    length = reader.read('>H')[0]
    reader.read_bytes(length-2)


def read_jpg_data(raw_bytes: bytes, came_from_blp: bool = False) -> JpgData:
    reader = binary.ByteArrayParser(raw_bytes)
    result = JpgData()
    result.is_bgr_format = came_from_blp
    soi = reader.read_bytes(2)
    assert soi == b'\xff\xd8'
    next_marker = reader.read_bytes(2)
    while next_marker:
        if next_marker == b'\xff\xe0':  # APP0
            _read_app0(reader)
        elif next_marker == b'\xff\xfe':  # COM - Comment
            _read_comment_block(reader)
        elif next_marker == b'\xff\xd9':  # EOI - End of Image
            # EOF
            break
        elif next_marker == b'\xff\xdb':  # DQT - Define Quantization Table
            _read_quantization_table(reader, result)
        elif next_marker == b'\xff\xc4':  # DHT - Define Huffman Table
            _read_huffman_table(reader, result)
        elif next_marker == b'\xff\xdd':  # DRI - Define Restart Interval
            _read_restart_interval(reader, result)
        elif next_marker == b'\xff\xc0':  # SOF0 - Start of Frame (type 0)
            _read_start_of_frame(reader, result)
        elif next_marker == b'\xff\xda':  # SOS - Start of Scan
            _read_start_of_scan(reader, result)
            _read_scan(reader, result)
            break
        elif next_marker in (
            b'\xff\xdc',  # DNL - Define Number of Lines
            b'\xff\xde',  # DHP - Define Hierarchical Progression
            b'\xff\xdf',  # EXP - Expand Reference Components
            b'\xff\xe1',  # APP1 marker, used by exif
            b'\xff\xe6',  # APP6
        ):
            _read_unknown_block(reader)
        elif next_marker == b'\xff\x01':  # TEM
            pass
        elif next_marker == b'\xff\xff':
            # Multiple consecutive 0xff bytes are allowed in a row and should be ignored
            next_marker = bytes([next_marker[1], reader.read_u8()])
            continue
        else:
            raise ValueError(f'Unknown tag: {next_marker!r}')
        next_marker = reader.read_bytes(2)
    return result


def read_jpg_file(filename: str) -> JpgData:
    with open(filename, 'rb') as fp:
        raw_bytes = fp.read()
    return read_jpg_data(raw_bytes)


def _write_app0(writer: binary.ByteArrayWriter, data: JpgData) -> None:
    writer.write_u16_be(16)
    writer.write_cstring('JFIF')
    writer.write_bytes(b'\x01\x01')
    writer.write_u8(1)  # Units
    writer.write_u16_be(1)  # pixel density X
    writer.write_u16_be(1)  # pixel density Y
    writer.write_u8(0)  # Thumbnail width
    writer.write_u8(0)  # Thumbnail height


def _write_quantization_table(writer: binary.ByteArrayWriter, quantization_tables: dict[int, bytes]) -> None:
    frame_start = len(writer.data)
    writer.write_u16_be(0)  # filled in later
    for table_id, quantization_table in quantization_tables.items():
        if table_id >= 0x10:
            raise NotImplementedError("16 bit quantization tables are not supported")
        writer.write_u8(table_id)
        assert len(quantization_table) == 64
        writer.write_bytes(quantization_table)
    # Handle length
    frame_length = len(writer.data) - frame_start
    writer.data[frame_start] = frame_length >> 8
    writer.data[frame_start+1] = frame_length & 0xff


def _write_huffman_table(writer: binary.ByteArrayWriter, data: JpgData) -> None:
    frame_start = len(writer.data)
    writer.write_u16_be(0)  # filled in later
    for table_id, huffman_table in data.huffman_tables.items():
        writer.write_u8(table_id)
        writer.write_bytes(_huffman_table_to_bytes(huffman_table.symbol_map))
    # Handle length
    frame_length = len(writer.data) - frame_start
    writer.data[frame_start] = frame_length >> 8
    writer.data[frame_start+1] = frame_length & 0xff


def _write_sof0(writer: binary.ByteArrayWriter, data: JpgData) -> None:
    frame_start = len(writer.data)
    writer.write_u16_be(0)  # filled in later
    writer.write_u8(8)  # bits per colour channel
    writer.write_u16_be(data.height)
    writer.write_u16_be(data.width)
    writer.write_u8(data.num_components)
    for index in range(data.num_components):
        writer.write_u8(index + data.are_components_1_indexed)
        sampling_factors = data.channel_to_sampling_factor[index]
        sampling_factor_bitfield = (sampling_factors[0] << 4) | sampling_factors[1]
        writer.write_u8(sampling_factor_bitfield)  # Sampling factors
        writer.write_u8(data.channel_to_quantization_table[index])
    # Handle length
    frame_length = len(writer.data) - frame_start
    writer.data[frame_start] = frame_length >> 8
    writer.data[frame_start+1] = frame_length & 0xff


def _write_start_of_scan(writer: binary.ByteArrayWriter, data: JpgData) -> None:
    frame_start = len(writer.data)
    writer.write_u16_be(0)  # filled in later
    writer.write_u8(data.num_components)
    for index in range(data.num_components):
        writer.write_u8(index + data.are_components_1_indexed)
        huffman_tables = data.channel_to_huffman_tables[index]
        huffman_table_bitfield = (huffman_tables[0] << 4) | huffman_tables[1]
        writer.write_u8(huffman_table_bitfield)
    writer.write_bytes(b'\x00\x3f\x00')  # Spectral info
    # Handle length
    frame_length = len(writer.data) - frame_start
    writer.data[frame_start] = frame_length >> 8
    writer.data[frame_start+1] = frame_length & 0xff


def _write_scan(writer: binary.ByteArrayWriter, data: JpgData) -> None:
    writer.write_bytes(data.pixel_data.replace(b'\xff', b'\xff\x00'))


def write_jpg(data: JpgData, for_blp: bool = False) -> bytes:
    writer = binary.ByteArrayWriter()
    # SOI
    writer.write_bytes(b'\xff\xd8')
    # APP0
    if not for_blp:
        writer.write_bytes(b'\xff\xe0')
        _write_app0(writer, data)
    # DQT
    # Note(mm): The headers I see in .blp files use separate frames per Huffman/Quantization table
    writer.write_bytes(b'\xff\xdb')
    _write_quantization_table(writer, data.quantization_tables)
    # DHT
    writer.write_bytes(b'\xff\xc4')
    _write_huffman_table(writer, data)
    # SOF0
    writer.write_bytes(b'\xff\xc0')
    _write_sof0(writer, data)
    # SOS
    writer.write_bytes(b'\xff\xda')
    _write_start_of_scan(writer, data)
    _write_scan(writer, data)
    # EOI
    writer.write_bytes(b'\xff\xd9')
    return writer.as_bytes()


def write_jpg_file(data: JpgData, filename: str, for_blp: bool = False) -> None:
    raw_bytes = write_jpg(data, for_blp)
    with open(filename, 'wb') as fp:
        fp.write(raw_bytes)


# ################## #
#        Jpeg        #
# ################## #

# Compressing:
# * Colour space conversion RGB -> YCbCr
# * Channel-specific downsampling
# * Split image into 8x8 blocks
# * Discrete Cosine Transform (DCT)
# * Quantization
# * Entropy coding
#   * Zig-zag order
#   * RLE
#   * Insert length-coding 0s
#   * Huffman coding


class BitReader:
    def __init__(self, raw_bytes: bytes) -> None:
        self.raw_bytes = raw_bytes
        self.byte_index = 0
        self.bit_index = 0

    def is_finished(self) -> bool:
        return self.byte_index >= len(self.raw_bytes)

    def advance(self, num_bits: int = 1) -> None:
        self.bit_index += num_bits
        bytes_to_increment, self.bit_index = divmod(self.bit_index, 8)
        self.byte_index += bytes_to_increment

    def next_bit(self) -> Literal[0, 1, -1]:
        if self.is_finished():
            return -1
        byte = self.raw_bytes[self.byte_index]
        bit = (byte >> (7-self.bit_index)) & 1
        self.advance()
        return bit  # type: ignore

    def read_bits(self, num_bits: int) -> int:
        result = 0
        for _ in range(num_bits):
            next_bit = self.next_bit()
            if next_bit < 0:
                return -1
            result = (result << 1) | next_bit
        return result

    def align_to_next_byte(self) -> None:
        if self.bit_index == 0:
            return
        self.bit_index = 0
        self.byte_index += 1


def _huffman_table_to_dict(length_to_symbols: list[bytes]) -> dict[tuple[int, int], int]:
    """
    @returns a map of symbol value -> symbol
    """
    result: dict[tuple[int, int], int] = {}
    code_candidate = 0
    for code_length, symbols in enumerate(length_to_symbols):
        for symbol in symbols:
            result[(code_length, code_candidate)] = symbol
            code_candidate += 1
        code_candidate = code_candidate << 1
    return result


def _huffman_table_to_bytes(table: dict[tuple[int, int], int]) -> bytes:
    result = bytearray()
    # write length->num symbols info
    num_symbols_per_length: Counter[int] = Counter()
    for code_length, code in table:
        num_symbols_per_length[code_length] += 1
    for code_length in range(1, 17):
        result.append(num_symbols_per_length[code_length])
    assert len(result) == 16
    # @assume the table is already sorted (should be if generated by _huffman_table_to_dict())
    for symbol in table.values():
        result.append(symbol)
    return bytes(result)


def _get_next_symbol(
    reader: BitReader, table: dict[tuple[int, int], int],
) -> int:  # u8
    current_code = 0
    length = 0
    for _ in range(16):
        next_bit = reader.next_bit()
        if next_bit < 0:
            raise ValueError('Reached end of stream reading symbol')
        current_code = (current_code << 1) | next_bit
        length += 1
        if (length, current_code) in table:
            return table[length, current_code]
    raise ValueError('First 16 bits of read did not match a valid huffman symbol')


def _decode_negative(word: int, word_length: int) -> int:
    if word < (1 << (word_length - 1)):
        return word - (1 << word_length) + 1
    return word


def _encode_negative(word_length: int, word: int) -> int:
    if word < 0:
        return word + (1 << word_length) - 1
    return word


def decode_mcu_component(
    reader: BitReader,
    mcu_component: list[int],
    dc_huffman_table: dict[tuple[int, int], int],
    ac_huffman_table: dict[tuple[int, int], int],
    last_dc_value: int,
) -> int:
    # Get DC value
    dc_coefficient_length = _get_next_symbol(reader, dc_huffman_table)
    assert dc_coefficient_length < 12
    if dc_coefficient_length == 0:
        dc_coefficient = 0
    else:
        dc_coefficient = reader.read_bits(dc_coefficient_length)
        assert dc_coefficient != -1
        dc_coefficient = _decode_negative(dc_coefficient, dc_coefficient_length)
    dc_coefficient += last_dc_value
    mcu_component[0] = dc_coefficient

    mcu_index = 1
    while mcu_index < 64:
        symbol = _get_next_symbol(reader, ac_huffman_table)
        if symbol == 0:
            # @assume: component is already zeroed
            return dc_coefficient
        num_zeroes = symbol >> 4
        coefficient_length = symbol & 0xf
        if symbol == 0xf0:
            num_zeroes = 16
        if mcu_index + num_zeroes >= 64:
            raise ValueError('Zero run length exceeds bounds of MCU')
        # @assume: component is already zeroed
        mcu_index += num_zeroes
        if coefficient_length:
            coefficient = reader.read_bits(coefficient_length)
            if coefficient < 0:
                raise ValueError('Unexpected end of MCU stream')
            coefficient = _decode_negative(coefficient, coefficient_length)
            target_index = ZIG_ZAG_TO_LINEAR[mcu_index]
            mcu_component[target_index] = coefficient
            mcu_index += 1
    return dc_coefficient


def decompress_jpg(jpg: JpgData) -> ImageData:
    bytes_per_pixel = jpg.num_components
    result = ImageData(
        width=jpg.width, height=jpg.height, bits_per_pixel=bytes_per_pixel*8,
        pixels=bytearray(jpg.width * jpg.height * bytes_per_pixel)
    )
    if bytes_per_pixel == 4:
        result.alpha_bits = 8

    mcu_width = (jpg.width + 7) // 8
    mcu_height = (jpg.height + 7) // 8
    mcus = tuple(
        tuple(
            [0 for _ in range(64)]  # s16
            for c in range(jpg.num_components)
        )
        for m in range(mcu_width * mcu_height)
    )
    reader = BitReader(jpg.pixel_data)
    last_dc_value = [0 for _ in range(jpg.num_components)]
    for mcu_index, mcu in enumerate(mcus):
        if jpg.restart_interval and (mcu_index % jpg.restart_interval == 0):
            for x in range(len(last_dc_value)):
                last_dc_value[x] = 0
            reader.align_to_next_byte()
        for component_index, mcu_component in enumerate(mcu):
            dc_huffman = jpg.huffman_tables[jpg.channel_to_huffman_tables[component_index][0]].symbol_map
            ac_huffman = jpg.huffman_tables[jpg.channel_to_huffman_tables[component_index][1] + 16].symbol_map
            dc_value = decode_mcu_component(
                reader,
                mcu_component,
                dc_huffman,
                ac_huffman,
                last_dc_value[component_index],
            )
            last_dc_value[component_index] = dc_value
            # Quantization
            quantization_table = jpg.quantization_tables[jpg.channel_to_quantization_table[component_index]]
            for x in range(64):
                mcu_component[x] = mcu_component[x] * quantization_table[LINEAR_TO_ZIG_ZAG[x]]
            # DCT
            dct.fast_inverse_dct(mcu_component)
    assert abs(reader.byte_index - len(reader.raw_bytes)) < 2, f"index={reader.byte_index} != {len(reader.raw_bytes)}"
    # Blit MCUs to pixel array
    for mcu_index, mcu in enumerate(mcus):
        mcu_y, mcu_x = divmod(mcu_index, mcu_width)
        for src_y in range(8):
            y = mcu_y * 8 + src_y
            if y >= result.height:
                continue
            for src_x in range(8):
                x = mcu_x * 8 + src_x
                if x >= result.width:
                    continue
                src_offset = src_y*8 + src_x
                ycbcr = [mcu[0][src_offset], mcu[1][src_offset], mcu[2][src_offset]]
                if jpg.is_bgr_format:
                    bgr = bytes([clamp(val + 128, 0, 255) for val in ycbcr])
                else:
                    bgr = YCbCr_to_BGR(ycbcr)
                result.pixels[
                    bytes_per_pixel*(result.width*y + x)
                    :bytes_per_pixel*(result.width*y + x) + 3
                ] = bgr
                if bytes_per_pixel > 3:
                    for c in range(3, bytes_per_pixel):
                        result.pixels[
                            bytes_per_pixel*(result.width*y + x) + c
                        ] = clamp(mcu[c][src_offset] + 128, 0, 255)
    return result


def zigzagify(block: list[int]) -> list[int]:
    result = [0 for _ in range(len(block))]
    x = 0
    y = 0
    dx = +1
    for index, element in enumerate(block):
        result[index] = block[8*y + x]
        if y - dx >= 8:
            x += 1
            dx *= -1
        elif y - dx < 0:
            x += 1
            dx *= -1
        elif x + dx < 0:
            y += 1
            dx *= -1
        elif x + dx >= 8:
            y += 1
            dx *= -1
        else:
            x += dx
            y -= dx
    return result


ZIG_ZAG_TO_LINEAR = zigzagify(list(range(64)))
LINEAR_TO_ZIG_ZAG = [0] * 64
for _index, _x in enumerate(ZIG_ZAG_TO_LINEAR):
    LINEAR_TO_ZIG_ZAG[_x] = _index


class BitWriter:
    def __init__(self) -> None:
        self.raw_bytes = bytearray()
        self.bit_index = 0

    def write_zero(self) -> None:
        if self.bit_index == 0:
            self.raw_bytes.append(0)
        self.bit_index += 1
        if self.bit_index >= 8:
            self.bit_index = 0

    def write_one(self) -> None:
        if self.bit_index == 0:
            self.raw_bytes.append(0x80)
            self.bit_index += 1
        else:
            self.raw_bytes[-1] |= 1 << (7 - self.bit_index)
            self.bit_index += 1
            if self.bit_index >= 8:
                self.bit_index = 0
    
    def write_bit(self, bit: int) -> None:
        if bit:
            self.write_one()
        else:
            self.write_zero()
    
    def write_code(self, length: int, code: int) -> None:
        for bit in reversed(range(length)):
            self.write_bit(code & (1 << bit))


def _invert_dict(d: dict) -> dict:
    result = {}
    for key, value in d.items():
        result[value] = key
    return result


def get_value_bit_length(value: int) -> int:
    value_length = 1
    while abs(value) & ((1 << value_length) - 1) != abs(value):
        value_length += 1
    assert value_length < 16
    return value_length


def encode_mcu_component(
    writer: BitWriter,
    block: list[int],
    dc_huffman_table: dict[int, tuple[int, int]],
    ac_huffman_table: dict[int, tuple[int, int]],
    last_dc_value: int,
) -> int:
    # Get DC value
    dc_value = block[0] - last_dc_value
    if dc_value == 0:
        writer.write_code(*dc_huffman_table[0])
    else:
        dc_value_length = get_value_bit_length(dc_value)
        encoded_dc_value = _encode_negative(dc_value_length, dc_value)
        writer.write_code(*dc_huffman_table[dc_value_length])
        writer.write_code(dc_value_length, encoded_dc_value)

    # Find the last value to actually encode
    last_nonzero_index = 63
    while last_nonzero_index > 0 and block[last_nonzero_index] == 0:
        last_nonzero_index -= 1

    zero_run_length = 0
    for mcu_index in range(1, last_nonzero_index+1):
        ac_value = block[mcu_index]
        if ac_value == 0:
            zero_run_length += 1
            if zero_run_length == 16:
                writer.write_code(*ac_huffman_table[0xf0])
                zero_run_length = 0
            continue
        ac_value_length = get_value_bit_length(ac_value)
        ac_value = _encode_negative(ac_value_length, ac_value)
        value_to_encode = (zero_run_length << 4) | ac_value_length
        zero_run_length = 0
        writer.write_code(*ac_huffman_table[value_to_encode])
        writer.write_code(ac_value_length, ac_value)

    # Encode end of block
    if last_nonzero_index < 63:
        writer.write_code(*ac_huffman_table[0])
    return block[0]


def compress_jpg(
    image: ImageData,
    quantization_tables: dict[int, bytes],
    huffman_tables: dict[int, HuffmanTable] | None = None,
) -> JpgData:
    if huffman_tables is None:
        raise NotImplementedError("Only pre-defined huffman tables are supported")
    # 4 channels isn't standard jpg, but .blp uses it for alpha
    num_channels = 4 if image.alpha_bits else 3
    result = JpgData(
        width=image.width,
        height=image.height,
        num_components=num_channels,
        channel_to_sampling_factor=[(1, 1)]*num_channels,
        quantization_tables=quantization_tables,
        huffman_tables=huffman_tables,
    )
    if num_channels == 4:
        result.is_bgr_format = True

    # @assume always using quantization table 0
    result.channel_to_quantization_table = [0] * num_channels

    # @assume always using huffman table 0
    result.channel_to_huffman_tables = [(0, 0)] * num_channels

    huffman_symbol_to_codes: dict[int, dict[int, tuple[int, int]]] = {
        index: _invert_dict(table.symbol_map)
        for index, table in huffman_tables.items()
    }

    # Skipping - colour space conversion
    # Skipping - channel-specific downsampling
    # Block splitting
    writer = BitWriter()
    last_dc_value = [0 for _ in range(result.num_components)]
    stride = image.width
    for y_start in range(0, image.width, 8):
        for x_start in range(0, image.width, 8):
            for channel in range(num_channels):
                block = []
                quantization_table = quantization_tables[result.channel_to_quantization_table[channel]]
                dc_huffman_table = huffman_symbol_to_codes[result.channel_to_huffman_tables[channel][0]]
                ac_huffman_table = huffman_symbol_to_codes[result.channel_to_huffman_tables[channel][1] + 16]
                for dy in range(8):
                    y = y_start + dy
                    if y > image.height:
                        y = image.height
                    for dx in range(8):
                        x = x_start + dx
                        if x > image.width:
                            x = image.width
                        offset = num_channels * (y*stride + x)
                        if result.is_bgr_format:
                            value = image.pixels[offset+channel]
                            value -= 128  # Downshift
                            block.append(value)
                        else:
                            bgr_value = image.pixels[offset:offset+3]
                            ycc = BGR_to_YCbCr(bgr_value)
                            # Downshift is handled by the colourspace conversion
                            value = ycc[channel]
                            block.append(value)
                # Discrete Cosine Transform
                dct_block = dct.fast_dct(block)
                # Quantization
                for index in range(64):
                    block[index] = round(dct_block[index] / quantization_table[LINEAR_TO_ZIG_ZAG[index]])
                # Zig-zag ordering
                block = zigzagify(block)
                # Huffman coding
                last_dc_value[channel] = encode_mcu_component(
                    writer, block, dc_huffman_table, ac_huffman_table, last_dc_value[channel]
                )
    result.pixel_data = writer.raw_bytes
    return result


JPG_50_PERCENT_QUALITY_QUANTIZATION_TABLE = (
    16,  11,  10,  16,  24,  40,  51,  61,
    12,  12,  14,  19,  26,  58,  60,  55,
    14,  13,  16,  24,  40,  57,  69,  56,
    14,  17,  22,  29,  51,  87,  80,  62,
    18,  22,  37,  56,  68, 109, 103,  77,
    24,  35,  55,  64,  81, 104, 113,  92,
    49,  64,  78,  87, 103, 121, 120, 101,
    72,  92,  95,  98, 112, 100, 103,  99,
)


def print_block(block: list[int]) -> None:
    for y in range(8):
        print(' '.join(map(str, block[8*y:8*y+8])))
