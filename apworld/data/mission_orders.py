"""
Tables of mission orders -- the order and arrangements in which missions appear
"""
from dataclasses import dataclass, field

from . import missions, items as mitems


@dataclass(slots=True)
class Requirement:
    slots: list[tuple[int, int]] = field(default_factory=list)
    items: list[mitems.Wc3Item] = field(default_factory=list)
    groups: list['Requirement'] = field(default_factory=list)
    amount: int = -1


FLAG_GOAL = 0b01


@dataclass
class MissionSlot:
    x: int
    y: int
    mission_pool: tuple[missions.Wc3Mission, ...] = ()
    requires: Requirement | None = None
    flags: int = 0


# 0123456789
# 1.........
# 2.........
# 3.........
# 4...41....
# 5...32....
# 6.........
# 7.........
# 8.........
# 9.........
CIRCLE_ORDER_0 = (
    (5, 4),
    (5, 5),
    (4, 5),
    (4, 4),
)

# 0123456789
# 1.........
# 2.........
# 3...12....
# 4..8..3...
# 5..7..4...
# 6...65....
# 7.........
# 8.........
# 9.........
CIRCLE_ORDER_1 = (
    (4, 3),
    (5, 3),
    (6, 4),
    (6, 5),
    (5, 6),
    (4, 6),
    (3, 5),
    (3, 4),
)

# 0123456789
# 1.........
# 2...23....
# 3..1..4...
# 4.C....5..
# 5.B....6..
# 6..A..7...
# 7...98....
# 8.........
# 9.........
CIRCLE_ORDER_2 = (
    (3, 3),
    (4, 2),
    (5, 2),
    (6, 3),
    (7, 4),
    (7, 5),
    (6, 6),
    (5, 7),
    (4, 7),
    (3, 6),
    (2, 5),
    (2, 4),
)


H1_SOLO_CAMPAIGN = (
    MissionSlot(*CIRCLE_ORDER_1[0], (missions.Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD,)),
    MissionSlot(*CIRCLE_ORDER_1[1], (missions.Wc3Mission.H2_BLACKROCK_AND_ROLL,),
        requires=Requirement([CIRCLE_ORDER_1[0]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[2], (missions.Wc3Mission.H3_RAVAGES_OF_THE_PLAGUE,),
        requires=Requirement([CIRCLE_ORDER_1[1]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[3], (missions.Wc3Mission.H4_THE_CULT_OF_THE_DAMNED,),
        requires=Requirement([CIRCLE_ORDER_1[2]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[4], (missions.Wc3Mission.H5_MARCH_OF_THE_SCOURGE,),
        requires=Requirement([CIRCLE_ORDER_1[3]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[5], (missions.Wc3Mission.H6_THE_CULLING,),
        requires=Requirement([CIRCLE_ORDER_1[4]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[6], (missions.Wc3Mission.H7_THE_SHORES_OF_NORTHREND,),
        requires=Requirement([CIRCLE_ORDER_1[5]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[7], (missions.Wc3Mission.H8_DISSENSION,),
        requires=Requirement([CIRCLE_ORDER_1[6]]),
    ),
    MissionSlot(*CIRCLE_ORDER_2[0], (missions.Wc3Mission.H9_FROSTMOURNE,),
        requires=Requirement([CIRCLE_ORDER_1[7]]),
        flags=FLAG_GOAL,
    ),
)

U1_SOLO_CAMPAIGN = (
    MissionSlot(*CIRCLE_ORDER_1[0], (missions.Wc3Mission.U1_TRUDGING_THROUGH_THE_ASHES,)),
    MissionSlot(*CIRCLE_ORDER_1[1], (missions.Wc3Mission.U2_DIGGING_UP_THE_DEAD,),
        requires=Requirement([CIRCLE_ORDER_1[0]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[2], (missions.Wc3Mission.U3_INTO_THE_REALM_ETERNAL,),
        requires=Requirement([CIRCLE_ORDER_1[1]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[3], (missions.Wc3Mission.U4_KEY_OF_THE_THREE_MOONS,),
        requires=Requirement([CIRCLE_ORDER_1[2]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[4], (missions.Wc3Mission.U5_THE_FALL_OF_SILVERMOON,),
        requires=Requirement([CIRCLE_ORDER_1[3]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[5], (missions.Wc3Mission.U6_BLACKROCK_AND_ROLL_TOO,),
        requires=Requirement([CIRCLE_ORDER_1[4]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[6], (missions.Wc3Mission.U7_THE_SIEGE_OF_DALARAN,),
        requires=Requirement([CIRCLE_ORDER_1[5]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[7], (missions.Wc3Mission.U8_UNDER_THE_BURNING_SKY,),
        requires=Requirement([CIRCLE_ORDER_1[6]]),
        flags=FLAG_GOAL,
    ),
)

O1_SOLO_CAMPAIGN = (
    MissionSlot(*CIRCLE_ORDER_1[0], (missions.Wc3Mission.O1_LANDFALL,)),
    MissionSlot(*CIRCLE_ORDER_1[1], (missions.Wc3Mission.O2_THE_LONG_MARCH,),
        requires=Requirement([CIRCLE_ORDER_1[0]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[2], (missions.Wc3Mission.O3_CRY_OF_THE_WARSONG,),
        requires=Requirement([CIRCLE_ORDER_1[1]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[3], (missions.Wc3Mission.O4_THE_SPIRITS_OF_ASHENVALE,),
        requires=Requirement([CIRCLE_ORDER_1[2]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[4], (missions.Wc3Mission.O5_THE_HUNTER_OF_SHADOWS,),
        requires=Requirement([CIRCLE_ORDER_1[3]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[5], (missions.Wc3Mission.O6_WHERE_WYVERNS_DARE,),
        requires=Requirement([CIRCLE_ORDER_1[4]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[6], (missions.Wc3Mission.O7_THE_ORACLE,),
        requires=Requirement([CIRCLE_ORDER_1[5]]),
    ),
    MissionSlot(*CIRCLE_ORDER_1[7], (missions.Wc3Mission.O8_BY_DEMONS_BE_DRIVEN,),
        requires=Requirement([CIRCLE_ORDER_1[6]]),
        flags=FLAG_GOAL,
    ),
)
