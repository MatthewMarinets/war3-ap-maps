"""
Utilities for DCT (Discrete Cosine Transform).
Mostly used by jpeg.
"""
import math


# Fast Inverse DCT Constants
# These constants and implementation were taken from jed
# https://github.com/dannye/jed
m0 = 2.0 * math.cos(1.0 / 16.0 * 2.0 * math.pi)
m1 = 2.0 * math.cos(2.0 / 16.0 * 2.0 * math.pi)
m3 = 2.0 * math.cos(2.0 / 16.0 * 2.0 * math.pi)
m5 = 2.0 * math.cos(3.0 / 16.0 * 2.0 * math.pi)
m2 = m0 - m5
m4 = m0 + m5
s0 = math.cos(0.0 / 16.0 * math.pi) / math.sqrt(8)
s1 = math.cos(1.0 / 16.0 * math.pi) / 2.0
s2 = math.cos(2.0 / 16.0 * math.pi) / 2.0
s3 = math.cos(3.0 / 16.0 * math.pi) / 2.0
s4 = math.cos(4.0 / 16.0 * math.pi) / 2.0
s5 = math.cos(5.0 / 16.0 * math.pi) / 2.0
s6 = math.cos(6.0 / 16.0 * math.pi) / 2.0
s7 = math.cos(7.0 / 16.0 * math.pi) / 2.0


def fast_inverse_dct(block: list[int]) -> None:
    intermediate = [0.0 for _ in range(64)]
    for x in range(8):
        g0 = block[0 * 8 + x] * s0
        g1 = block[4 * 8 + x] * s4
        g2 = block[2 * 8 + x] * s2
        g3 = block[6 * 8 + x] * s6
        g4 = block[5 * 8 + x] * s5
        g5 = block[1 * 8 + x] * s1
        g6 = block[7 * 8 + x] * s7
        g7 = block[3 * 8 + x] * s3

        f0 = g0
        f1 = g1
        f2 = g2
        f3 = g3
        f4 = g4 - g7
        f5 = g5 + g6
        f6 = g5 - g6
        f7 = g4 + g7

        e0 = f0
        e1 = f1
        e2 = f2 - f3
        e3 = f2 + f3
        e4 = f4
        e5 = f5 - f7
        e6 = f6
        e7 = f5 + f7
        e8 = f4 + f6

        d0 = e0
        d1 = e1
        d2 = e2 * m1
        d3 = e3
        d4 = e4 * m2
        d5 = e5 * m3
        d6 = e6 * m4
        d7 = e7
        d8 = e8 * m5

        c0 = d0 + d1
        c1 = d0 - d1
        c2 = d2 - d3
        c3 = d3
        c4 = d4 + d8
        c5 = d5 + d7
        c6 = d6 - d8
        c7 = d7
        c8 = c5 - c6

        b0 = c0 + c3
        b1 = c1 + c2
        b2 = c1 - c2
        b3 = c0 - c3
        b4 = c4 - c8
        b5 = c8
        b6 = c6 - c7
        b7 = c7

        intermediate[0 * 8 + x] = b0 + b7
        intermediate[1 * 8 + x] = b1 + b6
        intermediate[2 * 8 + x] = b2 + b5
        intermediate[3 * 8 + x] = b3 + b4
        intermediate[4 * 8 + x] = b3 - b4
        intermediate[5 * 8 + x] = b2 - b5
        intermediate[6 * 8 + x] = b1 - b6
        intermediate[7 * 8 + x] = b0 - b7

    for y in range(8):
        g0 = intermediate[y * 8 + 0] * s0
        g1 = intermediate[y * 8 + 4] * s4
        g2 = intermediate[y * 8 + 2] * s2
        g3 = intermediate[y * 8 + 6] * s6
        g4 = intermediate[y * 8 + 5] * s5
        g5 = intermediate[y * 8 + 1] * s1
        g6 = intermediate[y * 8 + 7] * s7
        g7 = intermediate[y * 8 + 3] * s3

        f0 = g0
        f1 = g1
        f2 = g2
        f3 = g3
        f4 = g4 - g7
        f5 = g5 + g6
        f6 = g5 - g6
        f7 = g4 + g7

        e0 = f0
        e1 = f1
        e2 = f2 - f3
        e3 = f2 + f3
        e4 = f4
        e5 = f5 - f7
        e6 = f6
        e7 = f5 + f7
        e8 = f4 + f6

        d0 = e0
        d1 = e1
        d2 = e2 * m1
        d3 = e3
        d4 = e4 * m2
        d5 = e5 * m3
        d6 = e6 * m4
        d7 = e7
        d8 = e8 * m5

        c0 = d0 + d1
        c1 = d0 - d1
        c2 = d2 - d3
        c3 = d3
        c4 = d4 + d8
        c5 = d5 + d7
        c6 = d6 - d8
        c7 = d7
        c8 = c5 - c6

        b0 = c0 + c3
        b1 = c1 + c2
        b2 = c1 - c2
        b3 = c0 - c3
        b4 = c4 - c8
        b5 = c8
        b6 = c6 - c7
        b7 = c7

        block[y * 8 + 0] = int(b0 + b7 + 0.5)
        block[y * 8 + 1] = int(b1 + b6 + 0.5)
        block[y * 8 + 2] = int(b2 + b5 + 0.5)
        block[y * 8 + 3] = int(b3 + b4 + 0.5)
        block[y * 8 + 4] = int(b3 - b4 + 0.5)
        block[y * 8 + 5] = int(b2 - b5 + 0.5)
        block[y * 8 + 6] = int(b1 - b6 + 0.5)
        block[y * 8 + 7] = int(b0 - b7 + 0.5)


def dct(block: list[int]) -> list[float]:
    result: list[float] = []
    inv_sqrt_2 = math.sqrt(2.0) / 2
    for v in range(8):
        for u in range(8):
            G_uv = 0.0
            for y in range(8):
                for x in range(8):
                    G_uv += (
                        block[y*8 + x]
                        * math.cos((2*x + 1) * u * math.pi / 16)
                        * math.cos((2*y + 1) * v * math.pi / 16)
                    )
            if u == 0:
                G_uv *= inv_sqrt_2
            if v == 0:
                G_uv *= inv_sqrt_2
            result.append(G_uv * 0.25)
    return result
