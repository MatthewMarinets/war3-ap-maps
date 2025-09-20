"""
Update abilities and upgrades to support irregular morph abilities.
"""
from dataclasses import dataclass
import sys
import os
from mapfile import w3o
from . import editor_ids, mod_entity
from apworld.data.game_ids import GameID


SPELLBOOK_ABIL_ID = 'APPh'

def update_abilities_human(abils_file: str) -> None:
    if not os.path.isfile(abils_file):
        data = w3o.War3ObjectData(2, has_levels=True)
    else:
        data = w3o.from_text_file(abils_file)
    
    entities = mod_entity.Entities(data.map_objects.entities)

    SELECT_ABILS = {
        'AP00': ("Captain", "T", 0, 0, 'ReplaceableTextures\\CommandButtons\\BTNTheCaptain.blp'),
        'AP01': ("Footman", "F", 0, 0, 'ReplaceableTextures\\CommandButtons\\BTNFootman.blp'),
        'AP02': ("Rifleman", "R", 1, 0, 'ReplaceableTextures\\CommandButtons\\BTNRifleman.blp'),
        'AP03': ("Archer", "H", 2, 0, 'ReplaceableTextures\\CommandButtons\\BTNHighElvenArcher.blp'),
        'AP04': ("Knight", "G", 3, 0, 'ReplaceableTextures\\CommandButtons\\BTNKnight.blp'),
        'AP05': ("Priest", "E", 0, 1, 'ReplaceableTextures\\CommandButtons\\BTNPriest.blp'),
        'AP06': ("Sorceress", "X", 1, 1, 'ReplaceableTextures\\CommandButtons\\BTNSorceress.blp'),
        'AP07': ("Spell Breaker", "B", 2, 1, 'ReplaceableTextures\\CommandButtons\\BTNSpellBreaker.blp'),
        'AP08': ("Mortar Team", "M", 0, 2, 'ReplaceableTextures\\CommandButtons\\BTNMortarTeam.blp'),
    }

    for index, (abil_id, (unit_name, hotkey, button_x, button_y, icon)) in enumerate(SELECT_ABILS.items()):
        entities.set_entity(
            abil_id, editor_ids.ABIL_CHANNEL,
            {
                editor_ids.FIELD_ABIL_NAME: f"Promote to {unit_name}",
                editor_ids.FIELD_ABIL_ICON_NORMAL: icon,
                (editor_ids.FIELD_ABIL_TOOLTIP_NORMAL, 1): f"Promote to {unit_name} [|cffffcc00{hotkey}|r]",
                (editor_ids.FIELD_ABIL_TOOLTIP_NORMAL_EXTENDED, 1):
                    f"Promote this unit to a{'n' if unit_name[0] in 'AEIOU' else ''} {unit_name}",
                editor_ids.FIELD_ABIL_HOTKEY: hotkey,
                editor_ids.FIELD_ABIL_STATS_IS_HERO_ABILITY: 0,
                editor_ids.FIELD_ABIL_BUTTON_POSITION_NORMAL_X: button_x,
                editor_ids.FIELD_ABIL_BUTTON_POSITION_NORMAL_Y: button_y,
                (editor_ids.FIELD_ABIL_DATA_CHANNEL_OPTIONS, 1): 1,
                (editor_ids.FIELD_ABIL_DATA_CHANNEL_ART_DURATION, 1): 0.0,
                (editor_ids.FIELD_ABIL_DATA_CHANNEL_DISABLE_OTHER_ABILITIES, 1): 0,
                (editor_ids.FIELD_ABIL_DATA_CHANNEL_BASE_ORDER_ID, 1): editor_ids.BASE_ORDER_IDS[index],
            }
        )

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
        entities.set_entity(
            abil_id, editor_ids.ABIL_CROW_FORM_MEDIVH,
            {
                (editor_ids.FIELD_ABIL_DATA_CROW_FORM_ALTERNATE_FORM_UNIT, 1): unit_id,
                (editor_ids.FIELD_ABIL_DATA_CROW_FORM_MORPHING_FLAGS, 1): 9,
                (editor_ids.FIELD_ABIL_STATS_CASTING_TIME, 1): 0.0,
                (editor_ids.FIELD_ABIL_STATS_DURATION_NORMAL, 1): 0.0,
                editor_ids.FIELD_ABIL_EFFECT_SOUND: sound_id,
            }
        )
    
    entities.set_entity(
        SPELLBOOK_ABIL_ID, editor_ids.ABIL_SPELL_BOOK,
        {
            editor_ids.FIELD_ABIL_NAME: "Promotion",
            editor_ids.FIELD_ABIL_EDITOR_SUFFIX: "(Human)",
            editor_ids.FIELD_ABIL_HOTKEY: "T",
            editor_ids.FIELD_ABIL_ICON_NORMAL: r"ReplaceableTextures\CommandButtons\BTNHumanCaptureFlag.blp",
            editor_ids.FIELD_ABIL_BUTTON_POSITION_NORMAL_Y: 2,
            (editor_ids.FIELD_ABIL_DATA_SPELL_BOOK_MIN_SPELLS, 1): len(SELECT_ABILS),
            (editor_ids.FIELD_ABIL_DATA_SPELL_BOOK_MAX_SPELLS, 1): len(SELECT_ABILS),
            (editor_ids.FIELD_ABIL_DATA_SPELL_BOOK_SPELL_LIST, 1): ",".join(SELECT_ABILS),
        }
    )
    
    text = w3o.as_text(data)
    with open(abils_file, 'w') as fp:
        fp.write(text)


def update_units(units_file: str) -> None:
    if not os.path.isfile(units_file):
        data = w3o.War3ObjectData(2, has_levels=False)
    else:
        data = w3o.from_text_file(units_file)
    
    entities = mod_entity.Entities(data.map_objects.entities)
    entities.set_entity(
        'hA00', GameID.MILITIA.value,
        {
            editor_ids.FIELD_UNIT_GENERAL_NAME: "Irregular",
            editor_ids.FIELD_UNIT_ATTACK_1_DAMAGE_BASE: 9,
            editor_ids.FIELD_UNIT_ABILITIES_NORMAL: SPELLBOOK_ABIL_ID,
            editor_ids.FIELD_UNIT_ABILITIES_DEFAULT: '',
            editor_ids.FIELD_UNIT_GENERAL_STRUCTURES_BUILT: '',
        }
    )

    text = w3o.as_text(data)
    with open(units_file, 'w') as fp:
        fp.write(text)


def update_upgrades(upgrades_file: str) -> None:
    if not os.path.isfile(upgrades_file):
        data = w3o.War3ObjectData(2, has_levels=True)
    else:
        data = w3o.from_text_file(upgrades_file)
    
    entities = mod_entity.Entities(data.map_objects.entities)

    text = w3o.as_text(data)
    with open(upgrades_file, 'w') as fp:
        fp.write(text)


def main(map_dir: str) -> int:
    files = os.listdir(map_dir)
    if '(listfile)' not in files:
        print(f'Error: Missing (listfile) in {map_dir}')
        return 1
    print(f'Processing {map_dir}')

    update_abilities_human(f'{map_dir}/o_abilities.w3a.toml')
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
