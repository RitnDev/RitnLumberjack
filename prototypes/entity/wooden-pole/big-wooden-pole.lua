data:extend({
    
    
    
    ---- Big Wooden Pole	
    {
        type = "electric-pole",
        name = "big-wooden-pole",
        icon = "__RitnLumberjack__/graphics/icons/big-wooden-pole.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "big-wooden-pole"},
        max_health = 150,
        corpse = "medium-remnants",
        resistances = 
        {
          {
            type = "fire",
            percent = 100
          },
          {
            type = "physical",
            percent = 10
          }
        },
        collision_box = {{-0.3,-0.3}, {0.3,0.3}},
        selection_box = {{-0.5,-0.5}, {0.5,0.5}},
        drawing_box = {{-1, -6}, {1, 0.5}},
        maximum_wire_distance = 24,
        supply_area_distance = 2,
        pictures =
        
            {
          filename = "__RitnLumberjack__/graphics/entity/wooden-pole/big-wooden-pole-01.png",
          priority = "high",
          width = 180,
          height = 180,
          axially_symmetrical = false,
          direction_count = 1,
          shift = {2.2, -2.5}
        },
        connection_points =
        {
          {
            shadow =
            {
              copper = {3.3, -0.1},
              green = {3.3, -0.2},
              red = {3.3, -0.3}
            },
            wire =
            {
              copper = {0.7, -4.3},
              green = {0.7,-4.3},
              red = {0.7,-4.3}
            }
          }
        },
        copper_wire_picture =
        {
          filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
          priority = "extra-high-no-scale",
          width = 224,
          height = 46
        },
        green_wire_picture =
        {
          filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
          priority = "extra-high-no-scale",
          width = 224,
          height = 46
        },
    
        red_wire_picture =
        {
          filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
          priority = "extra-high-no-scale",
          width = 224,
          height = 46
        },
        wire_shadow_picture =
        {
          filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
          priority = "extra-high-no-scale",
          width = 224,
          height = 46
        },
        radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
          width = 12,
          height = 12
        },
    }
    
        


})