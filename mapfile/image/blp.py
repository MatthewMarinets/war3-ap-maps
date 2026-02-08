"""
Utilities for working with .blp (Blizzard image) files
"""

# Sources:
# ## Jpeg
# Frame data explainer: https://www.ccoderun.ca/programming/2017-01-31_jpeg/

from typing import NamedTuple
import os
import shutil
import glob
import tomllib
from .common import ImageData, generate_mip_map
from . import jpg, tga
from mapfile import binary

blp_version = {
    b'BLP0': 0,  # Warcraft 3 ROC beta
    b'BLP1': 1,  # Warcraft 3
    b'BLP2': 2,  # World of Warcraft
}
version_to_code = {
    _version: _code for _code, _version in blp_version.items()
}


class BlpInfo(NamedTuple):
    version: int
    content_type: int
    alpha_bits: int
    extra_flags: int
    has_mipmaps: bool
    image_width: int
    image_height: int
    image_data: list[bytes]


def read_blp(filename: str, dest: str | None = None) -> BlpInfo:
    """
    Reads a .blp
    """
    with open(filename, 'rb') as file_handle:
        contents = file_handle.read()
    reader = binary.ByteArrayParser(contents)

    # https://www.hiveworkshop.com/threads/blp-specifications-wc3.279306/
    file_format_version = b''.join(reader.read('=cccc'))
    version = blp_version[file_format_version]
    assert version != 0, 'WC3 beta .blp format is not supported'
    content_type = reader.read_int32()
    assert content_type == 0, 'only jpeg-format .blp files are supported for now'
    if version >= 2:
        encoding_type: int = reader.read('B')[0]
        alpha_bits: int = reader.read('B')[0]
        sample_type: int = reader.read('B')[0]
        has_mipmaps: bool = reader.read('B')[0] != 0
        extra_flags = 5
    else:
        alpha_bits = reader.read_int32()
    image_width = reader.read_int32()
    image_height = reader.read_int32()
    if version < 2:
        extra_flags = reader.read_int32()
        has_mipmaps = reader.read_int32() != 0
    mipmap_offsets = reader.read('I' * 16)
    mipmap_sizes = reader.read('I' * 16)

    # content start
    ## jpeg
    jpeg_header_size = reader.read_u32()
    assert jpeg_header_size <= 0x270
    jpeg_header_bytes = reader.read_bytes(jpeg_header_size)
    image_bytes: list[bytes] = []
    for mipmap_level in range(16):
        if not mipmap_offsets[mipmap_level]:
            break
        reader.index = mipmap_offsets[mipmap_level]
        image_bytes.append(jpeg_header_bytes + reader.read_bytes(mipmap_sizes[mipmap_level]))
        if not has_mipmaps:
            break

    if dest is not None:
        # pip install opencv-python
        import cv2
        import numpy as np
        image = cv2.imdecode(np.asarray(bytearray(image_bytes[0]), dtype=np.uint8), cv2.IMREAD_COLOR)
        image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
        cv2.imwrite(dest, image)

    return BlpInfo(
        version=version,
        content_type=content_type,
        alpha_bits=alpha_bits,
        extra_flags=extra_flags,
        has_mipmaps=has_mipmaps,
        image_width=image_width,
        image_height=image_height,
        image_data=image_bytes,
    )


def write_blp(blp_info: BlpInfo, jpg_data: list[tuple[bytes, dict[jpg.FrameMarker, list[int]]]]) -> bytes:
    writer = binary.ByteArrayWriter()
    writer.write_bytes(version_to_code[blp_info.version])
    writer.write_int32(0)  # content_type
    assert blp_info.version < 2
    if blp_info.version < 2:
        writer.write_int32(blp_info.alpha_bits)
    else:
        # todo: v2 encoding_type, alpha_bits, sample_type, has_mipmaps
        pass
    writer.write_int32(blp_info.image_width)
    writer.write_int32(blp_info.image_height)
    if blp_info.version < 2:
        writer.write_int32(blp_info.extra_flags)
        writer.write_int32(blp_info.has_mipmaps)

    jpg_header_size = jpg_data[0][1][jpg.FrameMarker.SOF0][0]
    jpg_header_bytes = jpg_data[0][0][:jpg_header_size]

    # Calculate mipmap stats
    mipmap_sizes: list[int] = []
    mipmap_offsets: list[int] = []
    cumulative_length = (
        writer.index()
        + 16 * 4  # mipmap_offsets
        + 16 * 4  # mipmap_sizes
        + 4  # sizeof(jpg_header_size)
        + jpg_header_size
    )
    for mipmap_level in range(16):
        if len(jpg_data) <= mipmap_level:
            mipmap_sizes.append(0)
            mipmap_offsets.append(0)
        else:
            mipmap_data = jpg_data[mipmap_level]
            mipmap_size = len(mipmap_data[0]) - mipmap_data[1][jpg.FrameMarker.SOF0][0]
            mipmap_sizes.append(mipmap_size)
            mipmap_offsets.append(cumulative_length)
            cumulative_length += mipmap_size

    # Write mipmap stats
    for mipmap_offset in mipmap_offsets:
        writer.write_int32(mipmap_offset)
    for mipmap_size in mipmap_sizes:
        writer.write_int32(mipmap_size)

    writer.write_int32(jpg_header_size)
    writer.write_bytes(jpg_header_bytes)

    for mipmap_index, mipmap_data in enumerate(jpg_data):
        assert writer.index() == mipmap_offsets[mipmap_index], (
            f"index {mipmap_index}: write pos {writer.index()} != {mipmap_offsets[mipmap_index]}"
        )
        assert mipmap_data[1][jpg.FrameMarker.SOF0][0] == jpg_header_size
        writer.write_bytes(mipmap_data[0][jpg_header_size:])

    return writer.as_bytes()


def write_blp_file(
    blp_info: BlpInfo,
    jpg_data: list[tuple[bytes, dict[jpg.FrameMarker, list[int]]]],
    filename: str
) -> None:
    raw_bytes = write_blp(blp_info, jpg_data)
    os.makedirs(os.path.dirname(filename), exist_ok=True)
    with open(filename, 'wb') as fp:
        fp.write(raw_bytes)


def unpack_to_folder(filename: str, destination: str) -> None:
    blp_info = read_blp(filename)
    stem = os.path.splitext(os.path.basename(filename))[0]
    if os.path.exists(destination):
        shutil.rmtree(destination)
    os.makedirs(destination)
    with open(f'{destination}/info.toml', 'w') as fp:
        fp.write(f'version = {blp_info.version}\n')
        fp.write(f'width = {blp_info.image_width}\n')
        fp.write(f'height = {blp_info.image_height}\n')
    for index, jpg_bytes in enumerate(blp_info.image_data):
        jpg_data = jpg.read_jpg_data(jpg_bytes, came_from_blp=True)
        image = jpg.decompress_jpg(jpg_data)
        tga.write_tga_file(image, f'{destination}/mipmap_{index}.tga')


def pack_folder_to_blp(folder: str, dest: str, regenerate_mipmaps: bool = True) -> None:
    info_file = f'{folder}/info.toml'
    with open(info_file, 'rb') as fp:
        info = tomllib.load(fp)
    mipmap_files = sorted(glob.glob(f'{folder}/mipmap_*.tga'))
    image_data = tga.read_tga_file(mipmap_files[0])
    compressed_data = [compress_image_data(image_data)]
    last_image_data = image_data
    for mipmap_file in mipmap_files[1:]:
        if regenerate_mipmaps:
            this_image_data = generate_mip_map(last_image_data)
            last_image_data = this_image_data
            tga.write_tga_file(this_image_data, mipmap_file)
        else:
            this_image_data = tga.read_tga_file(mipmap_file)
        compressed_data.append(compress_image_data(this_image_data))
    result = BlpInfo(
        version=info['version'],
        content_type=0,
        alpha_bits=image_data.alpha_bits,
        extra_flags=5,
        has_mipmaps=len(mipmap_files) > 1,
        image_width=image_data.width,
        image_height=image_data.height,
        image_data=[],
    )
    os.makedirs(os.path.dirname(dest), exist_ok=True)
    write_blp_file(result, compressed_data, dest)


def compress_image_data(image: ImageData) -> tuple[bytes, dict[jpg.FrameMarker, list[int]]]:
    jpg_data = jpg.compress_jpg(image, DEFAULT_QUANTIZATION_TABLES, DEFAULT_HUFFMAN_TABLES)
    return jpg.write_jpg_get_offsets(jpg_data, for_blp=True)


# Common table values used within the blp jpg header
DEFAULT_QUANTIZATION_TABLES = {
    0: (
        b"\x06\x04\x05\x06\x05\x04\x06\x06\x05\x06\x07\x07\x06\x08\n\x10\n\n\t\t\n"
        b"\x14\x0e\x0f\x0c\x10\x17\x14\x18\x18\x17\x14\x16\x16\x1a\x1d%\x1f\x1a\x1b"
        b"#\x1c\x16\x16 , #&')*)\x19\x1f-0-(0%()("
    ),
    1: b'\x07\x07\x07\n\x08\n\x13\n\n\x13(\x1a\x16\x1a(((((((((((((((((((((((((((((((((((((((((((((((((('
}


DEFAULT_HUFFMAN_TABLES: dict[int, jpg.HuffmanTable] = {
    0: {
        (2, 0): 0,
        (3, 2): 1,
        (3, 3): 2,
        (3, 4): 3,
        (3, 5): 4,
        (3, 6): 5,
        (4, 14): 6,
        (5, 30): 7,
        (6, 62): 8,
        (7, 126): 9,
        (8, 254): 10,
        (9, 510): 11,
    },
    16: {
        (2, 0): 1,
        (2, 1): 2,
        (3, 4): 3,
        (4, 10): 0,
        (4, 11): 4,
        (4, 12): 17,
        (5, 26): 5,
        (5, 27): 18,
        (5, 28): 33,
        (6, 58): 49,
        (6, 59): 65,
        (7, 120): 6,
        (7, 121): 19,
        (7, 122): 81,
        (7, 123): 97,
        (8, 248): 7,
        (8, 249): 34,
        (8, 250): 113,
        (9, 502): 20,
        (9, 503): 50,
        (9, 504): 129,
        (9, 505): 145,
        (9, 506): 161,
        (10, 1014): 8,
        (10, 1015): 35,
        (10, 1016): 66,
        (10, 1017): 177,
        (10, 1018): 193,
        (11, 2038): 21,
        (11, 2039): 82,
        (11, 2040): 209,
        (11, 2041): 240,
        (12, 4084): 36,
        (12, 4085): 51,
        (12, 4086): 98,
        (12, 4087): 114,
        (15, 32704): 130,
        (16, 65410): 9,
        (16, 65411): 10,
        (16, 65412): 22,
        (16, 65413): 23,
        (16, 65414): 24,
        (16, 65415): 25,
        (16, 65416): 26,
        (16, 65417): 37,
        (16, 65418): 38,
        (16, 65419): 39,
        (16, 65420): 40,
        (16, 65421): 41,
        (16, 65422): 42,
        (16, 65423): 52,
        (16, 65424): 53,
        (16, 65425): 54,
        (16, 65426): 55,
        (16, 65427): 56,
        (16, 65428): 57,
        (16, 65429): 58,
        (16, 65430): 67,
        (16, 65431): 68,
        (16, 65432): 69,
        (16, 65433): 70,
        (16, 65434): 71,
        (16, 65435): 72,
        (16, 65436): 73,
        (16, 65437): 74,
        (16, 65438): 83,
        (16, 65439): 84,
        (16, 65440): 85,
        (16, 65441): 86,
        (16, 65442): 87,
        (16, 65443): 88,
        (16, 65444): 89,
        (16, 65445): 90,
        (16, 65446): 99,
        (16, 65447): 100,
        (16, 65448): 101,
        (16, 65449): 102,
        (16, 65450): 103,
        (16, 65451): 104,
        (16, 65452): 105,
        (16, 65453): 106,
        (16, 65454): 115,
        (16, 65455): 116,
        (16, 65456): 117,
        (16, 65457): 118,
        (16, 65458): 119,
        (16, 65459): 120,
        (16, 65460): 121,
        (16, 65461): 122,
        (16, 65462): 131,
        (16, 65463): 132,
        (16, 65464): 133,
        (16, 65465): 134,
        (16, 65466): 135,
        (16, 65467): 136,
        (16, 65468): 137,
        (16, 65469): 138,
        (16, 65470): 146,
        (16, 65471): 147,
        (16, 65472): 148,
        (16, 65473): 149,
        (16, 65474): 150,
        (16, 65475): 151,
        (16, 65476): 152,
        (16, 65477): 153,
        (16, 65478): 154,
        (16, 65479): 162,
        (16, 65480): 163,
        (16, 65481): 164,
        (16, 65482): 165,
        (16, 65483): 166,
        (16, 65484): 167,
        (16, 65485): 168,
        (16, 65486): 169,
        (16, 65487): 170,
        (16, 65488): 178,
        (16, 65489): 179,
        (16, 65490): 180,
        (16, 65491): 181,
        (16, 65492): 182,
        (16, 65493): 183,
        (16, 65494): 184,
        (16, 65495): 185,
        (16, 65496): 186,
        (16, 65497): 194,
        (16, 65498): 195,
        (16, 65499): 196,
        (16, 65500): 197,
        (16, 65501): 198,
        (16, 65502): 199,
        (16, 65503): 200,
        (16, 65504): 201,
        (16, 65505): 202,
        (16, 65506): 210,
        (16, 65507): 211,
        (16, 65508): 212,
        (16, 65509): 213,
        (16, 65510): 214,
        (16, 65511): 215,
        (16, 65512): 216,
        (16, 65513): 217,
        (16, 65514): 218,
        (16, 65515): 225,
        (16, 65516): 226,
        (16, 65517): 227,
        (16, 65518): 228,
        (16, 65519): 229,
        (16, 65520): 230,
        (16, 65521): 231,
        (16, 65522): 232,
        (16, 65523): 233,
        (16, 65524): 234,
        (16, 65525): 241,
        (16, 65526): 242,
        (16, 65527): 243,
        (16, 65528): 244,
        (16, 65529): 245,
        (16, 65530): 246,
        (16, 65531): 247,
        (16, 65532): 248,
        (16, 65533): 249,
        (16, 65534): 250,
    },
    1: {
        (2, 0): 0,
        (2, 1): 1,
        (2, 2): 2,
        (3, 6): 3,
        (4, 14): 4,
        (5, 30): 5,
        (6, 62): 6,
        (7, 126): 7,
        (8, 254): 8,
        (9, 510): 9,
        (10, 1022): 10,
        (11, 2046): 11,
    },
    17: {
        (2, 0): 0,
        (2, 1): 1,
        (3, 4): 2,
        (4, 10): 3,
        (4, 11): 17,
        (5, 24): 4,
        (5, 25): 5,
        (5, 26): 33,
        (5, 27): 49,
        (6, 56): 6,
        (6, 57): 18,
        (6, 58): 65,
        (6, 59): 81,
        (7, 120): 7,
        (7, 121): 97,
        (7, 122): 113,
        (8, 246): 19,
        (8, 247): 34,
        (8, 248): 50,
        (8, 249): 129,
        (9, 500): 8,
        (9, 501): 20,
        (9, 502): 66,
        (9, 503): 145,
        (9, 504): 161,
        (9, 505): 177,
        (9, 506): 193,
        (10, 1014): 9,
        (10, 1015): 35,
        (10, 1016): 51,
        (10, 1017): 82,
        (10, 1018): 240,
        (11, 2038): 21,
        (11, 2039): 98,
        (11, 2040): 114,
        (11, 2041): 209,
        (12, 4084): 10,
        (12, 4085): 22,
        (12, 4086): 36,
        (12, 4087): 52,
        (14, 16352): 225,
        (15, 32706): 37,
        (15, 32707): 241,
        (16, 65416): 23,
        (16, 65417): 24,
        (16, 65418): 25,
        (16, 65419): 26,
        (16, 65420): 38,
        (16, 65421): 39,
        (16, 65422): 40,
        (16, 65423): 41,
        (16, 65424): 42,
        (16, 65425): 53,
        (16, 65426): 54,
        (16, 65427): 55,
        (16, 65428): 56,
        (16, 65429): 57,
        (16, 65430): 58,
        (16, 65431): 67,
        (16, 65432): 68,
        (16, 65433): 69,
        (16, 65434): 70,
        (16, 65435): 71,
        (16, 65436): 72,
        (16, 65437): 73,
        (16, 65438): 74,
        (16, 65439): 83,
        (16, 65440): 84,
        (16, 65441): 85,
        (16, 65442): 86,
        (16, 65443): 87,
        (16, 65444): 88,
        (16, 65445): 89,
        (16, 65446): 90,
        (16, 65447): 99,
        (16, 65448): 100,
        (16, 65449): 101,
        (16, 65450): 102,
        (16, 65451): 103,
        (16, 65452): 104,
        (16, 65453): 105,
        (16, 65454): 106,
        (16, 65455): 115,
        (16, 65456): 116,
        (16, 65457): 117,
        (16, 65458): 118,
        (16, 65459): 119,
        (16, 65460): 120,
        (16, 65461): 121,
        (16, 65462): 122,
        (16, 65463): 130,
        (16, 65464): 131,
        (16, 65465): 132,
        (16, 65466): 133,
        (16, 65467): 134,
        (16, 65468): 135,
        (16, 65469): 136,
        (16, 65470): 137,
        (16, 65471): 138,
        (16, 65472): 146,
        (16, 65473): 147,
        (16, 65474): 148,
        (16, 65475): 149,
        (16, 65476): 150,
        (16, 65477): 151,
        (16, 65478): 152,
        (16, 65479): 153,
        (16, 65480): 154,
        (16, 65481): 162,
        (16, 65482): 163,
        (16, 65483): 164,
        (16, 65484): 165,
        (16, 65485): 166,
        (16, 65486): 167,
        (16, 65487): 168,
        (16, 65488): 169,
        (16, 65489): 170,
        (16, 65490): 178,
        (16, 65491): 179,
        (16, 65492): 180,
        (16, 65493): 181,
        (16, 65494): 182,
        (16, 65495): 183,
        (16, 65496): 184,
        (16, 65497): 185,
        (16, 65498): 186,
        (16, 65499): 194,
        (16, 65500): 195,
        (16, 65501): 196,
        (16, 65502): 197,
        (16, 65503): 198,
        (16, 65504): 199,
        (16, 65505): 200,
        (16, 65506): 201,
        (16, 65507): 202,
        (16, 65508): 210,
        (16, 65509): 211,
        (16, 65510): 212,
        (16, 65511): 213,
        (16, 65512): 214,
        (16, 65513): 215,
        (16, 65514): 216,
        (16, 65515): 217,
        (16, 65516): 218,
        (16, 65517): 226,
        (16, 65518): 227,
        (16, 65519): 228,
        (16, 65520): 229,
        (16, 65521): 230,
        (16, 65522): 231,
        (16, 65523): 232,
        (16, 65524): 233,
        (16, 65525): 234,
        (16, 65526): 242,
        (16, 65527): 243,
        (16, 65528): 244,
        (16, 65529): 245,
        (16, 65530): 246,
        (16, 65531): 247,
        (16, 65532): 248,
        (16, 65533): 249,
        (16, 65534): 250,
    }
}
