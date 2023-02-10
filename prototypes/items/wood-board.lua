
data:extend(
{
    {
		--item
		type = "item",
		name = "wood-board",
		icon = "__RitnLumberjack__/graphics/icons/planche.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "chemical",
    fuel_value = "2MJ",
		subgroup = "ritn-lumberjack-items",
    order = "a-a-a",
		stack_size = 500,
	},
    
  {
    --recipe
    type = "recipe",
    name = "wood-board",
    energy_required = 2.5,
    enabled = false,
    category = "ritn-sawmill",
    ingredients =
    {
      --{"saw", 1},
      {"wood", 5}
    },
      result= "wood-board",
      result_count = 10
  },

})



