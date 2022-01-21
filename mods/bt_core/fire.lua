local register_node = minetest.register_node

register_node('bt_core:fire', {
    description = 'Fire Starter',
    damage_per_second = 3,
    drawtype = 'firelike',
    paramtype = 'light',
    walkable = false,
    sunlight_propagates = true,
    tiles = { 'bt_core_fire.png' },
    light_source = 10,
    is_ground_content = true
})