data:extend({


        --large-wooden-chest

        --ITEM
	  {
		type = "item",
		name = "ritn-large-wooden-chest",
		icon = "__RitnLumberjack__/graphics/icons/large_wooden_chest_icon.png",
		icon_size = 64, icon_mipmaps = 4,
		fuel_category = "chemical",
		fuel_value = "32MJ",
		subgroup = "storage",
		order = "a[items]-aa[wooden-chest]",
		place_result = "ritn-large-wooden-chest",
		stack_size = 48
    },

        --RECIPE
    {
        type = "recipe",
        name = "ritn-large-wooden-chest",
        normal =
            {
                energy_required = 2,
                enabled = false,
                ingredients = 
                {	  
                  {"wood-board", 16},
                  {"wooden-chest", 8},
                },
              result = "ritn-large-wooden-chest",
              result_count = 1,
              requester_paste_multiplier = 4
            },
        expensive =
            {
                energy_required = 4,
                enabled = false,
                ingredients = 
                {	  
                  {"wood-board", 24},
                  {"wooden-chest", 8},
                },
              result = "ritn-large-wooden-chest",
              result_count = 1,
              requester_paste_multiplier = 4,
            },
            always_show_made_in = true,
            allow_decomposition = false,
      }






})   