-- core/entity.lua
Entity = {}
Entity.__index = Entity

-- Entity builder
function Entity:new(name, energy)
    return setmetatable({
        name = name,
        energy = energy or 10
    }, self)
end

-- UPD Entity
function Entity:update()
    self.energy = self.energy - 1
end
