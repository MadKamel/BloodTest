minetest.register_node("bt_core:wild_cotton", {
    description = "Wild Cotton",
    waving = "1",
    drawtype = "plantlike",
    drop = {
        max_items = 2,
        items = {
            {
                items = {"bt_core:cotton_ball 3"},
            },
            {
                items = {"bt_core:cotton_1 2"},
            }
        }
    },
    walkable = false,
    paramtype = "light",
    tiles = { "bt_core_cotton.png" },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})

minetest.register_node("bt_core:cotton_1", {
    description = "Cotton 1",
    waving = "1",
    drawtype = "plantlike",
    walkable = false,
    paramtype = "light",
    inventory_image = "bt_core_cotton_seed.png",
    wield_image = "bt_core_cotton_seed.png",
    tiles = { "bt_core_cotton_1.png" },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})

minetest.register_node("bt_core:cotton_2", {
    description = "Cotton 2",
    waving = "1",
    drawtype = "plantlike",
    walkable = false,
    paramtype = "light",
    tiles = { "bt_core_cotton_2.png" },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})

minetest.register_node("bt_core:cotton_3", {
    description = "Cotton 3",
    drop = {
        max_items = 2,
        items = {
            {
                items = {"bt_core:cotton_ball 3"},
            },
            {
                items = {"bt_core:cotton_1 2"},
            }
        }
    },
    waving = "1",
    drawtype = "plantlike",
    walkable = false,
    paramtype = "light",
    tiles = { "bt_core_cotton.png" },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})

minetest.register_node("bt_core:dead_cotton", {
    description = "Dead Cotton",
    waving = "1",
    drawtype = "plantlike",
    drop = "bt_core:cotton_1",
    walkable = false,
    paramtype = "light",
    tiles = { "bt_core_dead_cotton.png" },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})



minetest.register_abm({
	label = "Grow cotton 1 source.",
	nodenames = {"bt_core:cotton_1"},
	interval = 60,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "bt_core:cotton_2"})
	end
})

minetest.register_abm({
	label = "Grow cotton 2 source.",
	nodenames = {"bt_core:cotton_2"},
	interval = 60,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "bt_core:cotton_3"})
	end
})