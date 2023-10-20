
from typing import *
import os
from dataclasses import dataclass
from mapfile import compressed

# Note(mm): .w3v files are compressed with zlib compression and a header prepended

ENDIANNESS = 'little'

@dataclass
class GameCache:
    name: str
    reserved: int
    num_categories: int
    categories: List[str]

@dataclass
class CampaignCache:
    version: int
    num_gamecaches: int
    gamecaches: List[GameCache]


def extract_gamecache(filename: str) -> Tuple[compressed.War3Metadata, CampaignCache]:
    with open(filename, 'rb') as fp:
        raw_contents = fp.read()
    metadata, data = compressed.decompress_war3_file(raw_contents)

    
    return metadata, data
    

if __name__ == '__main__':
    import sys
    if len(sys.argv) > 1:
        profile = int(sys.argv[1])
    else:
        profile = 1
    file = os.path.expanduser(rf'~\Saved Games\Warcraft III\Profile{profile}\Campaigns.w3v')
    metadata, contents = extract_gamecache(file)
    print(metadata)
    print(contents)

