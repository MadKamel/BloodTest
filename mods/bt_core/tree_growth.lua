local register_node = minetest.register_node
local modpath = minetest.get_modpath("bt_core")


--Plum.

register_node('bt_core:plum_seed', {
    description = 'Plum Seed',
    tiles = { 'bt_core_plum_seed.png' },
    paramtype = "light",
    drawtype = "nodebox",
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, -0.4375, 0.0625},
		}
	},
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:plum_sapling', {
    description = 'Plum Sapling',
    waving = '1',
    drawtype = 'plantlike',
    walkable = false,
    paramtype = "light",
    inventory_image = 'bt_core_plum_sapling.png',
    wield_image = 'bt_core_plum_sapling.png',
    tiles = { 'bt_core_plum_sapling.png' },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds
})

--Growth.

minetest.register_abm({
	label = "Grow plum seed.",
	nodenames = {"bt_core:plum_seed"},
	interval = 60,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "air" }) then
			minetest.set_node(pos, {name = "bt_core:plum_sapling"})
		end
	end
})

minetest.register_abm({
	label = "Grow plum sapling.",
	nodenames = {"bt_core:plum_sapling"},
	interval = 1,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "air" }) then
			new_pos = pos	-- This bit of code pushes the schematic in the right place.
			new_pos.x = pos.x - 2
			new_pos.z = pos.z - 2
			minetest.place_schematic(new_pos, modpath.."/plum_tree.mts", 0)
		end
	end
})

--Peach.

--Growth.