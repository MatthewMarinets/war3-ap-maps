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
    array_size: int = 1
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
    is_commented: bool = False
    is_enabled: bool = True
    is_custom_text: bool = False
    is_initially_on: bool = True
    unknown: int = 0
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
        'AndMultiple': 1,
        'OrMultiple': 1,
        'IfThenElseMultiple': 1,
        'ForLoopAMultiple': 1,
        'ForLoopBMultiple': 1,
        'ForLoopVarMultiple': 1,
        'ForForceMultiple': 1,
        'ForGroupMultiple': 1,
        'EnumDestructablesInRectAllMultiple': 1,
        'EnumDestructablesInCircleBJMultiple': 1,
        'EnumItemsInRectBJMultiple': 1,
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


def read_wtg(raw_data: bytes, lib_info: dict[str, ParamInfo]) -> W3TriggerData:
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
        trigger.description = reader.read_cstring()
        if result.version == Version.TFT:
            trigger.is_commented = reader.read_bool32()
        trigger.is_enabled = reader.read_bool32()
        trigger.is_custom_text = reader.read_bool32()
        trigger.is_initially_on = reader.read_bool32()
        trigger.unknown = reader.read_int32()  # @TFT: This is "run on map init"?
        trigger.category_id = reader.read_int32()
        assert trigger.unknown in (0, 1)
        num_functions = reader.read_int32()
        for _ in range(num_functions):
            func = parse_function(reader, lib_info, parse_state)
            trigger.eca_functions.append(func)
        result.triggers.append(trigger)
    return result


def parse_function(reader: binary.ByteArrayParser, lib_info: dict[str, ParamInfo], parse_state: ParseState) -> EcaFunction:
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
    if parse_state.version == Version.TFT and lib_info[func.name].has_subfunctions:
        for _ in range(num_parameters):
            parameter = parse_parameter(reader, lib_info, parse_state)
            func.parameters.append(parameter)
        num_subfuncs = reader.read_int32()
        parse_state.scope_depth = 1
        for _ in range(num_subfuncs):
            subfunc = parse_function(reader, lib_info, parse_state)
            if subfunc is None:
                break
            func.subfunctions.append(subfunc)
        parse_state.scope_depth = 0
    else:
        for _ in range(num_parameters):
            parameter = parse_parameter(reader, lib_info, parse_state)
            func.parameters.append(parameter)
        if parse_state.version == Version.TFT:
            finished_loop_scope = reader.read_bool32()
            assert not finished_loop_scope, "Finished loop scope flag set for non-loop"
    return func


def parse_parameter(reader: binary.ByteArrayParser, lib_info: dict[str, ParamInfo], parse_state: ParseState) -> EcaParameter:
    parameter = EcaParameter(
        parameter_type=EcaParameterType(reader.read_int32()),
        value=reader.read_cstring(),
    )
    has_children = reader.read_int32()
    if has_children:
        assert has_children == 1, f"has_children greater than 1 ({has_children}); maybe it's num_children?"
        if parameter.parameter_type == EcaParameterType.Function:
            parameter.children = parse_function(reader, lib_info, parse_state)
        else:
            assert False, f"Children of parameter of type {parameter.parameter_type} is not implemented"
    has_subscript = reader.read_int32()
    if has_subscript:
        assert has_subscript == 1
        parameter.subscript = parse_parameter(reader, lib_info, parse_state)
    return parameter


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
        data = read_wtg(raw_data, lib_info)
        print(data)
