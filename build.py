#! /usr/bin/env python3
"""
Map build script
"""
import glob
import os
import multiprocessing as mp
# import threading

from mapfile import pack, common, mpq


def compile_map(target_file: str, source_dir: str) -> None:
    print(f"Building {source_dir} to {target_file}")
    pack.compile_map_file(target_file, source_dir)


def main() -> None:
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
        original_listfile_contents = fp.read()
    with open(listfile_path, 'w', encoding='utf-8') as fp:
        fp.write(original_listfile_contents)
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
            fp.write(original_listfile_contents)


if __name__ == '__main__':
    main()