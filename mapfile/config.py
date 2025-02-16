"""
Utilities for loading local config files

Tries reading a workspace.ini to find user configuration.
If the file does not exist, tries to find Warcraft 3 executable
location by checking user files.
"""
from typing import Optional
import os.path
import re

def load_config(config_path: str) -> dict[str, str]:
    """
    Reads a config file in key=value format into a Python dict
    """
    with open(config_path, 'r', encoding='utf-8') as file_handle:
        lines = file_handle.readlines()
    result: dict[str, str] = {}
    for line_number, line in enumerate(lines):
        line = line.strip().split('#')[0]
        if not line:
            continue
        parts = line.split('=', 1)
        if len(parts) != 2:
            raise ValueError(f'Invalid line in config file: {config_path}:line {line_number+1}\n"{line}"')
        key, value = parts
        result[key.strip()] = re.sub(r'\$\{(.+?)\}', lambda match: result[match.group(1)], value.strip())
    return result

def try_get_wc3_path() -> str:
    log_file_path = os.path.expanduser(r'~\Documents\Warcraft III\Logs\War3Log.txt')
    LOG_ENTRY_START = 'Command Line:'
    wc3_path: Optional[str] = None
    if os.path.isfile(log_file_path):
        with open(log_file_path, 'r', encoding='utf-8') as file_handle:
            for line in file_handle:
                if LOG_ENTRY_START in line:
                    command_line = line.split(LOG_ENTRY_START, 1)[1]
                    parts = command_line.split('"')
                    if len(parts) != 3:
                        raise ValueError(f'Warcraft 3 log entry format was not recognized: {command_line}')
                    wc3_path = parts[1]
                    break
        if wc3_path is None:
            raise ValueError(f'Warcraft 3 log did not contain path information')
        return wc3_path
    raise ValueError(f'Warcraft 3 executable could not be found')

WORKSPACE_CONFIG_FILE = 'workspace.ini'

workspace: dict[str, str] = {}
if os.path.isfile(WORKSPACE_CONFIG_FILE):
    workspace = load_config('workspace.ini')
else:
    import shutil
    workspace = {
        'wc3_path': try_get_wc3_path(),
        'mpqeditor_path': shutil.which('MPQEditor.exe') or 'MPQEditor.exe'
    }
verbose = workspace.get('verbose', 'true').lower() == 'true'

# print config to stdout if verbosity is set
if verbose:
    for __key, __value in workspace.items():
        print(f'{__key} = {__value}')
