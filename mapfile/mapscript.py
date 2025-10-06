"""
Utility for regenerating war3map.j script files from other data
"""

from . import wtg, wct, w3i, doo, w3r, w3c, w3s, wts, w3e, w3o, tables
import tomllib
from datetime import datetime
from .common import (
    TRIGGERS_CUSTOM_TEXT_FILE_NAME,
    TRIGGERS_GUI_FILE_NAME,
    INFO_FILE_NAME,
    UNITS_FILE_NAME,
    DOODADS_FILE_NAME,
    REGIONS_FILE_NAME,
    CAMERAS_FILE_NAME,
    SOUNDS_FILE_NAME,
    UNIT_DATA_FILE_NAME,
)
import math

MAP_SCRIPT_FILE_NAME = 'war3map.j'

class Options:
    INLINE_IF_CONDITIONS = False
    FORCE_INITIALIZE = True


class GenInfo:
    def __init__(self, variables: list[wtg.TriggerVariable], indent_level: int = 0) -> None:
        self.unit_vars_used: set[str] = set()
        self.doodad_vars_used: set[str] = set()
        self.custom_text_vars_used: list[str] = []
        self.indent_level = indent_level
        self.variables = {v.name: v for v in variables}
        self.map_init_triggers: list[str] = []
        self.item_drop_tables: dict[int, str] = {}
        self.function_presence: set[str] = set()

    def indent(self) -> str:
        return ' '*(self.indent_level)


class PrependInfo:
    def __init__(self, trigger_name: str, action_index: int = 1) -> None:
        self.trigger_name = trigger_name
        self.lines: list[str] = []
        self.action_index = [action_index]

    def func_name(self) -> str:
        return f'Trig_{self.trigger_name}_Func{"".join(f"{a:03}" for a in self.action_index)}'


def round1(n: float) -> float:
    """
    Homebrew round method to avoid "banker's rounding" / statistical rounding in builtin `round()`
    """
    if n * 10 - math.floor(n*10) < 0.5:
        return math.floor(n*10) / 10
    return math.ceil(n*10) / 10


def escape_name(gui_name: str) -> str:
    return (
        gui_name.replace(' ', '_')
    )


def section_header(section_name: str) -> str:
    return '\n'.join((
        '//***************************************************************************',
        '//*',
        f'//*  {section_name}',
        '//*',
        '//***************************************************************************\n',
    ))


def escape_custom_code(line: str) -> str:
    stripped = line.strip()
    # idk why the map editor does this...
    if stripped.startswith('set'):
        line = line.replace(' = ', '=')
    elif stripped.startswith('local'):
        line = line.replace(' =', '=')
    elif stripped.startswith('function'):
        line = line.replace(', ', ',')
    # Note(mm): This seems to only apply within the parens of a custom-text trigger:
    # elif stripped.startswith('call'):
    #     line = re.sub(r'(\w),', lambda m: f'{m.group(1)} ,', line)
    # Note(mm): there are a few other ops, like always having spaces within () after 'if',
    # spaces before ',', and spaces after negative signs like '- 1'.
    # It looks so gross I'm not doing that.
    return line


def generate_user_defined_globals(gui_triggers: wtg.W3TriggerData) -> list[str]:
    result: list[str] = []
    sub_var_type = {
        'unitcode': 'integer'
    }
    initializable_types = {'integer', 'real'}
    if not Options.FORCE_INITIALIZE:
        initializable_types.add('boolean')
    for variable in gui_triggers.variables:
        var_type = sub_var_type.get(variable.variable_type, variable.variable_type)
        if variable.is_array:
            val = ''
        elif variable.initial_value and var_type in initializable_types:
            val = f'= {variable.initial_value}'
        elif not Options.FORCE_INITIALIZE and variable.initial_value and var_type == 'string':
            val = f'= "{variable.initial_value}"'
        elif variable.variable_type == 'boolean':
            val = '= false'
        elif variable.variable_type == 'integer':
            val = '= 0'
        elif variable.variable_type == 'string':
            val = ''
        else:
            val = '= null'
        result.append(
            f"{var_type}{' array' if variable.is_array else ''} "
            f"udg_{escape_name(variable.name)}{val}"
        )
    return result


def generate_automatic_globals(
    regions: w3r.War3RegionInfo,
    cameras: w3c.War3CameraInfo,
    sounds: w3s.War3SoundInfo,
    gui_triggers: wtg.W3TriggerData,
    units: doo.War3PlacementInfo,
    doodads: doo.War3PlacementInfo,
    info: GenInfo,
) -> list[str]:
    result: list[str] = []
    for region in regions.regions:
        result.append(f'rect gg_rct_{escape_name(region.region_name)}= null')
    for camera in cameras.cameras:
        result.append(f'camerasetup gg_cam_{escape_name(camera.name)}= null')
    for sound in sounds.sounds:
        result.append(f'sound {escape_name(sound.name)}= null')
    for trigger in gui_triggers.triggers:
        result.append(f'trigger gg_trg_{escape_name(trigger.name)}= null')
    for unit in units.units:
        var_name = f'gg_unit_{unit.type_id}_{unit.entity_id:04}'
        if var_name in info.unit_vars_used:
            result.append(f'unit {var_name}= null')
    for doodad in doodads.doodads:
        var_name = f'gg_dest_{doodad.type_id}_{doodad.entity_id:04}'
        if var_name in info.doodad_vars_used:
            result.append(f'destructable {var_name}= null')
    result.extend(info.custom_text_vars_used)
    return result


def generate_global_variable_init(gui_triggers: wtg.W3TriggerData) -> list[str]:
    result = ['\nfunction InitGlobals takes nothing returns nothing']
    for variable in gui_triggers.variables:
        if variable.is_array:
            result.append('    local integer i= 0')
            break
    for variable in gui_triggers.variables:
        initial_value = variable.initial_value
        if not variable.is_initialized:
            if variable.variable_type == 'group':
                initial_value = 'CreateGroup()'
            elif variable.variable_type == 'timer':
                initial_value = 'CreateTimer()'
            elif Options.FORCE_INITIALIZE:
                if variable.variable_type == 'integer':
                    initial_value = '0'
                elif variable.variable_type == 'boolean':
                    initial_value = 'false'
                elif variable.variable_type == 'string':
                    initial_value = '""'
        else:
            if variable.variable_type == 'unit' and initial_value == 'UnitNull':
                initial_value = 'null'
            elif variable.variable_type == 'rect' and initial_value == 'RectNull':
                initial_value = 'null'
            elif variable.variable_type == 'player' and not initial_value.endswith(')'):
                index = int(initial_value[len('Player'):])
                initial_value = f'Player({index})'
            elif variable.variable_type == 'force' and not initial_value.endswith(')'):
                index = int(initial_value[len('Force'):])
                initial_value = f'bj_FORCE_PLAYER[{index}]'
            elif variable.variable_type == 'string':
                initial_value = f'"{initial_value}"'
        if initial_value:
            result.append(f'    set udg_{escape_name(variable.name)}={initial_value}')
    result.append('endfunction\n')
    return result


def generate_script_header(info: w3i.War3MapInformation, string_table: dict[str, str]) -> list[str]:
    map_name = info.map_name
    if map_name.startswith('TRIGSTR'):
        map_name = string_table[map_name]
    map_author = info.map_author
    if map_author.startswith('TRIGSTR'):
        map_author = string_table[map_author]
    result = ['\n']
    result.append('//===========================================================================')
    result.append('// ')
    result.append(f'// {map_name}')
    result.append(f'// ')
    result.append(f'//   Warcraft III map script')
    result.append(f'//   Generated by mapscript.py')
    result.append(f'//   Date: {datetime.now().strftime("%a %b %d %Y")}')
    result.append(f'//   Map Author: {map_author}')
    result.append('// ')
    result.append('//===========================================================================\n')
    return result


def generate_item_tables(units: doo.War3PlacementInfo, info: GenInfo) -> list[str]:
    result: list[str] = []
    for unit_index, unit in enumerate(units.units):
        if any(unit.item_drops):
            func_name = f'Unit{unit_index:06}_DropItems'
            info.item_drop_tables[unit.entity_id] = func_name
            result.append(f'function {func_name} takes nothing returns nothing')
            result.append('    local widget trigWidget= null')
            result.append('    local unit trigUnit= null')
            result.append('    local integer itemID= 0')
            result.append('    local boolean canDrop= true')
            result.append('')
            result.append('    set trigWidget=bj_lastDyingWidget')
            result.append('    if ( trigWidget == null ) then')
            result.append('        set trigUnit=GetTriggerUnit()')
            result.append('    endif')
            result.append('')
            result.append('    if ( trigUnit != null ) then')
            result.append('        set canDrop=not IsUnitHidden(trigUnit)')
            result.append('        if ( canDrop and GetChangingUnit() != null ) then')
            result.append('            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )')
            result.append('        endif')
            result.append('    endif')
            result.append('')
            result.append('    if ( canDrop ) then')
            for index, table in enumerate(unit.item_drops):
                result.append(f'        // Item set {index}')
                result.append(f'        call RandomDistReset()')
                for item in table:
                    result.append(f"        call RandomDistAddItem('{item.item_id}', {item.chance_percent})")
                result.append(f'        set itemID=RandomDistChoose()')
                result.append(f'        if ( trigUnit != null ) then')
                result.append(f'            call UnitDropItem(trigUnit, itemID)')
                result.append(f'        else')
                result.append(f'            call WidgetDropItem(trigWidget, itemID)')
                result.append(f'        endif')
                result.append('')
            result.append('    endif')
            result.append('')
            result.append('    set bj_lastDyingWidget=null')
            result.append('    call DestroyTrigger(GetTriggeringTrigger())')
            result.append('endfunction\n')
    result.append('')
    return result


def generate_sound_setup(sounds: w3s.War3SoundInfo) -> list[str]:
    result = ['function InitSounds takes nothing returns nothing']
    for sound in sounds.sounds:
        escaped_path = sound.file.replace('\\', '\\\\')
        result.append(
            f'    set {sound.name}=CreateSound("{escaped_path}", '
            f'{"true" if w3s.SoundFlags.Looping in sound.flags else "false"}, '
            f'{"true" if w3s.SoundFlags.Three_D in sound.flags else "false"}, '
            f'{"true" if w3s.SoundFlags.Stop_Outside_Range in sound.flags else "false"}, '
            f'{sound.fade_in}, {sound.fade_out}, "{sound.effects}")'
        )
        sound_label, sound_duration = tables.SOUND_DATA[escaped_path, sound.fade_out]
        result.append(f'    call SetSoundParamsFromLabel({sound.name}, "{sound_label}")')
        result.append(f'    call SetSoundDuration({sound.name}, {sound_duration})')
        if sound.volume > 0:
            result.append(f'    call SetSoundVolume({sound.name}, {sound.volume})')
    result.append('endfunction\n')
    return result


def generate_destructable_setup(doodads: doo.War3PlacementInfo, info: GenInfo) -> list[str]:
    RADIANS_TO_DEGREES = 360.0 / 2 / math.pi
    result = ['function CreateAllDestructables takes nothing returns nothing']
    result.append('    local destructable d')
    result.append('    local trigger t')
    result.append('    local real life')
    doodad_var_to_doodad = {f'gg_dest_{doodad.type_id}_{doodad.entity_id:04}': doodad for doodad in doodads.doodads}
    for doodad_var in sorted(info.doodad_vars_used):
        doodad = doodad_var_to_doodad[doodad_var]
        if doodad.life_percent == 0:
            result.append((
                f"    set {doodad_var}=CreateDeadDestructableZ('{doodad.type_id}', "
                f"{doodad.x:.1f}, {doodad.y:.1f}, {round1(doodad.z):.1f}, {doodad.facing * RADIANS_TO_DEGREES:.3f}, "
                f"{doodad.scale_x:.3f}, {doodad.variation})"
            ).replace('-', '- '))
            continue
        result.append((
            f"    set {doodad_var}=CreateDestructable('{doodad.type_id}', "
            f"{doodad.x:.1f}, {doodad.y:.1f}, {doodad.facing * RADIANS_TO_DEGREES:.3f}, {doodad.scale_x:.3f}, {doodad.variation})"
        ).replace('-', '- '))
    result.append('endfunction\n')
    return result


def generate_preplaced_items(
    unit_info: doo.War3PlacementInfo, info: GenInfo, item_data: dict[str, dict],
) -> list[str]:
    result = [section_header('Items')]
    result.append('function CreateAllItems takes nothing returns nothing')
    result.append('    local integer itemID\n')
    placed_items: list[doo.UnitEntity] = []
    for unit in unit_info.units:
        if unit.player_owner != 27:
            continue
        if unit.type_id in item_data or unit.type_id.startswith('I'):
            placed_items.append(unit)
    for item in sorted(placed_items, key=lambda x: x.type_id):
        result.append((
            f"    call CreateItem('{item.type_id}', {item.x:.1f}, {item.y:.1f})"
        ).replace('-', '- '))
    result.append('endfunction\n')
    if not placed_items:
        return []
    info.function_presence.add('CreateAllItems')
    return result


def generate_unit_setup(
    unit_info: doo.War3PlacementInfo,
    info: GenInfo,
    custom_units: dict[str, w3o.Entity],
    item_data: dict[str, dict],
) -> list[str]:
    RADIANS_TO_DEGREES = 360.0 / 2 / math.pi
    result: list[str] = []

    sections: dict[tuple[bool, int], list[str]] = {}
    units = sorted(unit_info.units, key=lambda x: x.entity_id)
    for unit in units:
        if unit.type_id == 'sloc':
            continue
        if unit.type_id in item_data or unit.type_id[0] == 'I':
            continue
        if unit.type_id in custom_units:
            is_building = custom_units[unit.type_id].parent_id in tables.BUILDING_IDS
        else:
            is_building = unit.type_id in tables.BUILDING_IDS
        section = (is_building, unit.player_owner)
        unit_var = f'gg_unit_{unit.type_id}_{unit.entity_id:04}'
        create_func = f"CreateUnit(p, '{unit.type_id}'"
        if unit.type_id == 'ugol':
            create_func = 'CreateBlightedGoldmine(p'
        if unit_var in info.unit_vars_used:
            sections.setdefault(section, []).append((
                f"    set {unit_var}={create_func}, {unit.x:.1f}, {unit.y:.1f}, "
                f"{unit.facing * RADIANS_TO_DEGREES:.3f})"
            ).replace(' -', ' - '))
        else:
            unit_var = 'u'
            sections.setdefault(section, []).append((
                f"    set u={create_func}, {unit.x:.1f}, {unit.y:.1f}, "
                f"{unit.facing * RADIANS_TO_DEGREES:.3f})"
            ).replace(' -', ' - '))
        if unit.type_id == 'ngol' or unit.type_id == 'ugol' or unit.type_id == 'egol':
            sections[section].append(f'    call SetResourceAmount({unit_var}, {unit.goldmine_gold_amount})')
        if unit.hero_level > 1:
            sections[section].append(f'    call SetHeroLevel({unit_var}, {unit.hero_level}, false)')
        if unit.hit_points > -1:
            sections[section].append(f'    set life=GetUnitState({unit_var}, UNIT_STATE_LIFE)')
            sections[section].append(
                f'    call SetUnitState({unit_var}, UNIT_STATE_LIFE, {unit.hit_points * 0.01:.2f} * life)'
            )
        if unit.mana_points > -1:
            sections[section].append(f'    call SetUnitState({unit_var}, UNIT_STATE_MANA, {unit.mana_points})')
        if unit.target_acquisition < -1.0:
            sections[section].append((
                f'    call SetUnitAcquireRange({unit_var}, 200.0)'
            ))
        for abil in unit.modified_abilities:
            for _ in range(abil.abil_level):
                sections[section].append(f"    call SelectHeroSkill({unit_var}, '{abil.abil_id}')")
        for item in unit.inventory_items:
            sections[section].append(f"    call UnitAddItemToSlotById({unit_var}, '{item.item_id}', {item.slot})")
        if unit.entity_id in info.item_drop_tables:
            drop_func_name = info.item_drop_tables[unit.entity_id]
            sections[section].append((
                f'    set t=CreateTrigger()\n'
                f'    call TriggerRegisterUnitEvent(t, {unit_var}, EVENT_UNIT_DEATH)\n'
                f'    call TriggerRegisterUnitEvent(t, {unit_var}, EVENT_UNIT_CHANGE_OWNER)\n'
                f'    call TriggerAddAction(t, function {drop_func_name})'
            ))

    NEUTRAL_PASSIVE_PLAYER = 27
    NEUTRAL_HOSTILE_PLAYER = 24
    PLAYER_LIST = list(range(25)) + [NEUTRAL_PASSIVE_PLAYER]
    for player_id in PLAYER_LIST:
        if player_id == NEUTRAL_PASSIVE_PLAYER:
            functions = ['CreateNeutralPassiveBuildings', 'CreateNeutralPassive']
            player_literal = 'Player(PLAYER_NEUTRAL_PASSIVE)'
        elif player_id == NEUTRAL_HOSTILE_PLAYER:
            functions = ['CreateNeutralHostileBuildings', 'CreateNeutralHostile']
            player_literal = 'Player(PLAYER_NEUTRAL_AGGRESSIVE)'
        else:
            functions = [f'CreateBuildingsForPlayer{player_id}', f'CreateUnitsForPlayer{player_id}']
            player_literal = f'Player({player_id})'
        for is_building, function_name in (
            (True, functions[0]),
            (False, functions[1]),
        ):
            key = (is_building, player_id)
            if key not in sections:
                continue
            result.append('//===========================================================================')
            result.append(f'function {function_name} takes nothing returns nothing')
            result.append(f'    local player p= {player_literal}')
            result.append(f'    local unit u')
            result.append(f'    local integer unitID')
            result.append(f'    local trigger t')
            result.append(f'    local real life\n')
            result.extend(sections[key])
            result.append(f'endfunction\n')
    
    result.append('//===========================================================================')
    result.append('function CreatePlayerBuildings takes nothing returns nothing')
    for player_id in range(24):
        if (True, player_id) in sections:
            result.append(f'    call CreateBuildingsForPlayer{player_id}()')
    result.append('endfunction\n')

    result.append('//===========================================================================')
    result.append('function CreatePlayerUnits takes nothing returns nothing')
    for player_id in range(24):
        if (False, player_id) in sections:
            result.append(f'    call CreateUnitsForPlayer{player_id}()')
    result.append('endfunction\n')

    result.append('//===========================================================================')
    result.append('function CreateAllUnits takes nothing returns nothing')
    if (True, NEUTRAL_HOSTILE_PLAYER) in sections:
        result.append('    call CreateNeutralHostileBuildings()')
    if (True, NEUTRAL_PASSIVE_PLAYER) in sections:
        result.append('    call CreateNeutralPassiveBuildings()')
    result.append('    call CreatePlayerBuildings()')
    if (False, NEUTRAL_HOSTILE_PLAYER) in sections:
        result.append('    call CreateNeutralHostile()')
    if (False, NEUTRAL_PASSIVE_PLAYER) in sections:
        result.append('    call CreateNeutralPassive()')
    result.append('    call CreatePlayerUnits()')
    result.append('endfunction\n')
    info.function_presence.add('CreateAllUnits')

    return result


def generate_region_setup(regions: w3r.War3RegionInfo, geometry: w3e.War3Environment) -> list[str]:
    result = ['function CreateRegions takes nothing returns nothing']
    result.append('    local weathereffect we\n')
    for region in regions.regions:
        region_name = escape_name(region.region_name)
        result.append((
            f'    set gg_rct_{region_name}=Rect({region.left:.1f}, {region.bottom:.1f}, '
            f'{region.right:.1f}, {region.top:.1f})'
        ).replace('-', '- '))
        if region.ambient_sound:
            mid_x = (region.right + region.left) / 2
            mid_y = (region.top + region.bottom) / 2
            width = region.right - region.left
            height = region.top - region.bottom
            z = geometry.coord_to_height(mid_x, mid_y)
            result.append((
                f'    call SetSoundPosition({region.ambient_sound}, {mid_x:.1f}, {mid_y:.1f}, {z:.1f})'
            ).replace('-', '- '))
            result.append(f'    call RegisterStackedSound({region.ambient_sound}, true, {width:.1f}, {height:.1f})')
    result.append('endfunction\n')
    return result


def generate_camera_setup(cameras: w3c.War3CameraInfo) -> list[str]:
    result = ['function CreateCameras takes nothing returns nothing\n']
    def f(line: str) -> str:
        return line.replace('-', '- ')
    for camera in cameras.cameras:
        camera_name = f'gg_cam_{escape_name(camera.name)}'
        result.append(f(f'    set {camera_name}=CreateCameraSetup()'))
        result.append(f(f'    call CameraSetupSetField({camera_name}, CAMERA_FIELD_ZOFFSET, {camera.z_offset:.1f}, 0.0)'))
        result.append(f(f'    call CameraSetupSetField({camera_name}, CAMERA_FIELD_ROTATION, {camera.rotation:.1f}, 0.0)'))
        result.append(f(f'    call CameraSetupSetField({camera_name}, CAMERA_FIELD_ANGLE_OF_ATTACK, {camera.angle_of_attack:.1f}, 0.0)'))
        result.append(f(f'    call CameraSetupSetField({camera_name}, CAMERA_FIELD_TARGET_DISTANCE, {camera.distance:.1f}, 0.0)'))
        result.append(f(f'    call CameraSetupSetField({camera_name}, CAMERA_FIELD_ROLL, {camera.roll:.1f}, 0.0)'))
        result.append(f(f'    call CameraSetupSetField({camera_name}, CAMERA_FIELD_FIELD_OF_VIEW, {camera.fov:.1f}, 0.0)'))
        result.append(f(f'    call CameraSetupSetField({camera_name}, CAMERA_FIELD_FARZ, {camera.far_z:.1f}, 0.0)'))
        result.append(f(f'    call CameraSetupSetDestPosition({camera_name}, {camera.target_x:.1f}, {camera.target_y:.1f}, 0.0)\n'))
    result.append('endfunction\n')
    return result


def generate_upgrades_setup(map_info: w3i.War3MapInformation, upgrade_data: dict[str, dict]) -> list[str]:
    if not map_info.upgrades:
        return []
    result: list[str] = [section_header('Upgrades')]
    players_present = {player.player_id for player in map_info.players}
    # Note(mm): Upgrades can be listed multiple times; code uses the position of the first appearance but
    # the value of the last apppearance. Keep an index of previous writes to update old lines if necessary.

    values_to_write: dict[int, dict[tuple[str, str], int]] = {}
    FUNCTION_NAMES = {
        w3i.UpgradeAvailability.Unavailable: 'SetPlayerTechMaxAllowed',
        w3i.UpgradeAvailability.Researched: 'SetPlayerTechResearched',
    }
    for upgrade in map_info.upgrades:
        for player_id in range(24):
            if player_id not in players_present:
                continue
            if not ((1 << player_id) & upgrade.player_flags):
                continue
            player_data = values_to_write.setdefault(player_id, {})
            last_value = player_data.setdefault((upgrade.upgrade_id, FUNCTION_NAMES[upgrade.availability]))
            if last_value is None:
                if upgrade.availability == w3i.UpgradeAvailability.Unavailable:
                    last_value = 0x7fff_ffff
                else:
                    last_value = 0
            if upgrade.availability == w3i.UpgradeAvailability.Unavailable:
                player_data[upgrade.upgrade_id, FUNCTION_NAMES[upgrade.availability]] = min(last_value, upgrade.level)
            else:
                player_data[upgrade.upgrade_id, FUNCTION_NAMES[upgrade.availability]] = max(last_value, upgrade.level+1)
    for player_id in range(24):
        if player_id not in players_present:
            continue
        if player_id not in values_to_write:
            continue
        player_data = values_to_write[player_id]
        result.append(f'function InitUpgrades_Player{player_id} takes nothing returns nothing')
        for (upgrade_id, func), level in player_data.items():
            result.append(f"    call {func}(Player({player_id}), '{upgrade_id}', {level})")
        result.append('endfunction\n')
    result.append('function InitUpgrades takes nothing returns nothing')
    for player_id in range(24):
        if player_id in values_to_write:
            result.append(f'    call InitUpgrades_Player{player_id}()')
    result.append('endfunction\n')
    return result


def generate_techtree_setup(map_info: w3i.War3MapInformation) -> list[str]:
    if not map_info.technologies:
        return []
    result: list[str] = [section_header('TechTree')]
    players_present = {player.player_id for player in map_info.players}
    written: dict[int, set[str]] = {player_id: set() for player_id in range(24)}
    player_lines: dict[int, list[str]] = {}
    for upgrade in map_info.technologies:
        for player_id in range(24):
            if player_id not in players_present:
                continue
            if (1 << player_id) & upgrade.player_flags:
                if upgrade.tech_id in written[player_id]:
                    continue
                lines = player_lines.setdefault(player_id, [])
                lines.append(f"    call SetPlayerTechMaxAllowed(Player({player_id}), '{upgrade.tech_id}', 0)")
                written[player_id].add(upgrade.tech_id)
    for player_id in range(24):
        if player_id not in players_present:
            continue
        if player_id in player_lines:
            result.append(f'function InitTechTree_Player{player_id} takes nothing returns nothing')
            result.extend(player_lines[player_id])
            result.append('endfunction\n')
    result.append('function InitTechTree takes nothing returns nothing')
    for player_id in range(24):
        if player_id in player_lines:
            result.append(f'    call InitTechTree_Player{player_id}()')
    result.append('endfunction\n')
    return result


def generate_players(info: GenInfo, map_info: w3i.War3MapInformation) -> list[str]:
    result = ['function InitCustomPlayerSlots takes nothing returns nothing', '']
    player_id_to_index: dict[int, int] = {}
    active_players_mask = 0
    for index, player in enumerate(map_info.players):
        player_id = player.player_id
        player_id_to_index[player_id] = index
        active_players_mask |= 1 << player_id
        result.append(f'    // Player {player_id}')
        result.append(f'    call SetPlayerStartLocation(Player({player_id}), {index})')
        result.append(f'    call ForcePlayerStartLocation(Player({player_id}), {index})')
        result.append(f'    call SetPlayerColor(Player({player_id}), ConvertPlayerColor({player_id}))')
        result.append(f'    call SetPlayerRacePreference(Player({player_id}), RACE_PREF_{player.player_faction.name.upper()})')
        result.append(f'    call SetPlayerRaceSelectable(Player({player_id}), false)')
        result.append(f'    call SetPlayerController(Player({player_id}), MAP_CONTROL_{player.player_type.name.upper()})')
        result.append('')

    result.append('endfunction\n')

    result.append('function InitCustomTeams takes nothing returns nothing')
    for index, force in enumerate(map_info.forces):
        result.append(f'    // Force: {force.name}')
        for player in map_info.players:
            mask = 1 << player.player_id
            if mask & force.player_mask_flags:
                result.append(f'    call SetPlayerTeam(Player({player.player_id}), {index})')
        result.append('')
        allied_section = ['    //   Allied']
        shared_vision_section = ['    //   Shared Vision']
        if force.force_flags:
            functions_written = 0
            for player in map_info.players:
                if not ((1 << player.player_id) & force.player_mask_flags):
                    continue
                for player2 in map_info.players:
                    if not ((1 << player2.player_id) & force.player_mask_flags):
                        continue
                    if player.player_id == player2.player_id:
                        continue
                    allied_section.append(f'    call SetPlayerAllianceStateAllyBJ(Player({player.player_id}), Player({player2.player_id}), true)')
                    shared_vision_section.append(f'    call SetPlayerAllianceStateVisionBJ(Player({player.player_id}), Player({player2.player_id}), true)')
                    functions_written += 1
            allied_section.append('')
            shared_vision_section.append('')
            if (w3i.ForcesFlags.Allied & force.force_flags) and functions_written:
                result.extend(allied_section)
            if (w3i.ForcesFlags.ShareVision & force.force_flags) and functions_written:
                result.extend(shared_vision_section)
    result.append('endfunction\n')
    result.extend(init_ally_priorities(info, map_info, active_players_mask, player_id_to_index))
    return result


def init_ally_priorities(
    info: GenInfo,
    map_info: w3i.War3MapInformation,
    active_players_mask: int,
    player_id_to_index: dict[int, int],
) -> list[str]:
    result: list[str] = []
    result.append('function InitAllyPriorities takes nothing returns nothing')
    for player in map_info.players:
        low_flags = player.ally_low_priorities_flags & active_players_mask
        high_flags = player.ally_high_priorities_flags & active_players_mask
        player_index = player_id_to_index[player.player_id]
        if low_flags:
            result.append(f'\n    call SetStartLocPrioCount({player_index}, {low_flags.bit_count()})')
            slot = 0
            for player2 in map_info.players:
                if player2.player_id == player.player_id:
                    continue
                if (1 << player2.player_id) & low_flags:
                    result.append(
                        f'    call SetStartLocPrio({player_index}, {slot}, '
                        f'{player_id_to_index[player2.player_id]}, MAP_LOC_PRIO_LOW)'
                    )
                    slot += 1
        if high_flags:
            result.append(f'\n    call SetStartLocPrioCount({player_index}, {high_flags.bit_count()})')
            slot = 0
            for player2 in map_info.players:
                if player2.player_id == player.player_id:
                    continue
                if (1 << player2.player_id) & high_flags:
                    result.append(
                        f'    call SetStartLocPrio({player_index}, {slot}, '
                        f'{player_id_to_index[player2.player_id]}, MAP_LOC_PRIO_HIGH)'
                    )
                    slot += 1
    result.append('endfunction\n')
    if len(result) == 2:
        return []
    info.function_presence.add('InitAllyPriorities')
    return result


def generate_main(
    info: GenInfo, map_info: w3i.War3MapInformation, geometry: w3e.War3Environment,
) -> list[str]:
    result = [
        '//===========================================================================',
        'function main takes nothing returns nothing',
    ]
    max_x = geometry.min_x + (geometry.width_plus_1 - 1) * 128
    max_y = geometry.min_y + (geometry.height_plus_1 - 1) * 128
    margin_left = geometry.min_x + map_info.map_padding_left*128
    margin_bottom = geometry.min_y + map_info.map_padding_top*128
    margin_right = max_x - map_info.map_padding_right*128
    margin_top = max_y - map_info.map_padding_bottom*128
    result.append((
        f'    call SetCameraBounds('
        f'{margin_left:.1f} + GetCameraMargin(CAMERA_MARGIN_LEFT), '
        f'{margin_bottom:.1f} + GetCameraMargin(CAMERA_MARGIN_BOTTOM), '
        f'{margin_right:.1f} -GetCameraMargin(CAMERA_MARGIN_RIGHT), '
        f'{margin_top:.1f} -GetCameraMargin(CAMERA_MARGIN_TOP), '
        f'{margin_left:.1f} + GetCameraMargin(CAMERA_MARGIN_LEFT), '
        f'{margin_top:.1f} -GetCameraMargin(CAMERA_MARGIN_TOP), '
        f'{margin_right:.1f} -GetCameraMargin(CAMERA_MARGIN_RIGHT), '
        f'{margin_bottom:.1f} + GetCameraMargin(CAMERA_MARGIN_BOTTOM)'
        ')'
    ).replace('-', '- '))

    terrain_model = tables.TILESET_TO_TERRAIN[map_info.tileset]
    unit_model = tables.TILESET_TO_UNIT_MODEL[map_info.tileset]
    day_sound, night_sound = tables.TILESET_TO_SOUND[map_info.tileset]

    result.append(f'    call SetDayNightModels("{terrain_model}", "{unit_model}")')
    sound_environment = map_info.tft_custom_sound_environment or 'Default'
    result.append(f'    call NewSoundEnvironment("{sound_environment}")')
    result.append(f'    call SetAmbientDaySound("{day_sound}")')
    result.append(f'    call SetAmbientNightSound("{night_sound}")')
    result.append(f'    call SetMapMusic("Music", true, 0)')
    result.append(f'    call InitSounds()')
    result.append(f'    call CreateRegions()')
    result.append(f'    call CreateCameras()')
    result.append(f'    call InitUpgrades()')
    result.append(f'    call InitTechTree()')
    result.append(f'    call CreateAllDestructables()')
    if 'CreateAllItems' in info.function_presence:
        result.append(f'    call CreateAllItems()')
    if 'CreateAllUnits' in info.function_presence:
        result.append(f'    call CreateAllUnits()')
    result.append(f'    call InitBlizzard()')
    result.append('\n')
    result.append(f'    call InitGlobals()')
    result.append(f'    call InitCustomTriggers()')
    result.append(f'    call RunInitializationTriggers()\n')

    result.append('endfunction\n')
    return result


def generate_map_configuration(info: GenInfo, map_info: w3i.War3MapInformation) -> list[str]:
    # Always present
    result = ['function config takes nothing returns nothing']
    result.append(f'    call SetMapName("{map_info.map_name}")')
    result.append(f'    call SetMapDescription("{map_info.map_description}")')
    result.append(f'    call SetPlayers({len(map_info.players)})')
    result.append(f'    call SetTeams({len(map_info.players)})')
    if w3i.MapFlags.HIDE_MINIMAP in map_info.flags:
        result.append(f'    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)')
    result.append('')
    
    index = 0
    for player in map_info.players:
        result.append((
            f'    call DefineStartLocation({index}, {player.start_pos[0]:.1f}, {player.start_pos[1]:.1f})'
        ).replace(' -', ' - '))
        index += 1
    result.append('\n    // Player setup')
    if w3i.MapFlags.FIXED_FORCES:
        result.append('    call InitCustomPlayerSlots()')
    if w3i.MapFlags.FIXED_FORCES:
        result.append('    call InitCustomTeams()')
    if 'InitAllyPriorities' in info.function_presence:
        result.append('    call InitAllyPriorities()')
    result.append('endfunction\n')
    return result


def generate_custom_text_trigger(text: str, info: GenInfo) -> list[str]:
    lines = text.split('\n')
    result: list[str] = []
    in_globals = False
    for line in lines:
        stripped = line.strip()
        if stripped == 'globals':
            in_globals = True
            continue
        elif stripped == 'endglobals':
            in_globals = False
            continue
        elif in_globals and stripped:
            # Specifically '=' get the spaces to the left removed
            # All other tokens (including '-') get padded by spaces
            # idk why Jass feels the need to parse these like so
            parts = stripped.split()
            line_result: list[str] = [parts[0]]
            for part in parts[1:]:
                if part == '=':
                    line_result.append(part)
                elif part[0] in '+-' and len(part) > 1:
                    line_result.append(f' {part[0]} {part[1:]}')
                else:
                    line_result.append(f' {part}')
            info.custom_text_vars_used.append(''.join(line_result))
            continue
        elif stripped.startswith('debug '):
            continue
        result.append(escape_custom_code(line))
    if not result[-1]:
        result.pop()
    return result


def check_parameters(parameters: list[wtg.EcaParameter], info: GenInfo) -> None:
    for parameter in parameters:
        if parameter.parameter_type == wtg.EcaParameterType.Variable:
            if parameter.value.startswith('gg_unit_'):
                info.unit_vars_used.add(parameter.value)
            elif parameter.value.startswith('gg_dest_'):
                info.doodad_vars_used.add(parameter.value)


OPERATORS = {
    'OperatorAdd': '+',
    'OperatorSubtract': '-',
    'OperatorMultiply': '*',
    'OperatorDivide': '/',
    'OperatorEqual': '==',
    'OperatorNotEqual': '!=',
    'OperatorGreater': '>',
    'OperatorGreaterEq': '>=',
    'OperatorLess': '<',
    'OperatorLessEq': '<=',
    'OperatorEqualENE': '==',
    'OperatorNotEqualENE': '!=',
}


# Pulled from triggerdata.txt by searching "_ScriptName"
FUNCTION_SUBSTITUTIONS = {
    'EnumDestructablesInRectAllMultiple': 'EnumDestructablesInRectAll,',
    'EnumDestructablesInCircleBJMultiple': 'EnumDestructablesInCircleBJ',
    'SetHeroLevel': 'SetHeroLevelBJ',
    'EnumItemsInRectBJMultiple': 'EnumItemsInRectBJ',
    'SetPlayerState': 'SetPlayerStateBJ',
    'SetPlayerUnitMaxAllowed': 'SetPlayerTechMaxAllowedSwap',
    'ForForceMultiple': 'ForForce',
    'IssueTargetOrder': 'IssueTargetOrderBJ',
    'IssuePointOrderLoc': 'IssuePointOrderLocBJ',
    'IssueImmediateOrder': 'IssueImmediateOrderBJ',
    'ForGroupMultiple': 'ForGroupBJ',
    'ForGroup': 'ForGroupBJ',
    'GroupTargetOrder': 'GroupTargetOrderBJ',
    'GroupPointOrderLoc': 'GroupPointOrderLocBJ',
    'GroupImmediateOrder': 'GroupImmediateOrderBJ',
}


def generate_operator(func: wtg.EcaFunction, operator_name: str, info: GenInfo, prepend_info: PrependInfo) -> str:
    type_hint = func.name[len(operator_name):].lower()
    return (
        f'{generate_gui_parameter(func.parameters[0], type_hint, info, prepend_info)} '
        f'{OPERATORS[func.parameters[1].value]} '
        f'{generate_gui_parameter(func.parameters[2], type_hint, info, prepend_info)}'
    )


def generate_condition(condition: wtg.EcaFunction, info: GenInfo, prepend_info: PrependInfo) -> str:
    check_parameters(condition.parameters, info)
    if condition.name.startswith('OperatorCompare'):
        result = f'( {generate_operator(condition, "OperatorCompare", info, prepend_info)} )'
    elif condition.name.startswith('Operator'):
        result = f'( {generate_operator(condition, "Operator", info, prepend_info)} )'
    elif condition.name == 'OrMultiple':
        result = ' or '.join(f'({generate_condition(subfunc, info, prepend_info)})' for subfunc in condition.subfunctions)
    elif condition.name == 'AndMultiple':
        result = ' and '.join(f'({generate_condition(subfunc, info, prepend_info)})' for subfunc in condition.subfunctions)
    else:
        param_info = wtg.LIB_INFO[condition.name]
        assert len(condition.parameters) == len(param_info.arg_types)
        func_name = FUNCTION_SUBSTITUTIONS.get(condition.name, condition.name)
        parameters = [
            generate_gui_parameter(parameter, pinfo, info, prepend_info)
            for parameter, pinfo in zip(condition.parameters, param_info.arg_types)
        ]
        result = f'{func_name}({", ".join(parameters)})'
    return result


def generate_top_level_condition(
    condition: wtg.EcaFunction, info: GenInfo, prepend_info: PrependInfo,
) -> list[str]:
    prepend_info.action_index.append(1)
    result: list[str] = []
    result.append(f'    if ( not {generate_condition(condition, info, prepend_info)} ) then')
    result.append('        return false')
    result.append('    endif')
    prepend_info.action_index.pop()
    prepend_info.action_index[-1] += 1
    return result


def generate_gui_parameter(
    parameter: wtg.EcaParameter,
    paramtype: str,
    info: GenInfo,
    prepend_info: PrependInfo,
) -> str:
    func_name = prepend_info.func_name()
    prepend_info.action_index.append(1)
    subscript = ''
    if parameter.subscript is not None:
        subscript = f'[{generate_gui_parameter(parameter.subscript, "integer", info, prepend_info)}]'
    if parameter.parameter_type == wtg.EcaParameterType.Variable:
        if parameter.value.startswith('gg_'):
            result = f'{parameter.value}{subscript}'
        else:
            result = f'udg_{parameter.value}{subscript}'
    elif parameter.parameter_type == wtg.EcaParameterType.String:
        if (paramtype == 'string'
            or parameter.value.startswith('TRIGSTR')
            or paramtype.endswith('file')
            or paramtype.endswith('script')
        ):
            result = f'"{parameter.value.replace("\\", "\\\\")}"'
        elif paramtype.endswith('code'):
            result = f"'{parameter.value}'"
        else:
            result = parameter.value
    elif parameter.parameter_type == wtg.EcaParameterType.Function:
        f = parameter.children
        assert f is not None
        if paramtype == 'boolexpr':
            result = f'Condition(function {func_name})'
            contents = generate_condition(f, info, prepend_info)
            prepend_info.lines.append(f'function {func_name} takes nothing returns boolean')
            prepend_info.lines.append(f'    return {contents}')
            prepend_info.lines.append(f'endfunction\n')
        else:
            result = generate_condition(f, info, prepend_info)
    elif parameter.parameter_type == wtg.EcaParameterType.Preset:
        result = wtg.LIB_INFO[parameter.value].arg_types[1].replace('`', '"')
    else:
        result = parameter.value
    prepend_info.action_index.pop()
    prepend_info.action_index[-1] += 1
    return result



def generate_gui_action(action: wtg.EcaFunction, info: GenInfo, prepend_info: PrependInfo) -> list[str]:
    check_parameters(action.parameters, info)
    function_name = FUNCTION_SUBSTITUTIONS.get(action.name, action.name)
    prepend_info.action_index.append(1)
    if action.name == 'CommentString':
        assert len(action.parameters) == 1, (
            f"Error: Comments only take one parameter, got {len(action.parameters)}"
        )
        result = [f'{info.indent()}// {action.parameters[0].value}']
    elif action.name == 'CustomScriptCode':
        assert len(action.parameters) == 1, (
            f"Error: Custom script only takes one parameter, got {len(action.parameters)}"
        )
        result = [f'{info.indent()}{escape_custom_code(action.parameters[0].value)}']
    elif action.name == 'ReturnAction':
        result = [f'{info.indent()}return']
    elif action.name == 'SetVariable':
        assert len(action.parameters) == 2
        var_info = info.variables[action.parameters[0].value]
        subscript = ''
        if action.parameters[0].subscript is not None:
            subscript = f'[{generate_gui_parameter(action.parameters[0].subscript, "integer", info, prepend_info)}]'
        result = [
            f'{info.indent()}set udg_{var_info.name}{subscript}'
            f'={generate_gui_parameter(action.parameters[1], var_info.variable_type, info, prepend_info)}'
        ]
    elif action.name == 'IfThenElse':
        if Options.INLINE_IF_CONDITIONS:
            result = [f'{info.indent()}if {generate_gui_parameter(action.parameters[0], "boolean", info, prepend_info)} then']
        else:
            prepend_func_name = prepend_info.func_name()
            contents = generate_gui_parameter(action.parameters[0], "boolean", info, prepend_info)
            prepend_info.lines.append(f'function {prepend_func_name} takes nothing returns boolean')
            prepend_info.lines.append(f'    return {contents}')
            prepend_info.lines.append(f'endfunction\n')
            result = [f'{info.indent()}if ( {prepend_func_name}() ) then']
        info.indent_level += 4
        result.extend(generate_gui_action(action.parameters[1].children, info, prepend_info))
        info.indent_level -= 4
        result.append(f'{info.indent()}else')
        info.indent_level += 4
        result.extend(generate_gui_action(action.parameters[2].children, info, prepend_info))
        info.indent_level -= 4
        result.append(f'{info.indent()}endif')
    elif action.name == 'ForLoopA':
        assert len(action.parameters) == 3
        result = []
        result.append(f'{info.indent()}set bj_forLoopAIndex={generate_gui_parameter(action.parameters[0], "integer", info, prepend_info)}')
        result.append(f'{info.indent()}set bj_forLoopAIndexEnd={generate_gui_parameter(action.parameters[1], "integer", info, prepend_info)}')
        result.append(f'{info.indent()}loop')
        info.indent_level += 4
        result.append(f'{info.indent()}exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd')
        result.extend(generate_gui_action(action.parameters[2].children, info, prepend_info))
        result.append(f'{info.indent()}set bj_forLoopAIndex=bj_forLoopAIndex + 1')
        info.indent_level -= 4
        result.append(f'{info.indent()}endloop')
    elif action.name == 'ForGroup':
        result = [
            f'{info.indent()}call {function_name}'
            f'({generate_gui_parameter(action.parameters[0], "group", info, prepend_info)}, '
        ]
        prepend_func_name = prepend_info.func_name()
        result[-1] += f'function {prepend_func_name})'
        prepend_info.lines.append(f'function {prepend_func_name} takes nothing returns nothing')
        prepend_info.lines.extend(generate_gui_action(
            action.parameters[1].children,
            GenInfo(list(info.variables.values()), 4),
            prepend_info
        ))
        prepend_info.lines.append('endfunction\n')
    # todo: other special-case functions as necessary
    else:
        param_info = wtg.LIB_INFO[action.name]
        assert len(action.parameters) == len(param_info.arg_types)
        parameters = [
            generate_gui_parameter(parameter, pinfo, info, prepend_info)
            for parameter, pinfo in zip(action.parameters, param_info.arg_types)
        ]
        result = [f'{info.indent()}call {function_name}({", ".join(parameters)})']
    prepend_info.action_index.pop()
    prepend_info.action_index[-1] += 1
    return result


def generate_gui_trigger(trigger: wtg.Trigger, info: GenInfo) -> list[str]:
    result: list[str] = []
    # Make an index
    functions: dict[wtg.EcaFunctionType, list[wtg.EcaFunction]] = {
        _type: [] for _type in wtg.EcaFunctionType
    }
    for eca in trigger.eca_functions:
        check_parameters(eca.parameters, info)
        functions[eca.function_type].append(eca)

    trigger_name = escape_name(trigger.name)
    prepend_info = PrependInfo(trigger_name, 1)
    condition_prepend_info = PrependInfo(trigger_name, 1)
    condition_prepend_info.action_index = prepend_info.action_index

    # Actions init
    body_result: list[str] = []
    condition_result: list[str] = []
    info.indent_level = 4
    body_result.append(f'function Trig_{trigger_name}_Actions takes nothing returns nothing')

    # Conditions init
    has_conditions = any(x.is_enabled for x in functions[wtg.EcaFunctionType.Condition])
    if has_conditions:
        condition_result.append(f'function Trig_{trigger_name}_Conditions takes nothing returns boolean')

    for eca in trigger.eca_functions:
        if not eca.is_enabled:
            prepend_info.action_index[-1] += 1
            continue
        elif eca.function_type == wtg.EcaFunctionType.Event:
            prepend_info.action_index[-1] += 1
        elif eca.function_type == wtg.EcaFunctionType.Condition:
            condition_result.extend(generate_top_level_condition(eca, info, condition_prepend_info))
        else:
            body_result.extend(generate_gui_action(eca, info, prepend_info))
        assert len(prepend_info.action_index) == 1
    
    # Conditions
    if has_conditions:
        condition_result.append('    return true')
        condition_result.append('endfunction\n')

    # Actions
    body_result.append('endfunction\n')

    # Initialization
    body_result.append('//===========================================================================')
    body_result.append(f'function InitTrig_{trigger_name} takes nothing returns nothing')
    body_result.append(f'    set gg_trg_{trigger_name}=CreateTrigger()')
    if trigger.is_initially_off:
        body_result.append(f'    call DisableTrigger(gg_trg_{trigger_name})')
    for event in functions[wtg.EcaFunctionType.Event]:
        if not event.is_enabled:
            continue
        if event.name == 'MapInitializationEvent' and trigger_name not in info.map_init_triggers:
            info.map_init_triggers.append(trigger_name)
            continue
        param_info = wtg.LIB_INFO[event.name]
        assert len(param_info.arg_types) == len(event.parameters)
        parameters = ''.join([
            ", " + generate_gui_parameter(p, ptype, info, prepend_info)
            for p, ptype in zip(event.parameters, param_info.arg_types)
        ])
        body_result.append(f'    call {event.name}(gg_trg_{trigger_name}{parameters})')
    if has_conditions:
        body_result.append(f'    call TriggerAddCondition(gg_trg_{trigger_name}, Condition(function Trig_{trigger_name}_Conditions))')
    body_result.append(f'    call TriggerAddAction(gg_trg_{trigger_name}, function Trig_{trigger_name}_Actions)')
    body_result.append('endfunction\n')

    result.extend(condition_prepend_info.lines)
    result.extend(condition_result)
    result.extend(prepend_info.lines)
    result.extend(body_result)
    return result


def generate_triggers(
    gui_triggers: wtg.W3TriggerData, text_triggers: wct.War3TextTriggers, info: GenInfo,
) -> list[str]:
    result: list[str] = []
    for gui_trigger, text_trigger in zip(gui_triggers.triggers, text_triggers.triggers):
        if not gui_trigger.is_enabled:
            continue
        if gui_trigger.is_map_init:
            info.map_init_triggers.append(gui_trigger.name)
        result.append('//===========================================================================')
        result.append(f'// Trigger: {gui_trigger.name}',)
        if gui_trigger.description:
            lines = gui_trigger.description.strip().split('\n')
            result.append('//')
            for line in lines:
                result.append(f'// {line}')
        result.append('//===========================================================================')
        if gui_trigger.is_custom_text:
            result.extend(generate_custom_text_trigger(text_trigger.text, info))
        else:
            result.extend(generate_gui_trigger(gui_trigger, info))
    return result


def generate_custom_trigger_init(gui_triggers: wtg.W3TriggerData, info: GenInfo) -> list[str]:
    result: list[str] = []
    result.append('//===========================================================================')
    result.append('function InitCustomTriggers takes nothing returns nothing')
    for trigger in gui_triggers.triggers:
        if trigger.is_enabled:
            result.append(f'    call InitTrig_{escape_name(trigger.name)}()')
    result.append('endfunction\n')

    result.append('//===========================================================================')
    result.append('function RunInitializationTriggers takes nothing returns nothing')
    for trigger_name in info.map_init_triggers:
        result.append(f'    call ConditionalTriggerExecute(gg_trg_{trigger_name})')
    result.append('endfunction\n')
    return result


def generate(map_dir: str) -> None:
    gui_triggers = wtg.from_text_file(f'{map_dir}/{TRIGGERS_GUI_FILE_NAME}')
    text_triggers = wct.from_text_file(f'{map_dir}/{TRIGGERS_CUSTOM_TEXT_FILE_NAME}')
    map_info = w3i.from_text_file(f'{map_dir}/{INFO_FILE_NAME}')
    units = doo.from_text_file(f'{map_dir}/{UNITS_FILE_NAME}')
    doodads = doo.from_text_file(f'{map_dir}/{DOODADS_FILE_NAME}')
    regions = w3r.from_text_file(f'{map_dir}/{REGIONS_FILE_NAME}')
    cameras = w3c.from_text_file(f'{map_dir}/{CAMERAS_FILE_NAME}')
    sounds = w3s.from_text_file(f'{map_dir}/{SOUNDS_FILE_NAME}')
    geometry = w3e.read_binary_file(f'{map_dir}/war3map.w3e')
    unit_data = w3o.from_text_file(f'{map_dir}/{UNIT_DATA_FILE_NAME}')
    string_table = wts.read_wts(f'{map_dir}/war3map.wts')

    custom_units = {u.entity_id: u for u in unit_data.map_objects.entities}

    with open('doc/generated/data/itemdata.toml', 'rb') as fp:
        item_data = tomllib.load(fp)
    with open('doc/generated/data/upgradedata.toml', 'rb') as fp:
        upgrade_data = tomllib.load(fp)

    result: list[str] = []
    info = GenInfo(gui_triggers.variables)

    triggers_lines = generate_triggers(gui_triggers, text_triggers, info)

    udg_globals = generate_user_defined_globals(gui_triggers)
    gen_globals = generate_automatic_globals(
        regions, cameras, sounds, gui_triggers, units, doodads, info
    )

    result.append('globals')
    result.append('    // User-defined')
    result.append('\n'.join(udg_globals))
    result.append('')
    result.append('    // Generated')
    result.append('\n'.join(gen_globals))
    result.append('')
    result.append('\n//JASSHelper struct globals:')
    # structs not supported
    result.append('')
    result.append('endglobals')

    # Script header
    result.extend(generate_script_header(map_info, string_table))

    # Global variable init
    result.append(section_header('Global Variables'))
    result.extend(generate_global_variable_init(gui_triggers))

    # Unit item tables
    result.append(section_header('Unit Item Tables'))
    result.extend(generate_item_tables(units, info))

    # Sounds
    result.append(section_header('Sounds'))
    result.extend(generate_sound_setup(sounds))

    # Destructables
    result.append(section_header('Destructable Objects'))
    result.extend(generate_destructable_setup(doodads, info))

    # Pre-placed items
    result.extend(generate_preplaced_items(units, info, item_data))

    # Unit Creation
    result.append(section_header('Unit Creation'))
    result.extend(generate_unit_setup(units, info, custom_units, item_data))

    # Regions
    result.append(section_header('Regions'))
    result.extend(generate_region_setup(regions, geometry))

    # Cameras
    result.append(section_header('Cameras'))
    result.extend(generate_camera_setup(cameras))

    # Triggers
    result.append(section_header('Triggers'))
    result.extend(triggers_lines)

    # Init custom triggers
    result.extend(generate_custom_trigger_init(gui_triggers, info))

    # Upgrades
    result.extend(generate_upgrades_setup(map_info, upgrade_data))

    # TechTree
    result.extend(generate_techtree_setup(map_info))

    # Players
    result.append(section_header('Players'))
    result.extend(generate_players(info, map_info))

    # Main Initialization
    result.append(section_header('Main Initialization'))
    result.extend(generate_main(info, map_info, geometry))

    # Map Configuration
    result.append(section_header('Map Configuration'))
    result.extend(generate_map_configuration(info, map_info))

    result.append('\n\n')
    result.append('//Struct method generated initializers/callers:\n')
    # Not supported

    with open(f'{map_dir}/{MAP_SCRIPT_FILE_NAME}', 'w') as fp:
        for part in result:
            fp.write(part.replace('\n', '\r\n'))
            fp.write('\r\n')
    

if __name__ == '__main__':
    import sys
    if len(sys.argv) > 1:
        _target = sys.argv[1]
    else:
        _target = 'maps/Human01'
    if '-i' in sys.argv:
        Options.INLINE_IF_CONDITIONS = True
        Options.FORCE_INITIALIZE = False
    if '-h' in sys.argv:
        print("Usage: mapscript.py <map dir> [-i]")
        print("  -i: Use improved generation (inline if conditions)")
        sys.exit()
    print(f'Generating script for {_target}')
    generate(_target)
