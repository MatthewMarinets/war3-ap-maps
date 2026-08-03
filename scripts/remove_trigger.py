
from mapfile import wtg, wct, common
from scripts import helpers


def main(map_dir: str, trigger_name: str) -> None:
    trigger_name = trigger_name.lower()
    wtg_file = f'{map_dir}/{common.TRIGGERS_GUI_FILE_NAME}'
    wct_file = f'{map_dir}/{common.TRIGGERS_CUSTOM_TEXT_FILE_NAME}'
    wtg_data = wtg.from_text_file(wtg_file)
    wct_data = wct.from_text_file(wct_file)
    for index, trigger in enumerate(wtg_data.triggers):
        if trigger.name.lower() == trigger_name:
            break
    if trigger.name.lower() != trigger_name:
        print(f"Unable to find trigger {trigger_name} in {map_dir}")
        return
    wtg_data.triggers.pop(index)
    wct_data.triggers.pop(index)

    wtg_contents = wtg.as_text(wtg_data)
    print(f"Writing wtg data {wtg_file}")
    with open(wtg_file, 'w') as fp:
        fp.write(wtg_contents)
    wct_contents = wct.as_text(wct_data)
    print(f"Writing wct data {wct_file}")
    with open(wct_file, 'w') as fp:
        fp.write(wct_contents)


if __name__ == '__main__':
    import sys
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('target_map')
    parser.add_argument('trigger_name')
    args = parser.parse_args()

    success, target_map = helpers.get_target(['', args.target_map])
    if not success:
        print(f"Invalid map code {args.target_map}")
        sys.exit(1)
    main(f'maps/{target_map}', args.trigger_name)

