
from .. import options
from ..data import missions, mission_orders
from . import test_base


class TestRegions(test_base.Wc3TestBase):
    def test_vanilla_mission_order(self):
        excluded_mission = missions.Wc3Mission.H5_MARCH_OF_THE_SCOURGE
        world_options = {
            options.OPTION_NAME[options.MissionOrder]: options.MissionOrder.option_vanilla,
            options.OPTION_NAME[options.ExcludedMissions]: {excluded_mission.short_name},
            options.OPTION_NAME[options.IncludedCampaigns]: {missions.Wc3Campaign.HUMAN_1.title_faction},
        }
        self.set_options(world_options)
        self.world.generate_early()
        self.world.create_regions()
        mission_order = self.world.g.mission_order
        self.assertEqual(len(mission_order), 8)
        positions: set[tuple[int, int]] = set()
        requirements: set[tuple[int, int]] = set()
        for slot_index, mission_slot in mission_order.items():
            positions.add(slot_index)
            if not mission_slot.requires or not mission_slot.requires.slots:
                self.assertEqual(mission_slot.mission, missions.Wc3Mission.H1_DEFENSE_OF_STRAHNBRAD)
            else:
                self.assertEqual(len(mission_slot.requires.slots), 1, msg=f"{mission_slot.requires.slots}")
                requirements.update(mission_slot.requires.slots)
                self.assertNotEqual(mission_slot.mission, excluded_mission)
        self.assertEqual(len(positions) - 1, len(requirements))

    def test_parallel_shuffled_order(self):
        world_options = {
            options.OPTION_NAME[options.MissionOrder]: options.MissionOrder.option_parallel_shuffled,
            options.OPTION_NAME[options.IncludedCampaigns]: {
                missions.Wc3Campaign.HUMAN_1.title_faction,
                missions.Wc3Campaign.UNDEAD_1.title_faction,
            },
        }
        self.set_options(world_options)
        self.world.generate_early()
        self.world.create_regions()
        mission_order = self.world.g.mission_order
        num_no_requirements_missions = 0
        num_goal_missions = 0
        for slot_index, mission_slot in mission_order.items():
            if mission_slot.flags & mission_orders.FLAG_GOAL:
                num_goal_missions += 1
                assert mission_slot.requires.slots
            if not mission_slot.requires or not mission_slot.requires.slots:
                num_no_requirements_missions += 1
        self.assertEqual(num_no_requirements_missions, 2)
        self.assertEqual(num_goal_missions, 2)

    def test_grid_order(self):
        world_options = {
            options.OPTION_NAME[options.MissionOrder]: options.MissionOrder.option_grid,
            options.OPTION_NAME[options.IncludedCampaigns]: {
                missions.Wc3Campaign.UNDEAD_1.title_faction,
            }
        }
        self.set_options(world_options)
        self.world.generate_early()
        self.world.create_regions()
        mission_order = self.world.g.mission_order
        x_coords: set[int] = set()
        y_coords: set[int] = set()
        num_goal_missions = 0
        num_starter_missions = 0
        for slot_index, mission_slot in mission_order.items():
            self.assertEqual(mission_slot.mission.campaign, missions.Wc3Campaign.UNDEAD_1)
            if not mission_slot.requires:
                num_starter_missions += 1
            if mission_slot.flags & mission_orders.FLAG_GOAL:
                num_goal_missions += 1
            x_coords.add(slot_index[0])
            y_coords.add(slot_index[1])
        self.assertEqual(num_goal_missions, 1)
        self.assertEqual(num_starter_missions, 1)
        # 3x3 grid
        self.assertEqual(len(x_coords), 3)
        self.assertEqual(len(y_coords), 3)
