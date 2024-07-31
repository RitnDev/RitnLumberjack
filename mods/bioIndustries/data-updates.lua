---------------------------------------------
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
local RitnSubgroup = require(ritnlib.defines.class.prototype.subgroup)
---------------------------------------------


--disable technology
RitnProtoTech("tech_serre"):disable()
RitnProtoTech("coal-processing-1"):disable()
RitnProtoTech("coal-processing-2"):disable()

-- delete tile place
RitnProtoItem("wood"):changePrototype("place_as_tile", nil)


if ritnmods.lumberjack.bio then 

    -- change item-subgroup
    RitnProtoItem("bi-cokery"):changeSubgroup("bio-bio-farm-raw-entity")

    -- delete tile place
    RitnProtoItem("seedling"):changePrototype("place_result", nil)

    --disable technology
    RitnProtoTech("bi-tech-organic-plastic"):disable()

    -- disable items
    RitnProtoItem("bi-arboretum-area"):changePrototype("flags", {"hidden"})
    RitnProtoItem("bi-stone-crusher"):changePrototype("flags", {"hidden"})
    RitnProtoItem("bi-cellulose"):changePrototype("flags", {"hidden"})
    RitnProtoItem("bi-large-substation"):changePrototype("flags", {"hidden"})

    --change technology
    local rProtoTech = RitnProtoTech("bi-tech-bio-farming")
    rProtoTech:addPrerequisite("ritn-tech-lumberjack")
    rProtoTech:addPack("lumberjack-science-pack")
    rProtoTech:setCount(100)

    rProtoTech = RitnProtoTech("tech_large_wooden_chest")
    rProtoTech:removePrerequisite("ritn-tech-lumberjack")
    rProtoTech:addPrerequisite("bi-tech-bio-farming")

    rProtoTech = RitnProtoTech("bi-tech-coal-processing-1")
    rProtoTech:removePrerequisite("advanced-material-processing")
    rProtoTech:addPrerequisite("steel-processing")
    rProtoTech:addPrerequisite("ritn-tech-lumberjack")
    rProtoTech:addPack("lumberjack-science-pack")

    rProtoTech = RitnProtoTech("bi-tech-fertilizer")
    rProtoTech:removePrerequisite("fluid-handling")
    rProtoTech:addPrerequisite("sulfur-processing")
    rProtoTech:addPack("lumberjack-science-pack")

    RitnProtoTech("bi-tech-coal-processing-2"):addPack("lumberjack-science-pack")
    RitnProtoTech("bi-tech-coal-processing-3"):addPack("lumberjack-science-pack")
    RitnProtoTech("plastics"):addPrerequisite("bi-tech-coal-processing-2")

    rProtoTech = RitnProtoTech("bi-tech-advanced-biotechnology")
    rProtoTech:addPack("lumberjack-science-pack")
    rProtoTech:addPrerequisite("automation")

    
    RitnProtoTech("bi-tech-organic-plastic"):addPack("lumberjack-science-pack")
    RitnProtoTech("railway"):addPack("lumberjack-science-pack")
    RitnProtoTech("automated-rail-transportation"):addPack("lumberjack-science-pack")
    RitnProtoTech("rail-signals"):addPack("lumberjack-science-pack")
    RitnProtoTech("advanced-electronics"):addPack("lumberjack-science-pack")
    RitnProtoTech("chemical-science-pack"):addPack("lumberjack-science-pack")
    


    -- remove recipe 
    RitnProtoTech("railway"):removeRecipe("rail", true)
    RitnProtoTech("logistics"):removeRecipe("bi-wooden-chest-large", true)
    RitnProtoTech("logistics"):removeRecipe("bi-wooden-pole-big", true)
    RitnProtoTech("logistics-2"):removeRecipe("bi-wooden-chest-huge", true)
    RitnProtoTech("logistics-3"):removeRecipe("bi-wooden-chest-giga", true)
    RitnProtoTech("bi-tech-advanced-biotechnology"):removeRecipe("bi-cellulose-1", true)
    RitnProtoTech("bi-tech-advanced-biotechnology"):removeRecipe("bi-cellulose-2", true)
    RitnProtoTech("bi-tech-advanced-biotechnology"):removeRecipe("bi-battery")
    RitnProtoTech("bi-tech-advanced-biotechnology"):removeRecipe("bi-biomass-conversion-1", true)
    RitnProtoTech("bi-tech-advanced-biotechnology"):removeRecipe("bi-biomass-conversion-2", true)
    RitnProtoTech("bi-tech-advanced-biotechnology"):removeRecipe("bi-biomass-conversion-3", true)
    RitnProtoTech("bi-tech-advanced-biotechnology"):removeRecipe("bi-biomass-conversion-4", true)
    RitnProtoTech("bi-tech-advanced-biotechnology"):removeRecipe("bi-acid")
    RitnProtoTech("bi-tech-fertilizer"):removeRecipe("bi-seed-bomb-basic", true)
    RitnProtoTech("bi-tech-fertilizer"):removeRecipe("bi-seed-bomb-standard", true)
    RitnProtoTech("bi-tech-advanced-biotechnology"):removeRecipe("bi-seed-bomb-advanced", true)
    RitnProtoTech("solar-energy"):removeRecipe("bi-solar-mat", true)
    RitnProtoTech("bi-tech-bio-farming"):removeRecipe("bi-arboretum", true)
    RitnProtoTech("bi-tech-bio-farming"):removeRecipe("bi-arboretum-r1", true)
    RitnProtoTech("bi-tech-bio-farming"):removeRecipe("bi-seed-1")
    RitnProtoTech("bi-tech-bio-farming"):removeRecipe("bi-seedling-1")
    RitnProtoTech("bi-tech-bio-farming"):removeRecipe("bi-logs-1")
    RitnProtoTech("bi-tech-fertilizer"):removeRecipe("bi-arboretum-r2", true)
    RitnProtoTech("bi-tech-advanced-biotechnology"):removeRecipe("bi-arboretum-r3", true)
    RitnProtoTech("bi-tech-fertilizer"):removeRecipe("bi-arboretum-r4", true)
    RitnProtoTech("bi-tech-advanced-biotechnology"):removeRecipe("bi-arboretum-r5", true)

    -- remove recipe vanilla
    RitnProtoTech("bi-tech-coal-processing-1"):removeRecipe("bi-wood-fuel-brick")
    RitnProtoTech("bi-tech-coal-processing-2"):removeRecipe("bi-solid-fuel")

    -- recipe disassembler disable
    RitnProtoTech("automation-2"):removeRecipe("bi-burner-mining-drill-disassemble")
    RitnProtoTech("automation-2"):removeRecipe("bi-burner-inserter-disassemble")
    RitnProtoTech("automation-2"):removeRecipe("bi-long-handed-inserter-disassemble")
    RitnProtoTech("automation-2"):removeRecipe("bi-stone-furnace-disassemble")
    RitnProtoTech("advanced-material-processing"):removeRecipe("bi-steel-furnace-disassemble")
    RitnProtoTech("advanced-material-processing"):removeRecipe("bi-steel-furnace-disassemble")

    --add recipe (tech)
    RitnProtoTech("bi-tech-coal-processing-1"):addRecipe("recipe-wood-coal")
    RitnProtoTech("bi-tech-coal-processing-2"):addRecipe("recipe-cube-coal")

    -- ingredients (recipe)
    RitnProtoRecipe("bi-wooden-chest-huge"):removeIngredient("bi-wooden-chest-large")
    RitnProtoRecipe("bi-wooden-chest-huge"):addIngredient({type="item", name="ritn-large-wooden-chest", amount=16})
    RitnProtoRecipe("ritn-large-wooden-chest"):addIngredient({type="item", name="resin", amount=24})
    RitnProtoRecipe("bi-rail-wood"):removeIngredient("wood"):addIngredient({type="item", name="wood-board", amount=1})
    
    -- subgroup / category (recipe)
    RitnProtoRecipe("bi-charcoal-1"):changeSubgroup("ritn-lumberjack-cokerie")
    RitnProtoRecipe("bi-charcoal-2"):changeSubgroup("ritn-lumberjack-cokerie")
    RitnProtoRecipe("bi-coal-1"):changeSubgroup("ritn-lumberjack-cokerie")
    RitnProtoRecipe("bi-coal-2"):changeSubgroup("ritn-lumberjack-cokerie")
    RitnProtoRecipe("bi-coke-coal"):changeSubgroup("ritn-lumberjack-cokerie")
    RitnProtoRecipe("bi-pellet-coke"):changeSubgroup("ritn-lumberjack-cokerie")

    
    RitnProtoRecipe("bi-sulfur"):changeSubgroup("raw-material", "g[sulfur]-g[bi-sulfur]")
    RitnProtoRecipe("bi-basic-gas-processing"):changeSubgroup("fluid-recipes", "b[fluid-chemistry]-b[light-oil-cracking]-b[bi-basic-gas-processing]")

    -- ajout de la couleur de fumée sur la recette bi-stone-brick
    RitnProtoRecipe("bi-stone-brick"):changePrototype("crafting_machine_tint", 
        {
            primary = {r = 0.682, g = 0.624, b = 0.486, a = 1.000},
            secondary = {r = 0.116, g = 0.116, b = 0.116, a = 1.000},
            tertiary = {r = 0.682, g = 0.624, b = 0.486, a = 1.000},
            quaternary = {r = 0.17, g = 0.17, b = 0.17, a = 1.000},
        }
    )
  
    for i,subgroup in pairs(data.raw["item-subgroup"]) do 
        if subgroup.group == "bio-industries" then 
            RitnSubgroup(subgroup.name):changeGroup("lumberjack")
        end
    end




end


--[[
if ritnmods.lumberjack.bio.new then 

    ritnlib.tech.disable("tech_large_wooden_chest")

    --change technology
    ritnlib.tech.prerequisite.add("bi-tech-bio-farming-1", "ritn-tech-lumberjack")

    RitnProtoTech("bi-tech-bio-farming-1"):addPack("lumberjack-science-pack")
    ritnlib.tech.set.count("bi-tech-bio-farming-1", 100)
    RitnProtoTech("bi-tech-bio-farming-2"):addPack("lumberjack-science-pack")
    RitnProtoTech("bi-tech-bio-farming-3"):addPack("lumberjack-science-pack")
    RitnProtoTech("bi-tech-bio-farming-4"):addPack("lumberjack-science-pack")
    RitnProtoTech("bi-tech-bio-farming-4"):addPack("lumberjack-science-pack")
    
    RitnProtoTech("bi-tech-timber"):addPack("lumberjack-science-pack")
    ritnlib.tech.set.count("bi-tech-timber", 150)
    RitnProtoTech("bi-tech-ash"):addPack("lumberjack-science-pack")
    ritnlib.tech.set.count("bi-tech-ash", 150)
    
    RitnProtoTech("bi-tech-coal-processing-1"):addPack("lumberjack-science-pack")
    RitnProtoTech("bi-tech-coal-processing-2"):addPack("lumberjack-science-pack")
    RitnProtoTech("bi-tech-coal-processing-3"):addPack("lumberjack-science-pack")
    RitnProtoTech("bi-tech-fertilizer"):addPack("lumberjack-science-pack")
    RitnProtoTech("bi-tech-advanced-biotechnology"):addPack("lumberjack-science-pack")
    RitnProtoTech("bi-tech-organic-plastic"):addPack("lumberjack-science-pack")

    -- recipe disassembler disable
    RitnProtoTech("automation-2", "bi-burner-mining-drill-disassemble")
    RitnProtoTech("automation-2", "bi-burner-inserter-disassemble")
    RitnProtoTech("automation-2", "bi-long-handed-inserter-disassemble")
    RitnProtoTech("automation-2", "bi-stone-furnace-disassemble")
    RitnProtoTech("advanced-material-processing", "bi-steel-furnace-disassemble")
    RitnProtoTech("advanced-material-processing", "bi-steel-furnace-disassemble")

    --add recipe (tech)
    ritnlib.tech.recipe.add("bi-tech-coal-processing-1", "recipe-wood-coal")
    ritnlib.tech.recipe.add("bi-tech-coal-processing-2", "recipe-cube-coal")

    -- ingredients (recipe)
    ritnlib.recipe.ingredient.addNew("bi-wooden-chest-large", {type="item", name="wood-board", amount=16})
    ritnlib.recipe.ingredient.remove("bi-wooden-chest-large", "copper-plate")

    -- subgroup / category (recipe)
    data.raw.recipe["recipe-wood-coal"].subgroup = "bio-cokery"
    data.raw.recipe["recipe-wood-coal"].category = "biofarm-mod-smelting"
    data.raw.recipe["recipe-cube-coal"].subgroup = "bio-cokery"
    data.raw.recipe["recipe-cube-coal"].category = "biofarm-mod-smelting"
end
]]