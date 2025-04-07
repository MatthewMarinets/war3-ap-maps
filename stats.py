from apworld.data import missions, locations, items

faction_counts = {race: 0 for race in missions.Wc3Race}
faction_counts[missions.Wc3Race.NONE] = 0
faction_counts_distinct = {race: 0 for race in missions.Wc3Race}
faction_counts_distinct[missions.Wc3Race.NONE] = 0

for item in items.Wc3Item:
    faction_counts[item.race] += item.quantity
    faction_counts_distinct[item.race] += 1
print(f'#item types: {len(items.Wc3Item)}')
print(f'sum item quantities: {sum(item.quantity for item in items.Wc3Item)}')
for faction in faction_counts:
    print(f'  {faction.name.title()} item types: {faction_counts_distinct[faction]}')
    print(f'  {faction.name.title()} item quantity: {faction_counts[faction]}')

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
    print(f'{campaign.campaign_name}:')
    for type, amount in type_to_amount.items():
        print(f'  {type.name.title()}: {amount}')
