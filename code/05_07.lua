local speedUpItem = script.Parent
local originalSpeed = nil

local function changeSpeed(otherPart)
    local partParent = otherPart.Parent
    local humanoid = partParent:FindFirstChild("Humanoid")
    if humanoid then
        originalSpeed = humanoid.WalkSpeed
        humanoid.WalkSpeed = 100
        print("속도 향상")
        speedUpItem:Destroy()
        wait(3)
        humanoid.WalkSpeed = originalSpeed
        print("속도 회복")
    end
end

speedUpItem.Touched:Connect(changeSpeed)
