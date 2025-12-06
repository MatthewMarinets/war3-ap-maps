"""
Fully decompile a w3x or w3m map file
"""
import os
import shutil
import glob
from mapfile import config
from mapfile.util.failable import Error
from mapfile import mpq
from mapfile.common import CONVERT_HANDLERS, PROXY_FILES, make_proxy, UNITS_FILE_NAME

mpq_editor_exe = config.workspace.get('mpqeditor_path', 'MPQEditor.exe')


def copy_imports(source_dir: str, target_dir: str) -> None:
    shutil.copytree(source_dir, target_dir, ignore=lambda *_: PROXY_FILES)
    files_to_proxy = [x for x in os.listdir(source_dir) if x in PROXY_FILES]
    for file in files_to_proxy:
        make_proxy(PROXY_FILES[file], f'{target_dir}/{file}.proxy')


def extract_map_files(map_file: str, target_dir: str) -> Error[str] | None:
    if not os.path.isfile(map_file):
        return Error(f'{map_file} does not exist')
    if os.path.isdir(target_dir):
        shutil.rmtree(target_dir)
    
    build_dir = f'{target_dir}/.build'
    result = mpq.extract_w3x(map_file, build_dir)
    if isinstance(result, Error):
        return Error(f"Error running command '{result.message[1]}': error code {result.message[0]}")
    for filename in glob.glob(f'{build_dir}/*'):
        basename = os.path.basename(filename)
        if os.path.isdir(filename):
            assert not basename.startswith('.'), f"mpq contains a .directory: {basename}"
            copy_imports(filename, f'{target_dir}/{basename}')
            continue
        _, ext = os.path.splitext(basename)
        convert, target_name = CONVERT_HANDLERS.get(ext, (None, basename))
        if basename.casefold() == 'war3mapunits.doo':
            assert convert is not None
            convert(filename, f'{target_dir}/{UNITS_FILE_NAME}')
        elif convert:
            convert(filename, f'{target_dir}/{target_name}')
        else:
            shutil.copy(filename, f'{target_dir}/{target_name}')
    shutil.rmtree(build_dir)
    return None
    

if __name__ == '__main__':
    import sys
    usage = 'Usage: unpack.py [extract_file [destination_dir]]'
    if {'-h', 'help', '-help', '--help'}.intersection(sys.argv):
        print(usage)
        sys.exit()


    if len(sys.argv) > 1:
        file = sys.argv[1]
    else:
        file = config.workspace.get('extract_file', '')
        assert file
    if len(sys.argv) > 2:
        dest = sys.argv[2]
    else:
        dest = config.workspace.get('extract_dir', r'.\extract')
        stem = os.path.basename(os.path.splitext(file)[0])
        dest = f'{dest}/{stem}'

    assert os.path.exists(file), f'{file} does not exist'
    print(f'Extracting: {file} to {dest}')
    extract_map_files(os.path.abspath(file), os.path.abspath(dest))
