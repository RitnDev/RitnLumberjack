-- INITIALIZE
-----------------------------------------------------------------

-- si le mod est activé
if ritnmods.lumberjack.enabled then
    --Update bigcommulogo
    if ritnmods.lumberjack.commuLogo and not ritnmods.miner then
        require("mods.CommuFr.commu-data-final-fixes")
    end
end
