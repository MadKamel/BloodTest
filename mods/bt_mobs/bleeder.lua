local def = {
	name = "bt_mobs:bleeder",
	nametag = "Bleeder",
	stats = {
		hp = 15,
		lifetime = 500,
		can_jump = 1,
		can_swim = true,
		hostile = true,
	},
	modes = {
		idle = {chance=0.5},
		walk = {chance=0.5, moving_speed=1.0},
		follow = {},
	},
	combat = {
		attack_damage = 3,
		attack_speed = 0.8,
		attack_radius = 1.5,
		search_enemy = true,
		search_timer = 2,
		search_radius = 25,
		search_type = "player",
	},
	model = {
		mesh = "bt_mobs_bleeder.obj",
		textures = {"bt_mobs_bleeder.png"},
		collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		rotation = -90,
		animations = {
		},
	},
	spawning = {
		abm_nodes = {
			spawn_on = {"bt_core:dirt_with_grass"},
		},
		abm_interval = 50,
		abm_chance = 5000,
		max_number = 1,
		number = {min = 1, max = 3},
		time_range = {min = 10, max = 5000},
		light = {min = 0, max = 10},
		height_limit = {min = 0, max = 31000},
	},
}

creatures.register_mob(def)