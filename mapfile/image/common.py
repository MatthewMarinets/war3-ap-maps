"""
Baseline image handling classes
"""

from dataclasses import dataclass, field

@dataclass
class ImageData:
    """Uncompressed image data"""
    width: int = 0
    height: int = 0
    bits_per_pixel: int = 0
    alpha_bits: int = 0
    pixels: bytearray = field(default_factory=bytearray)
    """BGR data"""


def set_channel(image: ImageData, channel: int, value: int) -> None:
    bytes_per_pixel = image.bits_per_pixel // 8
    assert channel > 0 and channel < bytes_per_pixel
    assert value >= 0 and value < 256
    for index in range(0, len(image.pixels), bytes_per_pixel):
        image.pixels[index+channel] = value

