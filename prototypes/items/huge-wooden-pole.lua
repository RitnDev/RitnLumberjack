data:extend({
    
  ---- Huge Wooden Pole
  

  --item
  {
    type = "item",
    name = "huge-wooden-pole",
    icon = "__RitnLumberjack__/graphics/icons/huge-wooden-pole.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-d[big-electric-pole]",
    place_result = "huge-wooden-pole",
    stack_size = 50

  },

  --recipe
  {
		type = "recipe",
		name = "huge-wooden-pole",
		normal =
		{
			enabled = false,
			ingredients = 
			{
			  {"wood", 5}, 
			  {"concrete", 100},   			  
			  {"big-wooden-pole", 6},  
			},
		  result = "huge-wooden-pole"
		},
		expensive =
		{
			enabled = false,
			ingredients = 
			{
			  {"wood", 10},  
			  {"concrete", 150},   				  
			  {"big-wooden-pole", 10},  
			},
		  result = "huge-wooden-pole"
		},	
		always_show_made_in = true,
		allow_decomposition = false,
	}


})