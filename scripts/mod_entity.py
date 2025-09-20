"""
Helpers for manipulating .w3o Entities
"""
from typing import LiteralString, Any
from dataclasses import dataclass
from mapfile.w3o import DataType, Entity, Modification
from . import editor_ids as eid

DEFAULT_VALUES = {
    eid.ABIL_CHANNEL: {
        eid.FIELD_ABIL_BUTTON_POSITION_NORMAL_X: 2,
        eid.FIELD_ABIL_BUTTON_POSITION_NORMAL_Y: 0,
    },
    eid.ABIL_SPELL_BOOK: {
        eid.FIELD_ABIL_BUTTON_POSITION_NORMAL_X: 0,
        eid.FIELD_ABIL_BUTTON_POSITION_NORMAL_Y: 0,
    },
    eid.ABIL_CROW_FORM_MEDIVH: {
        eid.FIELD_ABIL_DATA_CROW_FORM_MORPHING_FLAGS: 5,
    },
}

MODIFICATION_TYPES: dict[LiteralString, DataType] = {
    # Abils
    eid.FIELD_ABIL_NAME: DataType.String,
    eid.FIELD_ABIL_TOOLTIP_NORMAL: DataType.String,
    eid.FIELD_ABIL_TOOLTIP_NORMAL_EXTENDED: DataType.String,
    eid.FIELD_ABIL_EDITOR_SUFFIX: DataType.String,
    eid.FIELD_ABIL_HOTKEY: DataType.String,
    eid.FIELD_ABIL_HOTKEY_TURN_OFF: DataType.String,
    eid.FIELD_ABIL_HOTKEY_LEARN: DataType.String,
    eid.FIELD_ABIL_ICON_NORMAL: DataType.String,
    eid.FIELD_ABIL_ICON_TURN_OFF: DataType.String,
    eid.FIELD_ABIL_ICON_RESEARCH: DataType.String,
    eid.FIELD_ABIL_BUTTON_POSITION_NORMAL_X: DataType.Integer,
    eid.FIELD_ABIL_BUTTON_POSITION_NORMAL_Y: DataType.Integer,
    eid.FIELD_ABIL_BUTTON_POSITION_DISABLE_X: DataType.Integer,
    eid.FIELD_ABIL_BUTTON_POSITION_DISABLE_Y: DataType.Integer,
    eid.FIELD_ABIL_BUTTON_POSITION_RESEARCH_X: DataType.Integer,
    eid.FIELD_ABIL_BUTTON_POSITION_RESEARCH_Y: DataType.Integer,
    eid.FIELD_ABIL_REQUIREMENTS: DataType.String,
    eid.FIELD_ABIL_REQUIREMENTS_LEVELS: DataType.String,
    eid.FIELD_ABIL_EFFECT_SOUND: DataType.String,
    eid.FIELD_ABIL_ART_CASTER: DataType.String,
    eid.FIELD_ABIL_STATS_CASTING_TIME: DataType.Unreal,
    eid.FIELD_ABIL_STATS_CAST_RANGE: DataType.Unreal,
    eid.FIELD_ABIL_STATS_DURATION_NORMAL: DataType.Unreal,
    eid.FIELD_ABIL_STATS_IS_HERO_ABILITY: DataType.Integer,
    eid.FIELD_ABIL_STATS_LEVELS: DataType.Integer,
    eid.FIELD_ABIL_STATS_IS_HERO_ABILITY: DataType.Integer,
    eid.FIELD_ABIL_STATS_IS_ITEM_ABILITY: DataType.Integer,
    eid.FIELD_ABIL_TECH_CHECK_DEPENDENCIES: DataType.Integer,
    eid.FIELD_ABIL_DATA_CROW_FORM_ALTERNATE_FORM_UNIT: DataType.String,
    eid.FIELD_ABIL_DATA_CROW_FORM_NORMAL_FORM_UNIT: DataType.String,
    eid.FIELD_ABIL_DATA_CROW_FORM_MORPHING_FLAGS: DataType.Integer,
    eid.FIELD_ABIL_DATA_CROW_FORM_ALTITUDE_ADJUSTMENT_DURATION: DataType.Unreal,
    eid.FIELD_ABIL_DATA_CROW_FORM_LANDING_DELAY_TIME: DataType.Unreal,
    eid.FIELD_ABIL_DATA_CHANNEL_OPTIONS: DataType.Integer,
    eid.FIELD_ABIL_DATA_CHANNEL_ART_DURATION: DataType.Unreal,
    eid.FIELD_ABIL_DATA_CHANNEL_DISABLE_OTHER_ABILITIES: DataType.Integer,
    eid.FIELD_ABIL_DATA_CHANNEL_BASE_ORDER_ID: DataType.String,
    eid.FIELD_ABIL_DATA_SPELL_BOOK_SPELL_LIST: DataType.String,
    eid.FIELD_ABIL_DATA_SPELL_BOOK_SHARED_COOLDOWN: DataType.Integer,
    eid.FIELD_ABIL_DATA_SPELL_BOOK_MIN_SPELLS: DataType.Integer,
    eid.FIELD_ABIL_DATA_SPELL_BOOK_MAX_SPELLS: DataType.Integer,
    eid.FIELD_ABIL_DATA_ROBO_GOBLIN_STRENGTH_BONUS: DataType.Integer,
    eid.FIELD_ABIL_DATA_ROBO_GOBLIN_DEFENSE_BONUS: DataType.Integer,

    # Units
    eid.FIELD_UNIT_ABILITIES_NORMAL: DataType.String,
    eid.FIELD_UNIT_ABILITIES_DEFAULT: DataType.String,
    eid.FIELD_UNIT_ATTACK_1_ATTACK_TYPE: DataType.String,
    eid.FIELD_UNIT_ATTACK_1_DAMAGE_BASE: DataType.Integer,
    eid.FIELD_UNIT_ATTACK_1_DAMAGE_NUM_DICE: DataType.Integer,
    eid.FIELD_UNIT_ATTACK_1_PROJECTILE_ART: DataType.String,
    eid.FIELD_UNIT_ATTACK_1_PROJECTILE_SPEED: DataType.Integer,
    eid.FIELD_UNIT_ATTACK_1_RANGE: DataType.Integer,
    eid.FIELD_UNIT_ATTACK_1_WEAPON_TYPE: DataType.String,
    eid.FIELD_UNIT_BALANCE_DEFENSE_BASE: DataType.Integer,
    eid.FIELD_UNIT_BALANCE_HIT_POINTS_BASE: DataType.Integer,
    eid.FIELD_UNIT_BALANCE_SIGHT_RADIUS_DAY: DataType.Integer,
    eid.FIELD_UNIT_BALANCE_SIGHT_RADIUS_NIGHT: DataType.Integer,
    eid.FIELD_UNIT_BALANCE_SPEED_BASE: DataType.Integer,
    eid.FIELD_UNIT_GENERAL_EDITOR_SUFFIX: DataType.String,
    eid.FIELD_UNIT_GENERAL_NAME: DataType.String,
    eid.FIELD_UNIT_GENERAL_STRUCTURES_BUILT: DataType.String,
    eid.FIELD_UNIT_GENERAL_TOOLTIP_BASIC: DataType.String,
    eid.FIELD_UNIT_UI_MODEL_FILE: DataType.String,
    eid.FIELD_UNIT_UI_SCALING_VALUE: DataType.Float,
    eid.FIELD_UNIT_UI_TINT_BLUE: DataType.Integer,
    eid.FIELD_UNIT_UI_TINT_GREEN: DataType.Integer,
    eid.FIELD_UNIT_UI_TINT_RED: DataType.Integer,

    # Upgrades
    eid.FIELD_UPGRADE_NAME: DataType.String,
}

MODIFICATION_TABLE_COLUMNS: dict[LiteralString, int] = {
    # eid.FIELD_ABIL_DATA_CROW_FORM_ALTERNATE_FORM_UNIT: 0,
    eid.FIELD_ABIL_DATA_CROW_FORM_NORMAL_FORM_UNIT: 1,
    eid.FIELD_ABIL_DATA_CROW_FORM_MORPHING_FLAGS: 2,
    eid.FIELD_ABIL_DATA_CROW_FORM_ALTITUDE_ADJUSTMENT_DURATION: 3,
    eid.FIELD_ABIL_DATA_CROW_FORM_LANDING_DELAY_TIME: 4,
    eid.FIELD_ABIL_DATA_CHANNEL_OPTIONS: 3,
    eid.FIELD_ABIL_DATA_CHANNEL_ART_DURATION: 4,
    eid.FIELD_ABIL_DATA_CHANNEL_DISABLE_OTHER_ABILITIES: 5,
    eid.FIELD_ABIL_DATA_CHANNEL_BASE_ORDER_ID: 6,
    eid.FIELD_ABIL_DATA_SPELL_BOOK_SPELL_LIST: 1,
    eid.FIELD_ABIL_DATA_SPELL_BOOK_SHARED_COOLDOWN: 2,
    eid.FIELD_ABIL_DATA_SPELL_BOOK_MIN_SPELLS: 3,
    eid.FIELD_ABIL_DATA_SPELL_BOOK_MAX_SPELLS: 4,
    eid.FIELD_ABIL_DATA_ROBO_GOBLIN_STRENGTH_BONUS: 5,
    eid.FIELD_ABIL_DATA_ROBO_GOBLIN_DEFENSE_BONUS: 6,
}


class Entities:
    def __init__(self, entities: list[Entity]) -> None:
        self.entities = entities
        self.id_to_entity = {e.entity_id: e for e in entities}

    def set_entity(self, entity_id: str, parent_id: str, fields: dict[str|tuple[str, int], Any]) -> Entity:
        result = self.id_to_entity.get(entity_id)
        if result is None:
            result = Entity(parent_id, entity_id)
            self.entities.append(result)
            self.id_to_entity[entity_id] = result
        else:
            result.parent_id = parent_id
        id_to_modification = {(m.modification_id, m.variation_level): m for m in result.modifications}
        defaults = DEFAULT_VALUES.get(parent_id, {})
        for field_info, field_value in fields.items():
            if isinstance(field_info, str):
                field_id = field_info
                level = 0
            else:
                field_id, level = field_info
            mod_id = (field_id, level)
            modification = id_to_modification.get(mod_id)
            if modification is None:
                modification = Modification(field_id, MODIFICATION_TYPES[field_id], variation_level=level)
                id_to_modification[mod_id] = modification
                result.modifications.append(modification)
            else:
                modification.data_type = MODIFICATION_TYPES[field_id]
            if field_id in MODIFICATION_TABLE_COLUMNS:
                modification.table_column = MODIFICATION_TABLE_COLUMNS[field_id]
            modification.value = field_value
            default_value = defaults.get(field_id)
            if default_value is not None and field_value == default_value:
                # Remove modifications that just set to the default value
                result.modifications.remove(modification)
                del id_to_modification[mod_id]
        return result
