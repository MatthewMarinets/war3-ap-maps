"""
Script to add corrupted heroes to a map
"""
from typing import Any
from dataclasses import dataclass, field
import os
from . import editor_ids as eid, mod_entity
from mapfile import w3o, imp, common
from apworld.data.game_ids import GameID, CustomIDs


@dataclass
class HeroInfo:
    parent_id: GameID
    entity_id: str
    updated_model: str
    other_updates: dict[str | tuple[str, int], Any] = field(default_factory=dict)


DEFAULT_UI_SCALING = 1.1
DEFAULT_DAMAGE_BASE = 12
HERO_INFO = [
    HeroInfo(
        GameID.JAINA, CustomIDs.UNIT_CORRUPTED_JAINA, r'apimports\eviljaina.mdx',
        {
            eid.FIELD_UNIT_ATTACK_1_PROJECTILE_ART: eid.PATH_MODEL_RED_DRAGON_MISSILE,
        }
    ),
]
TEXTURE_DEPENDENCIES = {
    r'apimports\eviljaina.mdx': [r'apimports\eviljaina.blp'],
}


def portrait_path(model_path: str) -> str:
    base, ext = os.path.splitext(model_path)
    return f'{base}_portrait{ext}'


def dependencies(model_path: str) -> list[str]:
    return [portrait_path(model_path)] + TEXTURE_DEPENDENCIES[model_path]


def update_units(units_file: str) -> None:
    if not os.path.isfile(units_file):
        data = w3o.War3ObjectData(2, has_levels=False)
    else:
        data = w3o.from_text_file(units_file)

    entities = mod_entity.Entities(data.map_objects.entities)
    for hero_info in HERO_INFO:
        entities.set_entity(
            hero_info.entity_id, hero_info.parent_id, {
                eid.FIELD_UNIT_UI_MODEL_FILE: hero_info.updated_model.replace('.mdx', '.mdl'),
                eid.FIELD_UNIT_UI_SCALING_VALUE: DEFAULT_UI_SCALING,
                eid.FIELD_UNIT_ATTACK_1_DAMAGE_BASE: DEFAULT_DAMAGE_BASE,
                eid.FIELD_UNIT_ATTACK_1_ATTACK_TYPE: "chaos",
                **hero_info.other_updates,
            }
        )

    text = w3o.as_text(data)
    with open(units_file, 'w') as fp:
        fp.write(text)


def update_imports(imports_file: str) -> None:
    if not os.path.isfile(imports_file):
        data = imp.Imports()
    else:
        data = imp.from_text_file(imports_file)
    
    imported_paths = [_import.path for _import in data.imports]
    for hero_info in HERO_INFO:
        if hero_info.updated_model not in imported_paths:
            imported_paths.append(hero_info.updated_model)
            data.imports.append(imp.ImportedPath(13, hero_info.updated_model))
            for dependency in dependencies(hero_info.updated_model):
                if dependency not in imported_paths:
                    imported_paths.append(dependency)
                    data.imports.append(imp.ImportedPath(13, dependency))

    text = imp.as_text(data)
    with open(imports_file, 'w') as fp:
        fp.write(text)


def update_listfile(listfile: str) -> None:
    with open(listfile, 'r') as fp:
        lines = fp.read().split('\n')
    lines = [line for line in lines if line]
    for hero_info in HERO_INFO:
        if hero_info.updated_model not in lines:
            lines.append(hero_info.updated_model)
            for dependency in dependencies(hero_info.updated_model):
                if dependency not in lines:
                    lines.append(dependency)
    with open(listfile, 'w') as fp:
        fp.write('\n'.join(lines) + '\n')


def make_proxies(map_dir: str) -> None:
    for hero_info in HERO_INFO:
        model_path = hero_info.updated_model.replace('\\', '/')
        proxy_path = f'{map_dir}/{model_path}.proxy'
        if not os.path.isfile(proxy_path):
            with open(proxy_path, 'w') as fp:
                fp.write(common.PROXY_FILES[os.path.basename(model_path)])
        for dependency in dependencies(hero_info.updated_model):
            dependency = dependency.replace('\\', '/')
            proxy_path = f'{map_dir}/{dependency}.proxy'
            if not os.path.isfile(proxy_path):
                with open(proxy_path, 'w') as fp:
                    fp.write(common.PROXY_FILES[os.path.basename(dependency)])


def main(map_dir: str) -> None:
    update_units(f'{map_dir}/{common.UNIT_DATA_FILE_NAME}')
    update_imports(f'{map_dir}/{common.IMPORTS_FILE_NAME}')
    update_listfile(f'{map_dir}/(listfile)')
    make_proxies(map_dir)


HELP = f"""
Script to update unpacked maps to add irregulars. Usage:
{os.path.basename(__file__)} <map_dir>
"""
if __name__ == '__main__':
    import sys
    if len(sys.argv) < 2:
        print('Error: No argument given')
        print(HELP)
        sys.exit(1)
    if '-h' in sys.argv:
        print(HELP)
        sys.exit(0)
    sys.exit(main(sys.argv[1]))
