from typing import Callable, Protocol, TypeVar
import os
import shutil
from . import doo, imp, mmp, w3c, w3f, w3i, w3o, w3r, w3s, wct, wtg, wts


T = TypeVar('T')
class FileFormatModule(Protocol[T]):
    EXTENSION: str
    def read_binary(self, raw_bytes: bytes) -> T: ...
    def from_text(self, text: str) -> T: ...
    def to_binary(self, data: T) -> bytes: ...
    def as_text(self, data: T) -> str: ...


def general_converter(module: FileFormatModule, extension: str | None = None, args: tuple = ()) -> Callable[[str, str], None]:
    if extension is None:
        extension = module.EXTENSION
    def _convert(source: str, target: str) -> None:
        source_ext = os.path.splitext(source)[1]
        if source_ext == extension:
            with open(source, 'rb') as fp:
                contents = fp.read()
            data = module.read_binary(contents, *args)
        else:
            with open(source, 'r') as fp:
                str_contents = fp.read()
            data = module.from_text(str_contents)
        target_ext = os.path.splitext(target)[1]
        if target_ext == extension:
            write_bytes = module.to_binary(data)
            with open(target, 'wb') as fp:
                fp.write(write_bytes)
        else:
            write_str = module.as_text(data)
            with open(target, 'w') as fp:
                fp.write(write_str)
    return _convert


PROXY_FILES = {
    'questionmark_item.mdx': 'mods/general/war3mapImported/questionmark_item.mdx',
    'eviljaina.mdx': 'mods/apimports/eviljaina.mdx',
    'eviljaina_portrait.mdx': 'mods/apimports/eviljaina_portrait.mdx',
    'eviljaina.blp': 'mods/apimports/eviljaina.blp',
}
def make_proxy(actual_file: str, proxy_file: str) -> None:
    with open(proxy_file, 'w') as fp:
        fp.write(actual_file)

def dereference_proxy(proxy_file: str, target: str) -> None:
    with open(proxy_file, 'r') as fp:
        source = fp.read().strip()
    shutil.copy(source, target)


DOODADS_FILE_NAME = 'doodads.doo.toml'
UNITS_FILE_NAME = 'units.doo.toml'
IMPORTS_FILE_NAME = 'imports.imp.toml'
MINIMAP_FILE_NAME = 'minimap.mmp.toml'
CAMERAS_FILE_NAME = 'cameras.w3c.toml'
INFO_FILE_NAME = 'info.w3i.toml'
REGIONS_FILE_NAME = 'regions.w3r.toml'
SOUNDS_FILE_NAME = 'sounds.w3s.toml'
TRIGGERS_CUSTOM_TEXT_FILE_NAME = 'triggers_text.wct.j'
TRIGGERS_GUI_FILE_NAME = 'triggers_gui.wtg.md'
UNIT_DATA_FILE_NAME = 'o_units.w3u.toml'
ITEM_DATA_FILE_NAME = 'o_items.w3t.toml'
DESTRUCTABLE_DATA_FILE_NAME = 'o_destructibles.w3b.toml'
DOODAD_DATA_FILE_NAME = 'o_doodads.w3d.toml'
ABILITY_DATA_FILE_NAME = 'o_abilities.w3a.toml'
BUFF_DATA_FILE_NAME = 'o_buffs.w3h.toml'
UPGRADE_DATA_FILE_NAME = 'o_upgrades.w3q.toml'

CONVERT_HANDLERS: dict[str, tuple[Callable[[str, str], None], str]] = {
    '.doo': (doo.convert, DOODADS_FILE_NAME),
    '.imp': (general_converter(imp), IMPORTS_FILE_NAME),
    '.mmp': (general_converter(mmp), MINIMAP_FILE_NAME),
    '.w3c': (general_converter(w3c), CAMERAS_FILE_NAME),
    '.w3i': (general_converter(w3i), INFO_FILE_NAME),
    '.w3r': (general_converter(w3r), REGIONS_FILE_NAME),
    '.w3s': (general_converter(w3s), SOUNDS_FILE_NAME),
    '.wct': (general_converter(wct), TRIGGERS_CUSTOM_TEXT_FILE_NAME),
    '.wtg': (general_converter(wtg), TRIGGERS_GUI_FILE_NAME),
    # .w3o
    '.w3u': (general_converter(w3o, '.w3u'), UNIT_DATA_FILE_NAME),
    '.w3t': (general_converter(w3o, '.w3t'), ITEM_DATA_FILE_NAME),
    '.w3b': (general_converter(w3o, '.w3b'), DESTRUCTABLE_DATA_FILE_NAME),
    '.w3d': (general_converter(w3o, '.w3d', (2,)), DOODAD_DATA_FILE_NAME),
    '.w3a': (general_converter(w3o, '.w3a', (True,)), ABILITY_DATA_FILE_NAME),
    '.w3h': (general_converter(w3o, '.w3h'), BUFF_DATA_FILE_NAME),
    '.w3q': (general_converter(w3o, '.w3q', (True,)), UPGRADE_DATA_FILE_NAME),
}
