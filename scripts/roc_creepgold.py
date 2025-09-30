"""
Updates unit data so that creeps drop gold amounts similar to RoC in TFT client
"""
import tomllib
from mapfile import doo, w3o
from typing import TypedDict
from scripts import editor_ids, mod_entity

ROC_UNIT_BALANCE_TOML = 'doc/generated/data/roc_unitbalance.toml'
TFT_UNIT_BALANCE_TOML = 'doc/generated/data/unitbalance.toml'
CREEP_PLAYER_ID = 24


class UnitBalanceData(TypedDict):
    bountydice: int
    bountysides: int
    bountyplus: int


def get_map_relevant_units(unit_doo_file: str) -> list[str]:
    data = doo.from_text_file(unit_doo_file)
    result: set[str] = set()
    for unit in data.units:
        if unit.player_owner == CREEP_PLAYER_ID and unit.type_id != 'sloc':
            result.add(unit.type_id)
    return sorted(result)


def update_units(
    units_file: str,
    units_to_update: list[str],
    roc_unit_balance_data: dict[str, UnitBalanceData],
    tft_unit_balance_data: dict[str, UnitBalanceData],
) -> None:
    data = w3o.from_text_file(units_file)

    entities = mod_entity.Entities(data.blizzard_objects.entities, is_map_entity=False)
    for unit_id in units_to_update:
        if unit_id not in roc_unit_balance_data:
            print(f"Warning: unit id {unit_id} not in balance data; skipping")
            continue
        print(f"Updating {unit_id}")
        update: dict[str, int] = {}
        for field_id, statname in (
            (editor_ids.FIELD_UNIT_STATS_GOLD_BOUNTY_BASE, 'bountyplus',),
            (editor_ids.FIELD_UNIT_STATS_GOLD_BOUNTY_NUM_DICE, 'bountydice',),
            (editor_ids.FIELD_UNIT_STATS_GOLD_BOUNTY_SIDES_PER_DIE, 'bountysides',),
        ):
            if roc_unit_balance_data[unit_id][statname] != tft_unit_balance_data[unit_id][statname]:
                update[field_id] = roc_unit_balance_data[unit_id][statname]
        if not update:
            continue
        entities.set_entity('null', unit_id, update)

    text = w3o.as_text(data)
    with open(units_file, 'w') as fp:
        fp.write(text)


def main(map_dir: str) -> None:
    unit_doo_file = f'{map_dir}/units.doo.toml'
    unit_file = f'{map_dir}/o_units.w3u.toml'

    with open(ROC_UNIT_BALANCE_TOML, 'rb') as fp:
        roc_balance_data = tomllib.load(fp)
    with open(TFT_UNIT_BALANCE_TOML, 'rb') as fp:
        tft_balance_data = tomllib.load(fp)
    units_to_update = get_map_relevant_units(unit_doo_file)
    update_units(unit_file, units_to_update, roc_balance_data, tft_balance_data)


if __name__ == '__main__':
    import sys
    import os
    USAGE = f"usage: python3 {os.path.basename(__file__)} <map directory>"

    if len(sys.argv) < 2:
        print(USAGE)
        print(f"Error: No map directory was provided")
        sys.exit(1)
    if {'-h', '-help', '--help'}.intersection(sys.argv):
        print(USAGE)
        sys.exit(0)
    map_dir = sys.argv[1]
    if not os.path.isdir(map_dir):
        print(f"Error: {map_dir} is not a directory")
        sys.exit(1)
    main(map_dir)
