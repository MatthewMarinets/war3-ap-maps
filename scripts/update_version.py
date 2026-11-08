import os
import tomllib
import re


def update_mod_version(version_number: int) -> None:
    print(f'Updating mod version to {version_number}')
    # GUI triggers
    TRIGGERS_GUI_PATH = 'maps/CampaignSelect/triggers_gui.wtg.md'
    with open(TRIGGERS_GUI_PATH, 'r') as fp:
        contents = fp.read()
    build_version_variable_pattern = re.compile(r'\| BUILD_VERSION \| integer \| \. \| \d+ \|')
    m = re.search(build_version_variable_pattern, contents)
    assert m
    new_contents = contents.replace(m.group(0), f'| BUILD_VERSION | integer | . | {version_number} |')
    with open(TRIGGERS_GUI_PATH, 'w') as fp:
        fp.write(new_contents)

    # war3map.j
    MAPSCRIPT_PATH = 'maps/CampaignSelect/war3map.j'
    with open(MAPSCRIPT_PATH, 'r') as fp:
        contents = fp.read()
    version_set_pattern = re.compile(r'set udg_BUILD_VERSION\s*=\s*\d')
    m = re.search(version_set_pattern, contents)
    assert m
    new_contents = contents.replace(m.group(0), f'set udg_BUILD_VERSION={version_number}')
    with open(MAPSCRIPT_PATH, 'w', newline='\r\n') as fp:
        fp.write(new_contents)


def update_apworld_version(version_number: int) -> None:
    print(f'Updating apworld version to {version_number}')
    AP_CLIENT_FILE = 'apworld/client/ap.py'
    with open(AP_CLIENT_FILE, 'r') as fp:
        contents = fp.read()
    version_variable_pattern = re.compile(r'APWORLD_VERSION\s*=\s*\d')
    m = re.search(version_variable_pattern, contents)
    assert m
    new_contents = contents.replace(m.group(0), f'APWORLD_VERSION = {version_number}')
    with open(AP_CLIENT_FILE, 'w') as fp:
        fp.write(new_contents)


def main() -> None:
    with open('build_version.toml', 'rb') as fp:
        version_info = tomllib.load(fp)
    apworld_version = version_info['apworld_version']
    mod_version = version_info['mod_version']
    update_mod_version(mod_version)
    update_apworld_version(apworld_version)


if __name__ == '__main__':
    main()
