"""
Script to add corrupted heroes to a map
"""
from typing import Any
from dataclasses import dataclass, field
import os
from . import editor_ids as eid, mod_entity
from mapfile import w3o, imp, common
from apworld.data.game_ids import GameID, CustomIDs


DEFAULT_UI_SCALING = 1.1
DEFAULT_DAMAGE_BASE = 12


@dataclass
class HeroInfo:
    parent_id: GameID
    entity_id: str
    updated_model: str
    scaling: float = DEFAULT_UI_SCALING
    damage_base: int = DEFAULT_DAMAGE_BASE
    other_updates: dict[str | tuple[str, int], Any] = field(default_factory=dict)


HERO_INFO = [
    HeroInfo(
        GameID.JAINA, CustomIDs.UNIT_CORRUPTED_JAINA,
        r'apimports\eviljaina.mdx',
        other_updates={eid.FIELD_UNIT_ATTACK_1_PROJECTILE_ART: eid.PATH_MODEL_MISSILE_RED_DRAGON,},
    ),
    HeroInfo(
        GameID.MURADIN_BRONZEBEARD, CustomIDs.UNIT_CORRUPTED_MURADIN_BRONZEBEARD,
        r'apimports\evilmuradin.mdx',
        scaling=1.25,
    ),
    HeroInfo(
        GameID.UTHER, CustomIDs.UNIT_CORRUPTED_UTHER,
        r'apimports\evilpaladin.mdx',
    ),
    HeroInfo(
        GameID.KAEL_THAS, CustomIDs.UNIT_CORRUPTED_KAEL,
        r'apimports\evilkael.mdx',
        other_updates={
            eid.FIELD_UNIT_ABILITIES_NORMAL: f'{eid.ABIL_INVENTORY_HERO},{CustomIDs.ABIL_CORRUPTED_SPHERE}',
            eid.FIELD_UNIT_ATTACK_1_PROJECTILE_ART: eid.PATH_MODEL_MISSILE_PHOENIX,
        }
    ),

    HeroInfo(
        GameID.MOUNTAIN_KING, CustomIDs.UNIT_CORRUPTED_MOUNTAIN_KING,
        r'apimports\evilmuradin.mdx',
        scaling=1.25,
    ),
    HeroInfo(
        GameID.PALADIN, CustomIDs.UNIT_CORRUPTED_PALADIN,
        r'apimports\evilpaladin.mdx',
    ),
    HeroInfo(
        GameID.BLOOD_MAGE, CustomIDs.UNIT_CORRUPTED_BLOOD_MAGE,
        r'apimports\evilkael.mdx',
        other_updates={
            eid.FIELD_UNIT_ABILITIES_NORMAL: f'{eid.ABIL_INVENTORY_HERO},{CustomIDs.ABIL_CORRUPTED_SPHERE}',
            eid.FIELD_UNIT_ATTACK_1_PROJECTILE_ART: eid.PATH_MODEL_MISSILE_PHOENIX,
        }
    ),
]
TEXTURE_DEPENDENCIES = {
    r'apimports\eviljaina.mdx': [r'apimports\eviljaina.blp'],
    r'apimports\evilmuradin.mdx': [r'apimports\evilmountainking.blp'],
    r'apimports\evilpaladin.mdx': [r'apimports\evilpaladin.blp'],
    r'apimports\evilkael.mdx': [r'apimports\evilkael.blp'],
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
                eid.FIELD_UNIT_UI_SCALING_VALUE: hero_info.scaling,
                eid.FIELD_UNIT_ATTACK_1_DAMAGE_BASE: hero_info.damage_base,
                eid.FIELD_UNIT_ATTACK_1_ATTACK_TYPE: "chaos",
                eid.FIELD_UNIT_GENERAL_EDITOR_SUFFIX: "(Corrupted)",
                **hero_info.other_updates,
            }
        )

    text = w3o.as_text(data)
    with open(units_file, 'w') as fp:
        fp.write(text)


def update_abils(abils_file: str) -> None:
    if not os.path.isfile(abils_file):
        data = w3o.War3ObjectData(2, has_levels=True)
    else:
        data = w3o.from_text_file(abils_file)

    entities = mod_entity.Entities(data.map_objects.entities)
    entities.set_entity(
        CustomIDs.ABIL_CORRUPTED_SPHERE, eid.ABIL_SPHERE, {
            eid.FIELD_ABIL_ART_TARGET: eid.PATH_MODEL_EFFECT_BLOODLUST,
        }
    )

    text = w3o.as_text(data)
    with open(abils_file, 'w') as fp:
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
    if 'war3map.w3u' not in lines:
        lines.append('war3map.w3u')
    if 'war3map.w3a' not in lines:
        lines.append('war3map.w3a')
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
    update_abils(f'{map_dir}/{common.ABILITY_DATA_FILE_NAME}')
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
