"""
Get TRIGSTR strings out of data files in a map.
"""

import re
import glob
from collections import Counter
from mapfile import wts


TRIG_STRING_PATTERN = re.compile(r'TRIGSTR_\d\d\d')


def un_trig_string(filename: str, wts_strings: dict[int, str]) -> set[str]:
    with open(filename, 'r') as fp:
        contents = fp.read()

    replaced: set[str] = set()
    counter = Counter()

    def replace_string(match: re.Match) -> str:
        if counter[match.group()] != 1:
            return match.group()
        replaced.add(match.group())
        result = wts_strings[match.group()]
        result = result.replace('\\', '\\\\')
        result = result.replace('\n', '\\n')
        return result

    matches = re.findall(TRIG_STRING_PATTERN, contents)
    for match in matches:
        counter[match] += 1

    result = re.sub(TRIG_STRING_PATTERN, replace_string, contents)

    if replaced:
        with open(filename, 'w', encoding='utf-8') as fp:
            fp.write(result)

    return replaced


def main(map_dir: str) -> None:
    WTS_FILE = f'{map_dir}/war3map.wts'
    wts_strings = wts.read_wts(WTS_FILE)
    replaced: set[str] = set()
    for file in glob.glob(f'{map_dir}/*.toml'):
        if '.w3i.toml' in file:
            continue
        replaced.update(un_trig_string(file, wts_strings))
    wts.clear_wts(WTS_FILE, replaced)


if __name__ == '__main__':
    import sys
    import os
    USAGE = f"Usage:\n{__file__} <map_dir>"
    if len(sys.argv) < 2:
        print("Error: no directory provided")
        print(USAGE)
        sys.exit(1)
    elif {"-h", "-help", "--help", "help"}.intersection(sys.argv):
        print(USAGE)
        sys.exit()
    if not os.path.isdir(sys.argv[1]):
        print(f"Error: {sys.argv[1]} is not a directory")
        sys.exit(1)
    main(sys.argv[1])
