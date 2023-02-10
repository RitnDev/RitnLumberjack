-- si le mod est activé
if ritnmods.lumberjack.enabled then
    
    ritnmods.lumberjack.prefix = ""
    require("mods.ritn.lumberjack-data-update")
    require("mods.bioIndustries.data-updates") 

    --activation des recette de désassemblage
    if ritnmods.lumberjack.disassembler then 
        require("prototypes.recipes.disassembler")
        ---------------------------------------------
        local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
        ---------------------------------------------
        RitnProtoTech("advanced-material-processing"):addRecipe("recipe_steel_furnace_disassemble")
        
        local automation2 = RitnProtoTech("automation-2")
        automation2:addRecipe("recipe_burner_mining_drill_disassemble")
        automation2:addRecipe("recipe_stone_furnace_disassemble")
        automation2:addRecipe("recipe_burner_inserter_disassemble")
        automation2:addRecipe("recipe_long_handed_inserter_disassemble")
    end

    if ritnmods.lumberjack.beautifulBridge then 
        require("mods.beautiful-bridge.data-updates") 
    end

    
end
