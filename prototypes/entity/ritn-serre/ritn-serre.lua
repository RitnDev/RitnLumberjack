data:extend({


  {
    type = "assembling-machine",
    name = "ritn-serre",
    icon = "__RitnLumberjack__/graphics/icons/Arboretum_Icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation", "not-rotatable"},
    minable = {hardness = 0.2, mining_time = 1.0, result = "ritn-serre"},
    collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    fast_replaceable_group = "ritn-serre",
    crafting_categories = {"ritn-recipe-serre"},
    crafting_speed = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "water-fluid",
      effectivity = 1,
      fuel_inventory_size = 1,
    },
    energy_usage = "200kW",
    resistances =
    {
      {
        type = "fire",
        percent = 20
      }
    },
    module_specification =
    {
      module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    animation =
    {
      filename = "__RitnLumberjack__/graphics/entity/ritn-serre/ritn-serre-bio.png",
      width = 320,
      height = 320,
      frame_count = 1,
			shift = {0.75, 0},
    },
    working_visualisations =
    {
      {
        light = {intensity = 1, size = 6},
        animation =
        {
          filename = "__RitnLumberjack__/graphics/entity/ritn-serre/ritn-serre-bio-on.png",
          width = 320,
          height = 320,
          frame_count = 1,
			    shift = {0.75, 0},
        }
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  }




})