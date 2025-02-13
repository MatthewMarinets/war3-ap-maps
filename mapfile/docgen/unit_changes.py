
import tomllib
from mapfile import translate


diffs = (
    ('doc/generated/data/roc_unitbalance.toml', 'doc/generated/data/unitbalance.toml', 'diff_unit.md'),
    ('doc/generated/data/roc_unitweapons.toml', 'doc/generated/data/unitweapons.toml', 'diff_weapon.md'),
)


def diff_data(roc_data_file: str, tft_data_file: str, output_file: str) -> None:
    with open(roc_data_file, 'rb') as fp:
        roc_data = tomllib.load(fp)
    with open(tft_data_file, 'rb') as fp:
        tft_data = tomllib.load(fp)

    unit_differences = {}
    for unit in roc_data:
        if unit not in tft_data:
            continue
        for key in roc_data[unit]:
            if roc_data[unit][key] != tft_data[unit].get(key):
                unit_differences.setdefault(unit, []).append((key, roc_data[unit][key], tft_data[unit].get(key)))

    with open(f'doc/generated/{output_file}', 'w') as fp:
        def _print(string: str = '') -> None:
            print(string, file=fp)
        for unit, differences in unit_differences.items():
            unit_name = translate.get_name(unit)
            _print(f'# {unit_name} ({unit})')
            _print('| Key  | ROC value | TFT value |')
            _print('| ---- | --------- | --------- |')
            for key, roc_value, tft_value in differences:
                _print(f'| {key} | {roc_value} | {tft_value} |')
            _print()


def main() -> None:
    for diff in diffs:
        diff_data(*diff)


if __name__ == '__main__':
    main()
