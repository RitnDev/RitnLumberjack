local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
--------------------------------------------------------------------------------------------
-- update recipes

local rProtoRecipe = RitnProtoRecipe("chemical-science-pack")
rProtoRecipe:addIngredient({type="item", name="lumberjack-science-pack", amount=2})
rProtoRecipe:setIngredient({type="item", name="advanced-circuit", amount=2})

rProtoRecipe = RitnProtoRecipe("flamethrower-ammo")
rProtoRecipe:addIngredient({type="item", name="resin", amount=100})
rProtoRecipe:removeIngredient("crude-oil")