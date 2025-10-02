import glob
import re

def main() -> None:
    script_files = glob.glob('maps/*/war3map.j', recursive=True)

    result: dict[tuple[str, int], tuple[str, int]] = {}

    sound_path_pattern = re.compile(r'\s*set \w+=CreateSound\(("[^"]*"), \w+, \w+, \w+, \d+, (\d+)')
    sound_label_pattern = re.compile(r'\s*call SetSoundParamsFromLabel\(\w+, ("[^"]*")\)')
    sound_duration_pattern = re.compile(r'\s*call SetSoundDuration\(\w+, (\d+)\)')

    def add_result(path_line: str, label_line: str, duration_line: str) -> None:
        path_matches = re.match(sound_path_pattern, path_line)
        path = path_matches.group(1)
        fadeout = int(path_matches.group(2))
        label = re.match(sound_label_pattern, label_line).group(1)
        duration = int(re.match(sound_duration_pattern, duration_line).group(1))
        if path in result:
            assert result[path, fadeout] == (label, duration), f"{path, fadeout} has {result[path]} != {label, duration}"
        else:
            result[path, fadeout] = (label, duration)


    for file in script_files:
        with open(file, 'r') as fp:
            contents = fp.read()
        _, body = contents.split('function InitSounds takes nothing returns nothing', 1)
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

    print('SOUND_DATA = {')
    for path in sorted(result):
        print(f'    (r{path[0]}, {path[1]}): ({result[path][0]}, {result[path][1]}),')
    print('}')

if __name__ == '__main__':
    main()
