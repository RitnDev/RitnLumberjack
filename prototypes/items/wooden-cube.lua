
data:extend(
{
    --wooden-cube
        {
            --item
            type = "item",
            name = "wooden-cube",
            icon = "__RitnLumberjack__/graphics/icons/cube-wood.png",
            icon_size = 128,
            fuel_category = "chemical",
            fuel_value = "4MJ",
            subgroup = "ritn-lumberjack-items",
            order = "a-a-b",
            stack_size = 500
        },
        {
            --recipe
            type = "recipe",
            name = "wooden-cube",
            category = "ritn-sawmill",
            energy_required = 5,
            enabled = false,
            ingredients =
            {
                {"wood-board", 2}
            },
            result = "wooden-cube",
            result_count = 10
        }
})



