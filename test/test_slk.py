"""
Unit tests for slk parsing.
"""

import unittest
import inspect
from mapfile import slk
from mapfile.util.failable import Error

class TestSlk(unittest.TestCase):
    def test_wikipedia_example_1(self) -> None:
        """Testing first example in https://en.wikipedia.org/wiki/Symbolic_Link_(SYLK)#Sample_SYLK_code"""
        contents = inspect.cleandoc("""
        ID;P
        C;Y1;X1;K"Row 1"
        C;Y2;X1;K"Row 2"
        C;Y3;X1;K"Total"
        C;Y1;X2;K11
        C;Y2;X2;K22
        C;Y3;X2;K33
        E
        """).split('\n')
        result = slk.parse_slk(contents)
        self.assertNotIsInstance(result, Error)

        expected_result = (
            ("Row 1", 11),
            ("Row 2", 22),
            ("Total", 33),
        )
        self.assertTupleEqual(result, expected_result)
    
    def test_sheet_containing_semicolon_strings(self) -> None:
        contents = inspect.cleandoc("""
        ID;P
        B;X2;Y2
        C;Y2;X1;K"Row;;2"
        C;Y1;X1;K"Row;;1"
        C;Y2;X2;K22
        C;Y1;X2;K11
        E
        """).split('\n')
        result = slk.parse_slk(contents)
        self.assertNotIsInstance(result, Error)

        expected_result = (
            ("Row;1", 11),
            ("Row;2", 22),
        )
        self.assertTupleEqual(result, expected_result)
