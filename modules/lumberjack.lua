-- Module : Lumberjack
----------------------------------------------------------------

-- A la creation du joueur
local function on_player_created(e)
    RitnLibEvent(e):getPlayer():getForce():getRecipe("bi-seed-1"):setEnabled(true)
    RitnLibEvent(e):getPlayer():getForce():getRecipe("bi-seedling-1"):setEnabled(true)
    RitnLibEvent(e):getPlayer():getForce():getRecipe("bi-logs-1"):setEnabled(true)
    RitnLibEvent(e):getPlayer():getForce():getTechnology("ritn-tech-lumberjack").technology.researched = true
end


----------------------------------------------------------------
local module = { events = {} }
module.events[defines.events.on_player_created] = on_player_created
----------------------------------------------------------------
return module