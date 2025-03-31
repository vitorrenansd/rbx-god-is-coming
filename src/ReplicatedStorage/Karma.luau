local Karma = {}
Karma.__index = Karma

function Karma.new()
    local self = setmetatable({}, Karma)

	self.karma = game.Workspace.karma

    return self
end

-- Returns a IntValue of total karma
function Karma:getKarma()
    return self.karma.Value
end

-- Increase your Karma
function Karma:plusKarma(quant)
	self.karma.Value = self.karma.Value + quant
end

-- Decrease your Karma
function Karma:minusKarma(quant)
	self.karma.Value = self.karma.Value - quant
end

-- Updates karma textlabel from StarterGui
function Karma:updateKarmaDisplay(TextLabel)
	local newValue = self:getKarma()

	if newValue <= 15 then
		TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Red
		TextLabel.Font = "Creepster"
		TextLabel.TextSize = 65
	elseif newValue <= 30 then
		TextLabel.TextColor3 = Color3.fromRGB(255, 85, 0) -- Orange
		TextLabel.Font = "FredokaOne"
		TextLabel.TextSize = 40
	elseif newValue <= 60 then
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White
		TextLabel.Font = "FredokaOne"
		TextLabel.TextSize = 40
	else
		TextLabel.TextColor3 = Color3.fromRGB(0, 255, 0) -- Green
		TextLabel.Font = "FredokaOne"
		TextLabel.TextSize = 40
	end
	TextLabel.Text = "Karma: ".. tostring(newValue)
end

return Karma