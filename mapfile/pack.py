"""
Compile a directory of map data back to a .w3x
"""
import os
import shutil
import glob
from mapfile import config
from mapfile.util.failable import Error
from mapfile import mpq
from mapfile.common import CONVERT_HANDLERS

mpq_editor_exe = config.workspace.get('mpqeditor_path', 'MPQEditor.exe')


def compile_map_file(map_file: str, source_dir: str) -> Error[str] | None:
    if not os.path.isdir(source_dir):
        return Error(f'{source_dir} does not exist')
    if os.path.isfile(map_file):
        os.remove(map_file)
    build_dir = f'{source_dir}/.build'
    if os.path.isdir(build_dir):
        shutil.rmtree(build_dir)

    source_files = glob.glob(f'{source_dir}/*')
    os.makedirs(build_dir)
    for filename in source_files:
        basename = os.path.basename(filename)
        if os.path.isdir(filename):
            if not basename.startswith('.'):
                shutil.copytree(filename, f'{build_dir}/{basename}')
            continue
        stem, ext = os.path.splitext(basename)
        stem, ext = os.path.splitext(stem)
        convert, target_name = CONVERT_HANDLERS.get(ext, (None, basename))
        if stem == 'units':
            assert convert is not None
            convert(filename, f'{build_dir}/war3mapUnits.doo')
        elif convert:
            convert(filename, f'{build_dir}/war3map{ext}')
        else:
            shutil.copy(filename, f'{build_dir}/{basename}')
    result = mpq.create_w3x(build_dir, map_file)
    if isinstance(result, Error):
        return Error(f"Error running command '{result.message[1]}': error code {result.message[0]}")
    shutil.rmtree(build_dir)
    return None


if __name__ == '__main__':
    import sys
    # Usage: pack.py [source_dir [target_file]]

    if len(sys.argv) > 1:
        source_dir = sys.argv[1]
    else:
        source_dir = config.workspace.get('pack_source', '')
        assert source_dir
    if len(sys.argv) > 2:
        file = sys.argv[2]
    else:
        file = config.workspace.get('pack_out_dir', './out')
        file = f'{file}/{os.path.basename(source_dir)}.w3x'

    print(f'Packing: {file} to {source_dir}')
    compile_map_file(os.path.abspath(file), os.path.abspath(source_dir))
