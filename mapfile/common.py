from typing import Callable, TYPE_CHECKING, Protocol, TypeVar
import os
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


CONVERT_HANDLERS: dict[str, tuple[Callable[[str, str], None], str]] = {
    '.doo': (doo.convert, 'doodads.doo.toml'),
    '.imp': (general_converter(imp), 'minimap.mmp.toml'),
    '.mmp': (general_converter(mmp), 'minimap.mmp.toml'),
    '.w3c': (general_converter(w3c), 'cameras.w3c.toml'),
    '.w3i': (general_converter(w3i), 'info.w3i.toml'),
    '.w3r': (general_converter(w3r), 'regions.w3r.toml'),
    '.w3s': (general_converter(w3s), 'sounds.w3s.toml'),
    '.wct': (general_converter(wct), 'triggers_text.wct.j'),
    '.wtg': (general_converter(wtg), 'triggers_gui.wtg.md'),
    # .w3o
    '.w3u': (general_converter(w3o, '.w3u'), 'o_units.w3u.toml'),
    '.w3t': (general_converter(w3o, '.w3t'), 'o_items.w3t.toml'),
    '.w3b': (general_converter(w3o, '.w3b'), 'o_destructibles.w3b.toml'),
    '.w3d': (general_converter(w3o, '.w3d'), 'o_doodads.w3d.toml'),
    '.w3a': (general_converter(w3o, '.w3a', (True,)), 'o_abilities.w3a.toml'),
    '.w3h': (general_converter(w3o, '.w3h'), 'o_buffs.w3h.toml'),
    '.w3q': (general_converter(w3o, '.w3q', (True,)), 'o_upgrades.w3q.toml'),
}
