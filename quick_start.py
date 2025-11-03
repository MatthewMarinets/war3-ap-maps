#!/usr/bin/env python3
"""
Run a mission
"""
import subprocess
import os
from mapfile import config
from scripts.helpers import get_target

path_to_wc3 = config.workspace.get('wc3_path')
assert os.path.exists(path_to_wc3), 'Warcraft 3 executable could not be found'

def start_mission(mission_file: str) -> None:
    cmd = [
        path_to_wc3,
        '-nowfpause',
        '-loadfile', mission_file,
    ]
    print(' '.join(cmd))
    subprocess.call(cmd)

if __name__ == '__main__':
    import sys
    okay, target = get_target(sys.argv)
    if not okay:
        print(target)
        sys.exit(1)
    map_file = f'out/{target}.w3x'
    print(f'Starting: {map_file}')
    if sys.platform.startswith('linux'):
        map_file = f'Z:{os.path.abspath(map_file)}'
    start_mission(map_file)
