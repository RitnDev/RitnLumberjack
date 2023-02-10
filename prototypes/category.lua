local RitnProtoGroup = require(ritnlib.defines.class.prototype.group)
local RitnProtoSubgroup = require(ritnlib.defines.class.prototype.subgroup)
local RitnProtoCategory = require(ritnlib.defines.class.prototype.category)
local RitnProtoFuelCategory = require(ritnlib.defines.class.prototype.fuelCategory)


--New order Item-Group

RitnProtoGroup("environment"):changePrototype("order", "a-a")
RitnProtoGroup("enemies"):changePrototype("order", "a-b")
------------------------------------------------------
RitnProtoGroup("logistics"):changePrototype("order", "w-a")
RitnProtoGroup("production"):changePrototype("order", "w-b")
RitnProtoGroup("combat"):changePrototype("order", "w-c")
RitnProtoGroup("intermediate-products"):changePrototype("order", "y-a")
------------------------------------------------------
RitnProtoGroup("fluids"):changePrototype("order", "z-a")
RitnProtoGroup("signals"):changePrototype("order", "z-b")
RitnProtoGroup("other"):changePrototype("order", "z-c")


--ITEM GROUP
RitnProtoGroup:extend("lumberjack", "a-a", 
  "__RitnLumberjack__/graphics/item-group/lumberjack.png", 385
)

--RECIPE CATEGORY
RitnProtoCategory:extend("ritn-lumberjack")
RitnProtoCategory:extend("ritn-smelting")
RitnProtoCategory:extend("ritn-sawmill")

--FUEL CATEGORY
RitnProtoFuelCategory:extend("water-fluid")
RitnProtoFuelCategory:extend("fuel-saw")

--ITEM SUBGROUP
RitnProtoSubgroup:extend("ritn-lumberjack-cokerie", "lumberjack", "b-a-a")
RitnProtoSubgroup:extend("ritn-lumberjack-items", "bio-industries", "e-f-a")
RitnProtoSubgroup:extend("ritn-disassemble", "production", "z-a-a")
