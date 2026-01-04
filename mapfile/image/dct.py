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

# AAN DCT constants
a1 = math.sqrt(1/2)
a2 = math.sqrt(2) * math.cos(6 * math.pi / 16)
a3 = a1
a4 = math.sqrt(2) * math.cos(2 * math.pi / 16)
a5 = math.cos(6 * math.pi / 16)


def print_block(block: list[int]) -> None:
    for y in range(8):
        print(' '.join(map(str, block[8*y:8*y+8])))


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

        block[y * 8 + 0] = math.floor(b0 + b7 + 0.5)
        block[y * 8 + 1] = math.floor(b1 + b6 + 0.5)
        block[y * 8 + 2] = math.floor(b2 + b5 + 0.5)
        block[y * 8 + 3] = math.floor(b3 + b4 + 0.5)
        block[y * 8 + 4] = math.floor(b3 - b4 + 0.5)
        block[y * 8 + 5] = math.floor(b2 - b5 + 0.5)
        block[y * 8 + 6] = math.floor(b1 - b6 + 0.5)
        block[y * 8 + 7] = math.floor(b0 - b7 + 0.5)


def fast_dct_1d(block: list[int|float], offset: int, stride: int, intermediates: list[float]) -> None:
    x0 = block[offset + 0*stride]
    x1 = block[offset + 1*stride]
    x2 = block[offset + 2*stride]
    x3 = block[offset + 3*stride]
    x4 = block[offset + 4*stride]
    x5 = block[offset + 5*stride]
    x6 = block[offset + 6*stride]
    x7 = block[offset + 7*stride]

    # Stage 1
    b0 =  x0 + x7
    b1 =  x1 + x6
    b2 =  x2 + x5
    b3 =  x3 + x4
    b4 = -x4 + x3
    b5 = -x5 + x2
    b6 = -x6 + x1
    b7 = -x7 + x0

    # Stage 2
    c0 =  b0 + b3
    c1 =  b1 + b2
    c2 = -b2 + b1
    c3 = -b3 + b0
    c4 = -b4 - b5
    c5 =  b5 + b6
    c6 =  b6 + b7
    c7 =  b7

    # Stage 3
    d0 =  c0 + c1
    d1 = -c1 + c0
    d2 =  c2 + c3
    d3 =  c3
    d4 =  c4
    d5 =  c5
    d6 =  c6
    d7 =  c7

    d8 = (d4 + d6) * a5

    e0 = d0
    e1 = d1
    e2 = d2 * a1
    e3 = d3
    e4 = -d4 * a2 - d8
    e5 = d5 * a3
    e6 = d6 * a4 - d8
    e7 = d7

    f0 = e0
    f1 = e1
    f2 = e2 + e3
    f3 = e3 - e2
    f4 = e4
    f5 = e5 + e7
    f6 = e6
    f7 = e7 - e5

    g0 = f0
    g1 = f1
    g2 = f2
    g3 = f3
    g4 = f4 + f7
    g5 = f5 + f6
    g6 = -f6 + f5
    g7 = f7 - f4

    intermediates[offset + 0*stride] = g0 * s0
    intermediates[offset + 4*stride] = g1 * s4
    intermediates[offset + 2*stride] = g2 * s2 / (a1 + 1)
    intermediates[offset + 6*stride] = g3 * s6 / (1 - a1)
    intermediates[offset + 5*stride] = g4 * s5 / (1 - a5)
    intermediates[offset + 1*stride] = g5 * s1 / (-a5 + a4 + 1)
    intermediates[offset + 7*stride] = g6 * s7 / (a5 - a4 + 1)
    intermediates[offset + 3*stride] = g7 * s3 / (a5 + 1)


def fast_dct(block: list[int]) -> list[int]:
    # Based on aan.cc from unix4lyfe.org/dct-1d
    # With multiple dimensions handled like listing3.c on unix4lyfe.org/dct
    # These are both in turn based on the AAN algorithm

    intermediate = [0.0 for _ in range(64)]
    result = [0.0 for _ in range(64)]

    # Handle rows
    for y in range(8):
        fast_dct_1d(block, 8*y, 1, intermediate)

    # Handle columns
    for x in range(8):
        fast_dct_1d(intermediate, x, 8, result)

    # return result
    return [math.floor(x + 0.5) for x in result]


def slow_dct(block: list[int]) -> list[float]:
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
