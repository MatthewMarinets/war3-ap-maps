"""
Run a mission
"""
import subprocess
import os
from mapfile import config

path_to_wc3 = config.workspace.get('wc3_path')
assert os.path.exists(path_to_wc3), 'Warcraft 3 executable could not be found'

def start_mission(mission_file: str) -> None:
    subprocess.call([
        path_to_wc3,
        '-nowfpause',
        '-loadfile', mission_file,
    ])

if __name__ == '__main__':
    import sys
    if len(sys.argv) >= 2:
        map_file = sys.argv[1]
    else:
        map_file = config.workspace.get('map_file')
    
    pack_out_dir = config.workspace.get('pack_out_dir')
    map_format = config.workspace.get('map_format', 'w3m')
    map_path = os.path.abspath(rf'{pack_out_dir}\{map_file}.{map_format}')
    if not os.path.isfile(map_path):
        raise ValueError(f'Map file {map_path} does not exist')
    start_mission(map_path)
