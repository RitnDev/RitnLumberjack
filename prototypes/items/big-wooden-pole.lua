data:extend({
    
    --- Big Wooden Electric Pole

    --item
	{
		type = "item",
		name = "big-wooden-pole",
		icon = "__RitnLumberjack__/graphics/icons/big-wooden-pole.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "energy-pipe-distribution",
		order = "a[energy]-b[small-electric-pole]",
		place_result = "big-wooden-pole",
		stack_size = 50

	},
    
  --recipe
  {
		type = "recipe",
		name = "big-wooden-pole",
		normal =
		{
			enabled = false,
			ingredients = 
			{
			  {"wood", 5},    
			  {"small-electric-pole", 2},  
			},
		  result = "big-wooden-pole"
		},
		expensive =
		{
			enabled = false,
			ingredients = 
			{
			  {"wood", 10},    
			  {"small-electric-pole", 4},  
			},
		  result = "big-wooden-pole"
		},	
		always_show_made_in = true,
		allow_decomposition = false,
	}  


})