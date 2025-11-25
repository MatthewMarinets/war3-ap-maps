"""
Update abilities and upgrades to support irregular morph abilities.
"""
from dataclasses import dataclass
import sys
import os
from mapfile import w3o
from . import editor_ids, mod_entity, custom_editor_ids as cid
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
    cost: int
    upgrade_name: str = ''
    joke: str = ''

    def __post_init__(self) -> None:
        if not self.upgrade_name:
            self.upgrade_name = self.unit_name


SPELLBOOK_ABIL_ID = 'APPh'
# Note(mm): Updating costs here also requires updating costs in irregulars.j currently.
HUMAN_ABIL_INFO = [
    AbilInfo(
        "Captain", GameID.CAPTAIN,
        cid.ABIL_SELECT_TRANSFORM_CAPTAIN, cid.ABIL_EXECUTE_TRANSFORM_CAPTAIN,
        cid.UPGRADE_HAS_CAPTAIN,
        "T", 1, 2,
        "CaptainWhat", "ReplaceableTextures\\CommandButtons\\BTNTheCaptain.blp",
        80,  # vanilla: 130
        upgrade_name="Captain Promotion"
    ),
    AbilInfo(
        "Footman", GameID.FOOTMAN,
        cid.ABIL_SELECT_TRANSFORM_FOOTMAN, cid.ABIL_EXECUTE_TRANSFORM_FOOTMAN,
        cid.UPGRADE_HAS_FOOTMAN,
        "F", 0, 0,
        "FootmanReady", "ReplaceableTextures\\CommandButtons\\BTNFootman.blp",
        80,  # vanilla: 135
    ),
    AbilInfo(
        "Rifleman", GameID.RIFLEMAN,
        cid.ABIL_SELECT_TRANSFORM_RIFLEMAN, cid.ABIL_EXECUTE_TRANSFORM_RIFLEMAN,
        cid.UPGRADE_HAS_RIFLEMAN,
        "R", 1, 0,
        "RiflemanReady", "ReplaceableTextures\\CommandButtons\\BTNRifleman.blp",
        125,  # vanilla: 205
    ),
    AbilInfo(
        "Archer", GameID.BLOOD_ELF_ARCHER,
        cid.ABIL_SELECT_TRANSFORM_BLOOD_ELF_ARCHER, cid.ABIL_EXECUTE_TRANSFORM_BLOOD_ELF_ARCHER,
        cid.UPGRADE_HAS_BLOOD_ELF_ARCHER,
        "H", 2, 0,
        "ArcherReady", "ReplaceableTextures\\CommandButtons\\BTNHighElvenArcher.blp",
        80,  # vanilla: 130
        joke=" (Magic makes for fast transition)."
    ),
    AbilInfo(
        "Knight", GameID.KNIGHT,
        cid.ABIL_SELECT_TRANSFORM_KNIGHT, cid.ABIL_EXECUTE_TRANSFORM_KNIGHT,
        cid.UPGRADE_HAS_KNIGHT,
        "G", 3, 0,
        "KnightReady", "ReplaceableTextures\\CommandButtons\\BTNKnight.blp",
        225,  # vanilla: 245
    ),
    AbilInfo(
        "Priest", GameID.PRIEST,
        cid.ABIL_SELECT_TRANSFORM_PRIEST, cid.ABIL_EXECUTE_TRANSFORM_PRIEST,
        cid.UPGRADE_HAS_PRIEST,
        "E", 0, 1,
        "PriestReady", "ReplaceableTextures\\CommandButtons\\BTNPriest.blp",
        80,  # vanilla: 135
    ),
    AbilInfo(
        "Sorceress", GameID.SORCERESS,
        cid.ABIL_SELECT_TRANSFORM_SORCERESS, cid.ABIL_EXECUTE_TRANSFORM_SORCERESS,
        cid.UPGRADE_HAS_SORCERESS,
        "X", 1, 1,
        "SorceressReady", "ReplaceableTextures\\CommandButtons\\BTNSorceress.blp",
        90,  # vanilla: 155
        joke=" (Magic makes for fast transition)."
    ),
    AbilInfo(
        "Spell Breaker", GameID.SPELL_BREAKER,
        cid.ABIL_SELECT_TRANSFORM_SPELL_BREAKER, cid.ABIL_EXECUTE_TRANSFORM_SPELL_BREAKER,
        cid.UPGRADE_HAS_SPELL_BREAKER,
        "B", 2, 1,
        "SpellBreakerReady", "ReplaceableTextures\\CommandButtons\\BTNSpellBreaker.blp",
        150,  # vanilla: 215
    ),
    AbilInfo(
        "Mortar Team", GameID.MORTAR_TEAM,
        cid.ABIL_SELECT_TRANSFORM_MORTAR_TEAM, cid.ABIL_EXECUTE_TRANSFORM_MORTAR_TEAM,
        cid.UPGRADE_HAS_MORTAR_TEAM,
        "M", 0, 2,
        "MortarTeamReady", "ReplaceableTextures\\CommandButtons\\BTNMortarTeam.blp",
        150,  # vanilla: 180
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
                f"|cfffed312¤ {info.cost} Gold|r\n"
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
        (editor_ids.FIELD_ABIL_TOOLTIP_NORMAL, 1): "Promote this unit to a regular Human unit.",
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
        cid.UNIT_IRREGULAR, GameID.MILITIA.value, {
        editor_ids.FIELD_UNIT_GENERAL_NAME: "Irregular",
        editor_ids.FIELD_UNIT_ATTACK_1_DAMAGE_BASE: 9,
        editor_ids.FIELD_UNIT_ABILITIES_NORMAL: SPELLBOOK_ABIL_ID,
        editor_ids.FIELD_UNIT_ABILITIES_DEFAULT: '',
        editor_ids.FIELD_UNIT_GENERAL_STRUCTURES_BUILT: '',
    })

    blizz_entities = mod_entity.Entities(data.blizzard_objects.entities, False)
    blizz_entities.set_entity(
        'null', 'hfoo', {
            editor_ids.FIELD_UNIT_ABILITIES_NORMAL: f'Adef,Aihn,{cid.ABIL_SELECT_TRANSFORM_CAPTAIN}',
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
    print(f'Irregulars: updating {map_dir}')

    update_abilities_human(f'{map_dir}/o_abilities.w3a.toml')
    update_units(f'{map_dir}/o_units.w3u.toml')
    update_upgrades(f'{map_dir}/o_upgrades.w3q.toml')


HELP = f"""
Script to update unpacked maps to add irregulars. Usage:
{os.path.basename(__file__)}.py <map_dir>
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
