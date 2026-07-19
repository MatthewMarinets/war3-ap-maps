"""
Generation relating to options preprocessing
"""

from typing import TYPE_CHECKING

from ..data import heroes, missions
from .. import options
from dataclasses import fields

if TYPE_CHECKING:
    from ..world import Wc3World


def process_options(world: 'Wc3World') -> None:
    _randomize_empty_hero_names(world)


def _randomize_empty_hero_names(world: 'Wc3World') -> None:
    for field in fields(world.options):
        if not field.name.endswith('_name'):
            continue
        if not getattr(world.options, field.name):
            setattr(world.options, field.name, world.random.choice(heroes.ALL_HERO_NAMES))


def get_included_races_and_campaigns(
    world_options: options.Wc3Options,
) -> tuple[missions.Wc3Race, list[missions.Wc3Campaign]]:
    included_races: missions.Wc3Race = missions.Wc3Race.NONE
    included_campaigns: list[missions.Wc3Campaign] = []
    if missions.Wc3Campaign.HUMAN_1.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.HUMAN
        included_campaigns.append(missions.Wc3Campaign.HUMAN_1)
    if missions.Wc3Campaign.UNDEAD_1.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.UNDEAD
        included_campaigns.append(missions.Wc3Campaign.UNDEAD_1)
    if missions.Wc3Campaign.ORC_1.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.ORC
        included_campaigns.append(missions.Wc3Campaign.ORC_1)
    if missions.Wc3Campaign.NIGHT_ELF_1.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.NIGHT_ELF
        included_campaigns.append(missions.Wc3Campaign.NIGHT_ELF_1)
    if missions.Wc3Campaign.NIGHT_ELF_2.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.NIGHT_ELF | missions.Wc3Race.NAGA
        included_campaigns.append(missions.Wc3Campaign.NIGHT_ELF_2)
    if missions.Wc3Campaign.HUMAN_2.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.HUMAN | missions.Wc3Race.BLOOD_ELF | missions.Wc3Race.NAGA
        included_campaigns.append(missions.Wc3Campaign.HUMAN_2)
    if missions.Wc3Campaign.UNDEAD_2.title_faction in world_options.included_campaigns:
        included_races |= missions.Wc3Race.UNDEAD
        included_campaigns.append(missions.Wc3Campaign.UNDEAD_2)
    return included_races, included_campaigns