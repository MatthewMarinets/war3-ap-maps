"""
Baseline image handling classes
"""

from dataclasses import dataclass, field
import math

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


def generate_mip_map(image: ImageData) -> ImageData:
    if image.width & 1:
        raise ValueError('Width is not a multiple of 2')
    if image.height & 1:
        raise ValueError('Height is not a multiple of 2')
    bytes_per_pixel = image.bits_per_pixel // 8
    result = ImageData(
        width=image.width // 2,
        height=image.height // 2,
        bits_per_pixel=image.bits_per_pixel,
        alpha_bits=image.alpha_bits,
        pixels=bytearray((image.width // 2) * (image.height // 2) * bytes_per_pixel),
    )
    for y in range(result.height):
        for x in range(result.width):
            # interpolation directly in RGB
            # Not ideal, but it would work
            input_y = 2 * y
            input_x = 2 * x
            coord_1 = (input_y * image.width + input_x) * bytes_per_pixel
            coord_2 = coord_1 + bytes_per_pixel
            coord_3 = coord_1 + image.width * bytes_per_pixel
            coord_4 = coord_3 + bytes_per_pixel
            pixel_1 = image.pixels[coord_1:coord_1 + bytes_per_pixel]
            pixel_2 = image.pixels[coord_2:coord_2 + bytes_per_pixel]
            pixel_3 = image.pixels[coord_3:coord_3 + bytes_per_pixel]
            pixel_4 = image.pixels[coord_4:coord_4 + bytes_per_pixel]
            for byte_index in range(bytes_per_pixel):
                # Using RMS, as per the argument in that one MinutePhysics video "Computer Color is Broken"
                average_component = (
                    pixel_1[byte_index]**2
                    + pixel_2[byte_index]**2
                    + pixel_3[byte_index]**2
                    + pixel_4[byte_index]**2
                ) // 4
                average_component = int(math.sqrt(average_component) + 0.5)
                result.pixels[bytes_per_pixel*(y * result.width + x) + byte_index] = average_component
    return result
