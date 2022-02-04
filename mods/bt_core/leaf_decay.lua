local distance = 3

minetest.register_abm({
	label = "Remove lonely plum leaves.",
	nodenames = {"bt_core:plum_leaves"},
	interval = 1,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, distance, { "bt_core:plum_trunk" }) == nil then
			minetest.set_node(pos, {name = "air"})
		end
	end
})

minetest.register_abm({
	label = "Remove lonely willow leaves.",
	nodenames = {"bt_core:willow_leaves"},
	interval = 1,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, distance, { "bt_core:willow_trunk" }) == nil then
			minetest.set_node(pos, {name = "air"})
		end
	end
})

minetest.register_abm({
	label = "Remove lonely peach leaves.",
	nodenames = {"bt_core:peach_leaves"},
	interval = 1,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, distance, { "bt_core:peach_trunk" }) == nil then
			minetest.set_node(pos, {name = "air"})
		end
	end
})
