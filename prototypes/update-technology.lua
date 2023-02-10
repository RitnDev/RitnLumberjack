local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
--------------------------------------------------------------------------------------------
-- update technology

RitnProtoTech("electric-energy-distribution-1"):removeRecipe("big-electric-pole")
RitnProtoTech("big-electric-pole"):disable()

RitnProtoTech("military"):addPack("lumberjack-science-pack")
RitnProtoTech("military-2"):addPack("lumberjack-science-pack")
RitnProtoTech("military-3"):addPack("lumberjack-science-pack")
RitnProtoTech("physical-projectile-damage-1"):addPack("lumberjack-science-pack")
RitnProtoTech("physical-projectile-damage-2"):addPack("lumberjack-science-pack")
RitnProtoTech("physical-projectile-damage-3"):addPack("lumberjack-science-pack")
RitnProtoTech("physical-projectile-damage-4"):addPack("lumberjack-science-pack")
RitnProtoTech("weapon-shooting-speed-1"):addPack("lumberjack-science-pack")
RitnProtoTech("weapon-shooting-speed-2"):addPack("lumberjack-science-pack")
RitnProtoTech("weapon-shooting-speed-3"):addPack("lumberjack-science-pack")
RitnProtoTech("weapon-shooting-speed-4"):addPack("lumberjack-science-pack")
RitnProtoTech("flamethrower"):addPack("lumberjack-science-pack")
RitnProtoTech("refined-flammables-1"):addPack("lumberjack-science-pack")
RitnProtoTech("refined-flammables-2"):addPack("lumberjack-science-pack")
RitnProtoTech("refined-flammables-3"):addPack("lumberjack-science-pack")
RitnProtoTech("refined-flammables-4"):addPack("lumberjack-science-pack")
RitnProtoTech("refined-flammables-5"):addPack("lumberjack-science-pack")
RitnProtoTech("refined-flammables-6"):addPack("lumberjack-science-pack")
RitnProtoTech("refined-flammables-7"):addPack("lumberjack-science-pack")
RitnProtoTech("research-speed-1"):addPack("lumberjack-science-pack")
RitnProtoTech("research-speed-2"):addPack("lumberjack-science-pack")
RitnProtoTech("research-speed-3"):addPack("lumberjack-science-pack")
RitnProtoTech("research-speed-4"):addPack("lumberjack-science-pack")
RitnProtoTech("research-speed-5"):addPack("lumberjack-science-pack")
RitnProtoTech("research-speed-6"):addPack("lumberjack-science-pack")


-- Dectorio : update technologies (Voir code dans RitnMiner)
RitnProtoTech("dect-earthworks"):disable()

local techDectorio = RitnProtoTech("dect-wood-floor")
techDectorio:removePack("automation-science-pack")
techDectorio:addPack("lumberjack-science-pack")
techDectorio:setCount(500):setTime(30)

techDectorio = RitnProtoTech("dect-landscaping")
techDectorio:removePack("automation-science-pack")
techDectorio:addPack("lumberjack-science-pack")
techDectorio:setCount(500):setTime(30)

techDectorio = RitnProtoTech("dect-lawnmower")
techDectorio:removePack("logistic-science-pack")
techDectorio:addPack("lumberjack-science-pack")
techDectorio:setCount(500):setTime(60)

techDectorio = RitnProtoTech("dect-concrete-paint")
techDectorio:setCount(500):setTime(60)