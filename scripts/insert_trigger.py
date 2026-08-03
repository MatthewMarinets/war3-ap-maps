
from mapfile import wtg, wct, common
from scripts import helpers


def main(map_dir: str, after_trigger: str, trigger_name: str, custom_text: bool) -> None:
    after_trigger = after_trigger.lower()
    wtg_file = f'{map_dir}/{common.TRIGGERS_GUI_FILE_NAME}'
    wct_file = f'{map_dir}/{common.TRIGGERS_CUSTOM_TEXT_FILE_NAME}'
    wtg_data = wtg.from_text_file(wtg_file)
    wct_data = wct.from_text_file(wct_file)
    for index, trigger in enumerate(wtg_data.triggers):
        if trigger.name.lower() == after_trigger:
            break
    if trigger.name.lower() != after_trigger:
        print(f"Unable to find trigger {after_trigger} in {map_dir}")
        return
    index = index + 1
    wtg_data.triggers[index:index] = [wtg.Trigger(
        trigger_name,
        category_id=trigger.category_id,
        is_custom_text=custom_text,
    )]
    text_contents = ''
    if custom_text:
        trigger_code_name = trigger_name.replace(' ', '_')
        text_contents = '\n'.join((
            f'// function InitTrig_{trigger_code_name} takes nothing returns nothing',
            '//',
            '//endfunction\n',
        ))
    wct_data.triggers[index:index] = [
        wct.War3TextTrigger(
            is_custom_text=custom_text,
            text=text_contents,
        )
    ]

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
    parser.add_argument('after_trigger')
    parser.add_argument('trigger_name')
    parser.add_argument('--custom_text', action='store_true')
    args = parser.parse_args()

    success, target_map = helpers.get_target(['', args.target_map])
    if not success:
        print(f"Invalid map code {args.target_map}")
        sys.exit(1)
    main(f'maps/{target_map}', args.after_trigger, args.trigger_name, args.custom_text)

