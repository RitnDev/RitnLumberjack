data:extend({

    -- item
  {
    type = "item",
    name = "scierie",
    icon = "__RitnLumberjack__/graphics/icons/icon-scierie.png",
    icon_size = 512,
    subgroup = "bio-bio-farm-raw-entity",
    order = "a-a",
    place_result = "scierie",
    stack_size = 50
  },


    --recipe
  {
    type = "recipe",
    name = "scierie",
    energy_required = 8,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "saw", amount = 10},
      {type = "item", name = "wood", amount = 50},
      {type = "item", name = "iron-plate", amount = 4},
    },
    result = "scierie"
  },


})