local Karma = {}
Karma.__index = Karma

function Karma.new()
    local self = setmetatable({}, Karma)

    -- Default karma is 100
    self.totalKarma = 100

    return self
end

function Karma:getKarma()
    print("Total Karma: " .. self.totalKarma)
end

-- Increase your Karma
function Karma:plusKarma(quant)
    self.totalKarma = self.totalKarma + quant
end

-- Decrease your Karma
function Karma:minusKarma(quant)
    self.totalKarma = self.totalKarma - quant
end

return Karma