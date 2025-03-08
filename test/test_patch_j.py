import unittest
from mapfile import patch_j

SAMPLE_J_PATH = 'test/testdata/sample.j'
SAMPLE_MOD_J_PATH = 'test/testdata/sample_mod.j'
PATCHED_OUT_PATH = 'testout/patched.j'
EXPECTED_OUT_PATH = 'test/testdata/expected_patched.j'


class TestPatchJ(unittest.TestCase):
    maxDiff = None

    def test_patching_sample(self) -> None:
        mod = patch_j.load_mod(SAMPLE_MOD_J_PATH)
        patch_j.patch_file(SAMPLE_J_PATH, PATCHED_OUT_PATH, mod)
        with open(PATCHED_OUT_PATH, 'r') as fp:
            patched_contents = fp.read()
        with open(EXPECTED_OUT_PATH, 'r') as fp:
            expected_result = fp.read()
        self.assertEqual(patched_contents, expected_result)

    def test_round_trip(self) -> None:
        patched_path = 'testout/rt_patched.j'
        round_tripped_path = 'testout/round_tripped.j'
        mod = patch_j.load_mod(SAMPLE_MOD_J_PATH)
        patch_j.patch_file(SAMPLE_J_PATH, patched_path, mod)
        patch_j.unpatch_file(patched_path, round_tripped_path)
        with open(SAMPLE_J_PATH, 'r') as fp:
            original_contents = fp.read()
        with open(round_tripped_path, 'r') as fp:
            final_contents = fp.read()
        self.assertEqual(original_contents, final_contents)
