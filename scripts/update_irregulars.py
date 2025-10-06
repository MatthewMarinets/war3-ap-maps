"""
Update abilities and upgrades to support irregular morph abilities.
"""
from dataclasses import dataclass
import sys
import os
from mapfile import w3o
from . import editor_ids, mod_entity
from apworld.data.game_ids import GameID


@dataclass
class AbilInfo:
    unit_name: str
    unit_game_id: GameID
    select_id: str
    transform_id: str
    upgrade_id: str
    hotkey: str
    x: int
    y: int
    sound: str
    icon: str
    upgrade_name: str = ''
    joke: str = ''

    def __post_init__(self) -> None:
        if not self.upgrade_name:
            self.upgrade_name = self.unit_name


SPELLBOOK_ABIL_ID = 'APPh'
HUMAN_ABIL_INFO = [
    AbilInfo(
        "Captain", GameID.CAPTAIN, 'AP00', 'AP0a', 'RP00', "T", 1, 2,
        "CaptainWhat", "ReplaceableTextures\\CommandButtons\\BTNTheCaptain.blp",
        upgrade_name="Captain Promotion"
    ),
    AbilInfo(
        "Footman", GameID.FOOTMAN, 'AP01', 'AP0b', 'RP01', "F", 0, 0,
        "FootmanReady", "ReplaceableTextures\\CommandButtons\\BTNFootman.blp",
    ),
    AbilInfo(
        "Rifleman", GameID.RIFLEMAN, 'AP02', 'AP0c', 'RP02', "R", 1, 0,
        "RiflemanReady", "ReplaceableTextures\\CommandButtons\\BTNRifleman.blp",
    ),
    AbilInfo(
        "Archer", GameID.BLOOD_ELF_ARCHER, 'AP03', 'AP0d', 'RP03', "H", 2, 0,
        "ArcherReady", "ReplaceableTextures\\CommandButtons\\BTNHighElvenArcher.blp",
        joke=" (Magic makes for fast transition)."
    ),
    AbilInfo(
        "Knight", GameID.KNIGHT, 'AP04', 'AP0e', 'RP04', "G", 3, 0,
        "KnightReady", "ReplaceableTextures\\CommandButtons\\BTNKnight.blp",
    ),
    AbilInfo(
        "Priest", GameID.PRIEST, 'AP05', 'AP0f', 'RP05', "E", 0, 1,
        "PriestReady", "ReplaceableTextures\\CommandButtons\\BTNPriest.blp",
    ),
    AbilInfo(
        "Sorceress", GameID.SORCERESS, 'AP06', 'AP0g', 'RP06', "X", 1, 1,
        "SorceressReady", "ReplaceableTextures\\CommandButtons\\BTNSorceress.blp",
        joke=" (Magic makes for fast transition)."
    ),
    AbilInfo(
        "Spell Breaker", GameID.SPELL_BREAKER, 'AP07', 'AP0h', 'RP07', "B", 2, 1,
        "SpellBreakerReady", "ReplaceableTextures\\CommandButtons\\BTNSpellBreaker.blp",
    ),
    AbilInfo(
        "Mortar Team", GameID.MORTAR_TEAM, 'AP08', 'AP0i', 'RP08', "M", 0, 2,
        "MortarTeamReady", "ReplaceableTextures\\CommandButtons\\BTNMortarTeam.blp",
    ),
]

def update_abilities_human(abils_file: str) -> None:
    if not os.path.isfile(abils_file):
        data = w3o.War3ObjectData(2, has_levels=True)
    else:
        data = w3o.from_text_file(abils_file)
    
    entities = mod_entity.Entities(data.map_objects.entities)

    # Select abilities
    for index, info in enumerate(HUMAN_ABIL_INFO):
        entities.set_entity(
            info.select_id, editor_ids.ABIL_CHANNEL, {
            editor_ids.FIELD_ABIL_NAME: f"Promote to {info.unit_name}",
            editor_ids.FIELD_ABIL_ICON_NORMAL: info.icon,
            (editor_ids.FIELD_ABIL_TOOLTIP_NORMAL, 1):
                f"Promote to {info.unit_name} [|cffffcc00{info.hotkey}|r]",
            (editor_ids.FIELD_ABIL_TOOLTIP_NORMAL_EXTENDED, 1):
                f"Promote this unit to a{'n' if info.unit_name[0] in 'AEIOU' else ''} {info.unit_name}."
                + info.joke,
            editor_ids.FIELD_ABIL_HOTKEY: info.hotkey,
            editor_ids.FIELD_ABIL_STATS_IS_HERO_ABILITY: 0,
            editor_ids.FIELD_ABIL_BUTTON_POSITION_NORMAL_X: info.x,
            editor_ids.FIELD_ABIL_BUTTON_POSITION_NORMAL_Y: info.y,
            editor_ids.FIELD_ABIL_REQUIREMENTS: info.upgrade_id,
            (editor_ids.FIELD_ABIL_DATA_CHANNEL_OPTIONS, 1): 1,
            (editor_ids.FIELD_ABIL_DATA_CHANNEL_ART_DURATION, 1): 0.0,
            (editor_ids.FIELD_ABIL_DATA_CHANNEL_DISABLE_OTHER_ABILITIES, 1): 0,
            (editor_ids.FIELD_ABIL_DATA_CHANNEL_BASE_ORDER_ID, 1): editor_ids.BASE_ORDER_IDS[index],
        })

    # Transform abilities
    for info in HUMAN_ABIL_INFO:
        entities.set_entity(
            info.transform_id, editor_ids.ABIL_CROW_FORM_MEDIVH, {
            (editor_ids.FIELD_ABIL_DATA_CROW_FORM_ALTERNATE_FORM_UNIT, 1): info.unit_game_id.value,
            (editor_ids.FIELD_ABIL_DATA_CROW_FORM_MORPHING_FLAGS, 1): 9,
            (editor_ids.FIELD_ABIL_STATS_CASTING_TIME, 1): 0.0,
            (editor_ids.FIELD_ABIL_STATS_DURATION_NORMAL, 1): 0.0,
            editor_ids.FIELD_ABIL_EFFECT_SOUND: info.sound,
        })
    
    # Spellbook ability
    entities.set_entity(
        SPELLBOOK_ABIL_ID, editor_ids.ABIL_SPELL_BOOK, {
        editor_ids.FIELD_ABIL_NAME: "Promotion",
        editor_ids.FIELD_ABIL_EDITOR_SUFFIX: "(Human)",
        editor_ids.FIELD_ABIL_HOTKEY: "T",
        editor_ids.FIELD_ABIL_ICON_NORMAL: r"ReplaceableTextures\CommandButtons\BTNHumanCaptureFlag.blp",
        editor_ids.FIELD_ABIL_BUTTON_POSITION_NORMAL_Y: 2,
        editor_ids.FIELD_ABIL_STATS_IS_ITEM_ABILITY: 0,
        editor_ids.FIELD_ABIL_TOOLTIP_NORMAL: "Promote this unit to a regular Human unit.",
        (editor_ids.FIELD_ABIL_DATA_SPELL_BOOK_MIN_SPELLS, 1): len(HUMAN_ABIL_INFO),
        (editor_ids.FIELD_ABIL_DATA_SPELL_BOOK_MAX_SPELLS, 1): len(HUMAN_ABIL_INFO),
        (editor_ids.FIELD_ABIL_DATA_SPELL_BOOK_SPELL_LIST, 1):
            ",".join(info.select_id for info in HUMAN_ABIL_INFO),
    })
    
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
        'hA00', GameID.MILITIA.value, {
        editor_ids.FIELD_UNIT_GENERAL_NAME: "Irregular",
        editor_ids.FIELD_UNIT_ATTACK_1_DAMAGE_BASE: 9,
        editor_ids.FIELD_UNIT_ABILITIES_NORMAL: SPELLBOOK_ABIL_ID,
        editor_ids.FIELD_UNIT_ABILITIES_DEFAULT: '',
        editor_ids.FIELD_UNIT_GENERAL_STRUCTURES_BUILT: '',
    })

    blizz_entities = mod_entity.Entities(data.blizzard_objects.entities, False)
    blizz_entities.set_entity(
        'null', 'hfoo', {
            editor_ids.FIELD_UNIT_ABILITIES_NORMAL: 'Adef,Aihn,AP00',
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
    for info in HUMAN_ABIL_INFO:
        entities.set_entity(
            info.upgrade_id, GameID.FOOTMAN_DEFEND.value, {
            (editor_ids.FIELD_UPGRADE_NAME, 1): f"Find {info.upgrade_name}",
        })


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
    update_upgrades(f'{map_dir}/o_upgrades.w3q.toml')


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
