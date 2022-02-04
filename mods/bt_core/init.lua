-- Register some easy aliases for these functions.

local register_node = minetest.register_node
local register_alias = minetest.register_alias



-- Get the local modpath

local modpath = minetest.get_modpath("bt_core")



-- Run the other files in the bt_core mod

dofile(modpath.."/generation.lua")
dofile(modpath.."/wheat.lua")
dofile(modpath.."/tar.lua")
dofile(modpath.."/tree_growth.lua")
dofile(modpath.."/wool.lua")
dofile(modpath.."/molds.lua")
dofile(modpath.."/cotton.lua")
dofile(modpath.."/paintings.lua")
dofile(modpath.."/smelting.lua")
dofile(modpath.."/grass.lua")
dofile(modpath.."/dyes.lua")
dofile(modpath.."/tools.lua")
dofile(modpath.."/crafting.lua")
dofile(modpath.."/fire.lua")
dofile(modpath.."/items.lua")
dofile(modpath.."/bricks.lua")
dofile(modpath.."/leaf_decay.lua")



--		 Now to register some nodes:



-- Natural, stone nodes

register_node('bt_core:stone', {
    description = 'Stone',
    drop = 'bt_core:cobblestone',
    tiles = { 'bt_core_stone.png' },
    groups = { cracky = 3 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:cobblestone', {
    description = 'Cobblestone',
    tiles = { 'bt_core_cobblestone.png' },
    groups = { cracky = 3 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:rock', {
    description = 'Rock',
    walkable = false,
    tiles = { 'bt_core_stone.png' },
    paramtype = "light",
    drawtype = "nodebox",
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, -0.25, 0.25},
		}
    },
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:jade', {
    description = 'Jade',
    tiles = { 'bt_core_jade.png' },
    groups = { cracky = 3 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:ice', {
    description = 'Ice\nSlippery.',
    tiles = { 'bt_core_ice.png' },
    groups = { cracky = 3, slippery = 3 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:ice_crystal', {
    description = 'Ice Crystal',
    paramtype = "light",
    drawtype = 'mesh',
    mesh = 'bt_core_crystal.obj',
    tiles = { 'bt_core_ice.png' },
    groups = { cracky = 3, slippery = 3 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:stone_with_lead', {
    description = 'Stone With Lead',
    tiles = {"bt_core_stone.png^bt_core_with_lead.png"},
    groups = { cracky = 2 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:stone_with_cobalt', {
    description = 'Stone With Cobalt',
    tiles = {"bt_core_stone.png^bt_core_with_cobalt.png"},
    groups = { cracky = 2 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:stone_with_copper', {
    description = 'Stone With Copper',
    tiles = {"bt_core_stone.png^bt_core_with_copper.png"},
    groups = { cracky = 2 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})

register_node('bt_core:stone_with_tin', {
    description = 'Stone With Tin',
    tiles = {"bt_core_stone.png^bt_core_with_tin.png"},
    groups = { cracky = 2 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})



-- Tree nodes, leaves and logs.

minetest.register_node('bt_core:plum_leaves', {
	description = 'Plum Leaves',
	drop = {
		max_items = 1,
		items = {
			{items = {"bt_core:plum"}, rarity = 12},
		}
	},
                  waving = '1',
	drawtype = 'allfaces_optional',
	paramtype = 'light',
	tiles = { 'bt_core_plum_leaves.png' },
	groups = { snappy = 3 },
	is_ground_content = true,
                  sounds = bt_sounds.leaves_sounds
})

minetest.register_node('bt_core:willow_leaves', {
	description = 'Willow Leaves',
                  waving = '1',
	drop = {
		max_items = 1,
		items = {
			{items = {"bt_core:willow_seed"}, rarity = 12},
		}
	},
	drawtype = 'allfaces_optional',
	paramtype = 'light',
	tiles = { 'bt_core_willow_leaves.png' },
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
    tiles = {"bt_core_wood.png^bt_core_planks_overlay.png"},
    groups = { choppy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds
})

register_node('bt_core:willow_planks', {
    description = 'Willow Planks',
    tiles = {"bt_core_wood.png^bt_core_planks_overlay.png^[colorize:white:100"},
    groups = { choppy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds
})

register_node('bt_core:peach_planks', {
    description = 'Peach Planks',
    tiles = {"bt_core_wood.png^bt_core_planks_overlay.png^[colorize:red:25"},
    groups = { choppy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds
})

register_node('bt_core:plum_trunk', {
    description = 'Plum Trunk',
    drop = 'bt_core:plum_log',
    tiles = {"bt_core_log.png", "bt_core_log.png", "bt_core_log_side.png"},
    groups = { choppy = 3, falling_node = 1, },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds
})

register_node('bt_core:willow_trunk', {
    description = 'Willow Trunk',
    drop = 'bt_core:willow_log',
    tiles = { 'bt_core_log.png^[colorize:white:100', 'bt_core_log.png^[colorize:white:100', 'bt_core_log_side.png^[colorize:white:100' },
    groups = { choppy = 3, falling_node = 1, },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds
})

register_node('bt_core:peach_trunk', {
    description = 'Peach Trunk',
    drop = 'bt_core:peach_log',
    tiles = { 'bt_core_log.png^[colorize:red:25', 'bt_core_log.png^[colorize:red:2', 'bt_core_log_side.png^[colorize:red:25' },
    groups = { choppy = 3, falling_node = 1, },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds
})

register_node('bt_core:plum_log', {
    description = 'Plum Log',
    tiles = {"bt_core_log.png", "bt_core_log.png", "bt_core_log_side.png"},
    paramtype2 = "facedir",
    groups = { choppy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds,

    on_place = minetest.rotate_node
})

register_node('bt_core:willow_log', {
    description = 'Willow Log',
    tiles = { 'bt_core_log.png^[colorize:white:100', 'bt_core_log.png^[colorize:white:100', 'bt_core_log_side.png^[colorize:white:100' },
    paramtype2 = "facedir",
    groups = { choppy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.wood_sounds,

    on_place = minetest.rotate_node
})

register_node('bt_core:peach_log', {
    description = 'Peach Log',
    tiles = { 'bt_core_log.png^[colorize:red:25', 'bt_core_log.png^[colorize:red:25', 'bt_core_log_side.png^[colorize:red:25' },
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

register_node('bt_core:thatch', {
    description = 'Thatch\nA nice building material made out of grass.',
    tiles = { 'bt_core_thatch.png' },
    groups = { snappy = 3 },
    is_ground_content = true,
    sounds = bt_sounds.leaves_sounds
})

register_node('bt_core:mud', {
    description = 'Mud\nWet dirt.',
    tiles = { 'bt_core_mud.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:dirt_with_snow', {
    description = 'Dirt With Snow',
    drop = 'bt_core:dirt',
    tiles = { 'bt_core_snow.png', 'bt_core_dirt.png', 'bt_core_dirt_with_snow.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:mud_with_grass', {
    description = 'Mud With Grass',
    drop = 'bt_core:mud',
    tiles = { 'bt_core_mud_with_grass.png', 'bt_core_mud.png', 'bt_core_mud_with_grass_side.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:dirt_with_flint', {
    description = 'Dirt With Flint',
    drop = 'bt_core:flint 2',
    tiles = {"bt_core_dirt.png^bt_core_with_flint.png"},
    groups = { crumbly = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:dirt_with_grass', {
    description = 'Dirt With Grass',
    drop = 'bt_core:dirt',
    tiles = {"bt_core_with_grass.png", "bt_core_dirt.png",
                {name = "bt_core_dirt.png^bt_core_with_grass_side.png",
	            tileable_vertical = false}},
    groups = { crumbly = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})



-- Meat, wait why is this a block?

register_node('bt_core:raw_meat', {
    description = 'Raw Meat',
    paramtype = "light",
    drawtype = 'mesh',
    mesh = 'meat.obj',
    selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.5, 0.25, 0, 0.125},
			{-0.0625, -0.3125, 0.125, 0.0625, -0.1875, 0.5},
		}
    },
    walkable = false,
    tiles = { 'bt_core_raw_meat.png' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    on_use = minetest.item_eat(-5),
    bt_sounds.dirt_sounds
})

register_node('bt_core:cooked_meat', {
    description = 'Cooked Meat',
    paramtype = "light",
    drawtype = 'mesh',
    mesh = 'meat.obj',
    selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.5, 0.25, 0, 0.125},
			{-0.0625, -0.3125, 0.125, 0.0625, -0.1875, 0.5},
		}
    },
    walkable = false,
    tiles = { 'bt_core_cooked_meat.png' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    on_use = minetest.item_eat(5),
    bt_sounds.dirt_sounds
})



-- Clay. Used to make bricks and moulds.

register_node('bt_core:raw_clay', {
    description = 'Clay',
    tiles = { 'bt_core_clay.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    sounds = bt_sounds.dirt_sounds
})

register_node('bt_core:baked_clay', {
    description = 'Baked Clay',
    tiles = { 'bt_core_baked_clay.png' },
    groups = { cracky = 3 },
    is_ground_content = true,
    sounds = bt_sounds.stone_sounds
})



-- Water. You already know this one. At least I hope you do.

minetest.register_node("bt_core:water_source", {
	description = "Water",
	drawtype = "liquid",
	tiles = {
		{
			name = "bt_core_water_source.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 1,
				aspect_h = 1,
				length = 5.0,
			},
		},
		{
			name = "bt_core_water_source.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 1,
				aspect_h = 1,
				length = 3,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	buildable_to = true,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "bt_core:water_flowing",
	liquid_alternative_source = "bt_core:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 200, r = 80, g = 82, b = 128},
	groups = { not_in_creative_inventory = 1, water = 1 }
})

minetest.register_node("bt_core:water_flowing", {
	description = "Water",
	drawtype = "flowingliquid",
	tiles = {"bt_core_water_flowing.png"},
	special_tiles = {
		{
			name = "bt_core_water_flowing.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 1,
				aspect_h = 1,
				length = 1,
			},
		},
		{
			name = "bt_core_water_flowing.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 1,
				aspect_h = 1,
				length = 1,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	buildable_to = true,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "bt_core:water_flowing",
	liquid_alternative_source = "bt_core:water_source",
	liquid_renewable = false,
	liquid_viscosity = 1,
	post_effect_color = {a = 200, r = 80, g = 82, b = 128},
	groups = { not_in_creative_inventory = 1, water = 1 }
})



-- Now we register our basic mapgen node aliases.

register_alias('mapgen_stone', 'bt_core:stone')
register_alias('mapgen_water_source', 'bt_core:water_source')
register_alias('mapgen_river_water_source', 'bt_core:water_source')
