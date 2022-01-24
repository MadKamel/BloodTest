-- Register some easy aliases for these functions.

local register_node = minetest.register_node
local register_alias = minetest.register_alias



-- Get the local modpath

local modpath = minetest.get_modpath("bt_core")



-- Run the other files in the bt_core mod

dofile(modpath.."/generation.lua")
dofile(modpath.."/tools.lua")
dofile(modpath.."/crafting.lua")
dofile(modpath.."/fire.lua")
dofile(modpath.."/items.lua")
dofile(modpath.."/leaf_decay.lua")



--		 Now to register some nodes:

-- Grass, the kind you pick up, not the kind that has dirt in it.

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



-- Natural, stone nodes

register_node('bt_core:stone', {
    description = 'Stone',
    tiles = { 'bt_core_stone.png' },
    groups = { cracky = 3 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:stone_with_lead', {
    description = 'Stone With Lead',
    tiles = { 'bt_core_stone_with_lead.png' },
    groups = { cracky = 2 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:stone_with_cobalt', {
    description = 'Stone With Cobalt',
    tiles = { 'bt_core_stone_with_cobalt.png' },
    groups = { cracky = 2 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:stone_with_copper', {
    description = 'Stone With Copper',
    tiles = { 'bt_core_stone_with_copper.png' },
    groups = { cracky = 2 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:stone_with_tin', {
    description = 'Stone With Tin',
    tiles = { 'bt_core_stone_with_tin.png' },
    groups = { cracky = 2 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})



-- Tree nodes, leaves and logs.

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

minetest.register_node('bt_core:peach_leaves', {
	description = 'Peach Leaves',
                  waving = '1',
	drawtype = 'allfaces_optional',
	paramtype = 'light',
	tiles = { 'bt_core_peach_leaves.png' },
	groups = { snappy = 3 },
	is_ground_content = true,
                  sounds = bt_sounds.leaves_sounds
})

register_node('bt_core:plum_planks', {
    description = 'Plum Planks',
    tiles = { 'bt_core_plum_planks.png' },
    groups = { choppy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds
})

register_node('bt_core:peach_planks', {
    description = 'Peach Planks',
    tiles = { 'bt_core_peach_planks.png' },
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
    sounds = bt_sounds.wood_sounds
})

register_node('bt_core:peach_trunk', {
    description = 'Peach Trunk',
    drop = 'bt_core:peach_log',
    tiles = { 'bt_core_peach_log.png', 'bt_core_peach_log.png', 'bt_core_peach_log_side.png' },
    groups = { choppy = 3, falling_node = 1, },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds
})

register_node('bt_core:plum_log', {
    description = 'Plum Log',
    tiles = { 'bt_core_plum_log.png', 'bt_core_plum_log.png', 'bt_core_plum_log_side.png' },
    paramtype2 = "facedir",
    groups = { choppy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds,

    on_place = minetest.rotate_node
})

register_node('bt_core:peach_log', {
    description = 'Peach Log',
    tiles = { 'bt_core_peach_log.png', 'bt_core_peach_log.png', 'bt_core_peach_log_side.png' },
    paramtype2 = "facedir",
    groups = { choppy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds,

    on_place = minetest.rotate_node
})



-- Furniture, plum and peach wood.

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

register_node('bt_core:peach_table', {
    description = 'Peach Table',
    tiles = { 'bt_core_peach_planks.png' },
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



-- Sand. Enough said.

register_node('bt_core:sand', {
    description = 'Sand',
    tiles = { 'bt_core_sand.png' },
    groups = { crumbly = 3, falling_node = 1, },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:sandstone', {
    description = 'Sandstone',
    tiles = { 'bt_core_sandstone.png' },
    groups = { cracky = 3 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})



-- Snow. Almost like sand, but not.

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
                  sounds = bt_sounds.dirt_sounds
})



-- Dirt, some organic inorganic material.

register_node('bt_core:dirt', {
    description = 'Dirt',
    tiles = { 'bt_core_dirt.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:dirt_with_snow', {
    description = 'Dirt With Snow',
    tiles = { 'bt_core_snow.png', 'bt_core_dirt.png', 'bt_core_dirt_with_snow.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:dirt_with_flint', {
    description = 'Dirt With Flint',
    drop = 'bt_core:flint 2',
    tiles = { 'bt_core_dirt_with_flint.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})



-- Meat, wait why is this a block?

register_node('bt_core:cooked_meat', {
    description = 'Cooked Meat',
    tiles = { 'bt_core_cooked_meat.png' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    on_use = minetest.item_eat(5),
    bt_sounds.dirt_sounds
})

register_node('bt_core:dirt_with_grass', {
    description = 'Dirt With Grass',
    drop = 'bt_core:dirt',
    tiles = { 'bt_core_dirt_with_grass.png', 'bt_core_dirt.png', 'bt_core_dirt_with_grass_side.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})



-- Clay. Used to make bricks and moulds.

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



-- Water. You already know this one. At least I hope you do.

register_node('bt_core:water_source', {
    description = 'Water Source',
    tiles = { 'bt_core_water_source.png' },
    is_ground_content = true
})



-- Now we register our basic mapgen node aliases.

register_alias('mapgen_stone', 'bt_core:stone')
register_alias('mapgen_water_source', 'bt_core:water_source')
register_alias('mapgen_river_water_source', 'bt_core:water_source')
