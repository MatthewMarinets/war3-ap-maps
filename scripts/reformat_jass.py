"""
Script to do all the whitespace/trivial reformatting of .j files so semantic changes can be handled separately
"""

import enum
import re

class ParsingState(enum.Enum):
    START = enum.auto()
    GLOBALS = enum.auto()
    INIT_GLOBALS = enum.auto()


def reformat_file(in_file: str, out_file: str) -> None:
    with open(in_file, 'r') as fp:
        lines = fp.readlines()

    state = ParsingState.START
    function_def_name = ''
    result = []

    _global_declaration = re.compile(r'\s*(\w+)\s+(array\s+)?(\w+)(\s*=\s*([^\s]+))?')
    _global_set = re.compile(r'    set (\w+)\s*=\s*([^\s]+)')
    _negative = re.compile(r'-(\d)')
    _comment_string = re.compile(r'(\s*)call CommentString\(\s*"([^"]*)"\s*\)')

    for line in lines:
        text = line.strip()
        pretty = line
        if text.startswith('function '):
            function_def_name = text[len('function '):].split(' ', 1)[0]
        if text == 'globals':
            assert state == ParsingState.START
            state = ParsingState.GLOBALS
        elif text == 'endglobals':
            assert state == ParsingState.GLOBALS
            state = ParsingState.START
        elif state == ParsingState.GLOBALS and (m := re.match(_global_declaration, line)):
            if m.group(2) is not None:
                pretty = f'{m.group(1)} array {m.group(3)}\n'
            elif m.group(4) is not None:
                pretty = f'{m.group(1)} {m.group(3)}= {m.group(5)}\n'
            elif m.group(1) == 'boolean':
                pretty = f'{m.group(1)} {m.group(3)}= false\n'
            elif m.group(1) == 'integer':
                pretty = f'{m.group(1)} {m.group(3)}= 0\n'
            else:
                pretty = f'{m.group(1)} {m.group(3)}= null\n'
        elif text == 'function InitGlobals takes nothing returns nothing':
            assert state == ParsingState.START
            state = ParsingState.INIT_GLOBALS
        elif state == ParsingState.INIT_GLOBALS and (m := re.match(_global_set, line)):
            pretty = f'    set {m.group(1)}={m.group(2)}\n'
        elif text == 'endfunction':
            function_def_name = ''
            state = ParsingState.START
        elif m := re.match(_comment_string, line):
            pretty = f'{m.group(1)}// {m.group(2)}\n'
        elif text.startswith('call') or text.startswith('return ') or text.startswith('set') or text.startswith('if'):
            # remove spaces inside word-parens()
            pretty_chars = []
            index = 0
            stack = []
            while index < len(line):
                c = index
                index = index + 1
                last_3 = line[max(0, c - 2):c+1]
                last_2 = last_3[-2:]
                if line[c] == '(':
                    stack.append(False)
                if last_2 == '( ' and last_3 not in (' ( ', '=( ', '(( '):
                    stack[-1] = True
                    continue
                if line[c:c+2] == ' )' and stack[-1]:
                    continue
                if line[c] == ')':
                    stack.pop()
                pretty_chars.append(last_3[-1])
            assert not stack
            pretty = ''.join(pretty_chars)
            if text.startswith('set'):
                pretty = pretty.replace(' = ', '=')
            if not function_def_name.startswith('CreateUnits'):
                pretty = pretty.replace('SetHeroLevel(', 'SetHeroLevelBJ(')
        elif text.startswith('local') and '=' in text:
            pretty = line.replace(' = ', '= ')
        if not text.startswith('//'):
            pretty = re.sub(_negative, lambda m: f'- {m.group(1)}', pretty)
            pretty = (
                pretty
                .replace('ForGroup(', 'ForGroupBJ(')
                .replace('_mask.tga', '_mask.blp')
            )
        result.append(pretty)

    with open(out_file, 'w') as fp:
        for line in result:
            fp.write(line)



if __name__ == '__main__':
    import sys
    if len(sys.argv) > 1:
        IN_FILE = sys.argv[1]
    else:
        IN_FILE = 'maps/Human02/war3map.j'
    if len(sys.argv) > 2:
        OUT_FILE = sys.argv[2]
    else:
        OUT_FILE = IN_FILE
    print(f'Formatting {IN_FILE} to {OUT_FILE}')
    reformat_file(IN_FILE, OUT_FILE)
