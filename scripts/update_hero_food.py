#!/usr/bin/env python3
"""
Update script to make all heroes cost 0 food
"""

import os
from scripts import mod_entity, editor_ids as eid
from mapfile import w3o, common
from apworld.data.game_ids import GameID

HERO_IDS = [
    GameID.PALADIN,
    GameID.ARCHMAGE,
    GameID.MOUNTAIN_KING,
    GameID.BLOOD_MAGE,
    GameID.DEATH_KNIGHT,
    GameID.LICH,
    GameID.DREADLORD,
    GameID.CRYPT_LORD,
    GameID.BLADEMASTER,
    GameID.FAR_SEER,
    GameID.TAUREN_CHIEFTAIN,
    GameID.SHADOW_HUNTER,
    GameID.PRIESTESS_OF_THE_MOON,
    GameID.KEEPER_OF_THE_GROVE,
    GameID.DEMON_HUNTER,
    GameID.WARDEN,
    GameID.ALCHEMIST,
    GameID.BEASTMASTER,
    GameID.DARK_RANGER,
    GameID.FIRELORD,
    GameID.TINKER,
    GameID.NAGA_SEA_WITCH,
    GameID.PANDAREN_BREWMASTER,
    GameID.PIT_LORD,
    GameID.AKAMA,
    GameID.GHOST_KEEPER_OF_THE_GROVE,
]

def update_units(units_file: str) -> None:
    
    if not os.path.isfile(units_file):
        data = w3o.War3ObjectData(2, has_levels=False)
    else:
        data = w3o.from_text_file(units_file)
    
    entities = mod_entity.Entities(data.blizzard_objects.entities, is_map_entity=False)
    for hero_id in HERO_IDS:
        entities.set_entity(
            'null', hero_id, {
                eid.FIELD_UNIT_STATS_FOOD_COST: 0,
            }
        )

    text = w3o.as_text(data)
    with open(units_file, 'w') as fp:
        fp.write(text)


HELP = f"""
Script to upgrade unpacked map unit data. Usage:
{os.path.basename(__file__)}.py <map_dir>
"""
if __name__ == '__main__':
    import sys
    if len(sys.argv) < 2:
        print('Error: No argument given')
        print(HELP)
        sys.exit(1)
    if '-h' in sys.argv:
        print(HELP)
        sys.exit(0)
    print(f'Hero Food: updating {sys.argv[1]}')
    update_units(f'{sys.argv[1]}/{common.UNIT_DATA_FILE_NAME}')
