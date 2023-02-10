local cube = 
{ 
	icon = "__RitnLumberjack__/graphics/icons/cube-wood.png",
    icon_size = 128,
	scale = 16 / 128,
    shift = {8, 8}
}

local icons = {}
local item = util.table.deepcopy(data.raw.item["wood-charcoal"])
icons.charcoal = {
	{
	icon = item.icon,
    icon_size = item.icon_size,
	icon_mipmaps = item.icon_mipmaps,
	}
}
table.insert(icons.charcoal,cube)


data:extend(
{
    --charcoal
    --[[         
        {
            --recipe
            type = "recipe",
            name = "recipe-wood-coal",
            category = "ritn-smelting",
            subgroup = "ritn-lumberjack-items",
            order = "c-a",
            energy_required = 10,
            enabled = false,
            ingredients = {{ "wood", 20}},
            result = "coal",
            result_count = 8
        }, 
    ]]
        {
            --recipe
            type = "recipe",
            name = "recipe-cube-coal",
            icons = icons.charcoal,
            category = "biofarm-mod-smelting", --"ritn-smelting",
            subgroup = "ritn-lumberjack-cokerie", --"ritn-lumberjack-items",
            order = "a[bi]-a-d[bi-6-charcoal-3]", --"c-b",
            energy_required = 10,
            enabled = false,
            ingredients = {{ "wooden-cube", 100}},
            result = "wood-charcoal",
            result_count = 10
        }

})



