"""
Utilities for handling .tga (targa) files.
"""
from .. import binary
from .common import ImageData


def read_tga(raw_bytes: bytes) -> ImageData:
    reader = binary.ByteArrayParser(raw_bytes)
    result = ImageData()
    image_id_length = reader.read_u8()
    colour_map_type = reader.read_u8()
    assert colour_map_type == 0
    image_type = reader.read_u8()
    assert image_type == 2
    # 0x2 = true-colour, no colour map
    # 0x8 = run-length encoded
    colour_map_offset = reader.read_u16()
    colour_map_length = reader.read_u16()
    colour_map_entry_size = reader.read_u8()
    assert colour_map_offset == 0
    assert colour_map_length == 0
    assert colour_map_entry_size == 0
    x_origin = reader.read_u16()
    y_origin = reader.read_u16()
    result.width = reader.read_u16()
    result.height = reader.read_u16()
    result.bits_per_pixel = reader.read_u8()
    assert result.bits_per_pixel % 8 == 0
    bitfield = reader.read_u8()
    result.alpha_bits = bitfield & 0b1111
    is_right_to_left = (bitfield & 0b10000) != 0
    is_top_to_bottom = (bitfield & 0b100000) != 0
    interleaving_mode = (bitfield >> 6)
    assert interleaving_mode == 0
    image_id = reader.read_bytes(image_id_length)
    if colour_map_type:
        # Colour map data, assumed absent
        pass
    result.pixels = bytearray(reader.read_bytes(result.width * result.height * (result.bits_per_pixel // 8)))
    # extension area
    extension_offset = reader.read_u32()
    assert extension_offset == 0
    developer_area_offset = reader.read_u32()
    assert developer_area_offset == 0
    signature = reader.read_buffer_string(18)
    assert signature == 'TRUEVISION-XFILE.'
    return result


def read_tga_file(filename: str) -> ImageData:
    with open(filename, 'rb') as fp:
        raw_bytes = fp.read()
    return read_tga(raw_bytes)


def write_tga(image: ImageData) -> bytes:
    writer = binary.ByteArrayWriter()
    writer.write_u8(0)  # image_id_length
    writer.write_u8(0)  # colour_map_type
    writer.write_u8(2)  # no colour map; no RLE
    writer.write_u16(0)  # colour map offset
    writer.write_u16(0)  # colour map length
    writer.write_u8(0)  # colour map entry size
    writer.write_u16(0)  # x_origin
    writer.write_u16(image.height)  # y_origin
    writer.write_u16(image.width)
    writer.write_u16(image.height)
    writer.write_u8(image.bits_per_pixel)
    writer.write_u8(
        0b100000    # Left-to-right, Top-to-bottom
        | (image.alpha_bits & 0b1111)
    )
    # image_id
    # colour map
    writer.write_bytes(image.pixels)
    writer.write_u32(0)  # extension offset
    writer.write_u32(0)  # developer area offset
    writer.write_cstring('TRUEVISION-XFILE.')
    return writer.as_bytes()


def write_tga_file(image: ImageData, filename: str) -> None:
    raw_bytes = write_tga(image)
    with open(filename, 'wb') as fp:
        fp.write(raw_bytes)

