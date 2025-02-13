"""
Generates documentation for gamestrings
"""

from mapfile import translate

def main() -> None:
    # Export game strings as json to doc/generated/
    translate.init_roc_map()
    translate.init_tft_map()
    translate.init_worldedit_map()
    import json
    import os
    os.makedirs('doc/generated', exist_ok=True)
    for filename, collection in (
        ('doc/generated/roc_ids.json', translate._roc_id_to_strings_map),
        ('doc/generated/tft_ids.json', translate._id_to_strings_map),
        ('doc/generated/worldedit_ids.json', translate._world_edit_strings),
    ):
        print(f'Writing {filename}')
        with open(filename, 'w') as fp:
            json.dump(collection, fp, indent=2)


if __name__ == '__main__':
    main()
