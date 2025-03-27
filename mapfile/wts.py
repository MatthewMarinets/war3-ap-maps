"""
Utilities for working with .wts (string library) files.
"""
import re
from codecs import BOM_UTF8
BOM = BOM_UTF8.decode('utf-8')


def read_wts(filename: str) -> dict[str, str]:
    """
    Reads the strigger string contents into a dictionary.
    Keys are in TRIGSTR_000 format.
    """
    with open(filename, 'r', encoding='utf-8') as file_handle:
        lines = file_handle.readlines()
    if lines[0].startswith(BOM):
        lines[0] = lines[0][len(BOM):]
    result: dict[str, str] = {}
    current_key = ''
    current_string: list[str] | None = None
    for line in lines:
        if m := re.match(r'^STRING\s+(\d+)', line):
            current_key = m.group(1)
            assert len(current_key) <= 3, 'String keys can only be up to 3 digits'
            current_key = 'TRIGSTR_' + ('0' * (3 - len(current_key))) + current_key
        elif line.strip().startswith('{') and current_string is None:
            current_string = []
        elif line.strip().startswith('}') and current_string is not None:
            assert current_key not in result, f'{current_key} has already been defined earlier in the file'
            result[current_key] = ''.join(current_string)[:-1]  # strip the trailing newline
            current_string = None
            current_key = ''
        elif current_string is not None:
            current_string.append(line)
        # Note(mm): everything else outside the `{}` scope is assumed to be a comment
    return result

if __name__ == '__main__':
    print(read_wts('work/HumanX01/war3map.wts'))

