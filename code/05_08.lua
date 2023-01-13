local jumpUpItem = script.Parent
local boostPower = 100

local function changeJump(otherPart)
    local partParent = otherPart.Parent
    local humanoid = partParent:FindFirstChild("Humanoid")
    if humanoid then
        jumpUpItem:Destroy()
        local currentJump = humanoid.JumpPower
        humanoid.UseJumpPower = true
        if(humanoid.JumpPower<boostPower) then
            humanoid.JumpPower = boostPower
            print("점프력 향상")
        end
        wait(3)
        humanoid.JumpPower = currentJump
        print("점프력 복구")
    end
end

jumpUpItem.Touched:Connect(changeJump)
