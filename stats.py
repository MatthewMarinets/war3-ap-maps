from apworld.data import missions, locations, items
import sys

ARG_HELP = '-h'
ARG_ITEMS = '-items'
ARG_ITEMGEN = '-itemgen'

if ARG_HELP in sys.argv or '-help' in sys.argv:
    print(f'{ARG_HELP:8}: help')
    print(f'{ARG_ITEMS:8}: show item stats')
    print(f'{ARG_ITEMGEN:8}: generate items.py code for items')
    sys.exit()

type_counts: dict[str, int] = {}
type_quantities: dict[str, int] = {}

for item in items.Wc3Item:
    type_counts.setdefault(type(item.type).__name__, 0)
    type_counts[type(item.type).__name__] += 1
    type_quantities.setdefault(type(item.type).__name__, 0)
    if isinstance(item.type, items.Upgrade) or isinstance(item.type, items.PickupItem):
        type_quantities[type(item.type).__name__] += item.type.quantity
    else:
        type_quantities[type(item.type).__name__] += 1
print(f'# Item types: {len(items.Wc3Item)}')
print(f'sum item quantities: {sum(type_quantities.values())}')

for item_type in type_counts:
    print(f'  {item_type}: {type_quantities[item_type]} ({type_counts[item_type]} distinct)')

print(f'# Locations: {len(locations.Wc3Location)}')
campaign_type_amount = {campaign: {} for campaign in missions.Wc3Campaign}
campaign_item_amount: dict[missions.Wc3Campaign, dict[locations.Wc3LocationType, int]] = {
    campaign: {} for campaign in missions.Wc3Campaign
}
global_item_amount: dict[str, int] = {}
for location in locations.Wc3Location:
    campaign = location.mission.campaign
    campaign_type_amount[campaign].setdefault(location.type, 0)
    campaign_type_amount[campaign][location.type] += 1
    if location.vanilla_item:
        campaign_item_amount[campaign].setdefault(location.vanilla_item, 0)
        campaign_item_amount[campaign][location.vanilla_item] += 1
        global_item_amount.setdefault(location.vanilla_item, 0)
        global_item_amount[location.vanilla_item] += 1
for campaign, type_to_amount in campaign_type_amount.items():
    print(f'- {campaign.campaign_name}: {sum(type_to_amount.values())}')
    for type, amount in type_to_amount.items():
        print(f'    {type.name.title()}: {amount}')

print()

def item_is_charged(item_name: str) -> bool:
    return (
        item_type.startswith('Potion of')
        or item_type.startswith('Scroll of')
        or item_type.startswith('Tome of')
        or item_type in (
            'Mana Stone',
            'Health Stone',
            'Healing Wards',
            'Book of the Dead',
            'Goblin Land Mines',
            'Scepter of Mastery',
            'Manual of Health',
            'Wand of Negation',
        )
    )


def item_identifier(item_name: str) -> str:
    return (
        item_name.upper()
        .replace(" ", "_")
        .replace("+", "")
        .replace("-", "_")
        .replace("'", "")
    )



if ARG_ITEMS in sys.argv:
    print('# Vanilla Items')
    print(f'{sum(global_item_amount.values())} items, {len(global_item_amount)} types')
    for campaign, item_amounts in campaign_item_amount.items():
        print(f'- {campaign.campaign_name}: {sum(item_amounts.values())}')
        for item_type, amount in sorted(item_amounts.items()):
            if not item_is_charged(item_type):
                print(f'    {item_type}: {amount}')
        for item_type, amount in sorted(item_amounts.items()):
            if item_is_charged(item_type):
                print(f'    {item_type}: {amount}')


if ARG_ITEMGEN in sys.argv:
    print('# Item Generation')
    print(f'{sum(global_item_amount.values())} items, {len(global_item_amount)} types')
    for campaign, item_amounts in campaign_item_amount.items():
        print(f'    # {campaign.campaign_name}: {sum(item_amounts.values())}')
        item_id = 2000 + campaign.value * 100
        charged_item_id = item_id + 50
        lines_1: list[str] = []
        lines_2: list[str] = []
        for item_type, amount in sorted(item_amounts.items()):
            identifier = item_identifier(item_type)
            is_charged = item_is_charged(item_type)
            suffix = ', charged=True' if is_charged else ''
            if is_charged:
                this_item_id = charged_item_id
                charged_item_id += 1
            else:
                this_item_id = item_id
                item_id += 1
            line = (
                f'    {campaign.mnemonic}_{identifier} = {" "*(28 - len(identifier))}{this_item_id}, '
                f'"{item_type} ({campaign.title_faction})",{" "*(38 - len(item_type))}'
                f'PickupItem({amount}, GameID.{identifier}, Wc3Campaign.{campaign.name}{suffix})'
            )
            if is_charged:
                lines_2.append(line)
            else:
                lines_1.append(line)
        for line in lines_1:
            print(line)
        print()
        for line in lines_2:
            print(line)
        print()
