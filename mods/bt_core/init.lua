local register_node = minetest.register_node
local register_alias = minetest.register_alias
local modpath = minetest.get_modpath("bt_core")

dofile(modpath.."/generation.lua")
dofile(modpath.."/tools.lua")
dofile(modpath.."/crafting.lua")
dofile(modpath.."/fire.lua")
dofile(modpath.."/items.lua")

--natural nodes

register_node('bt_core:stone', {
    description = 'Stone',
    tiles = { 'bt_core_stone.png' },
    groups = { cracky = 3 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

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

register_node('bt_core:stone_with_lead', {
    description = 'Stone With Lead',
    tiles = { 'bt_core_stone_with_lead.png' },
    groups = { cracky = 2 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

minetest.register_node('bt_core:plum_leaves', {
	description = 'Plum Leaves',
                  waving = '1',
	drawtype = 'allfaces_optional',
	paramtype = 'light',
	tiles = { 'bt_core_plum_leaves.png' },
	groups = { snappy = 3 },
	is_ground_content = true,
                  sounds = bt_sounds.leaves_sounds
})

register_node('bt_core:plum_table', {
    description = 'Plum Table',
    tiles = { 'bt_core_plum_planks.png' },
    paramtype = "light",
    drawtype = "nodebox",
    groups = { choppy = 3 },
    is_ground_content = true,
    node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.375, -0.375},
			{0.5, -0.5, -0.5, 0.375, 0.375, -0.375},
			{0.5, -0.5, 0.5, 0.375, 0.375, 0.375},
			{-0.5, -0.5, 0.5, -0.375, 0.375, 0.375},
		}
	},
    sounds = bt_sounds.wood_sounds
})

register_node('bt_core:plum_planks', {
    description = 'Plum Planks',
    tiles = { 'bt_core_plum_planks.png' },
    groups = { choppy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds
})

register_node('bt_core:plum_trunk', {
    description = 'Plum Trunk',
    drop = 'bt_core:plum_log',
    tiles = { 'bt_core_plum_log.png', 'bt_core_plum_log.png', 'bt_core_plum_log_side.png' },
    groups = { choppy = 3, falling_node = 1, },
    is_ground_content = true,
    bt_sounds.wood_sounds
})

register_node('bt_core:sand', {
    description = 'Sand',
    tiles = { 'bt_core_sand.png' },
    groups = { crumbly = 3, falling_node = 1, },
    is_ground_content = true,
    bt_sounds.dirt_sounds
})

minetest.register_node("bt_core:snow", {
	description = ("Snow"),
                  walkable = false,
	tiles = {"bt_core_snow.png"},
	inventory_image = "bt_core_snowball.png",
	wield_image = "bt_core_snowball.png",
	paramtype = "light",
	buildable_to = true,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
	},
	groups = {crumbly = 3, falling_node = 1 },
})

register_node('bt_core:sandstone', {
    description = 'Sandstone',
    tiles = { 'bt_core_sandstone.png' },
    groups = { cracky = 3 },
    is_ground_content = true
})

register_node('bt_core:plum_log', {
    description = 'Plum Log',
    tiles = { 'bt_core_plum_log.png', 'bt_core_plum_log.png', 'bt_core_plum_log_side.png' },
    paramtype2 = "facedir",
    groups = { choppy = 3 },
    is_ground_content = true,
    bt_sounds.wood_sounds,

    on_place = minetest.rotate_node
})

register_node('bt_core:dirt', {
    description = 'Dirt',
    tiles = { 'bt_core_dirt.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    bt_sounds.dirt_sounds,
})

register_node('bt_core:dirt_with_snow', {
    description = 'Dirt With Snow',
    tiles = { 'bt_core_snow.png', 'bt_core_dirt.png', 'bt_core_dirt_with_snow.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    bt_sounds.dirt_sounds,
})

register_node('bt_core:dirt_with_flint', {
    description = 'Dirt With Flint',
    drop = 'bt_core:flint 2',
    tiles = { 'bt_core_dirt_with_flint.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    bt_sounds.dirt_sounds,
})

register_node('bt_core:cooked_meat', {
    description = 'Cooked Meat',
    tiles = { 'bt_core_cooked_meat.png' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    on_use = minetest.item_eat(5),
    bt_sounds.dirt_sounds
})

register_node('bt_core:raw_clay', {
    description = 'Clay',
    tiles = { 'bt_core_clay.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    bt_sounds.dirt_sounds
})

register_node('bt_core:baked_clay', {
    description = 'Baked Clay',
    tiles = { 'bt_core_baked_clay.png' },
    groups = { cracky = 3 },
    is_ground_content = true,
    bt_sounds.stone_sounds
})

register_node('bt_core:dirt_with_grass', {
    description = 'Dirt With Grass',
    drop = 'bt_core:dirt',
    tiles = { 'bt_core_dirt_with_grass.png', 'bt_core_dirt.png', 'bt_core_dirt_with_grass_side.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    bt_sounds.dirt_sounds
})

register_node('bt_core:water_source', {
    description = 'Water Source',
    tiles = { 'bt_core_water_source.png' },
    is_ground_content = true
})



register_alias('mapgen_stone', 'bt_core:stone')
register_alias('mapgen_water_source', 'bt_core:water_source')
register_alias('mapgen_river_water_source', 'bt_core:water_source')
