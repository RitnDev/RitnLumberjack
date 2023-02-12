-- INITIALIZE
-----------------------------------------------------------------
if not ritnlib then require("__RitnLib__/defines") end
local RitnProtoOre = require(ritnlib.defines.class.prototype.ore)
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
-----------------------------------------------------------------
if not ritnmods then ritnmods = {} end
if not ritnmods.lumberjack then ritnmods.lumberjack = {
    enabled = true,
    disassembler = true,
    dectorio = false,
    bio = {
        old = false,
        new = false,
    },
    spaceblock = false,
    commuLogo = false,
    beautifulBridge = false,
} end
-----------------------------------------------------------------
--BASE GAME
RitnProtoOre("coal"):remove()
RitnProtoItem("wood"):changePrototype("stack_size", 500)
---------------------------------------------
--Require
require("prototypes.category")
require("prototypes.entity")
require("prototypes.items")
require("prototypes.recipes")
require("prototypes.map-gen-presets")
-----------------------------------------------------------------
--Ajoute la recherche : lumberjack-science-pack
RitnProtoTech:addPackLab("lumberjack-science-pack")
-----------------------------------------------------------------
-- Update recipes
require("prototypes.update-recipes")
-- Update Technologies
require("prototypes.update-technology")
-----------------------------------------------------------------
--active options
if mods["Bio_Industries"] then
    if mods["Bio_Industries"] == "1.1.10" then 
        ritnmods.lumberjack.bio.old = true
    else
        ritnmods.lumberjack.bio.new = true
    end
end
if mods["spaceblock"] then ritnmods.lumberjack.spaceblock = true end
if mods["Dectorio"] then ritnmods.lumberjack.dectorio = true end
if mods["CommuLogo"] then ritnmods.lumberjack.commuLogo = true end
if mods["beautiful_bridge_railway"] then ritnmods.lumberjack.beautifulBridge = true end