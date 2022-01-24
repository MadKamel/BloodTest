local register_node = minetest.register_node


register_node('bt_core:blank_painting', {
    description = 'Blank Painting',
    tiles = { 'bt_core_blank_painting.png' },
    paramtype = "light",
    paramtype2 = "facedir",
    drawtype = "mesh",
    groups = { choppy = 3 },
    is_ground_content = true,
    selection_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, -0.4375, 0.4375},
		}
    },
    mesh = 'bt_core_painting.obj',
    walkable = false,
    sounds = bt_sounds.wood_sounds,

    on_place = minetest.rotate_node
})

register_node('bt_core:eggcorn_painting', {
    description = 'Painting',
    tiles = { 'bt_core_eggcorn_painting.png' },
    paramtype = "light",
    paramtype2 = "facedir",
    drawtype = "mesh",
    groups = { choppy = 3 },
    is_ground_content = true,
    selection_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, -0.4375, 0.4375},
		}
    },
    mesh = 'bt_core_painting.obj',
    walkable = false,
    sounds = bt_sounds.wood_sounds,

    on_place = minetest.rotate_node
})

register_node('bt_core:dragon_painting', {
    description = 'Painting',
    tiles = { 'bt_core_dragon_painting.png' },
    paramtype = "light",
    paramtype2 = "facedir",
    drawtype = "mesh",
    groups = { choppy = 3 },
    is_ground_content = true,
    selection_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, -0.4375, 0.4375},
		}
    },
    mesh = 'bt_core_painting.obj',
    walkable = false,
    sounds = bt_sounds.wood_sounds,

    on_place = minetest.rotate_node
})