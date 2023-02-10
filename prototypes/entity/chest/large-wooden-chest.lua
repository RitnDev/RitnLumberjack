
data:extend({

        --ENTITY

        --Large Wooden Chest
{
    type = "container",
    name = "ritn-large-wooden-chest",
	  icon = "__RitnLumberjack__/graphics/icons/large_wooden_chest_icon.png",
	  icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "ritn-large-wooden-chest"},
    max_health = 200,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    fast_replaceable_group = "container",
    inventory_size = 128, -- 64
    open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
    close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    picture =
    {
      filename = "__RitnLumberjack__/graphics/entity/chest/large_wooden_chest.png",
      priority = "extra-high",
      width = 184,
      height = 132,
      shift = {0.5, 0},
	  scale = 0.5,
    },

    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }



})