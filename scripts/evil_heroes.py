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
FLOAT_MAP = {
    1.1: 1.100000023841858,
    1.35: 1.350000023841858,
    1.55: 1.5499999523162842,
}


@dataclass
class HeroInfo:
    parent_id: GameID
    entity_id: str
    updated_model: str
    abil_id: str
    scaling: float = DEFAULT_UI_SCALING
    damage_base: int = DEFAULT_DAMAGE_BASE
    other_updates: dict[str | tuple[str, int], Any] = field(default_factory=dict)
    skip_unit_creation: bool = False


HERO_INFO = [
    # Human
    HeroInfo(
        GameID.ARTHAS, GameID.ARTHAS_FROSTMOURNE,
        '', CustomIDs.ABIL_CHAOS_ARTHAS,
        skip_unit_creation=True,
    ),
    HeroInfo(
        GameID.JAINA, CustomIDs.UNIT_CORRUPTED_JAINA,
        r'apimports\eviljaina.mdx', CustomIDs.ABIL_CHAOS_JAINA,
        other_updates={eid.FIELD_UNIT_ATTACK_1_PROJECTILE_ART: eid.PATH_MODEL_MISSILE_RED_DRAGON,},
    ),
    HeroInfo(
        GameID.MURADIN_BRONZEBEARD, CustomIDs.UNIT_CORRUPTED_MURADIN_BRONZEBEARD,
        r'apimports\evilmuradin.mdx', CustomIDs.ABIL_CHAOS_MURADIN,
        scaling=1.25,
    ),
    HeroInfo(
        GameID.UTHER, CustomIDs.UNIT_CORRUPTED_UTHER,
        r'apimports\evilpaladin.mdx', CustomIDs.ABIL_CHAOS_UTHER,
        scaling=1.2
    ),
    HeroInfo(
        GameID.KAEL_THAS, CustomIDs.UNIT_CORRUPTED_KAEL,
        r'apimports\evilkael.mdx', CustomIDs.ABIL_CHAOS_KAEL,
        other_updates={
            eid.FIELD_UNIT_ABILITIES_NORMAL: f'{eid.ABIL_INVENTORY_HERO},{CustomIDs.ABIL_CORRUPTED_SPHERE}',
            eid.FIELD_UNIT_ATTACK_1_PROJECTILE_ART: eid.PATH_MODEL_MISSILE_PHOENIX,
        }
    ),
    HeroInfo(
        GameID.ANTONIDAS, CustomIDs.UNIT_CORRUPTED_ANTONIDAS,
        r'apimports\evilarchmage.mdx', CustomIDs.ABIL_CHAOS_ANTONIDAS,
        other_updates={
            eid.FIELD_UNIT_ATTACK_1_PROJECTILE_ART: eid.PATH_MODEL_MISSILE_RED_DRAGON,
        }
    ),
    HeroInfo(
        GameID.LORD_GARITHOS, CustomIDs.UNIT_CORRUPTED_LORD_GARITHOS,
        r'apimports\evilgarithos.mdx', CustomIDs.ABIL_CHAOS_LORD_GARITHOS,
        # Note: default Garithos scaling is 1.2
        scaling=1.35,
    ),

    HeroInfo(
        GameID.MOUNTAIN_KING, CustomIDs.UNIT_CORRUPTED_MOUNTAIN_KING,
        r'apimports\evilmuradin.mdx', CustomIDs.ABIL_CHAOS_MOUNTAIN_KING,
        scaling=1.25,
    ),
    HeroInfo(
        GameID.PALADIN, CustomIDs.UNIT_CORRUPTED_PALADIN,
        r'apimports\evilpaladin.mdx', CustomIDs.ABIL_CHAOS_PALADIN,
    ),
    HeroInfo(
        GameID.ARCHMAGE, CustomIDs.UNIT_CORRUPTED_ARCHMAGE,
        r'apimports\evilarchmage.mdx', CustomIDs.ABIL_CHAOS_ARCHMAGE,
        other_updates={
            eid.FIELD_UNIT_ATTACK_1_PROJECTILE_ART: eid.PATH_MODEL_MISSILE_RED_DRAGON,
        }
    ),
    HeroInfo(
        GameID.BLOOD_MAGE, CustomIDs.UNIT_CORRUPTED_BLOOD_MAGE,
        r'apimports\evilkael.mdx', CustomIDs.ABIL_CHAOS_BLOOD_MAGE,
        other_updates={
            eid.FIELD_UNIT_ABILITIES_NORMAL: f'{eid.ABIL_INVENTORY_HERO},{CustomIDs.ABIL_CORRUPTED_SPHERE}',
            eid.FIELD_UNIT_ATTACK_1_PROJECTILE_ART: eid.PATH_MODEL_MISSILE_PHOENIX,
        }
    ),

    # Orc
    HeroInfo(
        GameID.THRALL, CustomIDs.UNIT_CORRUPTED_THRALL,
        r'apimports\evilthrall.mdx', CustomIDs.ABIL_CHAOS_THRALL,
        other_updates={eid.FIELD_UNIT_ATTACK_1_PROJECTILE_ART: eid.PATH_MODEL_MISSILE_GREEN_DRAGON,},
    ),
    HeroInfo(
        GameID.FAR_SEER, CustomIDs.UNIT_CORRUPTED_FAR_SEER,
        r'apimports\evilfarseer.mdx', CustomIDs.ABIL_CHAOS_FAR_SEER,
    ),
    HeroInfo(
        GameID.BLADEMASTER, CustomIDs.UNIT_CORRUPTED_BLADEMASTER,
        r'apimports\evilblademaster.mdx', CustomIDs.ABIL_CHAOS_BLADEMASTER,
    ),
    HeroInfo(
        GameID.CHAOS_BLADEMASTER, CustomIDs.UNIT_CORRUPTED_FEL_ORC_BLADEMASTER,
        r'apimports\evilchaosblademaster.mdx', CustomIDs.ABIL_CHAOS_FEL_ORC_BLADEMASTER,
    ),

    # Undead
    HeroInfo(
        GameID.DETHEROC, CustomIDs.UNIT_CORRUPTED_DETHEROC,
        r'apimports\evildreadlord.mdx', CustomIDs.ABIL_CHAOS_DETHEROC,
        # Note: default detheroc is 1.4
        scaling=1.55,
    ),
    HeroInfo(
        GameID.DREADLORD, CustomIDs.UNIT_CORRUPTED_DREADLORD,
        r'apimports\evildreadlord.mdx', CustomIDs.ABIL_CHAOS_DREADLORD,
    ),
]
TEXTURE_DEPENDENCIES = {
    r'apimports\eviljaina.mdx': [r'apimports\eviljaina.blp'],
    r'apimports\evilmuradin.mdx': [r'apimports\evilmountainking.blp'],
    r'apimports\evilpaladin.mdx': [r'apimports\evilpaladin.blp'],
    r'apimports\evilarchmage.mdx': [r'apimports\evilarchmage.blp'],
    r'apimports\evilkael.mdx': [r'apimports\evilkael.blp'],
    r'apimports\evilgarithos.mdx': [r'apimports\evilgarithos.blp'],
    r'apimports\evilthrall.mdx': [r'apimports\evilthrall.blp'],
    r'apimports\evilfarseer.mdx': [r'apimports\evilfarseer.blp'],
    r'apimports\evilblademaster.mdx': [r'apimports\evilblademaster.blp'],
    r'apimports\evilchaosblademaster.mdx': [r'apimports\evilchaosblademaster.blp'],
    r'apimports\evildreadlord.mdx': [r'apimports\evildreadlord.blp'],
}

DEFAULT_HERO_ABILS = eid.ABIL_INVENTORY_HERO
HERO_TO_DEFAULT_ABILS = {
    GameID.BLOOD_MAGE: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_SPHERE}',
    GameID.KAEL_THAS: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_SPHERE}',
    GameID.SYLVANAS_ELF: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION}',
    # GameID.ARCHIMONDE: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_SPELL_IMMUNITY_ARCHIMONDE}',
    GameID.KEEPER_OF_THE_GROVE: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION}',
    GameID.PRIESTESS_OF_THE_MOON: f'{eid.ABIL_SHADOW_MELD},{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION}',
    GameID.DEMON_HUNTER: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION}',
    GameID.WARDEN: f'{eid.ABIL_SHADOW_MELD},{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION}',
    GameID.CENARIUS: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_CYCLONE_CENARIUS}',
    GameID.FURION: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION}',
    GameID.GHOST_KEEPER_OF_THE_GROVE: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION}',
    GameID.ILLIDAN: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION}',
    GameID.ILLIDAN_EVIL: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION},{eid.ABIL_CHANNEL}',
    GameID.MAIEV: f'{eid.ABIL_SHADOW_MELD},{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION}',
    GameID.MALFURION: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION}',
    GameID.MALFURION_UNMOUNTED: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION}',
    GameID.TYRANDE: f'{eid.ABIL_SHADOW_MELD},{eid.ABIL_INVENTORY_HERO},{eid.ABIL_ULTRAVISION}',
    GameID.AKAMA: f'{eid.ABIL_INVENTORY_HERO},{eid.ABIL_PERMANENT_INVISIBILITY},{eid.ABIL_SHADOW_MELD_AKAMA}',
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
    blizzard_entities = mod_entity.Entities(data.blizzard_objects.entities, is_map_entity=False)
    for hero_info in HERO_INFO:
        if not hero_info.skip_unit_creation:
            entities.set_entity(
                hero_info.entity_id, hero_info.parent_id, {
                    eid.FIELD_UNIT_UI_MODEL_FILE: hero_info.updated_model.replace('.mdx', '.mdl'),
                    eid.FIELD_UNIT_UI_SCALING_VALUE: FLOAT_MAP.get(hero_info.scaling, hero_info.scaling),
                    eid.FIELD_UNIT_ATTACK_1_DAMAGE_BASE: hero_info.damage_base,
                    eid.FIELD_UNIT_ATTACK_1_ATTACK_TYPE: "chaos",
                    eid.FIELD_UNIT_GENERAL_EDITOR_SUFFIX: "(Corrupted)",
                    **hero_info.other_updates,
                }
            )
        blizzard_entities.set_entity(
            'null', hero_info.parent_id, {
                eid.FIELD_UNIT_ABILITIES_NORMAL:
                    f"{HERO_TO_DEFAULT_ABILS.get(hero_info.parent_id, DEFAULT_HERO_ABILS)},"
                    f"{hero_info.abil_id}",
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

    for hero_info in HERO_INFO:
        entities.set_entity(
            hero_info.abil_id, 'Sca6', {
                eid.FIELD_ABIL_NAME: f'Chaos {hero_info.parent_id.name.replace("_", " ").title()}',
                eid.FIELD_ABIL_EDITOR_SUFFIX: '',
                (eid.FIELD_ABIL_DATA_CHAOS_NEW_UNIT_TYPE, 1): hero_info.entity_id,
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
        if hero_info.updated_model and (hero_info.updated_model not in imported_paths):
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
        if hero_info.updated_model and (hero_info.updated_model not in lines):
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
        if not hero_info.updated_model:
            continue
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
