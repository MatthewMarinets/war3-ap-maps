
import re
from apworld.data import missions


def get_target(args: list[str]) -> tuple[bool, str]:
    """Returns a tuple of [success, mission file stem] from a list of CLI arguments"""
    if len(args) < 2:
        return True, 'CampaignSelect'
    arg = args[1].lower()
    if arg in ('level', 'select', 'ls', 'levelselect', 'mission', 'missionselect', 'cs', 'campaignselect'):
        return True, 'CampaignSelect'
    if arg in ('ap', 'campaign', 'client', 'menu'):
        return True, 'archipelago'
    parts = re.match(r'(h(?:u|uman)?|o(?:r|rc)?|u(?:d|ndead)?|(?:n|e|ne|elf|nightelf))?(x?)(\d*)', arg)
    if parts is None:
        return False, f"Couldn't parse argument {arg}"
    if not parts.group(1) or parts.group(1).startswith("h"):
        faction = 'Human'
    elif parts.group(1).startswith('o'):
        faction = 'Orc'
    elif parts.group(1).startswith('u'):
        faction = 'Undead'
    elif parts.group(1).startswith('n') or parts.group(1).startswith('e'):
        faction = 'NightElf'
    if parts.group(2):
        infix = 'X'
    else:
        infix = ''
    if not parts.group(3):
        mission = '01'
    else:
        mission = str(int(parts.group(3)))
        if len(mission) < 2:
            mission = f'0{mission}'
    return True, f'{faction}{infix}{mission}'


def get_mission(folder_name: str) -> missions.Wc3Mission | None:
    folder_name = folder_name.lower()
    campaign = missions.Wc3Campaign.GENERAL
    mission_number = ''
    name_to_campaign = {
        'humanx': missions.Wc3Campaign.HUMAN_2,
        'human': missions.Wc3Campaign.HUMAN_1,
        'undeadx': missions.Wc3Campaign.UNDEAD_2,
        'undead': missions.Wc3Campaign.UNDEAD_1,
        'orc': missions.Wc3Campaign.ORC_1,
        'nightelfx': missions.Wc3Campaign.NIGHT_ELF_2,
        'nightelf': missions.Wc3Campaign.NIGHT_ELF_1,
    }
    for name, campaign_option in name_to_campaign.items():
        if folder_name.startswith(name):
            campaign = campaign_option
            mission_number = folder_name[len(name):]
            break
    if campaign == missions.Wc3Campaign.GENERAL:
        print('Unknown campaign')
        return None
    mission_number = mission_number.lstrip('0')
    candidate_missions = [
        mission for mission in missions.Wc3Mission
        if mission.campaign == campaign
        and mission_number in mission.short_name
    ]
    if not candidate_missions:
        print('No missions matching requirements')
        return None
    if len(candidate_missions) > 1:
        print(f'Multiple possible matches for folder: {candidate_missions}')
        return None
    return candidate_missions[0]
