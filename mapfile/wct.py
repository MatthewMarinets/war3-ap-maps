"""
Utilites for working with .wct (Text Trigger) files.
"""

from dataclasses import dataclass, field
import os
from mapfile import binary


EXTENSION = '.wct'
SCRIPT_LABEL_START = r'//\\// '
LABEL_CUSTOM_SCRIPT = 'Custom Script'
LABEL_TRIGGER = 'Trigger '
LABEL_END = 'End'


@dataclass
class War3TextTrigger:
    is_custom_text: bool = False
    text: str = ''


@dataclass
class War3TextTriggers:
    version: int = 0
    custom_script_comment: str = ''
    custom_script_code: War3TextTrigger = field(default_factory=War3TextTrigger)
    triggers: list[War3TextTrigger] = field(default_factory=list)


def read_binary(raw_bytes: bytes) -> War3TextTriggers:
    reader = binary.ByteArrayParser(raw_bytes)
    version = reader.read_int32()
    assert version in (0, 1), "Unknown file format version"
    data = War3TextTriggers(version)
    if version == 1:
        data.custom_script_comment = reader.read_cstring().replace('\r\n', '\n')
        custom_script_length = reader.read_int32()
        data.custom_script_code.is_custom_text = custom_script_length != 0
        if custom_script_length:
            data.custom_script_code.text = reader.read_cstring().replace('\r\n', '\n')
    num_triggers = reader.read_int32()
    for _ in range(num_triggers):
        length = reader.read_int32()
        trigger = War3TextTrigger(length != 0)
        if length:
            trigger.text = reader.read_cstring().replace('\r\n', '\n')
        data.triggers.append(trigger)
    assert reader.index == len(raw_bytes)
    return data


def to_binary(data: War3TextTriggers) -> bytes:
    writer = binary.ByteArrayWriter()
    writer.write_int32(data.version)
    if data.version == 1:
        writer.write_cstring(data.custom_script_comment.replace('\n', '\r\n'))
        if data.custom_script_code.is_custom_text:
            custom_script_text = data.custom_script_code.text.replace('\n', '\r\n')
            writer.write_int32(len(custom_script_text) + 1)
            writer.write_cstring(custom_script_text)
        else:
            writer.write_int32(0)
    writer.write_int32(len(data.triggers))
    for trigger in data.triggers:
        if trigger.is_custom_text:
            text = trigger.text.replace('\n', '\r\n')
            writer.write_int32(len(text) + 1)
            writer.write_cstring(text)
        else:
            writer.write_int32(0)
    return writer.as_bytes()


def as_text(data: War3TextTriggers) -> str:
    result = [f'// version: {data.version}', f'// Triggers: {len(data.triggers)}']
    if data.custom_script_comment:
        result.extend('// ' + line for line in data.custom_script_comment.split('\n'))
    if data.custom_script_code.is_custom_text:
        result.append(f'{SCRIPT_LABEL_START}{LABEL_CUSTOM_SCRIPT}')
        result.append(data.custom_script_code.text)
    for index, trigger in enumerate(data.triggers):
        if not trigger.is_custom_text:
            continue
        result.append(f'{SCRIPT_LABEL_START}{LABEL_TRIGGER}#{index}')
        result.append(trigger.text)
    result.append(f'{SCRIPT_LABEL_START}{LABEL_END}')
    return '\n'.join(result)


def from_text(text: str) -> War3TextTriggers:
    sections = text.split(SCRIPT_LABEL_START)
    header_lines = sections[0].split('\n')
    assert len(header_lines) >= 2
    assert header_lines[0].startswith('// version: ')
    version = int(header_lines[0][len('// version: '):])
    assert header_lines[1].startswith('// Triggers: ')
    num_triggers = int(header_lines[1][len('// Triggers: '):])
    data = War3TextTriggers(version=version, triggers=[War3TextTrigger() for _ in range(num_triggers)])
    comment_lines = [line[3:] for line in header_lines[2:-1]]
    data.custom_script_comment = '\n'.join(comment_lines)
    for section in sections[1:]:
        all_lines = section.split('\n')
        header_line = all_lines[0]
        lines = all_lines[1:-1]
        if header_line == LABEL_END:
            break
        elif header_line == LABEL_CUSTOM_SCRIPT:
            data.custom_script_code.is_custom_text = True
            data.custom_script_code.text = '\n'.join(lines)
        elif header_line.startswith(LABEL_TRIGGER):
            assert '#' in header_line
            trigger_index = int(header_line.split('#', 1)[1])
            assert trigger_index < num_triggers, f'Out of bounds trigger: {trigger_index} >= {num_triggers}'
            data.triggers[trigger_index].is_custom_text = True
            data.triggers[trigger_index].text = '\n'.join(lines)
        else:
            assert False, f'Unknown custom script label: {header_line}'
    return data


def from_text_file(filename: str) -> War3TextTriggers:
    with open(filename, 'r') as fp:
        text = fp.read()
    return from_text(text)


if __name__ == '__main__':
    from work import manifest
    filenames = [f'work/{x}/war3map.wct' for x in manifest.all_directories]
    os.makedirs('scratch/wct', exist_ok=True)
    for filename in filenames:
        if not os.path.isfile(filename):
            continue
        print(filename)
        map_name = os.path.basename(os.path.dirname(filename))
        with open(filename, 'rb') as fp2:
            raw_data = fp2.read()
        data = read_binary(raw_data)
        text = as_text(data)
        with open(f'scratch/wct/wct_{map_name}.j', 'w') as fp:
            print(text, file=fp)
        retrieved_data = from_text(text)
        round_tripped = to_binary(retrieved_data)
        assert round_tripped == raw_data
    print('done')
