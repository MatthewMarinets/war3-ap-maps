"""
Utilites for working with .wtg (GUI Trigger) files.
"""
from typing import NamedTuple

from dataclasses import dataclass
import dataclasses
import enum
import re

from mapfile import binary


class ParamInfo(NamedTuple):
    arg_types: list[str]
    return_type: str
    has_subfunctions: bool


class Version:
    ROC = 4
    TFT = 7


@dataclass
class TriggerCategory:
    category_id: int
    name: str
    is_comment_section: bool = False


@dataclass
class TriggerVariable:
    name: str
    variable_type: str
    is_array: bool = False
    array_size: int = 0
    is_initialized: bool = False
    initial_value: str = ''


@dataclass
class ParseState:
    version: int
    scope_depth: int = 0


class EcaParameterType(enum.IntEnum):
    Uninitialized = -1
    Preset = 0
    Variable = 1
    Function = 2
    String = 3


@dataclass
class EcaParameter:
    parameter_type: EcaParameterType
    value: str
    children: 'EcaFunction | None' = None
    subscript: 'EcaParameter | None' = None


class EcaFunctionType(enum.IntEnum):
    Event = 0
    Condition = 1
    Action = 2
    Function = 3


@dataclass
class EcaFunction:
    function_type: EcaFunctionType
    subscope: int = 0
    name: str = ''
    is_enabled: bool = True
    parameters: list[EcaParameter] = dataclasses.field(default_factory=list)
    subfunctions: list['EcaFunction'] = dataclasses.field(default_factory=list)


@dataclass
class Trigger:
    name: str = ''
    description: str = ''
    is_commented: int = 0
    is_enabled: bool = True
    is_custom_text: bool = False
    is_initially_off: bool = True
    is_map_init: bool = False
    """Only enabled on OrcX01 initialization trigger"""
    category_id: int = -1
    eca_functions: list[EcaFunction] = dataclasses.field(default_factory=list)


@dataclass
class W3TriggerData:
    version: int = Version.TFT
    categories: list[TriggerCategory] = dataclasses.field(default_factory=list)
    variables: list[TriggerVariable] = dataclasses.field(default_factory=list)
    triggers: list[Trigger] = dataclasses.field(default_factory=list)


# def parse_lib_parameters_from_jass(lines: list[str]) -> dict[str, ParamInfo]:
#     result: dict[str, ParamInfo] = {
#         'SetVariable': (['string', 'expr'], 'nothing'),
#         'MapInitializationEvent': ([], 'nothing'),
#         'IfThenElse': (['expr', 'expr', 'expr'], 'nothing'),
#         'OperatorCompareUnit': (['unit', 'expr', 'unit'], 'boolean'),
#         'ReturnAction': ([], 'nothing'),
#     }
#     function_pattern = re.compile(r'(?:(?:constant\s+)?native|function)\s+(\w.+)')
#     for line in lines:
#         line = line.strip()
#         if not (m := re.match(function_pattern, line)):
#             continue
#         remaining_line = m.group(1)
#         parts = remaining_line.split()
#         function_name = parts[0]
#         assert parts[1] == 'takes'
#         assert parts[-2] == 'returns'
#         args = []
#         index = 2
#         while index < len(parts):
#             part = parts[index]
#             if not part:
#                 index += 1
#                 continue
#             if part in ('nothing', 'returns'):
#                 break
#             args.append(part)
#             index += 2
#         result[function_name] = (args, parts[-1])

#     return result


def parse_lib_parameters_from_trigger_strings(lines: list[str]) -> dict[str, ParamInfo]:
    result: dict[str, ParamInfo] = {}
    sections = {
        '[TriggerEvents]': 1,
        '[TriggerConditions]': 1,
        '[TriggerActions]': 1,
        '[TriggerCalls]': 3,
    }
    have_subfuncs = {
        'AndMultiple': True,
        'OrMultiple': True,
        'IfThenElseMultiple': True,
        'ForLoopAMultiple': True,
        'ForLoopBMultiple': True,
        'ForLoopVarMultiple': True,
        'ForForceMultiple': True,
        'ForGroupMultiple': True,
        'EnumDestructablesInRectAllMultiple': True,
        'EnumDestructablesInCircleBJMultiple': True,
        'EnumItemsInRectBJMultiple': True,
    }
    readable_section = -1
    for line in lines:
        line = line.strip()
        if not line:
            continue
        if line.startswith('//') or line.startswith('_'):
            continue
        elif line.startswith('['):
            readable_section = sections.get(line, -1)
            continue
        elif readable_section < 0:
            continue
        assert '=' in line
        function_name, trigger_args = line.split('=', 1)
        args = trigger_args.split(',')
        assert args
        arg_types = [arg for arg in args[readable_section:] if arg != 'nothing']
        
        result[function_name] = ParamInfo(arg_types, '', have_subfuncs.get(function_name, 0))

    return result


def read_binary(raw_data: bytes, lib_info: dict[str, ParamInfo]) -> W3TriggerData:
    reader = binary.ByteArrayParser(raw_data)
    result = W3TriggerData()

    header = reader.read_id()
    assert header == 'WTG!'
    result.version = reader.read_int32()
    assert result.version in (Version.ROC, Version.TFT)
    parse_state = ParseState(version=result.version)
    num_categories = reader.read_int32()
    for _ in range(num_categories):
        category = TriggerCategory(
            reader.read_int32(),
            reader.read_cstring(),
        )
        if result.version == Version.TFT:
            category.is_comment_section = reader.read_bool32()
        result.categories.append(category)
    sub_version = reader.read_int32()
    if result.version == Version.ROC:
        assert sub_version == 1
    else:
        assert sub_version == 2
    num_variables = reader.read_int32()
    for _ in range(num_variables):
        trigger_variable = TriggerVariable(
            name=reader.read_cstring(),
            variable_type=reader.read_cstring(),
        )
        assert reader.read_int32() == 1, "This always seems to be 1"
        trigger_variable.is_array = reader.read_bool32()
        if result.version == Version.TFT:
            trigger_variable.array_size = reader.read_int32()
        trigger_variable.is_initialized = reader.read_bool32()
        trigger_variable.initial_value = reader.read_cstring()
        result.variables.append(trigger_variable)
    num_triggers = reader.read_int32()
    for _ in range(num_triggers):
        trigger = Trigger()
        trigger.name = reader.read_cstring()
        trigger.description = reader.read_cstring().replace('\r', '')
        if result.version == Version.TFT:
            trigger.is_commented = reader.read_int32()
        trigger.is_enabled = reader.read_bool32()
        trigger.is_custom_text = reader.read_bool32()
        trigger.is_initially_off = reader.read_bool32()
        trigger.is_map_init = reader.read_bool32()  # @TFT: This is "run on map init"?
        trigger.category_id = reader.read_int32()
        num_functions = reader.read_int32()
        for _ in range(num_functions):
            func = _parse_function(reader, lib_info, parse_state)
            trigger.eca_functions.append(func)
        result.triggers.append(trigger)
    return result


def _parse_function(reader: binary.ByteArrayParser, lib_info: dict[str, ParamInfo], parse_state: ParseState) -> EcaFunction:
    eca_type = reader.read_int32()
    if eca_type > EcaFunctionType.Function:
        assert parse_state.scope_depth
        reader.index -= 4
        parse_state.scope_depth = 0
        return None
    func = EcaFunction(function_type=EcaFunctionType(eca_type))
    if parse_state.scope_depth:
        func.subscope = reader.read_int32()
        if func.subscope < 0 or func.subscope > 2:
            reader.index -= 8
            parse_state.scope_depth = 0
            return None
        parse_state = ParseState(version=parse_state.version)
    func.name = reader.read_cstring()
    func.is_enabled = reader.read_bool32()
    if func.name.startswith('OperatorCompare'):
        num_parameters = 3
    else:
        parameter_info = lib_info[func.name]
        num_parameters = len(parameter_info[0])

    for _ in range(num_parameters):
        parameter = _parse_parameter(reader, lib_info, parse_state)
        func.parameters.append(parameter)
    if parse_state.version == Version.TFT and lib_info[func.name].has_subfunctions:
        num_subfuncs = reader.read_int32()
        parse_state.scope_depth = 1
        for _ in range(num_subfuncs):
            subfunc = _parse_function(reader, lib_info, parse_state)
            if subfunc is None:
                break
            func.subfunctions.append(subfunc)
        parse_state.scope_depth = 0
    elif parse_state.version == Version.TFT:
        finished_loop_scope = reader.read_bool32()
        assert not finished_loop_scope, "Finished loop scope flag set for non-loop"
    return func


def _parse_parameter(reader: binary.ByteArrayParser, lib_info: dict[str, ParamInfo], parse_state: ParseState) -> EcaParameter:
    parameter = EcaParameter(
        parameter_type=EcaParameterType(reader.read_int32()),
        value=reader.read_cstring(),
    )
    has_children = reader.read_int32()
    if has_children:
        assert has_children == 1, f"has_children greater than 1 ({has_children}); maybe it's num_children?"
        if parameter.parameter_type == EcaParameterType.Function:
            parameter.children = _parse_function(reader, lib_info, parse_state)
        else:
            assert False, f"Children of parameter of type {parameter.parameter_type} is not implemented"
    has_subscript = reader.read_int32()
    if has_subscript:
        assert has_subscript == 1
        parameter.subscript = _parse_parameter(reader, lib_info, parse_state)
    return parameter


def to_binary(data: W3TriggerData) -> bytes:
    writer = binary.ByteArrayWriter()

    writer.write_id('WTG!')
    writer.write_int32(data.version)

    # Categories
    writer.write_int32(len(data.categories))
    for category in data.categories:
        writer.write_int32(category.category_id)
        writer.write_cstring(category.name)
        if data.version == Version.TFT:
            writer.write_bool32(category.is_comment_section)
    # sub_version
    if data.version == Version.TFT:
        writer.write_int32(2)
    else:
        writer.write_int32(1)
    # Variables
    writer.write_int32(len(data.variables))
    for variable in data.variables:
        writer.write_cstring(variable.name)
        writer.write_cstring(variable.variable_type)
        writer.write_int32(1)
        writer.write_bool32(variable.is_array)
        if data.version == Version.TFT:
            writer.write_int32(variable.array_size)
        writer.write_bool32(variable.is_initialized)
        writer.write_cstring(variable.initial_value)
    # Triggers
    writer.write_int32(len(data.triggers))
    for trigger in data.triggers:
        writer.write_cstring(trigger.name)
        writer.write_cstring(trigger.description.replace('\n', '\r\n'))
        if data.version == Version.TFT:
            writer.write_int32(trigger.is_commented)
        writer.write_bool32(trigger.is_enabled)
        writer.write_bool32(trigger.is_custom_text)
        writer.write_bool32(trigger.is_initially_off)
        writer.write_bool32(trigger.is_map_init)
        writer.write_int32(trigger.category_id)
        writer.write_int32(len(trigger.eca_functions))
        for function in trigger.eca_functions:
            _write_function(writer, function, data)
    return writer.as_bytes()


def _write_function(
    writer: binary.ByteArrayWriter,
    function: EcaFunction,
    data: W3TriggerData,
    is_subfunction: bool = False,
) -> None:
    writer.write_int32(function.function_type)
    if is_subfunction:
        writer.write_int32(function.subscope)
    writer.write_cstring(function.name)
    writer.write_bool32(function.is_enabled)
    # Number of parameters doesn't need to be written; comes from lib_info
    for parameter in function.parameters:
        _write_parameter(writer, parameter, data)
    if data.version == Version.TFT:
        writer.write_int32(len(function.subfunctions))
        for subfunction in function.subfunctions:
            _write_function(writer, subfunction, data, is_subfunction=True)


def _write_parameter(writer: binary.ByteArrayWriter, parameter: EcaParameter, data: W3TriggerData) -> None:
    writer.write_int32(parameter.parameter_type)
    writer.write_cstring(parameter.value)
    if parameter.children is not None:
        writer.write_int32(1)
        _write_function(writer, parameter.children, data)
    else:
        writer.write_int32(0)
    if parameter.subscript is not None:
        writer.write_int32(1)
        _write_parameter(writer, parameter.subscript, data)
    else:
        writer.write_int32(0)


def as_text(data: W3TriggerData) -> str:
    lines: list[str] = []
    if data.version == Version.ROC:
        lines.append('version = ROC')
    elif data.version == Version.TFT:
        lines.append('version = TFT')
    else:
        lines.append(f'version = unknown({data.version})')
    lines.append('\n# Categories')
    lines.append('| ID  | Name | is a comment |')
    lines.append('| --- | ---- | ------------ |')
    for category in data.categories:
        lines.append(f'| {category.category_id} | {category.name} | {category.is_comment_section} |')
    lines.append('\n# Variables')
    lines.append('| Name | Type | Array Size | Initial Value |')
    lines.append('| ---- | ---- | ---------- | ------------- |')
    for variable in data.variables:
        lines.append(
            f'| {variable.name} | {variable.variable_type} '
            f'| {variable.array_size if variable.is_array else "."} '
            f'| {variable.initial_value if variable.is_initialized else "."} '
            '|'
        )
    lines.append('\n# Triggers')

    def write_param(lines: list[str], param: EcaParameter, indent: str, prefix: str = 'param') -> None:
        lines.append(f'{indent}- {prefix} {param.parameter_type.name} {param.value}')
        if param.subscript is not None:
            write_param(lines, param.subscript, indent + '  ', prefix='subscript')
        if param.children is not None:
            write_function_call(lines, param.children, indent + '  ')

    def write_function_call(lines: list[str], func: EcaFunction, indent: str = '') -> None:
        lines.append(f'{indent}- {func.function_type.name} {"" if func.is_enabled else "# "}{func.name}')
        for param in func.parameters:
            write_param(lines, param, indent + '  ')
        last_subscope = 0
        subscope_names = ['if', 'then', 'else']
        subfunc_indent = indent + '  '
        for subfunc in func.subfunctions:
            if subfunc.subscope != last_subscope:
                assert func.name == 'IfThenElseMultiple'
                lines.append(f'{indent}  - {subfunc.subscope} ({subscope_names[subfunc.subscope]})')
                last_subscope = subfunc.subscope
                subfunc_indent = indent + '    '
            write_function_call(lines, subfunc, subfunc_indent)

    for trigger in data.triggers:
        if trigger.is_commented:
            # Note(mm): Random bytes can seemingly slip into the is_commented boolean; they must be preserved for a perfect round-trip
            lines.append(f'## //{trigger.is_commented if trigger.is_commented != 1 else ""} {trigger.name}')
        else:
            lines.append(f'## {trigger.name}')
        lines.append(f'- enabled: {trigger.is_enabled}')
        category_name = [category.name for category in data.categories if category.category_id == trigger.category_id]
        assert len(category_name) == 1, "Invalid category ID"
        lines.append(f'- category: [{trigger.category_id}] {category_name[0]}')
        lines.append(f'- starts off: {trigger.is_initially_off}')
        lines.append(f'- is custom text: {trigger.is_custom_text}')
        lines.append(f'- run on map init: {trigger.is_map_init}')
        lines.append('```description')
        lines.append(trigger.description)
        lines.append('```')
        lines.append('### Functions')
        for func in trigger.eca_functions:
            write_function_call(lines, func)
        lines.append('\n')
    return '\n'.join(lines)


def _split_key_value(line: str, line_number: int, sep='=') -> tuple[str, str]:
    assert sep in line, f"Line {line_number+1} is missing a separator ('{sep}')"
    parts = line.split(sep, 1)
    return tuple(x.strip() for x in parts)


def _parse_int(literal: str, line_number: int) -> int:
    try:
        return int(literal)
    except ValueError:
        assert False, f'Invalid integer literal on line {line_number+1} for key version: {literal}'


def _parse_bool(literal: str, line_number: int) -> bool:
    literal = literal.casefold()
    if literal == 'true':
        return True
    elif literal == 'false':
        return False
    assert False, f"Invalid value for boolean literal: {literal}"


class LineIterator:
    def __init__(self, lines: list[str]) -> None:
        self.iter = enumerate(lines)
    def expect_line(self, expected_line: str) -> None:
        for line_number, line in self.iter:
            if not line:
                continue
            assert line == expected_line, f'Unexpected content on line {line_number+1}, expected {expected_line}'
            break
    def expect_line_prefix(self, prefix: str) -> str:
        for line_number, line in self.iter:
            if not line:
                continue
            assert line.startswith(prefix), f'Unexpected content on line {line_number+1}, expected prefix {prefix}'
            break


def from_text(text: str) -> W3TriggerData:
    result = W3TriggerData()
    lines = text.split('\n')
    parser = LineIterator(lines)
    for line_number, line in parser.iter:
        if not line:
            continue
        key, value = _split_key_value(line, line_number)
        if key == 'version':
            if value == 'ROC':
                result.version = Version.ROC
            elif value == 'TFT':
                result.version = Version.TFT
            else:
                assert value.startswith('unknown('), f'Unknown version format on line {line_number+1}'
                assert value.endswith(')'), f'Unknown version format on line {line_number+1}'
                result.version = _parse_int(value[len('unknown('):-1], line_number)
            break
        else:
            assert False, f"Unknown top-level key {key}"
    parser.expect_line('# Categories')
    parser.expect_line_prefix('| ID')
    parser.expect_line_prefix('| --')
    for line_number, line in parser.iter:
        if not line:
            break
        # Note(mm): NightElf02 has a category that ends in a space, meaning .strip() isn't accurate T.T
        parts = [x[1:-1] for x in line.split('|')[1:-1]]
        assert len(parts) == 3, f"Wrong number of columns in Categories table on line {line_number}"
        category = TriggerCategory(
            category_id=_parse_int(parts[0], line_number),
            name=parts[1],
            is_comment_section=_parse_bool(parts[2], line_number),
        )
        result.categories.append(category)
    parser.expect_line('# Variables')
    parser.expect_line_prefix('| Name')
    parser.expect_line_prefix('| --')
    for line_number, line in parser.iter:
        if not line:
            break
        parts = [x.strip() for x in line.split('|')[1:-1]]
        assert len(parts) == 4
        variable = TriggerVariable(
            name=parts[0],
            variable_type=parts[1],
            is_array=parts[2] != '.',
            array_size=(
                0 if result.version == Version.ROC
                else 1 if parts[2] == '.' else _parse_int(parts[2], line_number)
            ),
            is_initialized=parts[3] != '.',
            initial_value='' if parts[3] == '.' else parts[3],
        )
        result.variables.append(variable)
    parser.expect_line('# Triggers')
    parsing_info = True
    parsing_description = 0
    trigger_element_stack: list[EcaFunction | EcaParameter | int] = []
    trigger = None
    for line_number, line in parser.iter:
        if not line and not parsing_description:
            continue
        if parsing_description and line != '```':
            assert trigger
            if parsing_description > 1:
                trigger.description += '\n'
            trigger.description += line
            parsing_description += 1
        elif parsing_description:
            parsing_description = 0
        elif line.startswith('## '):
            # Start new trigger
            trigger_element_stack.clear()
            if trigger is not None:
                result.triggers.append(trigger)
            parsing_info = True
            trigger = Trigger(line[3:])
            if trigger.name.startswith('//'):
                trigger.name = trigger.name[2:]
                commented_flags, trigger.name = trigger.name.split(' ', 1)
                trigger.is_commented = int(commented_flags) if commented_flags else 1
        elif line == '### Functions':
            parsing_info = False
        elif parsing_info and line == '```description':
            parsing_description = 1
        elif parsing_info:
            key, value = _split_key_value(line, line_number, sep=':')
            if key == '- enabled':
                trigger.is_enabled = _parse_bool(value, line_number)
            elif key == '- category':
                assert value.startswith('['), f"Category data on line {line_number+1} doesn't start with '['"
                assert ']' in value, f"Category data on line {line_number+1} doesn't contain ']'"
                trigger.category_id = _parse_int(value[1:].split(']', 1)[0], line_number)
            elif key == '- starts off':
                trigger.is_initially_off = _parse_bool(value, line_number)
            elif key == '- is custom text':
                trigger.is_custom_text = _parse_bool(value, line_number)
            elif key == '- run on map init':
                trigger.is_map_init = _parse_bool(value, line_number)
            else:
                assert False, f"Unknown trigger info key on line {line_number+1}: {key}"
        else:
            # Parsing functions
            assert trigger is not None
            indent_spaces, content = line.split('- ', 1)
            indent = len(indent_spaces)
            assert not (indent & 1), f"Trigger function indent is not even on line {line_number}"
            indent = indent >> 1
            content_type, content = content.split(' ', 1)
            while len(trigger_element_stack) > indent:
                trigger_element_stack.pop()
            if content_type.title() in EcaFunctionType._member_names_:
                content = content.strip()
                enabled = True
                if content and content[0] == '#':
                    enabled = False
                    content = content[1:].strip()
                func_element = EcaFunction(EcaFunctionType[content_type.title()], name=content, is_enabled=enabled)
                _append_eca_parameter(func_element, trigger_element_stack, trigger, line_number)
                trigger_element_stack.append(func_element)
            elif content_type in ('param', 'subscript'):
                if ' ' in content:
                    param_type_identifier, content = content.split(' ', 1)
                else:
                    param_type_identifier = content
                    content = ''
                param_type = EcaParameterType[param_type_identifier.title()]
                param_element = EcaParameter(param_type, content)
                _append_eca_parameter(param_element, trigger_element_stack, trigger, line_number, content_type)
                trigger_element_stack.append(param_element)
            elif content_type.isnumeric():
                assert trigger_element_stack, f"Top-level element cannot be a subfunction index: line {line_number}"
                assert isinstance(trigger_element_stack[-1], EcaFunction), f"Subfunction index cannot be used to index a parameter: line {line_number}"
                trigger_element_stack.append(int(content_type))
            else:
                assert False, f"Unknown content type '{content_type}'"

    assert not parsing_description
    assert not parsing_info
    assert trigger is not None
    result.triggers.append(trigger)
    return result


def _append_eca_parameter(
    element: EcaParameter|EcaFunction,
    element_stack: list[EcaParameter|EcaFunction|int],
    parent_trigger: Trigger,
    line_number: int,
    parameter_type: str = '',
) -> None:
    if not element_stack:
        assert isinstance(element, EcaFunction), f"Cannot append a parameter to trigger function list: line {line_number}"
        parent_trigger.eca_functions.append(element)
        return
    parent_element = element_stack[-1]
    if isinstance(parent_element, EcaFunction):
        if isinstance(element, EcaParameter):
            parent_element.parameters.append(element)
        elif isinstance(element, EcaFunction):
            parent_element.subfunctions.append(element)
        return
    if isinstance(parent_element, int):
        assert isinstance(element, EcaFunction), f"Cannot use a parameter as a subfunction: line {line_number}"
        element.subscope = parent_element
        parent_element = element_stack[-2]
        assert isinstance(parent_element, EcaFunction), f"Parameter cannot append to a parameter subfunction index: line {line_number}"
        parent_element.subfunctions.append(element)
        return
    assert isinstance(parent_element, EcaParameter)
    if isinstance(element, EcaParameter):
        assert parameter_type == 'subscript'
        assert parent_element.subscript is None
        parent_element.subscript = element
    else:
        assert parent_element.children is None
        parent_element.children = element


if __name__ == '__main__':
    from work import manifest
    # filenames = [f'work/HumanX01/war3map.wtg']
    # filenames = [f'work/{x}/war3map.wtg' for x in manifest.all_directories if 'X' not in x]
    filenames = [f'work/{x}/war3map.wtg' for x in manifest.all_directories]
    import os
    os.makedirs('scratch/wtg', exist_ok=True)
    with open('gamedata/1_30_4/ui/triggerdata.txt') as fp:
        lib_lines = fp.readlines()
    lib_info = parse_lib_parameters_from_trigger_strings(lib_lines)
    for filename in filenames:
        if not os.path.exists(filename):
            print(f'Warning: {filename} does not exist; skipping')
            continue
        print(f'Converting {filename}')
        map_name = os.path.basename(os.path.dirname(filename))
        with open(filename, 'rb') as fp2:
            raw_data = fp2.read()
        data = read_binary(raw_data, lib_info)
        text = as_text(data)
        with open(f'scratch/wtg/{os.path.basename(os.path.dirname(filename))}.md', 'w') as fp:
            fp.write(text)
        round_tripped_data = from_text(text)
        round_tripped_binary = to_binary(round_tripped_data)
        assert round_tripped_data == data
        assert round_tripped_binary == raw_data
        # print(data)
