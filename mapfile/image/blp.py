"""
Utilities for working with .blp (Blizzard image) files
"""

# Sources:
# ## Jpeg
# Frame data explainer: https://www.ccoderun.ca/programming/2017-01-31_jpeg/

from typing import NamedTuple
from .common import ImageData
from mapfile import binary

blp_version = {
    b'BLP0': 0,  # Warcraft 3 ROC beta
    b'BLP1': 1,  # Warcraft 3
    b'BLP2': 2,  # World of Warcraft
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
