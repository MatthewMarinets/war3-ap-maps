import glob
import re
import sys
import os


def stem(path: str) -> str:
    return os.path.splitext(os.path.basename(path))[0]


def main() -> None:
    script_files = glob.glob('maps/*/war3map.j', recursive=True)

    duration_result: dict[tuple[str, int], int] = {}
    label_result: dict[str, str] = {}

    sound_path_pattern = re.compile(r'\s*set \w+\s*=\s*CreateSound\(\s*("[^"]*"), \w+, \w+, \w+, \d+, (\d+)')
    sound_label_pattern = re.compile(r'\s*call SetSoundParamsFromLabel\(\s*\w+, ("[^"]*")\s*\)')
    sound_duration_pattern = re.compile(r'\s*call SetSoundDuration\(\s*\w+, (\d+)\s*\)')

    def add_result(path_line: str, label_line: str, duration_line: str) -> None:
        path_matches = re.match(sound_path_pattern, path_line)
        path = path_matches.group(1)
        fadeout = int(path_matches.group(2))
        label = re.match(sound_label_pattern, label_line).group(1)
        # if 'GetSoundDuration' in duration_line:
        #     duration = -1
        # else:
        #     duration = int(re.match(sound_duration_pattern, duration_line).group(1))
        # if (path, fadeout) in duration_result:
        #     assert duration_result[path, fadeout] == duration, f"{path, fadeout} has {duration_result[path, fadeout]} != {duration}"
        # else:
        #     duration_result[path, fadeout] = duration
        if path in label_result:
            assert label_result[path] == label, f"{path} has {label_result[path]} != {label}"
        else:
            label_result[path] = label

    SOUND_START = 'function InitSounds takes nothing returns nothing'
    for file in script_files:
        with open(file, 'r') as fp:
            contents = fp.read()
        if SOUND_START not in contents:
            continue
        _, body = contents.split(SOUND_START, 1)
        body, _ = body.split('endfunction', 1)
        body = body.strip()

        lines = body.split('\n')

        state = 0
        index = 0
        path_line = ''
        label_line = ''
        duration_line = ''
        while index < len(lines):
            if state == 0 and 'CreateSound' in lines[index]:
                path_line = lines[index]
                state += 1
            elif state == 1:
                label_line = lines[index]
                if 'SetSoundParamsFromLabel' not in label_line:
                    state = 0
                else:
                    state += 1
            elif state == 2:
                duration_line = lines[index]
                add_result(path_line, label_line, duration_line)
                path_line = ''
                label_line = ''
                duration_line = ''
                state = 0

            index += 1
        assert state == 0

    print('SOUND_LABEL_DATA = {')
    for key in sorted(label_result):
        path = key.strip('"')
        basename = stem(path.replace('\\\\', '/'))
        default = basename
        path_lower = path.lower()
        if path_lower.startswith('units') or (path_lower.startswith('sound') and 'dialog' not in path_lower and 'ambient' not in path_lower):
            default = default.rstrip('0123456789')
        result = label_result[key].strip('"')
        if default == result:
            continue
        print(f"    {key}: '{result}',")
    print('}')


if __name__ == '__main__':
    main()
