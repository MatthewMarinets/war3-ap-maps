"""
Utilities for handling constants files
"""

import tomllib
from typing import Any


def from_text(text: str) -> dict[str, dict[str, Any]]:
    return tomllib.loads(text)


def from_text_file(filename: str) -> dict[str, dict[str, Any]]:
    with open(filename, 'r') as fp:
        text = fp.read()
    return from_text(text)


def as_text(data: dict[str, dict[str, Any]]) -> str:
    result: list[str] = []
    for section, constants in data.items():
        result.append(f'[{section}]')
        for key, value in constants.items():
            result.append(f'{key}={value}')
        result.append('')
    return '\n'.join(result)

