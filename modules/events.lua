local table = require(ritnlib.defines.table)
local util = require(ritnlib.defines.other)


local function on_init_mod()
    log('RitnLumberjack -> on_init')

    local created_items
    pcall(function() created_items = remote.call("freeplay", "get_created_items") end)

    if table.isTable(created_items) then 
        created_items["bi-bio-farm"] = 1
        created_items["bi-bio-greenhouse"] = 2 
        created_items["bi-seed"] = 20 
        created_items["scierie"] = 2   
        created_items["offshore-pump"] = 1
        created_items["saw"] = 10     
        created_items["bi-wood-pipe-to-ground"] = 2
        created_items["bi-wood-pipe"] = 10
        created_items["boiler"] = 1
        created_items["steam-engine"] = 1
        created_items["wood"] = 100
        created_items["small-electric-pole"] = 15
        pcall(function() remote.call("freeplay", "set_created_items", created_items) end)
    else 
        log("created_items is't a table !")
    end

    log('on_init : RitnLumberjack -> finish !')
end


---------------------------------
local events = {}
---------------------------------
events.on_init = on_init_mod
events.on_load = on_init_mod
---------------------------------
log('RitnLumberjack -> events modules')
return events
---------------------------------