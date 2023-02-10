local RitnEvent = require(ritnlib.defines.class.luaClass.event)
----------------------------------------------------------------
local function updateDiscoScience()
    RitnEvent.setIngredientColor("lumberjack-science-pack", {r = 0.3, g = 0.1, b = 0.0})
end
----------------------------------------------------------------
script.on_configuration_changed(updateDiscoScience)
script.on_init(updateDiscoScience)
