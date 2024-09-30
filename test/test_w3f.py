"""
Unit tests for w3f parsing.
"""

import unittest
import os
from mapfile import w3f


W3F_FILE = 'test/testdata/mycampaign/war3campaign.w3f'

class TestW3f(unittest.TestCase):
    def test_round_trip(self) -> None:
        os.makedirs('testout/w3f', exist_ok=True)

        with open(W3F_FILE, 'rb') as fp:
            raw_data = fp.read()
        data = w3f.read_w3f(raw_data)
        text = w3f.as_text(data)
        # with open(f'testout/w3f/mycampaign.w3f.toml', 'w') as fp:
            # print(text, file=fp)
        retrieved_data = w3f.from_text(text)
        round_tripped_data = w3f.to_binary(retrieved_data)

        self.assertEqual(round_tripped_data, raw_data)
    
    def test_trigger_strings_are_well_formed(self) -> None:
        with open(W3F_FILE, 'rb') as fp:
            raw_data = fp.read()
        data = w3f.read_w3f(raw_data)

        self.assertEqual(data.campaign_name, 'TRIGSTR_001')
        self.assertEqual(data.campaign_difficulty, 'TRIGSTR_002')
        self.assertEqual(data.author_name, 'TRIGSTR_004')
        self.assertEqual(data.campaign_description, 'TRIGSTR_005')
