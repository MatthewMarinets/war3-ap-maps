from apworld.data import missions, locations, items

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
print(f'#item types: {len(items.Wc3Item)}')
print(f'sum item quantities: {sum(type_quantities.values())}')

for item_type in type_counts:
    print(f'  {item_type}: {type_quantities[item_type]} ({type_counts[item_type]} distinct)')

print(f'#locations: {len(locations.Wc3Location)}')
print(f'  Human:     {len([x for x in locations.Wc3Location if x.id >= 1000 and x.id < 2000])}')
print(f'  Undead:    {len([x for x in locations.Wc3Location if x.id >= 2000 and x.id < 3000])}')
print(f'  Orc:       {len([x for x in locations.Wc3Location if x.id >= 3000 and x.id < 4000])}')
print(f'  Night Elf: {len([x for x in locations.Wc3Location if x.id >= 4000 and x.id < 5000])}')

campaign_type_amount = {campaign: {} for campaign in missions.Wc3Campaign}
for location in locations.Wc3Location:
    campaign = location.mission.campaign
    campaign_type_amount[campaign].setdefault(location.type, 0)
    campaign_type_amount[campaign][location.type] += 1
for campaign, type_to_amount in campaign_type_amount.items():
    print(f'{campaign.campaign_name}: {sum(type_to_amount.values())}')
    for type, amount in type_to_amount.items():
        print(f'  {type.name.title()}: {amount}')
