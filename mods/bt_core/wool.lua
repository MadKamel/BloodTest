local register_node = minetest.register_node


register_node('bt_core:white_wool', {
    description = 'White Wool',
    tiles = { 'bt_core_wool.png' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:red_wool', {
    description = 'Red Wool',
    tiles = { 'bt_core_wool.png^[colorize:red:150' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:blue_wool', {
    description = 'Blue Wool',
    tiles = { 'bt_core_wool.png^[colorize:blue:150' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:yellow_wool', {
    description = 'Yellow Wool',
    tiles = { 'bt_core_wool.png^[colorize:yellow:150' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:green_wool', {
    description = 'Green Wool',
    tiles = { 'bt_core_wool.png^[colorize:green:150' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:purple_wool', {
    description = 'Purple Wool',
    tiles = { 'bt_core_wool.png^[colorize:purple:150' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:orange_wool', {
    description = 'Orange Wool',
    tiles = { 'bt_core_wool.png^[colorize:orange:150' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:black_wool', {
    description = 'Black Wool',
    tiles = { 'bt_core_wool.png^[colorize:black:150' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:brown_wool', {
    description = 'Brown Wool',
    tiles = { 'bt_core_brown_wool.png' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})