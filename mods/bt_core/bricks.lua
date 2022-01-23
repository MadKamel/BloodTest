local register_node = minetest.register_node


register_node('bt_core:raw_brick', {
    description = 'Raw Brick',
    tiles = { 'bt_core_clay.png' },
    paramtype = "light",
    walkable = false,
    drawtype = "nodebox",
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.3125, 0.1875, -0.25, 0.3125},
		}
    },
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:baked_brick', {
    description = 'Baked Brick',
    tiles = { 'bt_core_baked_clay.png' },
    paramtype = "light",
    walkable = false,
    drawtype = "nodebox",
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.3125, 0.1875, -0.25, 0.3125},
		}
    },
    sounds = bt_sounds.stone_sounds
})