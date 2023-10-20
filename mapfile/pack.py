"""
Compile a directory of map data back to a .w3m
"""

import subprocess
import os
import shutil
from mapfile import binary, config, w3i, wts

mpq_editor_exe = config.workspace.get('mpqeditor_path', 'MPQEditor.exe')
ENDIANNESS = 'little'

class MPQError(Exception):
    pass

def command(cmd: list[str], cwd: str = '.') -> None:
    if config.verbose:
        print(' '.join(cmd))
    retcode = subprocess.call(cmd, cwd=cwd)
    if retcode:
        raise MPQError(retcode, ' '.join(cmd))

def pack_map(source_dir: str, target_file: str) -> int:
    """
    Packs a directory into a .w3m map file using MPQEditor
    """
    # Note(mm): MPQEditor's commands are documented by running `MPQEditor /console` and typing `help`
    # commands:
    # /new to create a file
    # /add to add files (paths remain relative to working directory)
    assert shutil.which(mpq_editor_exe), 'MPQEditor is not installed and on the path'
    os.makedirs(os.path.dirname(target_file), exist_ok=True)
    if os.path.exists(target_file):
        os.remove(target_file)
    try:
        # See doc/workflow.md, under Background heading
        # Problem: Creating a new map / mpq file with MPQEditor causes it to be 50% larger than if it was saved with WorldEdit
        # Idea: Try copying a pre-saved .w3m and simply deleting files within the map and adding our desired files
        shutil.copy('pack/empty.w3m', target_file)
        with open(f'{source_dir}/(listfile)', 'r', encoding='utf-8') as file_handle:
            files = file_handle.readlines()
        files = [x.strip() for x in files]
        for file in files:
            command([mpq_editor_exe, '/add', target_file, file], cwd=source_dir)
        command([mpq_editor_exe, '/compact', target_file])
    except MPQError as err:
        print(f'Error running {err.args[1]}')
        return err.args[0]

    # Retrive map metadata from .w3i file
    w3i_file = os.path.join(source_dir, 'war3map.w3i')
    wts_file = os.path.join(source_dir, 'war3map.wts')
    map_info = w3i.read_w3i(w3i_file)
    map_strings = wts.read_wts(wts_file)
    map_name = map_info.map_name
    if map_name.startswith('TRIGSTR_'):
        map_name = map_strings[map_name]
    encoded_map_name = map_name.encode('utf-8')

    # Write map file header metadata
    with open(target_file, 'r+b') as file_handle:
        file_handle.seek(8)
        bytes_written = file_handle.write(encoded_map_name)
        assert bytes_written == len(map_name)
        file_handle.seek(1, 1)
        bytes_written = file_handle.write(int.to_bytes(map_info.flags, 4, binary.ENDIANNESS))
        assert bytes_written == 4
        # Note(mm): max players is force-set to 1
        bytes_written = file_handle.write(int.to_bytes(1, 4, binary.ENDIANNESS))
        assert bytes_written == 4
    
    return 0

if __name__ == '__main__':
    import sys
    def main() -> int:
        if len(sys.argv) >= 2:
            pack_source = sys.argv[1]
        else:
            pack_source = config.workspace.get('pack_source')
        if not pack_source:
            return 1
        pack_out_dir = config.workspace.get('pack_out_dir', r'.\out')
        pack_ext = config.workspace.get('pack_ext', 'w3m')
        map_name = os.path.basename(pack_source)
        return pack_map(pack_source, os.path.abspath(rf'{pack_out_dir}\{map_name}.{pack_ext}'))
    sys.exit(main())
