local register_node = minetest.register_node

register_node('bt_core:fire', {
    description = 'Fire Starter',
    inventory_image = 'bt_core_fire_starter.png',
    wield_image = 'bt_core_fire_starter.png',
    damage_per_second = 3,
    drawtype = 'firelike',
    paramtype = 'light',
    walkable = false,
    sunlight_propagates = true,
    tiles = {{
        name = "bt_core_fire.png",
        animation = {
            type = "vertical_frames",
            aspect_w = 16,
            aspect_h = 16,
            length = 1,
        },
    }},
    light_source = 10,
    is_ground_content = true
})