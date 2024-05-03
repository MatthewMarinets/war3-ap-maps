"""
Utilities for saving game data as a text-based format
"""
from typing import *
import enum

def clean_data(data: dict[str, Any]) -> None:
    # Clear `num_` data members; they can be recovered from their corresponding arrays' len()
    to_delete: list[str] = []
    for key in data:
        if key.startswith('num_') and (collection := key[4:]) and collection in data:
            assert data[key] == len(data[collection])
            to_delete.append(key)
    for key in to_delete:
        del data[key]
    return

def to_toml(data: dict[str, Any], notes: Iterable[str] = (), array_nesting: Iterable[str] = ()) -> str:
    result: list[str] = [f"# {x}" for x in notes]
    result.append('')
    list_results: list[str] = []
    for key, value in data.items():
        if isinstance(value, bool):
            result.append(f'{key} = {str(value).lower()}')
        # elif value is None:
        #     result.append(f'{key} = "null"')
        elif isinstance(value, str):
            result.append(f"{key} = '{value}'")
        elif isinstance(value, bytes):
            value = value.replace(b'\0', b'0')
            result.append(f'{key} = {{ type = "bytes", value = "{value.decode("utf-8")}" }}')
        elif isinstance(value, enum.Enum):
            result.append(f'{key} = {{ type = "{value.__class__.__name__}", value = "{value.name}" }}')
        elif isinstance(value, int) and 'flags' in key:
            result.append(f'{key} = 0x{value:x}')
        elif (is_array := (isinstance(value, list) or isinstance(value, tuple))) and len(value) == 0:
            result.append(f'{key} = []')
        elif is_array and (isinstance(value[0], int) or isinstance(value[0], float)):
            result.append(f'{key} = {list(value)}')
        elif is_array:
            for val in value:
                list_results.append(f'\n[[{".".join(array_nesting + (key,))}]]')
                list_results.append(to_toml(val, array_nesting=array_nesting + (key,)))
        elif isinstance(value, dict):
            list_results.append(f'[{".".join(array_nesting + (key,))}]')
            list_results.append(to_toml(value, array_nesting=array_nesting + (key,)))
        else:
            result.append(f'{key} = {value}')
    return '\n'.join(result + list_results)


def parse_enum_flags[T: enum.IntFlag](value: str, enum_class: T) -> T:
    if value == 'None':
        return enum_class(0)
    return enum_class(sum(enum_class[x] for x in value.split('|')))
