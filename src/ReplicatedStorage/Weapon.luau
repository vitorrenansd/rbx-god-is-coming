local Weapon = {}
Weapon.__index = Weapon

function Weapon.new(weapon)
    local self = setmetatable({}, Weapon)

    self.player = game.Players.LocalPlayer
    self.mouse = self.player:GetMouse()
    self.weapon = weapon
    self.hitbox = self.weapon:WaitForChild("Hitbox")
    self.hitSound = self.weapon:WaitForChild("Hit")
    self.canAttack = true
    
    self:setupAttack()

    return self
end


-- Connects the attack method
function Weapon:setupAttack()
    self.mouse.Button1Down:Connect(function()
        if self.canAttack then
            self:performAttack()
        end
    end)
end

-- Attacks NPC
function Weapon:performAttack()
    self.canAttack = false

    for _, part in pairs(self.hitbox:GetTouchingParts()) do 
        local character = part.Parent
        if character and character:FindFirstChild("Humanoid") and character ~= self.player.Character then
            character.Humanoid:TakeDamage(self.weapon:GetAttribute("damage")) -- Uses weapon damage
			self.hitSound:Play()
			print("hit")
        end
    end
    task.wait(0.5) -- Cooldown
    self.canAttack = true
end

return Weapon