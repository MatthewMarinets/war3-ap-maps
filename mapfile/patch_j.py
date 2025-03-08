"""
A utility for patching in additional data into a .j file
"""
from dataclasses import dataclass, field
import os
from .wtg import TriggerVariable


@dataclass
class Wc3Mod:
    variables: str = ''
    patch_main: str = ''
    triggers: str = ''


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


GLOBALS_START = '\nglobals'
GLOBALS_END = 'endglobals'
MAIN_START = 'function main takes nothing returns nothing'
MAIN_END = 'endfunction'

PATCHED_GLOBALS_START = '\n// patched globals'
PATCHED_GLOBALS_END = '// end patched globals\n'
PATCHED_FUNCTIONS_START = '// patched functions'
PATCHED_FUNCTIONS_END = '// end patched functions\n'
PATCHED_MAIN_START = '\n    // patched main'
PATCHED_MAIN_END = '// end patched main\n'


def load_mod(mod_file: str) -> Wc3Mod:
    with open(mod_file, 'r') as fp:
        contents = fp.read()
    if GLOBALS_START not in contents:
        return ValueError(f'No globals defined in {mod_file}')
    doc_comment, contents = contents.split(GLOBALS_START, 1)
    if GLOBALS_END not in contents:
        return ValueError(f'endglobals missing in {mod_file}')
    mod_globals, contents = contents.split(GLOBALS_END, 1)
    if MAIN_START not in contents:
        return ValueError(f'Main not defined in {mod_file}')
    triggers_1, contents = contents.split(MAIN_START, 1)
    if MAIN_END not in contents:
        return ValueError(f'Main function never closed in {mod_file}')
    main_contents, triggers_2 = contents.split(MAIN_END, 1)
    return Wc3Mod(mod_globals, main_contents, f'{triggers_1}\n{triggers_2}')



def patch_file(
    source_file: str,
    target_file: str,
    mod: Wc3Mod,
) -> None:
    with open(source_file, 'r') as fp:
        contents = fp.read()

    # patch global variables
    patched_globals_parts = [PATCHED_GLOBALS_START, mod.variables, PATCHED_GLOBALS_END]
    patched_globals = '\n'.join(patched_globals_parts)
    contents = contents.replace('endglobals', f'{patched_globals}endglobals')

    # patch functions
    patch_triggers = (
        f"{PATCHED_FUNCTIONS_START}\n"
        f"{mod.triggers}\n{PATCHED_FUNCTIONS_END}"
    )

    # patch main
    part1, part2 = contents.split(MAIN_START, 1)
    part2, part3 = part2.split('endfunction', 1)
    contents = ''.join((
        part1,
        patch_triggers,
        MAIN_START,
        part2,
        f'{PATCHED_MAIN_START}\n',
        mod.patch_main,
        f'\n    {PATCHED_MAIN_END}'
        'endfunction',
        part3,
    ))

    os.makedirs(os.path.dirname(target_file), exist_ok=True)
    with open(target_file, 'w') as fp:
        fp.write(contents)


def unpatch_file(source_file: str, target_file: str) -> None:
    with open(source_file, 'r') as fp:
        contents = fp.read()
    part1, contents = contents.split(PATCHED_GLOBALS_START, 1)
    patched_1, contents = contents.split(PATCHED_GLOBALS_END, 1)
    part2, contents = contents.split(PATCHED_FUNCTIONS_START, 1)
    patched2, contents = contents.split(PATCHED_FUNCTIONS_END, 1)
    part3, contents = contents.split(PATCHED_MAIN_START, 1)
    patched3, contents = contents.split(PATCHED_MAIN_END, 1)
    with open(target_file, 'w') as fp:
        fp.write(part1)
        fp.write(part2)
        fp.write(part3)
        fp.write(contents)

