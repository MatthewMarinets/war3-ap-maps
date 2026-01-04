
import unittest
from .. import dct


class test_dct(unittest.TestCase):
    def test_dct_example(self) -> None:
        input_data = [
            16, 11, 10, 16, 24, 40, 51, 61,
            12, 12, 14, 19, 26, 58, 60, 55,
            14, 13, 16, 24, 40, 57, 69, 56,
            14, 17, 22, 29, 51, 87, 80, 62,
            18, 22, 37, 56, 68, 109, 103, 77,
            24, 35, 55, 64, 81, 104, 113, 92,
            49, 64, 78, 87, 103, 121, 120, 101,
            72, 92, 95, 98, 112, 100, 103, 99,
        ]
        expected_result = (
             461, -168, -15,  30, -31,   9,  1,  -3,
            -194,   -2,  38,   5,   7,   4,  6,  -6,
              32,   44,  11, -22,  15, -11, -6,   4,
              -3,  -28,  -1,   0,  -3,   7,  4,  -3,
               2,   11,   1,   1,   4,  -5,  1,  -3,
              -1,   -4,   2,   3,   1,  -3,  0,   3,
             -10,    6,   4,  -9,   8,  -1, -6,   8,
               8,   -2,  -3,   1,   3,   4, -2,  -1,
            #  461, -168, -14,  30, -31,   8,  1,  -2,
            # -194,   -1,  38,   4,   6,   3,  5,  -5,
            #   32,   43,  10, -22,  15, -10, -5,   4,
            #   -2,  -27,  -1,   0,  -2,   7,  4,  -3,
            #    2,   11,   0,   1,   4,  -4,  1,  -2,
            #    0,   -3,   2,   2,   0,  -2,  0,   2,
            #   -9,    6,   4,  -8,   7,  -1, -6,   7,
            #    8,   -1,  -3,   1,   2,   3, -1,  -1,
        )
        result = dct.fast_dct(input_data)
        self.assertTupleEqual(tuple(result), expected_result)

    def test_inverses_match(self) -> None:
        input_data = [
            -444, -180, 32, -174,  40,  48, -40,   0,
              -5, -15,  18,   -8, -50,  46,  24, -22,
             -18,  0,   -6,   30,   0, -23,  0,    0,
             -18,  0,   -9,   12,  20,   0,  0,    0,
             -14,  0,    0,    0,   0,   0,  0,    0,
             -30,  14,   0,   26,   0,   0,  0,    0,
             -20,  0,    0,    0,   0,   0,  0,    0,
               0,  0,    0,    0,   0,   0,  0,    0,
        ]
        result = dct.fast_dct(input_data)
        dct.fast_inverse_dct(result)
        for index, (input_element, result_element) in enumerate(zip(input_data, result)):
            assert abs(input_element - result_element) <= 1, (
                f"Elements at index {index} differ by more than 1: {input_element} != {result_element}"
            )
        result_2 = dct.fast_dct(input_data)
        dct.fast_inverse_dct(result_2)
        self.assertTupleEqual(tuple(result), tuple(result_2))
