-- Update result Tree
for _, tree in pairs(data.raw["tree"]) do
    if not ritnlib.util.str_start(tree.name, "dead") then
        --Add Seed
        tree.minable.results = {{type="item", name="wood", amount=4},
        {type="item", name="ritn-seed", amount=1, probability=0.01}}
    end
end