"""
Update unpacked RoC map files to TFT.
"""

import os
import sys
from dataclasses import dataclass, field

sys.path.append(os.path.dirname(os.path.dirname(__file__)))

from mapfile import doo, w3i, wtg, wct, w3o, imp, common
from apworld.data import missions, tables, heroes
from scripts import update_irregulars, update_hero_food

sys.path.pop()

QUESTION_MARK_MODEL_PATH = 'mods/general/war3mapImported/questionmark_item.mdx'


@dataclass
class VarData:
    hero_vars: list[str]
    npc_vars: list[str] = field(default_factory=list)


MAP_VARS = {
    missions.Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD: VarData(hero_vars=['udg_Arthas']),
    missions.Wc3Mission.H2_BLACKROCK_AND_ROLL: VarData(hero_vars=['udg_Arthas']),
    missions.Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE: VarData(hero_vars=['udg_Arthas', 'udg_Jaina']),
    missions.Wc3Mission.H4_THE_CULT_OF_THE_DAMNED: VarData(hero_vars=['udg_Arthas', 'udg_Jaina']),
    missions.Wc3Mission.H5_MARCH_OF_THE_SCOURGE: VarData(hero_vars=['udg_Arthas'], npc_vars=['udg_Jaina']),
    missions.Wc3Mission.H6_THE_CULLING: VarData(hero_vars=['udg_ArthasVariable'], npc_vars=['udg_JainaVariable']),
    missions.Wc3Mission.H7_THE_SHORES_OF_NORTHREND: VarData(hero_vars=['udg_Arthas', 'udg_Muradin']),
    missions.Wc3Mission.H8_DISSENSION: VarData(hero_vars=['udg_Arthas', 'udg_Muradin']),
    missions.Wc3Mission.H9_FROSTMOURNE: VarData(hero_vars=['udg_Arthas', 'udg_Muradin']),
    missions.Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES: VarData(hero_vars=['udg_Arthas']),
    missions.Wc3Mission.U2_DIGGING_UP_THE_DEAD: VarData(hero_vars=['udg_Arthas']),
    missions.Wc3Mission.U3_INTO_THE_REALM_ETERNAL: VarData(hero_vars=['udg_Arthas']),
    missions.Wc3Mission.U4_KEY_OF_THE_THREE_MOONS: VarData(hero_vars=['udg_Arthas']),
    missions.Wc3Mission.U5_THE_FALL_OF_SILVERMOON: VarData(hero_vars=['udg_Arthas']),
    missions.Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO: VarData(hero_vars=['udg_EvilArthas', 'udg_KelThuzad']),
    missions.Wc3Mission.U7_THE_SIEGE_OF_DALARAN: VarData(hero_vars=['udg_Arthas', 'udg_KelThuzad']),
    missions.Wc3Mission.U8_UNDER_THE_BURNING_SKY: VarData(hero_vars=['udg_Arthas'], npc_vars=['udg_KelThuzad']),
    missions.Wc3Mission.O1_LANDFALL: VarData(hero_vars=['udg_Thrall'], npc_vars=['udg_CairneBloodhoof']),
    missions.Wc3Mission.O2_THE_LONG_MARCH: VarData(hero_vars=['udg_Thrall', 'udg_Cairne']),
    missions.Wc3Mission.O3_CRY_OF_THE_WARSONG: VarData(hero_vars=['udg_Thrall']),
    missions.Wc3Mission.O4_THE_SPIRITS_OF_ASHENVALE: VarData(hero_vars=['udg_Grom']),
    missions.Wc3Mission.O5_THE_HUNTER_OF_SHADOWS: VarData(hero_vars=['udg_Grom']),
    missions.Wc3Mission.O6_WHERE_WYVERNS_DARE: VarData(hero_vars=['udg_Thrall', 'udg_Cairne']),
    missions.Wc3Mission.O7_THE_ORACLE: VarData(hero_vars=['udg_Thrall', 'udg_Cairne']),
    missions.Wc3Mission.O8_BY_DEMONS_BE_DRIVEN: VarData(hero_vars=['udg_Thrall', 'udg_Cairne']),
    missions.Wc3Mission.N1_ENEMIES_AT_THE_GATE: VarData(hero_vars=['udg_Tyrande']),
    missions.Wc3Mission.N2_DAUGHTERS_OF_THE_MOON: VarData(hero_vars=['udg_Tyrande']),
    missions.Wc3Mission.N3_THE_AWAKENING_OF_STORMRAGE: VarData(hero_vars=['udg_Tyrande', 'udg_Furion']),
    missions.Wc3Mission.N4_THE_DRUIDS_ARISE: VarData(hero_vars=['udg_Tyrande', 'udg_Furion']),
    missions.Wc3Mission.N5_BROTHERS_IN_BLOOD: VarData(hero_vars=['udg_Tyrande', 'udg_Furion'], npc_vars=['udg_Illidan']),
    missions.Wc3Mission.N6_A_DESTINY_OF_FLAME_AND_SORROW: VarData(hero_vars=['udg_Illidan'], npc_vars=['udg_Arthas', 'udg_Tyrande', 'udg_Furion']),
    missions.Wc3Mission.N7_TWILIGHT_OF_THE_GODS: VarData(hero_vars=['udg_Tyrande', 'udg_Furion'], npc_vars=['udg_Thrall', 'udg_Jaina']),
}


def update_war3_info(w3i_file: str) -> None:
    war3_info = w3i.from_text_file(w3i_file)
    war3_info.version = w3i.W3iVersions.TFT
    war3_info.flags |= w3i.MapFlags.REQUIRES_EXPANSION
    war3_info.tft_weather = 'null'

    existing_tech_entries = [tech.tech_id for tech in war3_info.technologies]
    update_techs = (
        'Hblm',  # Blood Mage
        'Oshd',  # Shadow Hunter
        'Ucrl',  # Crypt Lord
        'Ewar',  # Warden
    )
    for update_tech in update_techs:
        if update_tech not in existing_tech_entries:
            war3_info.technologies.append(w3i.TechnologyInfo(0xf, update_tech))

    new_text = w3i.as_text(war3_info)
    with open(w3i_file, 'w') as fp:
        fp.write(new_text)


def update_doo(doo_file: str) -> None:
    doo_data = doo.from_text_file(doo_file)
    doo_data.version = doo.War3PlacementVersion.TFT
    doo_data.sub_version = 11
    
    new_text = doo.as_text(doo_data)
    with open(doo_file, 'w') as fp:
        fp.write(new_text)


def add_ap_items(w3t_file: str) -> None:
    if os.path.isfile(w3t_file):
        items_data = w3o.from_text_file(w3t_file)
    else:
        items_data = w3o.War3ObjectData(version=2, has_levels=False)
    modified_entity_ids = [item_data.entity_id for item_data in items_data.map_objects.entities]
    for location_number in range(0x20):
        item_id = f'I0{hex(location_number + 0x10)[2:]}'
        if item_id in modified_entity_ids:
            continue
        items_data.map_objects.entities.append(
            w3o.Entity('lmbr', item_id, [
                w3o.Modification('unam', w3o.DataType.String, value=f'Archipelago Item {location_number}'),
                w3o.Modification('utip', w3o.DataType.String, value=f'Purchase a check for map location {location_number}.'),
                w3o.Modification('utub', w3o.DataType.String, value='Get a randomized item when used'),
                w3o.Modification('ides', w3o.DataType.String, value=rf'Collects map location {location_number} for the player.'),
                w3o.Modification('iico', w3o.DataType.String, value=r'ReplaceableTextures\CommandButtons\BTNSelectHeroOn.blp'),
                w3o.Modification('ifil', w3o.DataType.String, value=r'war3mapImported\questionmark_item.mdl'),
                w3o.Modification('iabi', w3o.DataType.String, value=''),
            ])
        )

    new_text = w3o.as_text(items_data)
    with open(w3t_file, 'w') as fp:
        fp.write(new_text)


def add_ap_models(imported_dir: str) -> None:
    target_file = f'{imported_dir}/questionmark_item.mdx.proxy'
    if os.path.isfile(target_file):
        return
    os.makedirs(imported_dir, exist_ok=True)
    with open(target_file, 'w') as fp:
        fp.write('mods/general/war3mapImported/questionmark_item.mdx')


def update_imp_file(imp_file: str) -> None:
    if os.path.isfile(imp_file):
        with open(imp_file, 'r') as fp:
            imp_text = fp.read()
        imp_data = imp.from_text(imp_text)
    else:
        imp_data = imp.Imports()
    imported_paths = [os.path.basename(import_path.path) for import_path in imp_data.imports]
    imp_data.version = 1
    model_basename = os.path.basename(QUESTION_MARK_MODEL_PATH)
    if model_basename not in imported_paths:
        imp_data.imports.append(imp.ImportedPath(8, f'war3mapImported/{model_basename}'))
    with open(imp_file, 'w') as fp:
        fp.write(imp.as_text(imp_data))


def update_listfile(listfile_path: str) -> None:
    with open(listfile_path, 'r') as fp:
        lines = fp.readlines()
    for path in (
        'war3map.w3t\n',
        'war3map.w3a\n',
        'war3map.w3q\n',
        'war3map.w3u\n',
        'war3map.imp\n',
        'war3mapImported\\questionmark_item.mdx\n',
    ):
        if path not in lines:
            lines.append(path)
    with open(listfile_path, 'w', newline='\r\n') as fp:
        fp.writelines(lines)


def _make_trigger_if_necessary(
    trigger_name: str,
    archipelago_category_index: int,
    wtg_data: wtg.W3TriggerData,
    wct_data: wct.War3TextTriggers,
) -> None:
    existing_names = [x.name for x in wtg_data.triggers]
    if trigger_name in existing_names:
        return
    assert len(wct_data.triggers) == len(wtg_data.triggers)
    result = 0
    wct_data.triggers[0:0] = [wct.War3TextTrigger(True)]
    wtg_data.triggers[0:0] = [wtg.Trigger(
        name=trigger_name,
        is_custom_text=True,
        is_initially_off=False,
        category_id=archipelago_category_index,
    )]

    return result


def filestem(filename: str) -> str:
    return os.path.basename(os.path.splitext(filename)[0])


JASS_FILES = (
    # As these are prepended, the order is reversed in the editor
    'common/irregulars.j',
    'common/zoom.j',
    'common/debug.j',
    'common/item_locations.j',
    'common/heroes.j',
    'common/status.j',
    'common/map_config.j',
    'common/fileio.j',
)
def update_triggers(map_dir: str) -> None:
    wtg_file = f'{map_dir}/triggers_gui.wtg.md'
    wct_file = f'{map_dir}/triggers_text.wct.j'
    w3i_file = f'{map_dir}/info.w3i.toml'
    assert os.path.isfile(wtg_file)
    assert os.path.isfile(wct_file)
    assert os.path.isfile(w3i_file)
    wtg_data = wtg.from_text_file(wtg_file)
    wct_data = wct.from_text_file(wct_file)
    w3i_data = w3i.from_text_file(w3i_file)

    # Update data versions
    wct_data.version = 1
    wtg_data.version = wtg.Version.TFT

    # Create or get trigger category
    archipelago_category_results = [
        category for category in wtg_data.categories if category.name == 'Archipelago'
    ]
    if not archipelago_category_results:
        max_id = max(category.category_id for category in wtg_data.categories)
        archipelago_category = wtg.TriggerCategory(max_id + 1, 'Archipelago')
        wtg_data.categories[0:0] = [archipelago_category]
    else:
        archipelago_category = archipelago_category_results[0]
    del archipelago_category_results

    # Create or get AP triggers
    ap_category_id = archipelago_category.category_id
    for jass_file in JASS_FILES:
        _make_trigger_if_necessary(filestem(jass_file), ap_category_id, wtg_data, wct_data)
    trigger_indices = {trigger.name: index for index, trigger in enumerate(wtg_data.triggers)}

    for jass_file in JASS_FILES:
        target_index = trigger_indices[filestem(jass_file)]
        with open(jass_file, 'r') as fp:
            text = fp.read()
        wct_data.triggers[target_index].text = text

    # Get map info
    dir_basename = os.path.basename(os.path.dirname(wtg_file))
    if dir_basename.startswith('Prologue'):
        campaign = missions.Wc3Campaign.PROLOGUE
    elif dir_basename.startswith('HumanX'):
        campaign = missions.Wc3Campaign.HUMAN_2
    elif dir_basename.startswith('Human'):
        campaign = missions.Wc3Campaign.HUMAN_1
    elif dir_basename.startswith('UndeadX'):
        campaign = missions.Wc3Campaign.UNDEAD_2
    elif dir_basename.startswith('Undead'):
        campaign = missions.Wc3Campaign.UNDEAD_1
    elif dir_basename.startswith('OrcX'):
        campaign = missions.Wc3Campaign.GENERAL
    elif dir_basename.startswith('Orc'):
        campaign = missions.Wc3Campaign.ORC_1
    elif dir_basename.startswith('NightElfX'):
        campaign = missions.Wc3Campaign.NIGHT_ELF_2
    elif dir_basename.startswith('NightElf'):
        campaign = missions.Wc3Campaign.NIGHT_ELF_1
    else:
        campaign = missions.Wc3Campaign.GENERAL
    
    if dir_basename[-2:].isnumeric():
        mission_id = campaign.id * 100 + int(dir_basename[-2:])
        mission = [
            x for x in missions.Wc3Mission
            if x.value == mission_id
        ][0]
    else:
        mission = missions.Wc3Mission.GENERAL
        mission_id = mission.value
    
    # Get map info
    hero_slots = tables.MISSION_TO_HERO_SLOT[mission]
    human_players = [x for x in w3i_data.players if x.player_type == w3i.FactionController.User]
    assert len(human_players) == 1
    hero_global_slot_ids = [f'HERO_ID_{x.name}' for x in hero_slots]
    hero_global_slot_ids.extend(['HERO_ID_NONE'] * (4 - len(hero_global_slot_ids)))
    trigger_vars = MAP_VARS.get(mission)
    item_channel_1, item_channel_2 = tables.mission_to_item_channel(mission)
    item_channel_2_global_hero_id = tables.ITEM_CHANNEL_TO_DEFAULT_HERO.get(item_channel_2)
    if item_channel_2_global_hero_id is None:
        item_channel_2_hero_slot = -1
    else:
        item_channel_2_hero_slot = hero_slots.index(item_channel_2_global_hero_id)

    # Format map_config trigger
    map_config = wct_data.triggers[trigger_indices['map_config']]
    map_config.text = (
        map_config.text
        .replace('$(MISSION_ID)', str(mission_id))
        .replace('$(NUM_HEROES)', str(len(hero_slots)))
        .replace('$(USER_PLAYER)', f'Player({human_players[0].player_id})')
        .replace('$(ITEM_CHANNEL_1)', str(item_channel_1))
        .replace('$(ITEM_CHANNEL_2)', str(item_channel_2))
        .replace('$(ITEM_CHANNEL_2_HERO_SLOT)', str(item_channel_2_hero_slot))
        .replace('$(HERO_ID_0)', hero_global_slot_ids[0])
        .replace('$(HERO_ID_1)', hero_global_slot_ids[1])
        .replace('$(HERO_ID_2)', hero_global_slot_ids[2])
        .replace('$(HERO_ID_3)', hero_global_slot_ids[3])
    )
    if trigger_vars is not None:
        for hero_slot in range(4):
            if hero_slot < len(trigger_vars.hero_vars):
                map_config.text = map_config.text.replace(f'$(HERO_VAR_{hero_slot})', trigger_vars.hero_vars[hero_slot])
            else:
                map_config.text = map_config.text.replace(f'$(HERO_VAR_{hero_slot})', trigger_vars.hero_vars[0])

    new_wtg_text = wtg.as_text(wtg_data)
    new_wct_text = wct.as_text(wct_data)
    with open(wtg_file, 'w') as fp:
        fp.write(new_wtg_text)
    with open(wct_file, 'w') as fp:
        fp.write(new_wct_text)


def main(map_dir: str) -> int:
    files = os.listdir(map_dir)
    if '(listfile)' not in files:
        print(f'Error: Missing (listfile) in {map_dir}')
        return 1
    print(f'Processing {map_dir}')
    
    update_war3_info(f'{map_dir}/info.w3i.toml')
    update_doo(f'{map_dir}/doodads.doo.toml')
    update_doo(f'{map_dir}/units.doo.toml')
    add_ap_items(f'{map_dir}/o_items.w3t.toml')
    add_ap_models(f'{map_dir}/war3mapImported')
    update_listfile(f'{map_dir}/(listfile)')
    update_imp_file(f'{map_dir}/imports.imp.toml')
    update_triggers(map_dir)

    update_irregulars.main(map_dir)
    update_hero_food.main(map_dir)


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
