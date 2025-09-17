"""
Update abilities and upgrades to support irregular morph abilities.
"""
from dataclasses import dataclass
import sys
import os
from mapfile import w3o
from . import editor_ids
from apworld.data.game_ids import GameID


ABIL_TO_UNIT = {
    'AP00': 'Captain',
    'AP01': 'Footman',
    'AP02': 'Rifleman',
    'AP03': 'Archer',
    'AP04': 'Knight',
    'AP05': 'Priest',
    'AP06': 'Sorceress',
    'AP07': 'Spell Breaker',
    'AP08': 'Mortar Team',
}

@dataclass
class FieldInfo:
    type: w3o.DataType
    variation_level: int = 0
    table_column: int = 0

@dataclass
class AbilInfo:
    hotkey: str
    x: int
    y: int
    base_order_id: str
    icon: str

ABIL_INFO = {
    'Captain': AbilInfo('T', 0, 0, editor_ids.BASE_ORDER_IDS[0], 'ReplaceableTextures\\CommandButtons\\BTNTheCaptain.blp'),
    'Footman': AbilInfo('F', 0, 0, editor_ids.BASE_ORDER_IDS[1], 'ReplaceableTextures\\CommandButtons\\BTNFootman.blp'),
    'Rifleman': AbilInfo('R', 1, 0, editor_ids.BASE_ORDER_IDS[2], 'ReplaceableTextures\\CommandButtons\\BTNRifleman.blp'),
    'Archer': AbilInfo('C', 2, 0, editor_ids.BASE_ORDER_IDS[3], 'ReplaceableTextures\\CommandButtons\\BTNHighElvenArcher.blp'),
    'Knight': AbilInfo('G', 3, 0, editor_ids.BASE_ORDER_IDS[4], 'ReplaceableTextures\\CommandButtons\\BTNKnight.blp'),
    'Priest': AbilInfo('E', 0, 1, editor_ids.BASE_ORDER_IDS[5], 'ReplaceableTextures\\CommandButtons\\BTNPriest.blp'),
    'Sorceress': AbilInfo('X', 1, 1, editor_ids.BASE_ORDER_IDS[6], 'ReplaceableTextures\\CommandButtons\\BTNSorceress.blp'),
    'Spell Breaker': AbilInfo('B', 2, 1, editor_ids.BASE_ORDER_IDS[7], 'ReplaceableTextures\\CommandButtons\\BTNSpellBreaker.blp'),
    'Mortar Team': AbilInfo('M', 0, 2, editor_ids.BASE_ORDER_IDS[8], 'ReplaceableTextures\\CommandButtons\\BTNMortarTeam.blp'),
}


def ensure_modification_exists(
    id_to_modification: dict[str, w3o.Modification],
    entity: w3o.Entity,
    fields: dict[str, FieldInfo]
) -> None:
    for mod_id, mod_defaults in fields.items():
        if mod_id not in id_to_modification:
            modification = w3o.Modification(mod_id, mod_defaults.type, mod_defaults.variation_level, mod_defaults.table_column)
            entity.modifications.append(modification)
            id_to_modification[mod_id] = modification
        else:
            id_to_modification[mod_id].variation_level = mod_defaults.variation_level
            id_to_modification[mod_id].table_column = mod_defaults.table_column


def update_abilities(abils_file: str) -> None:
    if not os.path.isfile(abils_file):
        data = w3o.War3ObjectData(2, has_levels=True)
    else:
        data = w3o.from_text_file(abils_file)

    SELECT_ABIL_FIELDS = {
        editor_ids.FIELD_ABIL_NAME: FieldInfo(w3o.DataType.String),
        editor_ids.FIELD_ABIL_ICON_NORMAL: FieldInfo(w3o.DataType.String),
        editor_ids.FIELD_ABIL_TOOLTIP_NORMAL: FieldInfo(w3o.DataType.String, 1),
        editor_ids.FIELD_ABIL_TOOLTIP_NORMAL_EXTENDED: FieldInfo(w3o.DataType.String, 1),
        editor_ids.FIELD_ABIL_HOTKEY: FieldInfo(w3o.DataType.String),
        editor_ids.FIELD_ABIL_DATA_HERO_ABILITY: FieldInfo(w3o.DataType.Integer),
        editor_ids.FIELD_ABIL_BUTTON_POSITION_NORMAL_X: FieldInfo(w3o.DataType.Integer),
        editor_ids.FIELD_ABIL_BUTTON_POSITION_NORMAL_Y: FieldInfo(w3o.DataType.Integer),
        editor_ids.FIELD_ABIL_CHANNEL_DATA_OPTIONS: FieldInfo(w3o.DataType.Integer, 1, 3),
        editor_ids.FIELD_ABIL_CHANNEL_DATA_ART_DURATION: FieldInfo(w3o.DataType.Unreal, 1, 4),
        editor_ids.FIELD_ABIL_CHANNEL_DATA_DISABLE_OTHER_ABILITIES: FieldInfo(w3o.DataType.Integer, 1, 5),
        editor_ids.FIELD_ABIL_CHANNEL_DATA_BASE_ORDER_ID: FieldInfo(w3o.DataType.String, 1, 6),
        # editor_ids.FIELD_ABIL_CASTER_ART: FieldInfo(w3o.DataType.String)
    }

    id_to_entity = {entity.entity_id: entity for entity in data.map_objects.entities}
    for abil_id, unit_name in ABIL_TO_UNIT.items():
        if abil_id in id_to_entity:
            entity = id_to_entity[abil_id]
        else:
            entity = w3o.Entity(editor_ids.ABIL_CHANNEL, entity_id=abil_id)
            data.map_objects.entities.append(entity)
            id_to_entity[abil_id] = entity
        id_to_modification = {modification.modification_id: modification for modification in entity.modifications}
        ensure_modification_exists(id_to_modification, entity, SELECT_ABIL_FIELDS)
        info = ABIL_INFO[unit_name]
        id_to_modification[editor_ids.FIELD_ABIL_NAME].value = f"Promote to {unit_name}"
        id_to_modification[editor_ids.FIELD_ABIL_ICON_NORMAL].value = info.icon
        id_to_modification[editor_ids.FIELD_ABIL_TOOLTIP_NORMAL].value = f"Promote to {unit_name} [|cffffcc00{info.hotkey}|r]"
        id_to_modification[editor_ids.FIELD_ABIL_TOOLTIP_NORMAL_EXTENDED].value = f"Promote this unit to a{'n' if unit_name[0] in 'AEIOU' else ''} {unit_name}"
        id_to_modification[editor_ids.FIELD_ABIL_HOTKEY].value = info.hotkey
        id_to_modification[editor_ids.FIELD_ABIL_DATA_HERO_ABILITY].value = 0
        id_to_modification[editor_ids.FIELD_ABIL_BUTTON_POSITION_NORMAL_X].value = info.x
        id_to_modification[editor_ids.FIELD_ABIL_BUTTON_POSITION_NORMAL_Y].value = info.y
        id_to_modification[editor_ids.FIELD_ABIL_CHANNEL_DATA_OPTIONS].value = 1
        id_to_modification[editor_ids.FIELD_ABIL_CHANNEL_DATA_ART_DURATION].value = 0.0
        id_to_modification[editor_ids.FIELD_ABIL_CHANNEL_DATA_DISABLE_OTHER_ABILITIES].value = 0
        id_to_modification[editor_ids.FIELD_ABIL_CHANNEL_DATA_BASE_ORDER_ID].data_type = w3o.DataType.String
        id_to_modification[editor_ids.FIELD_ABIL_CHANNEL_DATA_BASE_ORDER_ID].value = info.base_order_id
        # id_to_modification[editor_ids.FIELD_ABIL_CASTER_ART].value = ''

    TRANSFORM_ABIL_FIELDS = {
        editor_ids.FIELD_ABIL_DATA_ALTERNATE_FORM_UNIT: FieldInfo(w3o.DataType.String, 1),
        editor_ids.FIELD_ABIL_DATA_MORPHING_FLAGS: FieldInfo(w3o.DataType.Integer, 1, 2),  # 9
        editor_ids.FIELD_ABIL_DATA_CASTING_TIME: FieldInfo(w3o.DataType.Unreal, 1),  # 0.0
        editor_ids.FIELD_ABIL_DATA_DURATION_NORMAL: FieldInfo(w3o.DataType.Unreal, 1),  # 0.0
        editor_ids.FIELD_ABIL_EFFECT_SOUND: FieldInfo(w3o.DataType.String),
    }
    TRANSFORM_ABIL_TO_DATA = {
        'AP0a': (GameID.CAPTAIN.value, "CaptainWhat"),
        'AP0b': (GameID.FOOTMAN.value, "FootmanReady"),
        'AP0c': (GameID.RIFLEMAN.value, "RiflemanReady"),
        'AP0d': (GameID.BLOOD_ELF_ARCHER.value, "ArcherReady"),
        'AP0e': (GameID.KNIGHT.value, "KnightReady"),
        'AP0f': (GameID.PRIEST.value, "PriestReady"),
        'AP0g': (GameID.SORCERESS.value, "SorceressReady"),
        'AP0h': (GameID.SPELL_BREAKER.value, "SpellBreakerReady"),
        'AP0i': (GameID.MORTAR_TEAM.value, "MortarTeamReady"),
    }
    for abil_id, (unit_id, sound_id) in TRANSFORM_ABIL_TO_DATA.items():
        if abil_id in id_to_entity:
            entity = id_to_entity[abil_id]
        else:
            entity = w3o.Entity(editor_ids.ABIL_CROW_FORM_MEDIVH, abil_id)
            data.map_objects.entities.append(entity)
            id_to_entity[abil_id] = entity
        id_to_modification = {modification.modification_id: modification for modification in entity.modifications}
        ensure_modification_exists(id_to_modification, entity, TRANSFORM_ABIL_FIELDS)
        id_to_modification[editor_ids.FIELD_ABIL_DATA_ALTERNATE_FORM_UNIT].value = unit_id
        id_to_modification[editor_ids.FIELD_ABIL_DATA_MORPHING_FLAGS].value = 9
        id_to_modification[editor_ids.FIELD_ABIL_DATA_CASTING_TIME].value = 0.0
        id_to_modification[editor_ids.FIELD_ABIL_DATA_DURATION_NORMAL].value = 0.0
        id_to_modification[editor_ids.FIELD_ABIL_EFFECT_SOUND].value = sound_id
    
    text = w3o.as_text(data)
    with open(abils_file, 'w') as fp:
        fp.write(text)


def update_units(units_file: str) -> None:
    DEFAULT_FIELDS = {
        editor_ids.FIELD_UNIT_GENERAL_NAME: FieldInfo(w3o.DataType.String),
        editor_ids.FIELD_UNIT_ATTACK_1_DAMAGE_BASE: FieldInfo(w3o.DataType.Integer),
        editor_ids.FIELD_UNIT_ABILITIES_NORMAL: FieldInfo(w3o.DataType.String),
        editor_ids.FIELD_UNIT_ABILITIES_DEFAULT: FieldInfo(w3o.DataType.String),
        editor_ids.FIELD_UNIT_GENERAL_STRUCTURES_BUILT: FieldInfo(w3o.DataType.String),
    }

    if not os.path.isfile(units_file):
        data = w3o.War3ObjectData(2, has_levels=False)
    else:
        data = w3o.from_text_file(units_file)
    
    id_to_entity = {entity.entity_id: entity for entity in data.map_objects.entities}
    IRREGULAR_ID = 'hA00'
    if IRREGULAR_ID not in id_to_entity:
        entity = w3o.Entity(GameID.MILITIA, IRREGULAR_ID)
        data.map_objects.entities.append(entity)
        id_to_entity[IRREGULAR_ID] = entity
    entity = id_to_entity[IRREGULAR_ID]
    id_to_modification = {modification.modification_id: modification for modification in entity.modifications}
    for mod_id, mod_default in DEFAULT_FIELDS.items():
        if mod_id not in id_to_modification:
            modification = w3o.Modification(mod_id, mod_default.type)
            entity.modifications.append(modification)
            id_to_modification[mod_id] = modification
    id_to_modification[editor_ids.FIELD_UNIT_GENERAL_NAME].value = "Irregular"
    id_to_modification[editor_ids.FIELD_UNIT_ATTACK_1_DAMAGE_BASE].value = 9
    id_to_modification[editor_ids.FIELD_UNIT_ABILITIES_NORMAL].value = ",".join(list(ABIL_TO_UNIT)[1:])
    id_to_modification[editor_ids.FIELD_UNIT_ABILITIES_DEFAULT].value = ''
    id_to_modification[editor_ids.FIELD_UNIT_GENERAL_STRUCTURES_BUILT].value = ''

    text = w3o.as_text(data)
    with open(units_file, 'w') as fp:
        fp.write(text)


def update_upgrades(upgrades_file: str) -> None:
    if not os.path.isfile(upgrades_file):
        data = w3o.War3ObjectData(2, has_levels=True)
    else:
        data = w3o.from_text_file(upgrades_file)
    
    id_to_entity = {entity.entity_id: entity for entity in data.map_objects.entities}

    text = w3o.as_text(data)
    with open(upgrades_file, 'w') as fp:
        fp.write(text)


def main(map_dir: str) -> int:
    files = os.listdir(map_dir)
    if '(listfile)' not in files:
        print(f'Error: Missing (listfile) in {map_dir}')
        return 1
    print(f'Processing {map_dir}')

    update_abilities(f'{map_dir}/o_abilities.w3a.toml')
    update_units(f'{map_dir}/o_units.w3u.toml')
    # update_upgrades(f'{map_dir}/o_upgrades.w3q.toml')


HELP = """
Script to upgrade unpacked RoC maps to TFT. Usage:
upgrade_roc.py <map_dir>
"""
if __name__ == '__main__':
    if len(sys.argv) < 2:
        print('Error: No argument given')
        print(HELP)
        sys.exit(1)
    if '-h' in sys.argv:
        print(HELP)
        sys.exit(0)
    sys.exit(main(sys.argv[1]))
