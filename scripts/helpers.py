
import re

def get_target(args: list[str]) -> tuple[bool, str]:
    """Returns a tuple of [success, mission file stem] from a list of CLI arguments"""
    if len(args) < 2:
        return True, "Human01"
    arg = args[1].lower()
    parts = re.match(r'(hu?|or?|ud?|n?e?)?(x?)(\d*)', arg)
    if parts is None:
        return False, f"Couldn't parse argument {arg}"
    if not parts.group(1) or parts.group(1).startswith("h"):
        faction = "Human"
    elif parts.group(1).startswith("o"):
        faction = "Orc"
    elif parts.group(1).startswith("u"):
        faction = "Undead"
    elif parts.group(1).startswith("n") or parts.group(1).startswith("e"):
        faction = "NightElf"
    if parts.group(2):
        infix = "X"
    else:
        infix = ""
    if not parts.group(3):
        mission = "01"
    else:
        mission = str(int(parts.group(3)))
        if len(mission) < 2:
            mission = f"0{mission}"
    return True, f"{faction}{infix}{mission}"
