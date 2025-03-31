local Karma = {}
Karma.__index = Karma

function Karma.new()
    local self = setmetatable({}, Karma)

    return self
end

-- Increase your Karma
function Karma:plusKarma(quant)


end
-- Decrease your Karma
function Karma:minusKarma(quant)


end