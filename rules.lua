-- core/rules.lua
-- Defines default rules
function default_rules()
    World:rule("death", function(e)
        if e.energy <= 0 then
            print(e.name .. " has died.")
            for i, x in ipairs(World.entities) do
                if x == e then
                    table.remove(World.entities, i)
                    break
                end
            end
        end
    end)
end
