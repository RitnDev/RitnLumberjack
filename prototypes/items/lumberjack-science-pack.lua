
data:extend(
    {
        --Lumberjack Science Pack
        {
            --item (tool)
            type = "tool",
            name = "lumberjack-science-pack",
            icon = "__RitnLumberjack__/graphics/icons/lumberjack-science-pack.png",
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "science-pack",
            order = "a-a-a",
            stack_size = 200,
            durability = 1
        },
        {
            --recipe
            type = "recipe",
            name = "lumberjack-science-pack",
            energy_required = 7.5,
            enabled = true,
            ingredients =
            {
                {type="item", name="small-electric-pole", amount=8}
            },
            result = "lumberjack-science-pack",
            result_count = 1,
            crafting_machine_tint = 
            {
                primary = {r = 0.35, g = 0.276, b = 0.243, a = 1.000},
                secondary = {r = 0.409, g = 0.303, b = 0.228, a = 1.000},
                tertiary = {r = 0.409, g = 0.343, b = 0.297, a = 1.000},
                quaternary = {r = 0.551, g = 0.376, b = 0.251, a = 1.000},
            }
        }
    })

    local recipes = {"lumberjack-science-pack"}

    local limitation1 = data.raw.module["productivity-module"].limitation
    local limitation2 = data.raw.module["productivity-module-2"].limitation
    local limitation3 = data.raw.module["productivity-module-3"].limitation
    
    for _,recipe in pairs(recipes) do
      table.insert(limitation1, recipe)
      table.insert(limitation2, recipe)
      table.insert(limitation3, recipe)
    end

