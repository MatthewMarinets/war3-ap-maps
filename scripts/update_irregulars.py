"""
Update abilities and upgrades to support irregular morph abilities.
"""
from dataclasses import dataclass
import sys
import os
from mapfile import w3o
from . import editor_ids, mod_entity, custom_editor_ids as cid
from apworld.data.game_ids import GameID
from apworld.data.missions import Wc3Race


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


# Note(mm): Updating costs here also requires updating costs in irregulars.j currently.
HUMAN_ABIL_INFO = [
    AbilInfo(
        "Captain", GameID.CAPTAIN,
        cid.ABIL_SELECT_TRANSFORM_CAPTAIN, cid.ABIL_EXECUTE_TRANSFORM_CAPTAIN,
        cid.UPGRADE_HAS_CAPTAIN,
        "T", 1, 2,
        "CaptainWhat", "ReplaceableTextures\\CommandButtons\\BTNTheCaptain.blp",
        120,  # vanilla: 130
        upgrade_name="Captain Promotion"
    ),
    AbilInfo(
        "Footman", GameID.FOOTMAN,
        cid.ABIL_SELECT_TRANSFORM_FOOTMAN, cid.ABIL_EXECUTE_TRANSFORM_FOOTMAN,
        cid.UPGRADE_HAS_FOOTMAN,
        "F", 0, 0,
        "FootmanReady", "ReplaceableTextures\\CommandButtons\\BTNFootman.blp",
        120,  # vanilla: 135
    ),
    AbilInfo(
        "Rifleman", GameID.RIFLEMAN,
        cid.ABIL_SELECT_TRANSFORM_RIFLEMAN, cid.ABIL_EXECUTE_TRANSFORM_RIFLEMAN,
        cid.UPGRADE_HAS_RIFLEMAN,
        "R", 1, 0,
        "RiflemanReady", "ReplaceableTextures\\CommandButtons\\BTNRifleman.blp",
        180,  # vanilla: 205
    ),
    AbilInfo(
        "Archer", GameID.BLOOD_ELF_ARCHER,
        cid.ABIL_SELECT_TRANSFORM_BLOOD_ELF_ARCHER, cid.ABIL_EXECUTE_TRANSFORM_BLOOD_ELF_ARCHER,
        cid.UPGRADE_HAS_BLOOD_ELF_ARCHER,
        "H", 2, 0,
        "ArcherReady", "ReplaceableTextures\\CommandButtons\\BTNHighElvenArcher.blp",
        120,  # vanilla: 130
        joke=" (Magic makes for fast transition)."
    ),
    AbilInfo(
        "Knight", GameID.KNIGHT,
        cid.ABIL_SELECT_TRANSFORM_KNIGHT, cid.ABIL_EXECUTE_TRANSFORM_KNIGHT,
        cid.UPGRADE_HAS_KNIGHT,
        "G", 3, 0,
        "KnightReady", "ReplaceableTextures\\CommandButtons\\BTNKnight.blp",
        240,  # vanilla: 245
    ),
    AbilInfo(
        "Priest", GameID.PRIEST,
        cid.ABIL_SELECT_TRANSFORM_PRIEST, cid.ABIL_EXECUTE_TRANSFORM_PRIEST,
        cid.UPGRADE_HAS_PRIEST,
        "E", 0, 1,
        "PriestReady", "ReplaceableTextures\\CommandButtons\\BTNPriest.blp",
        125,  # vanilla: 135
    ),
    AbilInfo(
        "Sorceress", GameID.SORCERESS,
        cid.ABIL_SELECT_TRANSFORM_SORCERESS, cid.ABIL_EXECUTE_TRANSFORM_SORCERESS,
        cid.UPGRADE_HAS_SORCERESS,
        "X", 1, 1,
        "SorceressReady", "ReplaceableTextures\\CommandButtons\\BTNSorceress.blp",
        140,  # vanilla: 155
        joke=" (Magic makes for fast transition)."
    ),
    AbilInfo(
        "Spell Breaker", GameID.SPELL_BREAKER,
        cid.ABIL_SELECT_TRANSFORM_SPELL_BREAKER, cid.ABIL_EXECUTE_TRANSFORM_SPELL_BREAKER,
        cid.UPGRADE_HAS_SPELL_BREAKER,
        "B", 2, 1,
        "SpellBreakerReady", "ReplaceableTextures\\CommandButtons\\BTNSpellBreaker.blp",
        200,  # vanilla: 215
    ),
    AbilInfo(
        "Mortar Team", GameID.MORTAR_TEAM,
        cid.ABIL_SELECT_TRANSFORM_MORTAR_TEAM, cid.ABIL_EXECUTE_TRANSFORM_MORTAR_TEAM,
        cid.UPGRADE_HAS_MORTAR_TEAM,
        "M", 0, 2,
        "MortarTeamReady", "ReplaceableTextures\\CommandButtons\\BTNMortarTeam.blp",
        160,  # vanilla: 180
    ),
]
UNDEAD_ABIL_INFO = [
    AbilInfo(
        "Ghoul", GameID.GHOUL,
        cid.ABIL_SELECT_TRANSFORM_GHOUL, cid.ABIL_EXECUTE_TRANSFORM_GHOUL,
        cid.UPGRADE_HAS_GHOUL,
        "G", 0, 0,
        "GhoulReady", "ReplaceableTextures\\CommandButtons\\BTNGhoul.blp",
        110, # vanilla: 120
    ),
    AbilInfo(
        "Crypt Fiend", GameID.CRYPT_FIEND,
        cid.ABIL_SELECT_TRANSFORM_CRYPT_FIEND, cid.ABIL_EXECUTE_TRANSFORM_CRYPT_FIEND,
        cid.UPGRADE_HAS_CRYPT_FIEND,
        "F", 0, 1,
        "CryptFiendReady", "ReplaceableTextures\\CommandButtons\\BTNCryptFiend.blp",
        190, # vanilla: 215
    ),
    AbilInfo(
        "Skeleton Archer", GameID.SKELETON_ARCHER,
        cid.ABIL_SELECT_TRANSFORM_SKELETON_ARCHER, cid.ABIL_EXECUTE_TRANSFORM_SKELETON_ARCHER,
        cid.UPGRADE_HAS_SKELETON_ARCHER,
        "R", 0, 2,
        "SkeletonReady", "ReplaceableTextures\\CommandButtons\\BTNSkeletonArcher.blp",
        95, # vanilla: 105
    ),
    AbilInfo(
        "Necromancer", GameID.NECROMANCER,
        cid.ABIL_SELECT_TRANSFORM_NECROMANCER, cid.ABIL_EXECUTE_TRANSFORM_NECROMANCER,
        cid.UPGRADE_HAS_NECROMANCER,
        "N", 0, 3,
        "NecromancerReady", "ReplaceableTextures\\CommandButtons\\BTNNecromancer.blp",
        130, # vanilla: 145
    ),
    AbilInfo(
        "Banshee", GameID.BANSHEE,
        cid.ABIL_SELECT_TRANSFORM_BANSHEE, cid.ABIL_EXECUTE_TRANSFORM_BANSHEE,
        cid.UPGRADE_HAS_BANSHEE,
        "B", 1, 0,
        "BansheeReady", "ReplaceableTextures\\CommandButtons\\BTNBanshee.blp",
        140, # vanilla: 155
    ),
    AbilInfo(
        "Meat Wagon", GameID.MEAT_WAGON,
        cid.ABIL_SELECT_TRANSFORM_MEAT_WAGON, cid.ABIL_EXECUTE_TRANSFORM_MEAT_WAGON,
        cid.UPGRADE_HAS_MEAT_WAGON,
        "W", 1, 1,
        "MeatWagonReady", "ReplaceableTextures\\CommandButtons\\BTNMeatWagon.blp",
        210, # vanilla: 230
    ),
    AbilInfo(
        "Abomination", GameID.ABOMINATION,
        cid.ABIL_SELECT_TRANSFORM_ABOMINATION, cid.ABIL_EXECUTE_TRANSFORM_ABOMINATION,
        cid.UPGRADE_HAS_ABOMINATION,
        "A", 1, 2,
        "AbominationReady", "ReplaceableTextures\\CommandButtons\\BTNAbomination.blp",
        220, # vanilla: 240
    ),
    AbilInfo(
        "Obsidian Statue", GameID.OBSIDIAN_STATUE,
        cid.ABIL_SELECT_TRANSFORM_OBSIDIAN_STATUE, cid.ABIL_EXECUTE_TRANSFORM_OBSIDIAN_STATUE,
        cid.UPGRADE_HAS_OBSIDIAN_STATUE,
        "D", 1, 3,
        "ObsidianStatueReady", "ReplaceableTextures\\CommandButtons\\BTNObsidianStatue.blp",
        180, # vanilla: 200
    ),
    AbilInfo(
        "Shade", GameID.SHADE,
        cid.ABIL_SELECT_TRANSFORM_SHADE, cid.ABIL_EXECUTE_TRANSFORM_SHADE,
        cid.UPGRADE_HAS_SHADE,
        "H", 2, 0,
        "ShadeReady", "ReplaceableTextures\\CommandButtons\\BTNShade.blp",
        25, # vanilla: 0 + 75
    ),
]
ORC_ABIL_INFO = []
NIGHT_ELF_ABIL_INFO = []


def update_abilities(abils_file: str, race: Wc3Race) -> None:
    if not os.path.isfile(abils_file):
        data = w3o.War3ObjectData(2, has_levels=True)
    else:
        data = w3o.from_text_file(abils_file)

    entities = mod_entity.Entities(data.map_objects.entities)
    abil_info: list[AbilInfo] = []
    if Wc3Race.HUMAN & race:
        abil_info.extend(HUMAN_ABIL_INFO)
    if Wc3Race.UNDEAD & race:
        abil_info.extend(UNDEAD_ABIL_INFO)
    if Wc3Race.ORC & race:
        abil_info.extend(ORC_ABIL_INFO)
    if Wc3Race.NIGHT_ELF & race:
        abil_info.extend(NIGHT_ELF_ABIL_INFO)

    # Select abilities
    for index, info in enumerate(abil_info):
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
    for info in abil_info:
        entities.set_entity(
            info.transform_id, editor_ids.ABIL_CROW_FORM_MEDIVH, {
            (editor_ids.FIELD_ABIL_DATA_CROW_FORM_ALTERNATE_FORM_UNIT, 1): info.unit_game_id.value,
            (editor_ids.FIELD_ABIL_DATA_CROW_FORM_MORPHING_FLAGS, 1): 9,
            (editor_ids.FIELD_ABIL_STATS_CASTING_TIME, 1): 0.0,
            (editor_ids.FIELD_ABIL_STATS_DURATION_NORMAL, 1): 0.0,
            editor_ids.FIELD_ABIL_EFFECT_SOUND: info.sound,
            editor_ids.FIELD_ABIL_EDITOR_SUFFIX: f"({info.unit_name})",
        })

    # Spellbook ability
    if Wc3Race.HUMAN & race:
        entities.set_entity(
            cid.ABIL_IRREGULAR_SPELLBOOK_HUMAN, editor_ids.ABIL_SPELL_BOOK, {
            editor_ids.FIELD_ABIL_NAME: "Promotion",
            editor_ids.FIELD_ABIL_EDITOR_SUFFIX: "(Human)",
            editor_ids.FIELD_ABIL_HOTKEY: "T",
            editor_ids.FIELD_ABIL_ICON_NORMAL: editor_ids.PATH_ICON_FLAG_HUMAN,
            editor_ids.FIELD_ABIL_BUTTON_POSITION_NORMAL_Y: 2,
            editor_ids.FIELD_ABIL_STATS_IS_ITEM_ABILITY: 0,
            (editor_ids.FIELD_ABIL_TOOLTIP_NORMAL, 1): "Promotion [|cffffcc00T|r]",
            (editor_ids.FIELD_ABIL_TOOLTIP_NORMAL_EXTENDED, 1): "Promote this unit to a regular Human unit.",
            (editor_ids.FIELD_ABIL_DATA_SPELL_BOOK_MIN_SPELLS, 1): len(HUMAN_ABIL_INFO),
            (editor_ids.FIELD_ABIL_DATA_SPELL_BOOK_MAX_SPELLS, 1): len(HUMAN_ABIL_INFO),
            (editor_ids.FIELD_ABIL_DATA_SPELL_BOOK_SPELL_LIST, 1):
                ",".join(info.select_id for info in HUMAN_ABIL_INFO),
        })
    if Wc3Race.UNDEAD & race:
        entities.set_entity(
            cid.ABIL_IRREGULAR_SPELLBOOK_UNDEAD, editor_ids.ABIL_SPELL_BOOK, {
            editor_ids.FIELD_ABIL_NAME: "Promotion",
            editor_ids.FIELD_ABIL_EDITOR_SUFFIX: "(Undead)",
            editor_ids.FIELD_ABIL_HOTKEY: "T",
            editor_ids.FIELD_ABIL_ICON_NORMAL: editor_ids.PATH_ICON_FLAG_UNDEAD,
            editor_ids.FIELD_ABIL_BUTTON_POSITION_NORMAL_Y: 2,
            editor_ids.FIELD_ABIL_STATS_IS_ITEM_ABILITY: 0,
            (editor_ids.FIELD_ABIL_TOOLTIP_NORMAL, 1): "Promotion [|cffffcc00T|r]",
            (editor_ids.FIELD_ABIL_TOOLTIP_NORMAL_EXTENDED, 1): "Promote this unit to a regular Undead unit.",
            (editor_ids.FIELD_ABIL_DATA_SPELL_BOOK_MIN_SPELLS, 1): len(UNDEAD_ABIL_INFO),
            (editor_ids.FIELD_ABIL_DATA_SPELL_BOOK_MAX_SPELLS, 1): len(UNDEAD_ABIL_INFO),
            (editor_ids.FIELD_ABIL_DATA_SPELL_BOOK_SPELL_LIST, 1):
                ",".join(info.select_id for info in UNDEAD_ABIL_INFO),
        })


    text = w3o.as_text(data)
    with open(abils_file, 'w') as fp:
        fp.write(text)


def update_units(units_file: str, race: Wc3Race) -> None:
    if not os.path.isfile(units_file):
        data = w3o.War3ObjectData(2, has_levels=False)
    else:
        data = w3o.from_text_file(units_file)

    entities = mod_entity.Entities(data.map_objects.entities)
    blizz_entities = mod_entity.Entities(data.blizzard_objects.entities, False)
    if Wc3Race.HUMAN & race:
        entities.set_entity(
            cid.UNIT_IRREGULAR, GameID.MILITIA.value, {
            editor_ids.FIELD_UNIT_GENERAL_NAME: 'Irregular',
            editor_ids.FIELD_UNIT_ATTACK_1_DAMAGE_BASE: 9,
            editor_ids.FIELD_UNIT_ABILITIES_NORMAL: cid.ABIL_IRREGULAR_SPELLBOOK_HUMAN,
            editor_ids.FIELD_UNIT_ABILITIES_DEFAULT: '',
            editor_ids.FIELD_UNIT_GENERAL_STRUCTURES_BUILT: '',
            editor_ids.FIELD_UNIT_STATS_MANA_MAXIMUM: 1,
        })
        blizz_entities.set_entity(
            'null', 'hfoo', {
                editor_ids.FIELD_UNIT_ABILITIES_NORMAL: f'Adef,Aihn,{cid.ABIL_SELECT_TRANSFORM_CAPTAIN}',
            }
        )
    if Wc3Race.UNDEAD & race:
        entities.set_entity(
            cid.UNIT_FRESH_MEAT, GameID.ZOMBIE.value, {
            editor_ids.FIELD_UNIT_GENERAL_NAME: 'Fresh Meat',
            editor_ids.FIELD_UNIT_ATTACK_1_DAMAGE_BASE: 9,
            editor_ids.FIELD_UNIT_UI_ICON: editor_ids.PATH_ICON_UNIT_VILLAGER_MAN_GREY_SHIRT,
            editor_ids.FIELD_UNIT_UI_MODEL_FILE: editor_ids.PATH_MODEL_UNIT_VILLAGER_MAN_GREY_SHIRT,
            editor_ids.FIELD_UNIT_ABILITIES_NORMAL: cid.ABIL_IRREGULAR_SPELLBOOK_UNDEAD,
            editor_ids.FIELD_UNIT_STATS_MANA_MAXIMUM: 1,
            editor_ids.FIELD_UNIT_SOUND_SET: 'Acolyte',
            # Zombie has baseline tint
            editor_ids.FIELD_UNIT_UI_TINT_GREEN: 255,
            editor_ids.FIELD_UNIT_UI_TINT_BLUE: 255,
        })

    text = w3o.as_text(data)
    with open(units_file, 'w') as fp:
        fp.write(text)


def update_upgrades(upgrades_file: str, race: Wc3Race) -> None:
    if not os.path.isfile(upgrades_file):
        data = w3o.War3ObjectData(2, has_levels=True)
    else:
        data = w3o.from_text_file(upgrades_file)

    entities = mod_entity.Entities(data.map_objects.entities)
    abil_info: list[AbilInfo] = []
    if Wc3Race.HUMAN & race:
        abil_info.extend(HUMAN_ABIL_INFO)
    if Wc3Race.UNDEAD & race:
        abil_info.extend(UNDEAD_ABIL_INFO)
    if Wc3Race.ORC & race:
        abil_info.extend(ORC_ABIL_INFO)
    if Wc3Race.NIGHT_ELF & race:
        abil_info.extend(NIGHT_ELF_ABIL_INFO)
    for info in abil_info:
        entities.set_entity(
            info.upgrade_id, GameID.FOOTMAN_DEFEND.value, {
            (editor_ids.FIELD_UPGRADE_NAME, 1): f"Find {info.upgrade_name}",
        })

    text = w3o.as_text(data)
    with open(upgrades_file, 'w') as fp:
        fp.write(text)


def main(map_dir: str, race: Wc3Race) -> int:
    files = os.listdir(map_dir)
    if '(listfile)' not in files:
        print(f'Error: Missing (listfile) in {map_dir}')
        return 1
    print(f'Irregulars: updating {map_dir} for race {race}')

    update_abilities(f'{map_dir}/o_abilities.w3a.toml', race)
    update_units(f'{map_dir}/o_units.w3u.toml', race)
    update_upgrades(f'{map_dir}/o_upgrades.w3q.toml', race)


HELP = f"""
Script to update unpacked maps to add irregulars. Usage:
{os.path.basename(__file__)} <map_dir>
"""
if __name__ == '__main__':
    if len(sys.argv) < 2:
        print('Error: No argument given')
        print(HELP)
        sys.exit(1)
    if '-h' in sys.argv:
        print(HELP)
        sys.exit(0)
    sys.exit(main(sys.argv[1], Wc3Race.HUMAN))
