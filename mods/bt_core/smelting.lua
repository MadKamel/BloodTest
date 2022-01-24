minetest.register_abm({
	label = "Bake brick.",
	nodenames = {"bt_core:raw_brick"},
	interval = 10,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "bt_core:fire" }) then
			minetest.set_node(pos, {name = "bt_core:baked_brick"})
		end
	end
})

minetest.register_abm({
	label = "Bake clay.",
	nodenames = {"bt_core:raw_clay"},
	interval = 10,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "bt_core:fire" }) then
			minetest.set_node(pos, {name = "bt_core:baked_clay"})
		end
	end
})

minetest.register_abm({
	label = "Cook meat.",
	nodenames = {"bt_core:raw_meat"},
	interval = 10,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "bt_core:fire" }) then
			minetest.set_node(pos, {name = "bt_core:cooked_meat"})
		end
	end
})