data:extend({


-- COKERY
{
    type = "assembling-machine",
    name = "cokery",
    icon = "__RitnLumberjack__/graphics/icons/cokery.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    order = "a[cokery]",
    minable = {hardness = 0.2, mining_time = 0.5, result = "cokery"},
    max_health = 200,
    corpse = "medium-remnants",
    resistances = {{type = "fire", percent = 95}},
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "pollution"},	
    animation =
        {
            filename = "__RitnLumberjack__/graphics/entity/cokery/cokery_sheet.png",
            frame_count = 28,
            line_length = 7,
            width = 256,
            height = 256,
            scale = 0.5,
            shift = {0.5, -0.5},
            animation_speed = 0.1
        },		
    crafting_categories = {"ritn-smelting"},
    energy_source =
    {
        type = "electric",
        input_priority = "secondary",
        usage_priority = "secondary-input",
        emissions_per_minute = 2.5,
    },
    energy_usage = "180kW",
    crafting_speed = 1,
    ingredient_count = 1
    
}


})