local number = math.random(1,2)
local glassPart = script.Parent:FindFirstChild(tostring(number))

local function drop(otherPart)
    local partParent = otherPart.Parent
    local humanoid = partParent:FindFirstChild("Humanoid")
    if humanoid then
        glassPart.Anchored = false
    end
end

glassPart.Touched:Connect(drop)
