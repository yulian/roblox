local bluePotion = script.Parent

local function reduceStamina(otherPart)
    local partParent = otherPart.Parent
    local humanoid = partParent:FindFirstChild("Humanoid")
    if humanoid then
        humanoid.Health = 1
        bluePotion:Destroy()
    end
end

for _, part in pairs(bluePotion:GetChildren()) do
    if part:IsA("Part") or part:IsA("MeshPart") then
        part.Touched:Connect(reduceStamina)
    end
end
