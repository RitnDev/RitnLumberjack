
data:extend(
{
    --Saw
    {
		--item
		type = "item",
		name = "saw",
		icon = "__RitnLumberjack__/graphics/icons/saw.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "intermediate-product",
		order = "b[iron-stick]-c[iron-gear-wheel]",
    stack_size = 100,
    fuel_category = "fuel-saw",
    fuel_value = "1MJ"
  },
  

    {
        --recipe
        type = "recipe",
        name = "saw",
        energy_required = 1,
        enabled = false,
        category = "crafting",
        ingredients =
        {
          {"iron-plate", 1}
        },
        result = "saw",
        result_count = 2
    }
})



