data:extend({
  
  
  ---- Huge Wooden Pole
  {
    type = "electric-pole",
    name = "huge-wooden-pole",
    icon = "__RitnLumberjack__/graphics/icons/huge-wooden-pole.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "huge-wooden-pole"},
    max_health = 250,
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
    drawing_box = {{-1, -7}, {1, 0.5}},
    maximum_wire_distance = 64, -- Factorio Max
    supply_area_distance = 2,

    pictures =
    {
      filename = "__RitnLumberjack__/graphics/entity/wooden-pole/huge-wooden-pole.png",
      priority = "high",
      width = 182,
      height = 167,
      direction_count = 4,
      shift = {3, -3.45},
      scale = 1.5,
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {5.7, -1.5},
          green = {4.8, -1.5},
          red = {6.6, -1.50}
        },
        wire =
        {
          copper = {0, -6.125},
          green = {-0.59375, -6.125},
          red = {0.625, -6.125}
        }
      },
      {
        shadow =
        {
          copper = {6.1, -1.3},
          green = {5.3, -1.8},
          red = {6.8, -0.9}
        },
        wire =
        {
          copper = {-0.0625, -6.125},
          green = {-0.5, -6.4375},
          red = {0.34375, -5.8125}
        }
      },
      {
        shadow =
        {
          copper = {5.9, -1.44},
          green = {6.0, -2.1},
          red = {6.0, -0.7}
        },
        wire =
        {
          copper = {-0.09375, -6.09375},
          green = {-0.09375, -6.53125},
          red = {-0.09375, -5.65625}
        }
      },
      {
        shadow =
        {
          copper = {6.1, -1.3},
          green = {6.8, -1.8},
          red = {5.35, -0.9}
        },
        wire =
        {
          copper = {-0.0625, -6.1875},
          green = {0.375, -6.5},
          red = {-0.46875, -5.90625}
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    },
  }

})