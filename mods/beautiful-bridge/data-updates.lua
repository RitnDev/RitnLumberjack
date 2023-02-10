local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
----------------------------------------------------------------------

local wood = util.table.deepcopy(data.raw.item.wood)
local iron = util.table.deepcopy(data.raw.item["iron-plate"])
local brick = util.table.deepcopy(data.raw.item["stone-brick"])
local railWood = util.table.deepcopy(data.raw["rail-planner"]["bi-rail-wood"])
local railConcrete = util.table.deepcopy(data.raw["rail-planner"]["rail"])

local icons = {
    wood = { 
        icon = wood.icon,
        icon_size = wood.icon_size,
        icon_mipmaps = wood.icon_mipmaps,
        scale = 20 / 64,
        shift = {8, -8}
    },
    iron = {
        icon = iron.icon,
        icon_size = iron.icon_size,
        icon_mipmaps = iron.icon_mipmaps,
        scale = 20 / 64,
        shift = {8, -8}
    },
    brick = {
        icon = brick.icon,
        icon_size = brick.icon_size,
        icon_mipmaps = brick.icon_mipmaps,
        scale = 20 / 64,
        shift = {8, -8}
    },
    railWood = {
        icon = railWood.icon,
        icon_size = railWood.icon_size,
        icon_mipmaps = railWood.icon_mipmaps,
    },
    railConcrete = {
        icon = railConcrete.icon,
        icon_size = railConcrete.icon_size,
        icon_mipmaps = railConcrete.icon_mipmaps,
    },
}

icons.bridge = {
    wood = {},
    iron = {},
    brick = {},
}

table.insert(icons.bridge.wood, icons.railWood)
table.insert(icons.bridge.wood, icons.wood)
table.insert(icons.bridge.iron, icons.railWood)
table.insert(icons.bridge.iron, icons.iron)
table.insert(icons.bridge.brick, icons.railConcrete)
table.insert(icons.bridge.brick, icons.brick)

--delete others bridge (bio-industries)
RitnProtoTech("rail-signals"):removeRecipe("bi-rail-wood-bridge", true)


local recipeRail = RitnProtoRecipe("bbr-rail-wood")
recipeRail:changePrototype("icons", icons.bridge.wood)
recipeRail:removeIngredient("iron-stick")
recipeRail:addIngredient({name="bi-rail-wood", amount=1})
recipeRail:addIngredient({name="wood", amount=31}) -- addition : 1 + 31 = 32

recipeRail = RitnProtoRecipe("bbr-rail-iron")
recipeRail:changePrototype("icons", icons.bridge.iron)
recipeRail:removeIngredient("iron-stick")
recipeRail:addIngredient({name="bi-rail-wood", amount=1})
recipeRail:addIngredient({name="iron-plate", amount=31}) -- addition : 1 + 31 = 32

recipeRail = RitnProtoRecipe("bbr-rail-brick")
recipeRail:changePrototype("icons", icons.bridge.brick)
recipeRail:removeIngredient("iron-stick")
recipeRail:addIngredient({name="rail", amount=1})
recipeRail:addIngredient({name="stone-brick", amount=31}) -- addition : 1 + 31 = 32