---------------------------------------------
local mod = "__RitnLumberjack__"
local entity = mod .. "/graphics/entity/"
local prefix = ritnmods.lumberjack.prefix
---------------------------------------------
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
---------------------------------------------
RitnProtoTech(prefix .. "electric-energy-distribution-2"):disable()
---------------------------------------------
require(mod .. ".prototypes.technology")
---------------------------------------------

-- Change Technology
RitnProtoTech(prefix .. "electric-energy-distribution-1"):addRecipe(prefix .. "big-wooden-pole")
RitnProtoTech(prefix .. "plastics"):addPack(prefix .. "lumberjack-science-pack")


-- Dectorio
local rProtoRecipe = RitnProtoRecipe("dect-wood-floor")
rProtoRecipe:changePrototype("category", "ritn-sawmill")
rProtoRecipe:addNewIngredient({type="item", name="wood-board", amount=20})
rProtoRecipe:removeIngredient("wood")
rProtoRecipe:changeSubgroup("ritn-lumberjack-items", "a-a-c")

RitnProtoTech("dect-wood-floor"):addPrerequisite("ritn-tech-lumberjack")


--Update technology (Vanilla)
RitnProtoTech(prefix .. "electric-energy-distribution-1"):addPack(prefix .. "lumberjack-science-pack", 1)

if data.raw.technology[prefix .. "electric-energy-distribution-1"] then
    data.raw.technology[prefix .. "electric-energy-distribution-1"].unit.count = 100
    data.raw.technology[prefix .. "electric-energy-distribution-1"].unit.time = 30
end

RitnProtoTech(prefix .. "steel-axe"):addPack(prefix .. "lumberjack-science-pack", 1)
RitnProtoTech(prefix .. "steel-axe"):addPrerequisite("ritn-tech-lumberjack")
