
data:extend({

    {
      type = "technology",
      name = ritnmods.lumberjack.prefix .. "ritn-tech-lumberjack",
      localised_name = {"technology-name.ritn-tech-lumberjack"},
      localised_description = {"technology-description.ritn-tech-lumberjack"},
      icon_size = 583,
      icon = "__RitnLumberjack__/graphics/technology/bucheron.png",
      unit =
      {
        count = 10,
        ingredients =
        {
          {"lumberjack-science-pack", 1}
        },
        time = 5
      },
      effects = {
        {type = "unlock-recipe", recipe = "scierie"},
        {type = "unlock-recipe", recipe = "wood-board"},
        {type = "unlock-recipe", recipe = "wooden-cube"},
        {type = "unlock-recipe", recipe = "saw"},
      },
      prerequisites = {},
      order = "a-a-a1"
  },

    {
      --electric-energy-distribution-2
        type = "technology",
        name = ritnmods.lumberjack.prefix .. "lumberjack-electric-energy-distribution-2",
        icon = "__base__/graphics/technology/electric-energy-distribution-1.png", -- Pour la v1.1
        icon_size = 256, icon_mipmaps = 4,
        effects = {
          {type = "unlock-recipe", recipe = "huge-wooden-pole"}
        },
        prerequisites = {
          ritnmods.lumberjack.prefix .. "electric-energy-distribution-1",
          ritnmods.lumberjack.prefix .. "concrete"
        },
        unit = {
          count = 150,
          ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"lumberjack-science-pack", 1}},
          time = 30
        }
      },

      --electric-energy-distribution-3
      {
        type = "technology",
        name = ritnmods.lumberjack.prefix .. "lumberjack-electric-energy-distribution-3",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/electric-energy-distribution-2.png", -- Pour la v1.1
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "substation"
          }
        },
        prerequisites = {
          ritnmods.lumberjack.prefix .. "lumberjack-electric-energy-distribution-2", 
          ritnmods.lumberjack.prefix .. "chemical-science-pack"
        },
        unit =
        {
          count = 200,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
          },
          time = 45
        },
        order = "c-e-c"
      },

      

      {
        --Large_wooden_chest
          type = "technology",
          name = ritnmods.lumberjack.prefix .. "tech_large_wooden_chest",
          icon = "__RitnLumberjack__/graphics/technology/chest.png",
          icon_size = 132,
          effects = {
            {type = "unlock-recipe", recipe = "ritn-large-wooden-chest"}
          },
          prerequisites = {
            ritnmods.lumberjack.prefix .. "ritn-tech-lumberjack"
          },
          unit = {
            count = 50,
            ingredients = {{"lumberjack-science-pack", 1}},
            time = 20
          }
        },

})