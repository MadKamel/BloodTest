local register_item = minetest.register_item


register_item(':', {
    type = 'none',
    wield_image = 'bt_player_hand.png',
    wield_scale = {x = 0.5, y = 1, z = 4},
    tool_capabilities = {
        full_punch_interval = 0.9,
        max_drop_level = 0,
        groupcaps = {
            crumbly = {
                times = {[1] = 3.00, [2] = 2.00, [3] = 1.00},
                uses = 0,
                maxlevel = 1,
            },
            cracky = {
                times = {[1] = 12.00, [2] = 9.00, [3] = 6.00},
                uses = 0,
                maxlevel = 1,
            },
            choppy = {
                times = {[1] = 9.00, [2] = 7.00, [3] = 5.00},
                uses = 0,
                maxlevel = 1,
            },
            snappy = {
                times = {[1] = 3.00, [2] = 2.00, [3] = 1.00},
                uses = 0,
                maxlevel = 1,
            },
            oddly_breakable_by_hand = {
                times = {[1] = 3.50, [2] = 2.00, [3] = 0.70},
                uses = 0,
            },
        },
        damage_groups = {fleshy = 1},
    }
})

minetest.register_on_joinplayer(function(player)
	player:get_inventory():set_width("main", 8)
	player:get_inventory():set_size("main", 8)
	player:hud_set_hotbar_itemcount(8)
	player:set_properties({
		visual = "upright_sprite",
		visual_size = { x = 1, y = 2 },
		eye_height = "1.3",
		textures = { "bt_player_front.png", "bt_player_back.png" },
	})
end)