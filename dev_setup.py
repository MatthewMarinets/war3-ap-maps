"""
Sets up the dev environment after cloning.
"""

import os
import shutil


def clean() -> None:
    print('Removing doc/generated')
    if os.path.isdir('doc/generated'):
        shutil.rmtree('doc/generated')


def generate_workspace_ini_template() -> None:
    with open('workspace.ini', 'w') as fp:
        print('wc3_path=!!TODO', file=fp)
        print('mpqeditor_path=!!TODO', file=fp)
        print('verbose=true', file=fp)
        print('', file=fp)
        print('extract_dir=./extract', file=fp)
        print('pack_out_dir=./out', file=fp)


def set_up_docs() -> None:
    print('Generating Docs')
    from mapfile.docgen import gamedata, gamestrings, unit_changes
    gamestrings.main()
    gamedata.main()
    unit_changes.main()


def main() -> None:
    if not os.path.isfile('workspace.ini'):
        print('workspace.ini file does not exist; generating a template')
        generate_workspace_ini_template()
    set_up_docs()


if __name__ == '__main__':
    import sys
    if 'clean' in sys.argv:
        clean()
    else:
        main()
