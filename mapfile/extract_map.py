"""
Extract a .w3m or .w3x into a directory
"""
import os
import subprocess
import shutil
from mapfile import config

mpq_editor_exe = config.workspace.get('mpqeditor_path', 'MPQEditor.exe')

def extract_map_files(map_file: str, target_dir: str) -> None:
    assert shutil.which(mpq_editor_exe), 'MPQEditor is not installed and on the path'
    if os.path.exists(target_dir):
        shutil.rmtree(target_dir)
    cmd = [
        mpq_editor_exe, '/extract',
        map_file, '*', target_dir, '/fp',
    ]
    ret = subprocess.call(cmd)
    if ret:
        print(f'Error {ret}')

if __name__ == '__main__':
    import sys
    # Usage: extract_map.py [extract_file [destination_dir]]

    if len(sys.argv) > 1:
        file = sys.argv[1]
    else:
        file = config.workspace.get('extract_file')
    if len(sys.argv) > 2:
        dest = sys.argv[2]
    else:
        dest = config.workspace.get('extract_dir', r'.\extract')

    assert os.path.exists(file), f'{file} does not exist'
    stem = os.path.basename(os.path.splitext(file)[0])
    dest = os.path.join(dest, stem)
    print(f'Extracting: {file} to {dest}')
    extract_map_files(os.path.abspath(file), os.path.abspath(dest))
