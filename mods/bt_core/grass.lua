local register_node = minetest.register_node


register_node('bt_core:grass', {
    description = 'Grass',
    waving = '1',
    drawtype = 'plantlike',
    walkable = false,
    paramtype = "light",
    tiles = { 'bt_core_grass.png' },
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
    description = 'Little Grass',
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
    description = 'Medium Grass',
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
    description = 'Large Grass',
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
    description = 'Old Grass',
    waving = '1',
    drawtype = 'plantlike',
    walkable = false,
    paramtype = "light",
    tiles = { 'bt_core_grass_5.png' },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})