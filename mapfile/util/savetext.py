"""
Utilities for saving game data as a text-based format
"""
from typing import *
import enum
from .. import translate

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
            if len(value) == 4 and value != 'null' and (human_readable := translate.get_name(value)):
                result.append(f"{key} = '{value}'  # {human_readable}")
            else:
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
            list_results.append(f'\n[{".".join(array_nesting + (key,))}]')
            list_results.append(to_toml(value, array_nesting=array_nesting + (key,)))
        else:
            result.append(f'{key} = {value}')
    return '\n'.join(result + list_results)


def parse_enum_flags[T: enum.IntFlag](value: str, enum_class: T) -> T:
    if value == 'None':
        return enum_class(0)
    return enum_class(sum(enum_class[x] for x in value.split('|')))


class TomlWriter:
    __slots__ = ('handlers', 'lines', 'short_arrays')
    def __init__(self) -> None:
        self.handlers: dict[str, Callable] = {}
        self.lines: list[str] = []
        self.short_arrays: Set[str] = set()
    def _write_nothing(self, key: str, value: Any, path: str) -> None:
        return
    def _write_bool(self, key: str, value: bool, path: str) -> None:
        self.lines.append(f'{key} = {str(value).lower()}')
    def _write_stringify(self, key: str, value: Any, path: str) -> None:
        self.lines.append(f'{key} = {value!r}'.replace('\\\\', '\\'))
    def _write_int(self, key: str, value: int, path: str) -> None:
        self.lines.append(f'{key} = {value}')
    def _write_flags(self, key: str, value: int, path: str) -> None:
        self.lines.append(f'{key} = {hex(value)}')
    def _write_string(self, key: str, value: str, path: str) -> None:
        self.lines.append(f"{key} = '{value}'")
    def _write_id(self, key: str, value: str, path: str) -> None:
        if len(value) == 4 and value != 'null' and (human_readable := translate.get_name(value)):
            self.lines.append(f"{key} = '{value}'  # {human_readable}")
        else:
            self._write_string(key, value, path)
    def _write_bytes(self, key: str, value: bytes, path: str) -> None:
        value = value.replace(b'\0', b'0')
        self.lines.append(f'{key} = {{ type = "bytes", value = "{value.decode("utf-8")}" }}')
    def _write_enum(self, key: str, value: enum.Enum, path: str) -> None:
        self.lines.append(f'{key} = {{ type = "{value.__class__.__name__}", value = "{value.name}" }}')
    def _write_inline_array(self, key: str, value: list, path: str) -> None:
        if not len(value):
            return self.lines.append(f'{key} = []')
        self.lines.append(f'{key} = [{",".join(str(x) for x in value)}]')
    def _write_element_array(self, key: str, value: list, path: str) -> None:
        element_func = self.handlers.get(path)
        if element_func is None:
            element_func = self.handlers[key]
        if not len(value):
            return self.lines.append(f'{key} = []')
        for element in value:
            self.lines.append(f'[[{path}]]')
            element_func(key, element, path)
            if self.lines[-1]:
                self.lines.append('')
    def _write_dict(self, key: str, value: dict, path: str) -> None:
        if not self.lines or self.lines[-1] != f'[[{path}]]':
            self.lines.append(f'[{path}]')
        for subkey, subvalue in value.items():
            subpath = f'{path}.{subkey}'
            if isinstance(subvalue, Iterable) and not isinstance(subvalue, (str, dict)):
                if subpath in self.short_arrays:
                    self._write_inline_array(subkey, subvalue, subpath)
                else:
                    self._write_element_array(subkey, subvalue, subpath)
            else:
                handler = self.handlers.get(subpath)
                if handler is None:
                    handler = self.handlers.get(subkey, self._write_stringify)
                handler(subkey, subvalue, subpath)
        if self.lines and self.lines[-1]:
            self.lines.append('')
