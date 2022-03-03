minetest.register_node("bt_core:flour", {
    description = "Flour",
    walkable = false,
    tiles = {"bt_core_flour.png"},
    paramtype = "light",
    drawtype = "nodebox",
    groups = {oddly_breakable_by_hand = 3, falling_node = 1},
    is_ground_content = true,
    node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, -0.25, 0.25},
		}
    },
    sounds = bt_sounds.dirt_sounds
})