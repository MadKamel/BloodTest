local register_node = minetest.register_node


register_node('bt_core:wild_grass', {
    description = 'Wild Grass',
    waving = '1',
    drawtype = 'plantlike',
    walkable = false,
    paramtype = "light",
    tiles = { 'bt_core_grass.png' },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})

register_node('bt_core:grass_with_mud', {
    description = 'Grass With Mud',
    waving = '1',
    drawtype = 'plantlike',
    walkable = false,
    paramtype = "light",
    tiles = { 'bt_core_grass_with_mud.png' },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})

register_node('bt_core:grass_1', {
    description = 'Grass Seed',
    waving = '1',
    drawtype = 'plantlike',
    walkable = false,
    paramtype = "light",
    tiles = { 'bt_core_grass_1.png' },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})

register_node('bt_core:grass_2', {
    description = 'Grass 2',
    waving = '1',
    drawtype = 'plantlike',
    walkable = false,
    paramtype = "light",
    tiles = { 'bt_core_grass_2.png' },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})

register_node('bt_core:grass_3', {
    description = 'Grass 3',
    waving = '1',
    drawtype = 'plantlike',
    walkable = false,
    paramtype = "light",
    tiles = { 'bt_core_grass_3.png' },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})

register_node('bt_core:grass_4', {
    description = 'Grass 4',
    waving = '1',
    drawtype = 'plantlike',
    walkable = false,
    paramtype = "light",
    tiles = { 'bt_core_grass_4.png' },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})

register_node('bt_core:grass_5', {
    description = 'Dry Grass',
    waving = '1',
    drawtype = 'plantlike',
    walkable = false,
    paramtype = "light",
    tiles = { 'bt_core_grass_5.png' },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})

--growth

minetest.register_abm({
	label = "Grow grass 1 source.",
	nodenames = {"bt_core:grass_1"},
	interval = 60,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "bt_core:water_source" }) then
			minetest.set_node(pos, {name = "bt_core:grass_2"})
		end
	end
})

minetest.register_abm({
	label = "Grow grass 2 source.",
	nodenames = {"bt_core:grass_2"},
	interval = 60,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "bt_core:water_source" }) then
			minetest.set_node(pos, {name = "bt_core:grass_3"})
		end
	end
})

minetest.register_abm({
	label = "Grow grass 3 source.",
	nodenames = {"bt_core:grass_3"},
	interval = 60,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "bt_core:water_source" }) then
			minetest.set_node(pos, {name = "bt_core:grass_4"})
		end
	end
})

minetest.register_abm({
	label = "Grow grass 4 source.",
	nodenames = {"bt_core:grass_4"},
	interval = 60,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "bt_core:water_source" }) then
			minetest.set_node(pos, {name = "bt_core:grass_5"})
		end
	end
})

--flowing

minetest.register_abm({
	label = "Grow grass 1 flowing.",
	nodenames = {"bt_core:grass_1"},
	interval = 60,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "bt_core:water_flowing" }) then
			minetest.set_node(pos, {name = "bt_core:grass_2"})
		end
	end
})

minetest.register_abm({
	label = "Grow grass 2 flowing.",
	nodenames = {"bt_core:grass_2"},
	interval = 60,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "bt_core:water_flowing" }) then
			minetest.set_node(pos, {name = "bt_core:grass_3"})
		end
	end
})

minetest.register_abm({
	label = "Grow grass 3 flowing.",
	nodenames = {"bt_core:grass_3"},
	interval = 60,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "bt_core:water_flowing" }) then
			minetest.set_node(pos, {name = "bt_core:grass_4"})
		end
	end
})

minetest.register_abm({
	label = "Grow grass 4 flowing.",
	nodenames = {"bt_core:grass_4"},
	interval = 60,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "bt_core:water_flowing" }) then
			minetest.set_node(pos, {name = "bt_core:grass_5"})
		end
	end
})