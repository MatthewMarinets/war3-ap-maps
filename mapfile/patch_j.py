"""
A utility for patching in additional data into a .j file
"""
from dataclasses import dataclass, field
import os
import re
from .wtg import TriggerVariable


class Rope:
    """Structure for doing insertions into a list of lines while keeping line IDs stable until exporting"""
    def __init__(self, lines: list[str]) -> None:
        self.lines = lines
        self.segments = [(0, len(lines))]

    def _search_segments(self, line_id: int) -> tuple[int, tuple[int, int]]:
        for segment_id, segment in enumerate(self.segments):
            if line_id >= segment[0] and line_id < segment[0] + segment[1]:
                break
        return segment_id, segment

    def insert_after(self, line_id: int, lines: list[str]) -> int:
        segment_start = len(self.lines)
        line_id = line_id % len(self.lines)  # allow -1 to refer to the end of the list
        self.lines.extend(lines)
        segment_id, segment = self._search_segments(line_id)
        if line_id == segment[0] + segment[1] - 1:
            if segment_id == len(self.segments) - 1:
                # Grow the last segment
                self.segments[-1] = (self.segments[-1][0], self.segments[-1][1] + len(lines))
            else:
                self.segments[segment_id+1:segment_id+1] = [(segment_start, len(lines))]
        else:
            # split the target segment
            split_start_1 = segment[0]
            split_length_1 = line_id - segment[0] + 1
            split_start_2 = segment[0] + split_length_1
            split_length_2 = segment[1] - split_length_1
            self.segments[segment_id:segment_id+1] = [
                (split_start_1, split_length_1),
                (segment_start, len(lines)),
                (split_start_2, split_length_2),
            ]
        return segment_start

    def remove_lines(self, line_id_start: int, line_id_end: int) -> None:
        line_id_start = line_id_start % len(self.lines)
        line_id_end = ((line_id_end - 1) % len(self.lines)) + 1
        segment_id, segment = self._search_segments(line_id_start)
        if line_id_end < segment[0] or line_id_end >= segment[0] + segment[1]:
            end_segment_id, end_segment = self._search_segments(line_id_end)
        else:
            end_segment_id = segment_id
            end_segment = segment
        assert end_segment_id >= segment_id, (
            f"Removal got end segment earlier than start segment: {end_segment_id} > {segment_id}"
        )
        assert (end_segment_id != segment_id) or line_id_start < line_id_end, (
            f"Removal got range end that precedes range start: {line_id_start} >= {line_id_end}"
        )
        result_segments: list[tuple[int, int]] = []
        if line_id_start > segment[0]:
            result_segments.append((segment[0], line_id_start - segment[0]))
        if line_id_end < end_segment[0] + end_segment[1] - 1:
            result_segments.append((line_id_end, end_segment[1] - (line_id_end - end_segment[0])))
        self.segments[segment_id:end_segment_id + 1] = result_segments

    def ordered_lines(self) -> tuple[list[str], list[int]]:
        """@returns tuple of (lines, line_ids)"""
        result: list[str] = []
        ids: list[int] = []
        for segment in self.segments:
            result.extend(self.lines[segment[0]:segment[0] + segment[1]])
            ids.extend(range(segment[0], segment[0] + segment[1]))
        return result, ids

    def __str__(self) -> str:
        return f'Rope({len(self.lines)} lines)'


@dataclass(slots=True)
class FunctionInfo:
    name: str = ''
    args: str = ''
    return_type: str = ''
    line_start: int = 0
    line_end: int = 0


@dataclass(slots=True)
class TriggerInfo:
    name: str = ''
    line_start: int = 0
    line_end: int = 0
    functions: list[FunctionInfo] = field(default_factory=list)


@dataclass(slots=True)
class VarInfo:
    name: str = ''
    type: str = ''
    line: int = 0
    value: str = ''
    is_array: bool = False
    is_constant: bool = False


@dataclass(slots=True)
class Wc3Mod:
    lines: Rope
    globals_start_line: int = -1
    globals_end_line: int = -1
    global_vars: list[VarInfo] = field(default_factory=list)
    functions: list[FunctionInfo] = field(default_factory=list)
    triggers: list[TriggerInfo] = field(default_factory=list)


def initializer(variable: TriggerVariable) -> str:
    # note: unused for now until want validation
    start = (
        f'{variable.variable_type}'
        f'{" array" if variable.is_array else ""} '
        f'{variable.name}{initializer(variable)}'
    )
    if not variable.is_initialized or variable.is_array:
        return start
    if variable.variable_type == 'string':
        return f'{start} = "{variable.initial_value}"'
    return f'{start} = {variable.initial_value}'


GLOBALS_START = 'globals'
GLOBALS_END = 'endglobals'
FUNCTION_START = re.compile(r'function (\w+) takes ([a-zA-Z0-9_, ]+) returns (\w+)')
FUNCTION_END = 'endfunction'
SECTION_BREAK = '//==========================================================================='
PART_BREAK = '//***************************************************************************'
TRIGGER_START = re.compile(r'^// Trigger: (.*)')


def load_j(j_file: str) -> Wc3Mod:
    with open(j_file, 'r') as fp:
        lines = fp.read().split('\n')
    result = Wc3Mod(Rope(lines))
    STATE_NONE = 0
    STATE_GLOBALS = 1
    STATE_TRIGGER = 2
    STATE_FUNCTION = 4
    state = STATE_NONE
    current_function: FunctionInfo | None = None
    current_trigger: TriggerInfo | None = None
    in_section_break = False
    last_line_section_break = False
    for line_number, line in enumerate(lines):
        last_line_section_break = in_section_break
        in_section_break = False
        if line == GLOBALS_START:
            assert result.globals_start_line == -1, (
                f"Duplicate globals scope: {result.globals_start_line} and {line_number}"
            )
            result.globals_start_line = line_number + 1
            state |= STATE_GLOBALS
        elif line == GLOBALS_END:
            assert result.globals_end_line == -1, (
                f"Duplicate globals end scope: {result.globals_end_line} and {line_number}"
            )
            result.globals_end_line = line_number
            state &= ~STATE_GLOBALS
        elif state & STATE_GLOBALS:
            if line.strip().startswith('//'):
                continue
            if not line.strip():
                continue
            var = VarInfo(line=line_number)
            if '=' in line:
                line, value = line.split('=', 1)
                var.value = value.strip()
            parts = [p for p in line.split() if p]
            assert len(parts) <= 3, f"Line {line_number}: Encountered unknown variable format: {line}"
            if parts[0] == 'constant':
                parts.pop(0)
                var.is_constant = True
            var.type = parts[0]
            var.name = parts[-1]
            if len(parts) == 3:
                assert parts[1] == 'array', f"Line {line_number}: Unknown second symbol in global definition: {line}"
                var.is_array = True
            result.global_vars.append(var)
        elif line == SECTION_BREAK:
            in_section_break = True
        elif (m := FUNCTION_START.match(line)):
            assert not (state & STATE_FUNCTION), (
                f"Line {line_number}: Encountered function start while inside function"
            )
            current_function = FunctionInfo(
                name=m.group(1),
                args=m.group(2),
                return_type=m.group(3),
                line_start=line_number,
            )
            state |= STATE_FUNCTION
            if current_function.name == 'InitCustomTriggers' and (state & STATE_TRIGGER):
                current_trigger.line_end = line_number - 1
                result.triggers.append(current_trigger)
                current_trigger = None
                state &= ~STATE_TRIGGER
        elif line == FUNCTION_END:
            assert (state & STATE_FUNCTION), f"Line {line_number}: Encountered endfunction outside function"
            assert current_function
            if state & STATE_TRIGGER:
                current_trigger.functions.append(current_function)
            current_function.line_end = line_number + 1
            result.functions.append(current_function)
            state &= ~STATE_FUNCTION
        elif last_line_section_break and (m := TRIGGER_START.match(line)):
            if state & STATE_TRIGGER:
                assert current_trigger
                current_trigger.line_end = line_number - 1
                result.triggers.append(current_trigger)
            current_trigger = TriggerInfo(m.group(1), line_number - 1)
            state |= STATE_TRIGGER
    assert state == STATE_NONE, state
    return result


def patch_in_globals(patch: Wc3Mod, target: Wc3Mod) -> None:
    target_globals = {
        global_var.name: global_var for global_var in target.global_vars
    }
    last_global_line = target.globals_start_line - 1
    for patch_global in patch.global_vars:
        target_global = target_globals.get(patch_global.name)
        var_line = (
            f'{"constant " if patch_global.is_constant else ""}{patch_global.type} '
            f'{"array " if patch_global.is_array else ""}{patch_global.name}'
        )
        if patch_global.value:
            var_line = f'{var_line}= {patch_global.value}'
        if target_global is None:
            last_global_line = target.lines.insert_after(last_global_line, [var_line])
        else:
            target.lines.lines[target_global.line] = var_line
            last_global_line = target_global.line


def patch_in_contents(patch: Wc3Mod, patch_name: str, target: Wc3Mod) -> None:
    target_trigger: TriggerInfo | None = None
    for trigger in target.triggers:
        if trigger.name == patch_name:
            target_trigger = trigger
            break
    new_lines = [
        SECTION_BREAK,
        f'// Trigger: {patch_name}',
        SECTION_BREAK,
    ]
    if patch.globals_start_line > 0:
        new_lines.extend(patch.lines.lines[:patch.globals_start_line-1])
        new_lines.extend(patch.lines.lines[patch.globals_end_line+1:])
    else:
        new_lines.extend(patch.lines.lines)
    if target_trigger is None:
        target_line = target.triggers[0].line_start - 1
        trigger_line = target.lines.insert_after(target_line, new_lines)
        target_trigger = TriggerInfo(patch_name, line_start=trigger_line, line_end=trigger_line + 3)
    else:
        existing_lines = target.lines.lines[target_trigger.line_start:target_trigger.line_end]
        for line_number, line in enumerate(new_lines):
            if line_number >= len(existing_lines):
                break
            target.lines.lines[target_trigger.line_start + line_number] = line
        if len(new_lines) > len(existing_lines):
            last_target_line = target.lines.insert_after(
                target_trigger.line_end - 1, new_lines[len(existing_lines):]
            )
        elif len(existing_lines) > len(new_lines):
            target.lines.remove_lines(target_trigger.line_start + len(new_lines), target_trigger.line_end)


def patch_in_functions(patch: Wc3Mod, patch_name: str, target: Wc3Mod) -> None:
    """Patches in per-function. This is imperfect, as it can't handle comments outside of function scope."""
    target_trigger: TriggerInfo | None = None
    for trigger in target.triggers:
        if trigger.name == patch_name:
            target_trigger = trigger
            break
    if target_trigger is None:
        target_line = target.triggers[0].line_start - 1
        trigger_line = target.lines.insert_after(target_line, [
            SECTION_BREAK,
            f'// Trigger: {patch_name}',
            SECTION_BREAK,
        ])
        target_trigger = TriggerInfo(patch_name, line_start=trigger_line, line_end=trigger_line + 3)
    existing_functions = {
        func.name: func for func in target_trigger.functions
    }
    last_target_line = target_trigger.line_start + 2
    for func in patch.functions:
        existing_function = existing_functions.get(func.name)
        new_lines = patch.lines.lines[func.line_start:func.line_end]
        if not existing_function:
            first_line_write = target.lines.insert_after(last_target_line, new_lines)
            last_target_line = first_line_write + len(new_lines) - 1
        else:
            existing_lines = target.lines.lines[existing_function.line_start:existing_function.line_end]
            for line_number, line in enumerate(new_lines):
                if line_number >= len(existing_lines):
                    break
                target.lines.lines[existing_function.line_start + line_number] = line
            last_target_line = existing_function.line_start + line_number
            if len(new_lines) > len(existing_lines):
                last_target_line = target.lines.insert_after(
                    existing_function.line_end - 1, new_lines[len(existing_lines):]
                )
                last_target_line += len(new_lines) - len(existing_lines) - 1
            if len(new_lines) < len(existing_lines):
                target.lines.remove_lines(existing_function.line_start + len(new_lines), existing_function.line_end)


def write_patched_file(target: Wc3Mod, filename: str) -> None:
    text = '\n'.join(target.lines.ordered_lines()[0])
    with open(filename, 'w') as fp:
        fp.write(text)


def main(args: list[str]) -> int:
    USAGE = f'{os.path.basename(__file__)} [-h] <map_dir> <patch_file>'
    if '-h' in args or '--help' in args:
        print(USAGE)
        return 0
    if not args:
        print('Error: no map directory was provided')
        print(USAGE)
        return 1
    if len(args) < 2:
        print('Error: No patch file provided')
        print(USAGE)
        return 1
    map_dir = args[0]
    map_script = f'{map_dir}/war3map.j'
    patch_file = args[1]
    if not os.path.isfile(patch_file):
        patch_file = f'common/{patch_file}'
    if not os.path.isfile(patch_file):
        print(f'Error: {args[1]} is not a file, and is not in common/')
        return 1

    patch = load_j(patch_file)
    target_info = load_j(map_script)
    patch_name = os.path.splitext(os.path.basename(patch_file))[0]
    patch_in_globals(patch, target_info)
    patch_in_contents(patch, patch_name, target_info)
    write_patched_file(target_info, map_script)


if __name__ == '__main__':
    import sys
    sys.exit(main(sys.argv[1:]))
