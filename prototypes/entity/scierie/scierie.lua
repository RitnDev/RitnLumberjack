--local sounds = require("__base__/prototypes/entity/demo-sounds")
local sounds = require("__base__/prototypes/entity/sounds") -- pour la v1.1

data:extend({

{
    type = "assembling-machine",
    name = "scierie",
    icon = "__RitnLumberjack__/graphics/icons/icon-scierie.png",
    icon_size = 512,
    flags = {"placeable-neutral", "placeable-player", "player-creation", "not-rotatable"},
    minable = {mining_time = 1.0, result = "scierie"},
    max_health = 500,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    collision_box = {{-2.5, -2.5}, {2.5, 2.5}},
    collision_box = {{-2, -2}, {2, 2}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"ritn-sawmill"},
    alert_icon_shift = util.by_pixel(0, 0),
    build_sound = sounds.tree_impact,
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = sounds.tree_impact,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound = sounds.tree_impact,
    working_sound =
    {
      sound = { filename = "__RitnLumberjack__/sounds/scierie/scierie.ogg", volume = 0.70 }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 10
      },
      {
        type = "explosion",
        percent = 50
      },
      {
        type = "impact",
        percent = 30
      }
    },
    result_inventory_size = 1,
    energy_usage = "50kW",
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "fuel-saw",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 1,
      
    },
    animation =
    {
      layers =
      {
        {
          filename = "__RitnLumberjack__/graphics/entity/scierie/Scierie50ShadowSunWhite.png",
          width = 1080,
          height = 1080,
          shift = {0.0625, -0.78125},
          scale = 0.221837
        }
      }
    },
  }

})