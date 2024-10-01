"""
Generates documentation for game data
"""

import os
import glob

from mapfile import translate
from mapfile import slk
from mapfile.util import failable

ROC_SLK_DIR = 'gamedata/1_30_4/custom_v0/units'
TFT_SLK_DIR = 'gamedata/1_30_4/custom_v1/units'
MELEE_ROC_SLK_DIR = 'gamedata/1_30_4/melee_v0/units'
MELEE_SLK_DIR = 'gamedata/1_30_4/units'
DOODADS_SLK_DIR = 'gamedata/1_30_4/doodads'
SPLATS_SLK_DIR = 'gamedata/1_30_4/splats'

DATA_DIRS = (
    ROC_SLK_DIR,
    TFT_SLK_DIR,
    # MELEE_ROC_SLK_DIR,
    # MELEE_SLK_DIR,
    DOODADS_SLK_DIR,
    SPLATS_SLK_DIR,
)


def pathstem(filepath: str) -> str:
    return os.path.basename(os.path.splitext(filepath)[0])


def write_markdown(target_file: str, contents: tuple[tuple]) -> None:
    print(f'Writing {target_file}')
    first_line = contents[0]
    with open(target_file, 'w') as fp:
        for element in first_line:
            fp.write('| ')
            fp.write(element)
            fp.write(' ')
        fp.write('|\n')
        for _ in first_line:
            fp.write('| --- ')
        fp.write('|\n')
        for row in contents[1:]:
            for element in row:
                fp.write('| ')
                fp.write(str(element))
                fp.write(' ')
            fp.write('|\n')


def write_toml(target_file: str, contents: tuple[tuple]) -> None:
    print(f'Writing {target_file}')
    first_line = contents[0]
    with open(target_file, 'w') as fp:
        for row_num, row in enumerate(contents[1:]):
            if all(not x for x in row):
                continue
            if row[0]:
                fp.write(f'[{row[0]}]\n')
            else:
                fp.write(f'[unnamed_row_{row_num}]\n')
            for key, value, col in zip(first_line, row, range(1000)):
                if not key:
                    key = f'unnamed_col_{col}'
                if isinstance(value, bool):
                    fp.write(f'{key} = {str(value).lower()}\n')
                elif isinstance(value, int) or isinstance(value, float):
                    fp.write(f'{key} = {value}\n')
                elif value != '':
                    suffix = ''
                    if value.startswith('WESTRING'):
                        suffix = f'  # {translate.get_worldedit_string(value)}'
                    elif len(value) == 4 and (translated := translate.get_name(value)):
                        suffix = f'  # {translated}'
                    if '(' in key:
                        key = f"'{key}'"
                    fp.write(f'{key} = "{value.replace("\\", "\\\\")}"{suffix}\n')
            fp.write('\n')


if __name__ == '__main__':
    # Export game data as json to doc/generated/
    os.makedirs('doc/generated/data', exist_ok=True)
    for data_dir in DATA_DIRS:
        if '_v0' in data_dir:
            prefix = 'roc_'
        else:
            prefix = ''
        data_files = glob.glob(f'{data_dir}/*.slk')
        for data_file in data_files:
            contents = slk.parse_slk_file(data_file)
            assert not isinstance(contents, failable.Error), contents.message
            assert contents
            target_file = f'doc/generated/data/{prefix}{pathstem(data_file)}'
            # write_markdown(f'{target_file}.md', contents)
            write_toml(f'{target_file}.toml', contents)
    print('done')
