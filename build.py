#! /usr/bin/env python3
"""
Map build script
"""
import glob
import zipfile
import os
import multiprocessing as mp
# import threading

from mapfile import pack, common, mpq


def compile_map(target_file: str, source_dir: str) -> None:
    print(f"Building {source_dir} to {target_file}")
    pack.compile_map_file(target_file, source_dir)


def build_mod() -> None:
    maps = (
        'CampaignSelect',
        'Human01',
        'Human02',
        'Human03',
        'Human04',
        'Human05',
        'Human06',
        'Human07',
        'Human08',
        'Human09',
    )

    # Pack all the maps
    tasks: list[mp.Process] = []
    # tasks: list[threading.Thread] = []

    for map_dir in maps:
        source_dir = f'maps/{map_dir}'
        target_file = f'campaigns/{map_dir}.w3x'
        task = mp.Process(target=compile_map, args=(target_file, source_dir,))
        task.start()
        tasks.append(task)
    for task in tasks:
        task.join()

    # Pack the campaign
    listfile_path = 'campaigns/(listfile)'
    with open(listfile_path, 'r') as fp:
        original_listfile_contents = fp.readlines()
    with open(listfile_path, 'w', encoding='utf-8') as fp:
        for line in original_listfile_contents:
            fp.write(line.strip('\r\n') + '\r\n')
        for file in maps:
            print(f'{file}.w3x', end='\r\n', file=fp)

    try:
        campaign_out_file = 'out/archipelago.w3n'
        print(f'Building campaigns to {campaign_out_file}')
        # Note(mm): This output file is considered corrupted by the game for some reason.
        # Opening and saving in the editor seems to fix it.
        pack.compile_map_file(campaign_out_file, 'campaigns', target_type='campaign')
    finally:
        with open(listfile_path, 'w', encoding='utf-8') as fp:
            for line in original_listfile_contents:
                fp.write(line.strip('\r\n') + '\r\n')


def zip_apworld() -> None:
    OUTPUT_PATH = 'out/wc3.apworld'
    print(f'Making {OUTPUT_PATH}')
    APWORLD_PATH = 'apworld'
    with zipfile.ZipFile(OUTPUT_PATH, 'w', compression=zipfile.ZIP_DEFLATED, compresslevel=9) as zf:
        for file in glob.glob('apworld/**', recursive=True):
            if '__pycache__' in file:
                continue
            if '/test' in file:
                continue
            zf.write(file, arcname=f'wc3/{os.path.relpath(file, "apworld")}')


def main(mod: bool, apworld: bool) -> None:
    if mod:
        build_mod()
    if apworld:
        zip_apworld()


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('--mod', action='store_true')
    parser.add_argument('--apworld', action='store_true')
    args = parser.parse_args()
    if not args.mod and not args.apworld:
        args.mod = True
        args.apworld = True
    main(mod=args.mod, apworld=args.apworld)