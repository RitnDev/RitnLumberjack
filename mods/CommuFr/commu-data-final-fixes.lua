

    --Update recipe bigcommulogo
    data.raw["recipe"][ritnmods.lumberjack.prefix .. "bigcommulogo"].ingredients = 
    {
        {type="item", name="wood-board", amount=1000},
        {type="item", name="coal", amount=100},
        {type="item", name="wood", amount=250},
        {type="item", name="wooden-cube", amount=500}
    }

    --Update technology commulogo-tech
    data.raw["technology"][ritnmods.lumberjack.prefix .. "commulogo-tech"].unit = 
    {
        count_formula = "100",
        ingredients =
        {
            {"automation-science-pack", 1},
            {"lumberjack-science-pack", 1}
        },
        time = 15
    }

    data.raw["technology"][ritnmods.lumberjack.prefix .. "commulogo-tech"].prerequisites =
    {
        ritnmods.lumberjack.prefix .. "bi-tech-coal-processing-2"
    }
