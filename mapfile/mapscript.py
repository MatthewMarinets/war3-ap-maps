"""
Utility for regenerating war3map.j script files from other data
"""

from . import wtg, wct, w3i, doo, w3r, w3c, w3s, wts, tables
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
)
import math

MAP_SCRIPT_FILE_NAME = 'war3map.j'


class GenInfo:
    def __init__(self, variables: list[wtg.TriggerVariable]) -> None:
        self.unit_vars_used: set[str] = set()
        self.doodad_vars_used: list[str] = []
        self.custom_text_vars_used: list[str] = []
        self.indent_level = 0
        self.variables = {v.name: v for v in variables}
        self.map_init_triggers: list[str] = []
        self.start_locations: list[doo.UnitEntity] = []
        self.item_drop_tables: dict[int, str] = {}

    def indent(self) -> str:
        return ' '*(self.indent_level)


class PrependInfo:
    def __init__(self, trigger_name: str, action_index: int = 1) -> None:
        self.trigger_name = trigger_name
        self.lines: list[str] = []
        self.action_index = action_index


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
    initializable_types = {'integer', 'boolean', 'string', 'real'}
    for variable in gui_triggers.variables:
        var_type = sub_var_type.get(variable.variable_type, variable.variable_type)
        if variable.is_array:
            val = ''
        elif variable.initial_value and var_type in initializable_types:
            val = f'= {variable.initial_value}'
        elif variable.variable_type == 'boolean':
            val = '= false'
        elif variable.variable_type == 'integer':
            val = '= 0'
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
    result.append('    local integer i= 0')
    for variable in gui_triggers.variables:
        initial_value = variable.initial_value
        if not initial_value and variable.variable_type == 'group':
            initial_value = 'CreateGroup()'
        elif variable.variable_type == 'player' and not initial_value.endswith(')'):
            index = int(initial_value[len('Player'):])
            initial_value = f'Player({index})'
        elif variable.variable_type == 'force' and not initial_value.endswith(')'):
            index = int(initial_value[len('Force'):])
            initial_value = f'bj_FORCE_PLAYER[{index}]'
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
    for doodad_var in info.doodad_vars_used:
        doodad = doodad_var_to_doodad[doodad_var]
        if doodad.life_percent == 0:
            result.append((
                f"    set {doodad_var}=CreateDeadDestructableZ('{doodad.type_id}', "
                f"{doodad.x:.1f}, {doodad.y:.1f}, {doodad.z:.1f}, {doodad.facing * RADIANS_TO_DEGREES:.3f}, "
                f"{doodad.scale_x:.3f}, {doodad.variation})"
            ).replace('-', '- '))
            continue
        result.append((
            f"    set {doodad_var}=CreateDestructable('{doodad.type_id}', "
            f"{doodad.x:.1f}, {doodad.y:.1f}, {doodad.facing * RADIANS_TO_DEGREES:.3f}, {doodad.scale_x:.3f}, {doodad.variation})"
        ).replace('-', '- '))
    result.append('endfunction\n')
    return result



def generate_unit_setup(units: doo.War3PlacementInfo, info: GenInfo) -> list[str]:
    RADIANS_TO_DEGREES = 360.0 / 2 / math.pi
    result: list[str] = []

    sections: dict[tuple[bool, int], list[str]] = {}
    units = sorted(units.units, key=lambda x: x.entity_id)
    for index, unit in enumerate(units):
        if unit.type_id == 'sloc':
            info.start_locations.append(unit)
            continue
        section = (unit.type_id in tables.BUILDING_IDS, unit.player_owner)
        unit_var = f'gg_unit_{unit.type_id}_{unit.entity_id:04}'
        if unit_var in info.unit_vars_used:
            sections.setdefault(section, []).append((
                f"    set {unit_var}=CreateUnit(p, '{unit.type_id}', {unit.x:.1f}, {unit.y:.1f}, "
                f"{unit.facing * RADIANS_TO_DEGREES:.3f})"
            ).replace(' -', ' - '))
        else:
            unit_var = 'u'
            sections.setdefault(section, []).append((
                f"    set u=CreateUnit(p, '{unit.type_id}', {unit.x:.1f}, {unit.y:.1f}, "
                f"{unit.facing * RADIANS_TO_DEGREES:.3f})"
            ).replace(' -', ' - '))
        if unit.target_acquisition < -1.0:
            sections[section].append((
                f'    call SetUnitAcquireRange({unit_var}, 200.0)'
            ))
        if unit.hero_level > 1:
            sections[section].append(f'    call SetHeroLevel({unit_var}, {unit.hero_level}, false)')
        if unit.entity_id in info.item_drop_tables:
            drop_func_name = info.item_drop_tables[unit.entity_id]
            sections[section].append((
                f'    set t=CreateTrigger()\n'
                f'    call TriggerRegisterUnitEvent(t, {unit_var}, EVENT_UNIT_DEATH)\n'
                f'    call TriggerRegisterUnitEvent(t, {unit_var}, EVENT_UNIT_CHANGE_OWNER)\n'
                f'    call TriggerAddAction(t, function {drop_func_name})'
            ))

    NEUTRAL_PASSIVE_PLAYER = 27
    PLAYER_LIST = list(range(25)) + [NEUTRAL_PASSIVE_PLAYER]
    for player_id in PLAYER_LIST:
        if player_id == NEUTRAL_PASSIVE_PLAYER:
            functions = ['CreateNeutralPassiveBuildings', 'CreateNeutralPassive']
            player_literal = 'Player(PLAYER_NEUTRAL_PASSIVE)'
        elif player_id == 24:
            functions = ['CreateNeutralPassiveBuildings', 'CreateNeutralHostile']
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
    result.append('    call CreateNeutralPassiveBuildings()')
    result.append('    call CreatePlayerBuildings()')
    result.append('    call CreateNeutralHostile()')
    result.append('    call CreateNeutralPassive()')
    result.append('    call CreatePlayerUnits()')
    result.append('endfunction\n')

    return result


def generate_region_setup(regions: w3r.War3RegionInfo) -> list[str]:
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
            # Todo: the last parameter is z, which presumably comes from the w3e file
            result.append((
                f'    call SetSoundPosition({region.ambient_sound}, {mid_x:.1f}, {mid_y:.1f}, -250.0)'
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


def generate_upgrades_setup(info: w3i.War3MapInformation) -> list[str]:
    result: list[str] = []
    players_present = {player.player_id for player in info.players}
    written = {player_id: set() for player_id in range(24)}
    player_lines: dict[int, list[str]] = {}
    for upgrade in info.upgrades:
        for player_id in range(24):
            if player_id not in players_present:
                continue
            if (1 << player_id) & upgrade.player_flags:
                if upgrade.upgrade_id in written[player_id]:
                    continue
                lines = player_lines.setdefault(player_id, [])
                if upgrade.availability == w3i.UpgradeAvailability.Unavailable:
                    lines.append(f"    call SetPlayerTechMaxAllowed(Player({player_id}), '{upgrade.upgrade_id}', 0)")
                elif upgrade.availability == w3i.UpgradeAvailability.Researched:
                    lines.append(f"    call SetPlayerTechResearched(Player({player_id}), '{upgrade.upgrade_id}', 1)")
                written[player_id].add(upgrade.upgrade_id)
    for player_id in range(24):
        if player_id not in players_present:
            continue
        if player_id in player_lines:
            result.append(f'function InitUpgrades_Player{player_id} takes nothing returns nothing')
            result.extend(player_lines[player_id])
            result.append('endfunction\n')
    result.append('function InitUpgrades takes nothing returns nothing')
    for player_id in range(24):
        if player_id in player_lines:
            result.append(f'    call InitUpgrades_Player{player_id}()')
    result.append('endfunction\n')
    return result


def generate_techtree_setup(info: w3i.War3MapInformation) -> list[str]:
    result: list[str] = []
    players_present = {player.player_id for player in info.players}
    written = {player_id: set() for player_id in range(24)}
    player_lines: dict[int, list[str]] = {}
    for upgrade in info.technologies:
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
        allied_section = ['    // Allied']
        shared_vision_section = ['    // Shared Vision']
        if force.force_flags:
            for player in map_info.players:
                if not ((1 << player.player_id) & force.player_mask_flags):
                    continue
                for player2 in map_info.players:
                    if not ((1 << player.player_id) & force.player_mask_flags):
                        continue
                    if player.player_id == player2.player_id:
                        continue
                    allied_section.append(f'    call setPlayerAllianceStateAllyBJ( Player({player.player_id}), Player({player2.player_id}), true )')
                    shared_vision_section.append(f'    call SetPlayerAllianceStateVisionBJ( Player({player.player_id}), Player({player2.player_id}), true )')
                allied_section.append('')
                shared_vision_section.append('')
            if w3i.ForcesFlags.Allied & force.force_flags:
                result.extend(allied_section)
            if w3i.ForcesFlags.ShareVision & force.force_flags:
                result.extend(shared_vision_section)
    result.append('endfunction\n')

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
    return result


def generate_main(info: GenInfo, map_info: w3i.War3MapInformation) -> list[str]:
    result = [
        '//===========================================================================',
        'function main takes nothing returns nothing',
    ]
    result.append((
        f'    call SetCameraBounds('
        f'{map_info.camera_bounds[1] - 384:.1f} + GetCameraMargin(CAMERA_MARGIN_LEFT), '
        f'{map_info.camera_bounds[0] - 384:.1f} + GetCameraMargin(CAMERA_MARGIN_BOTTOM), '
        f'{map_info.camera_bounds[2] + 512:.1f} -GetCameraMargin(CAMERA_MARGIN_RIGHT), '
        f'{map_info.camera_bounds[3] + 256:.1f} -GetCameraMargin(CAMERA_MARGIN_TOP), '
        f'{map_info.camera_bounds[7] - 384:.1f} + GetCameraMargin(CAMERA_MARGIN_LEFT), '
        f'{map_info.camera_bounds[5] + 256:.1f} -GetCameraMargin(CAMERA_MARGIN_TOP), '
        f'{map_info.camera_bounds[6] + 512:.1f} -GetCameraMargin(CAMERA_MARGIN_RIGHT), '
        f'{map_info.camera_bounds[4] - 384:.1f} + GetCameraMargin(CAMERA_MARGIN_BOTTOM)'
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
    result.append(f'    call CreateAllUnits()')
    result.append(f'    call InitBlizzard()')
    result.append('\n')
    result.append(f'    call InitGlobals()')
    result.append(f'    call InitCustomTriggers()')
    result.append(f'    call RunInitializationTriggers()\n')

    result.append('endfunction\n')
    return result


def generate_map_configuration(info: GenInfo, map_info: w3i.War3MapInformation) -> list[str]:
    result = ['function config takes nothing returns nothing']
    result.append(f'    call SetMapName("{map_info.map_name}")')
    result.append(f'    call SetMapDescription("{map_info.map_description}")')
    result.append(f'    call SetPlayers({len(map_info.players)})')
    result.append(f'    call SetTeams({len(map_info.forces) + 1})')
    if w3i.MapFlags.HIDE_MINIMAP in map_info.flags:
        result.append(f'    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)')
    result.append('')
    
    active_player_ids = [p.player_id for p in map_info.players]
    index = 0
    for unit in sorted(info.start_locations, key=lambda x: x.player_owner):
        if unit.player_owner not in active_player_ids:
            continue
        result.append((
            f'    call DefineStartLocation({index}, {unit.x:.1f}, {unit.y:.1f})'
        ).replace(' -', ' - '))
        index += 1
    result.append('\n    // Player setup')
    if w3i.MapFlags.FIXED_FORCES:
        result.append('    call InitCustomPlayerSlots()')
    if w3i.MapFlags.FIXED_FORCES:
        result.append('    call InitCustomTeams()')
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
                if parameter.value not in info.doodad_vars_used:
                    info.doodad_vars_used.append(parameter.value)


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


def generate_operator(func: wtg.EcaFunction) -> str:
    type_hint = func.name[len('OperatorCompare'):].lower()
    return (
        f'{generate_gui_parameter(func.parameters[0], type_hint)} '
        f'{OPERATORS[func.parameters[1].value]} '
        f'{generate_gui_parameter(func.parameters[2], type_hint)}'
    )


def generate_condition(condition: wtg.EcaFunction) -> str:
    if condition.name.startswith('OperatorCompare'):
        return generate_operator(condition)
    param_info = wtg.LIB_INFO[condition.name]
    assert len(condition.parameters) == len(param_info.arg_types)
    func_name = FUNCTION_SUBSTITUTIONS.get(condition.name, condition.name)
    parameters = [
        generate_gui_parameter(parameter, pinfo)
        for parameter, pinfo in zip(condition.parameters, param_info.arg_types)
    ]
    return f'{func_name}({", ".join(parameters)})'
    

def generate_gui_parameter(parameter: wtg.EcaParameter, paramtype: str) -> str:
    subscript = ''
    if parameter.subscript is not None:
        subscript = f'[{generate_gui_parameter(parameter.subscript, "integer")}]'
    if parameter.parameter_type == wtg.EcaParameterType.Variable:
        if parameter.value.startswith('gg_'):
            return f'{parameter.value}{subscript}'
        return f'udg_{parameter.value}{subscript}'
    elif parameter.parameter_type == wtg.EcaParameterType.String:
        if paramtype == 'string' or parameter.value.startswith('TRIGSTR'):
            return f'"{parameter.value.replace("\\", "\\\\")}"'
        elif paramtype.endswith('code'):
            return f"'{parameter.value}'"
        elif paramtype.endswith('file'):
            return f'"{parameter.value.replace("\\", "\\\\")}"'
        return parameter.value
    elif parameter.parameter_type == wtg.EcaParameterType.Function:
        f = parameter.children
        assert f is not None
        return generate_condition(f)
    elif parameter.parameter_type == wtg.EcaParameterType.Preset:
        return wtg.LIB_INFO[parameter.value].arg_types[1].replace('`', '"')
    return parameter.value



def generate_gui_action(action: wtg.EcaFunction, info: GenInfo, prepend_info: PrependInfo | None) -> list[str]:
    check_parameters(action.parameters, info)
    function_name = FUNCTION_SUBSTITUTIONS.get(action.name, action.name)
    if action.name == 'CommentString':
        assert len(action.parameters) == 1, (
            f"Error: Comments only take one parameter, got {len(action.parameters)}"
        )
        return [f'{info.indent()}// {action.parameters[0].value}']
    elif action.name == 'CustomScriptCode':
        assert len(action.parameters) == 1, (
            f"Error: Custom script only takes one parameter, got {len(action.parameters)}"
        )
        return [f'{info.indent()}{escape_custom_code(action.parameters[0].value)}']
    elif action.name == 'ReturnAction':
        return [f'{info.indent()}return']
    elif action.name == 'SetVariable':
        assert len(action.parameters) == 2
        var_info = info.variables[action.parameters[0].value]
        subscript = ''
        if action.parameters[0].subscript is not None:
            subscript = f'[{generate_gui_parameter(action.parameters[0].subscript, "integer")}]'
        return [
            f'{info.indent()}set udg_{var_info.name}{subscript}'
            f'={generate_gui_parameter(action.parameters[1], var_info.variable_type)}'
        ]
    elif action.name == 'IfThenElse':
        result = [f'{info.indent()}if ( {generate_gui_parameter(action.parameters[0], "boolean")} ) then']
        info.indent_level += 4
        result.extend(generate_gui_action(action.parameters[1].children, info, prepend_info))
        info.indent_level -= 4
        result.append(f'{info.indent()}else')
        info.indent_level += 4
        result.extend(generate_gui_action(action.parameters[2].children, info, prepend_info))
        info.indent_level -= 4
        result.append(f'{info.indent()}endif')
        return result
    elif action.name == 'ForLoopA':
        assert len(action.parameters) == 3
        result = []
        result.append(f'{info.indent()}set bj_forLoopAIndex={generate_gui_parameter(action.parameters[0], "integer")}')
        result.append(f'{info.indent()}set bj_forLoopAIndexEnd={generate_gui_parameter(action.parameters[1], "integer")}')
        result.append(f'{info.indent()}loop')
        info.indent_level += 4
        result.append(f'{info.indent()}exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd')
        result.extend(generate_gui_action(action.parameters[2].children, info, prepend_info))
        result.append(f'{info.indent()}set bj_forLoopAIndex=bj_forLoopAIndex + 1')
        info.indent_level -= 4
        result.append(f'{info.indent()}endloop')
        return result
    elif action.name == 'ForGroup':
        prepend_func_name = f'Trig_{prepend_info.trigger_name}_Func{prepend_info.action_index:03}002'
        result = [
            f'{info.indent()}call {function_name}'
            f'({generate_gui_parameter(action.parameters[0], "group")}, '
            f'function {prepend_func_name})'
        ]
        prepend_info.lines.append(f'function {prepend_func_name} takes nothing returns nothing')
        _info = GenInfo(info.variables.values())
        _info.indent_level = 4
        prepend_info.lines.extend(generate_gui_action(action.parameters[1].children, _info, None))
        prepend_info.lines.append('endfunction\n')
        return result
    # todo: other special-case functions as necessary
    param_info = wtg.LIB_INFO[action.name]
    assert len(action.parameters) == len(param_info.arg_types)
    parameters = [
        generate_gui_parameter(parameter, pinfo)
        for parameter, pinfo in zip(action.parameters, param_info.arg_types)
    ]
    return [f'{info.indent()}call {function_name}({", ".join(parameters)})']


def generate_gui_trigger(trigger: wtg.Trigger, info: GenInfo) -> list[str]:
    result: list[str] = []
    # Make an index
    functions: dict[wtg.EcaFunctionType, list[wtg.EcaFunction]] = {
        _type: [] for _type in wtg.EcaFunctionType
    }
    for eca in trigger.eca_functions:
        check_parameters(eca.parameters, info)
        functions[eca.function_type].append(eca)

    # Conditions
    trigger_name = escape_name(trigger.name)
    if functions[wtg.EcaFunctionType.Condition]:
        result.append(f'function Trig_{trigger_name}_Conditions takes nothing returns boolean')
        for condition in functions[wtg.EcaFunctionType.Condition]:
            result.append(f'    if ( not ( {generate_condition(condition)} ) ) then')
            result.append('        return false')
            result.append('    endif')
        result.append('    return true')
        result.append('endfunction\n')

    # Actions
    prepend_info = PrependInfo(trigger_name, 1)
    body_result: list[str] = []
    info.indent_level = 4
    body_result.append(f'function Trig_{trigger_name}_Actions takes nothing returns nothing')
    for action in functions[wtg.EcaFunctionType.Action]:
        body_result.extend(generate_gui_action(action, info, prepend_info))
        prepend_info.action_index += 1
    body_result.append('endfunction\n')

    # Initialization
    body_result.append('//===========================================================================')
    body_result.append(f'function InitTrig_{trigger_name} takes nothing returns nothing')
    body_result.append(f'    set gg_trg_{trigger_name}=CreateTrigger()')
    if trigger.is_initially_off:
        body_result.append(f'    call DisableTrigger(gg_trg_{trigger_name})')
    for event in functions[wtg.EcaFunctionType.Event]:
        if event.name == 'MapInitializationEvent':
            info.map_init_triggers.append(f'gg_trg_{trigger_name}')
            continue
        param_info = wtg.LIB_INFO[event.name]
        assert len(param_info.arg_types) == len(event.parameters)
        parameters = ''.join([
            ", " + generate_gui_parameter(p, ptype)
            for p, ptype in zip(event.parameters, param_info.arg_types)
        ])
        body_result.append(f'    call {event.name}(gg_trg_{trigger_name}{parameters})')
    if functions[wtg.EcaFunctionType.Condition]:
        body_result.append(f'    call TriggerAddCondition(gg_trg_{trigger_name}, Condition(function Trig_{trigger_name}_Conditions))')
    body_result.append(f'    call TriggerAddAction(gg_trg_{trigger_name}, function Trig_{trigger_name}_Actions)')
    body_result.append('endfunction\n')

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
        result.append('//===========================================================================')
        result.append(f'// Trigger: {gui_trigger.name}',)
        if gui_trigger.description:
            lines = gui_trigger.description.split('\n')
            result.append('//')
            for line in lines:
                result.append(f'// {line}')
        result.append('//===========================================================================')
        if gui_trigger.is_custom_text:
            result.extend(generate_custom_text_trigger(text_trigger.text, info))
        else:
            result.extend(generate_gui_trigger(gui_trigger, info))
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
    string_table = wts.read_wts(f'{map_dir}/war3map.wts')

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

    # Unit Creation
    result.append(section_header('Unit Creation'))
    result.extend(generate_unit_setup(units, info))

    # Regions
    result.append(section_header('Regions'))
    result.extend(generate_region_setup(regions))

    # Cameras
    result.append(section_header('Cameras'))
    result.extend(generate_camera_setup(cameras))

    # Triggers
    result.append(section_header('Triggers'))
    result.extend(triggers_lines)

    # Init custom triggers
    result.append('//===========================================================================')
    result.append('function InitCustomTriggers takes nothing returns nothing')
    for trigger in gui_triggers.triggers:
        if trigger.is_enabled:
            result.append(f'    call InitTrig_{escape_name(trigger.name)}()')
    result.append('endfunction\n')

    result.append('//===========================================================================')
    result.append('function RunInitializationTriggers takes nothing returns nothing')
    for trigger_name in info.map_init_triggers:
        result.append(f'    call ConditionalTriggerExecute({trigger_name})')
    result.append('endfunction\n')

    # Upgrades
    result.append(section_header('Upgrades'))
    result.extend(generate_upgrades_setup(map_info))

    # TechTree
    result.append(section_header('TechTree'))
    result.extend(generate_techtree_setup(map_info))

    # Players
    result.append(section_header('Players'))
    result.extend(generate_players(info, map_info))

    # Main Initialization
    result.append(section_header('Main Initialization'))
    result.extend(generate_main(info, map_info))

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
    generate('maps/Human01')
