"""
Utilities for handling .tga (targa) files.
"""
from .. import binary
from .common import ImageData


def read_tga(raw_bytes: bytes, verbose: bool = False) -> ImageData:
    reader = binary.ByteArrayParser(raw_bytes)
    result = ImageData()
    image_id_length = reader.read_u8()
    colour_map_type = reader.read_u8()
    assert colour_map_type == 0
    image_type = reader.read_u8()
    assert image_type in (2, 10)
    # 0x1 = colour-mapped
    # 0x2 = true-colour, no colour map
    # 0x3 = grayscale
    # 0x8 = run-length encoded
    # 0x20 = huffman-delta-runlength encoded
    is_run_length_encoded = (image_type & 0x8) != 0
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
    bytes_per_pixel = result.bits_per_pixel // 8
    bitfield = reader.read_u8()
    result.alpha_bits = bitfield & 0b1111
    is_right_to_left = (bitfield & 0b10000) != 0
    is_top_to_bottom = (bitfield & 0b100000) != 0
    if is_right_to_left:
        raise NotImplementedError('Right-to-left is not supported')
    assert is_top_to_bottom
    interleaving_mode = (bitfield >> 6)
    assert interleaving_mode == 0
    # offset = 18 bytes (0x12)
    image_id = reader.read_bytes(image_id_length)
    if verbose:
        print(f'width: {result.width}')
        print(f'height: {result.height}')
        print(f'bits per pixel: {result.bits_per_pixel}')
        print(f'alpha bits: {result.alpha_bits}')
        print(f'colour map type: {colour_map_type}')
        print(f'x origin: {x_origin}')
        print(f'y origin: {y_origin}')
        print(f'image ID: {image_id}')
    if colour_map_type:
        # Colour map data, assumed absent
        pass
    if is_run_length_encoded:
        while len(result.pixels) < result.width * result.height * bytes_per_pixel:
            run_length_pixels = reader.read_u8()
            if run_length_pixels < 0x80:
                result.pixels.extend(reader.read_bytes((run_length_pixels + 1) * bytes_per_pixel))
            elif run_length_pixels == 0xff:
                pass
            else:
                # 0x80 ~ 0xfe
                run_length_pixels -= 0x7f
                pixel = reader.read_bytes(bytes_per_pixel)
                result.pixels.extend(pixel * run_length_pixels)
    else:
        result.pixels = bytearray(reader.read_bytes(result.width * result.height * bytes_per_pixel))
    # extension area
    extension_offset = reader.read_u32()
    assert extension_offset == 0
    developer_area_offset = reader.read_u32()
    assert developer_area_offset == 0
    signature = reader.read_buffer_string(18)
    assert signature == 'TRUEVISION-XFILE.'
    return result


def read_tga_file(filename: str, verbose: bool = False) -> ImageData:
    with open(filename, 'rb') as fp:
        raw_bytes = fp.read()
    return read_tga(raw_bytes, verbose)


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

