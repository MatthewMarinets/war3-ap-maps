"""
Utilites for working with .wtg (GUI Trigger) files.
"""

from dataclasses import dataclass
import dataclasses
import enum
import re

from mapfile import binary


TParamInfo = tuple[list[str], str]


@dataclass
class TriggerCategory:
    category_id: int
    name: str


@dataclass
class TriggerVariable:
    name: str
    variable_type: str
    unknown: int
    is_array: bool
    is_initialized: bool
    initial_value: str


class EcaParameterType(enum.IntEnum):
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
    name: str
    is_enabled: bool
    parameters: list[EcaParameter] = dataclasses.field(default_factory=lambda: [])


@dataclass
class Trigger:
    name: str
    description: str
    is_enabled: bool
    is_custom_text: bool
    is_initially_on: bool
    unknown: int
    category_id: int
    eca_functions: list[EcaFunction] = dataclasses.field(default_factory=lambda: [])


@dataclass
class W3TriggerData:
    categories: list[TriggerCategory] = dataclasses.field(default_factory=lambda: [])
    unknown: int = 0
    variables: list[TriggerVariable] = dataclasses.field(default_factory=lambda: [])
    triggers: list[Trigger] = dataclasses.field(default_factory=lambda: [])


def parse_lib_parameters_from_jass(lines: list[str]) -> dict[str, TParamInfo]:
    result: dict[str, TParamInfo] = {
        'SetVariable': (['string', 'expr'], 'nothing'),
        'MapInitializationEvent': ([], 'nothing'),
        'IfThenElse': (['expr', 'expr', 'expr'], 'nothing'),
        'OperatorCompareUnit': (['unit', 'expr', 'unit'], 'boolean'),
        'ReturnAction': ([], 'nothing'),
    }
    function_pattern = re.compile(r'(?:(?:constant\s+)?native|function)\s+(\w.+)')
    for line in lines:
        line = line.strip()
        if not (m := re.match(function_pattern, line)):
            continue
        remaining_line = m.group(1)
        parts = remaining_line.split()
        function_name = parts[0]
        assert parts[1] == 'takes'
        assert parts[-2] == 'returns'
        args = []
        index = 2
        while index < len(parts):
            part = parts[index]
            if not part:
                index += 1
                continue
            if part in ('nothing', 'returns'):
                break
            args.append(part)
            index += 2
        result[function_name] = (args, parts[-1])

    return result


def parse_lib_parameters_from_trigger_strings(lines: list[str]) -> dict[str, TParamInfo]:
    result: dict[str, TParamInfo] = {}
    sections = {
        '[TriggerEvents]': 1,
        '[TriggerConditions]': 1,
        '[TriggerActions]': 1,
        '[TriggerCalls]': 3,
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
        
        result[function_name] = (arg_types, '')

    return result


def read_wtg(raw_data: bytes, lib_info: dict[str, TParamInfo]) -> W3TriggerData:
    reader = binary.ByteArrayParser(raw_data)
    result = W3TriggerData()

    header = reader.read_id()
    assert header == 'WTG!'
    version = reader.read_int32()
    assert version == 4  # 7 for @TFT
    num_categories = reader.read_int32()
    for _ in range(num_categories):
        result.categories.append(TriggerCategory(
            reader.read_int32(),
            reader.read_cstring(),
            # @TFT parses an extra boolean here for is_comment_section
        ))
    unknown = reader.read_int32()
    assert unknown == 1
    num_variables = reader.read_int32()
    for _ in range(num_variables):
        result.variables.append(TriggerVariable(
            name=reader.read_cstring(),
            variable_type=reader.read_cstring(),
            unknown=reader.read_int32(),
            is_array=reader.read_bool32(),
            # @TFT has an extra int32 here for array size
            is_initialized=reader.read_bool32(),
            initial_value=reader.read_cstring(),
        ))
        assert result.variables[-1].unknown == 1, "This always seems to be 1"
    num_triggers = reader.read_int32()
    for _ in range(num_triggers):
        trigger = Trigger(
            name=reader.read_cstring(),
            description=reader.read_cstring(),
            # @TFT has a bool32 here for is_commented
            is_enabled=reader.read_bool32(),
            is_custom_text=reader.read_bool32(),
            is_initially_on=reader.read_bool32(),
            unknown=reader.read_int32(),  # @TFT: This is "run on map init"?
            category_id=reader.read_int32(),
        )
        assert trigger.unknown in (0, 1)
        num_functions = reader.read_int32()
        for _ in range(num_functions):
            func = parse_function(reader, lib_info)
            trigger.eca_functions.append(func)
        result.triggers.append(trigger)
    return result


def parse_function(reader: binary.ByteArrayParser, lib_info: dict[str, TParamInfo]) -> EcaFunction:
    func = EcaFunction(
        function_type=EcaFunctionType(reader.read_int32()),
        name=reader.read_cstring(),
        is_enabled=reader.read_bool32(),
    )
    # if func.function_type == EcaFunctionType.Event:
    #     print(f'Event! offset {hex(reader.index)}')
    if func.name.startswith('OperatorCompare'):
        num_parameters = 3
    else:
        parameter_info = lib_info[func.name]
        num_parameters = len(parameter_info[0])
    for _ in range(num_parameters):
        parameter = parse_parameter(reader, lib_info)
        func.parameters.append(parameter)
    # @TFT may have more here
    return func


def parse_parameter(reader: binary.ByteArrayParser, lib_info: dict[str, TParamInfo]) -> EcaParameter:
    parameter = EcaParameter(
        parameter_type=EcaParameterType(reader.read_int32()),
        value=reader.read_cstring(),
    )
    has_children = reader.read_int32()
    if has_children:
        assert has_children == 1, f"has_children greater than 1 ({has_children}); maybe it's num_children?"
        if parameter.parameter_type == EcaParameterType.Function:
            parameter.children = parse_function(reader, lib_info)
        else:
            assert False, f"Children of parameter of type {parameter.parameter_type} is not implemented"
    has_subscript = reader.read_int32()
    if has_subscript:
        assert has_subscript == 1
        parameter.subscript = parse_parameter(reader, lib_info)
    return parameter


if __name__ == '__main__':
    from work import manifest
    # filenames = [f'work/Orc01/war3map.wtg']
    filenames = [f'work/{x}/war3map.wtg' for x in manifest.all_directories if 'X' not in x]
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
