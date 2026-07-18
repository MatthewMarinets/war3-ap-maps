"""
Tables of mission orders -- the order and arrangements in which missions appear
"""
from dataclasses import dataclass

from . import missions


@dataclass
class SlotRequirement:
    slots: list[tuple[int, int]]



FLAG_GOAL = 0b01

@dataclass
class MissionSlot:
    x: int
    y: int
    requires: list[tuple[int, int]]
    mission_pool: tuple[missions.Wc3Mission, ...]
    flags: int = 0


# 0123456789
# ..........
# ....12....
# ...C..3...
# ..B....4..
# ..A....5..
# ...9..6...
# ....87....
# ..........
# ..........

# 0123456789
# ..........
# ..........
# ...912....
# ...8..3...
# ...7..4...
# ....65....
# ..........
# ..........
# ..........

H1_SOLO_CAMPAIGN = (
    MissionSlot(4, 3, [], (
        missions.Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD,
    )),
    MissionSlot(5, 3, [(4, 3)], (
        missions.Wc3Mission.H2_BLACKROCK_AND_ROLL,
    )),
    MissionSlot(6, 4, [(5, 3)], (
        missions.Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE,
    )),
    MissionSlot(6, 5, [(6, 4)], (
        missions.Wc3Mission.H4_THE_CULT_OF_THE_DAMNED,
    )),
    MissionSlot(5, 6, [(6, 5)], (
        missions.Wc3Mission.H5_MARCH_OF_THE_SCOURGE,
    )),
    MissionSlot(4, 6, [(5, 6)], (
        missions.Wc3Mission.H6_THE_CULLING,
    )),
    MissionSlot(3, 5, [(4, 6)], (
        missions.Wc3Mission.H7_THE_SHORES_OF_NORTHREND,
    )),
    MissionSlot(3, 4, [(3, 5)], (
        missions.Wc3Mission.H8_DISSENSION,
    )),
    MissionSlot(3, 3, [(3, 4)], (
        missions.Wc3Mission.H9_FROSTMOURNE,
    ), flags=FLAG_GOAL),
)

U1_SOLO_CAMPAIGN = (
    MissionSlot(4, 3, [], (
        missions.Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES,
    )),
    MissionSlot(5, 3, [(4, 3)], (
        missions.Wc3Mission.U2_DIGGING_UP_THE_DEAD,
    )),
    MissionSlot(6, 4, [(5, 3)], (
        missions.Wc3Mission.U3_INTO_THE_REALM_ETERNAL,
    )),
    MissionSlot(6, 5, [(6, 4)], (
        missions.Wc3Mission.U4_KEY_OF_THE_THREE_MOONS,
    )),
    MissionSlot(5, 6, [(6, 5)], (
        missions.Wc3Mission.U5_THE_FALL_OF_SILVERMOON,
    )),
    MissionSlot(4, 6, [(5, 6)], (
        missions.Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO,
    )),
    MissionSlot(3, 5, [(4, 6)], (
        missions.Wc3Mission.U7_THE_SIEGE_OF_DALARAN,
    )),
    MissionSlot(3, 4, [(3, 5)], (
        missions.Wc3Mission.U8_UNDER_THE_BURNING_SKY,
    ), flags=FLAG_GOAL),
)

