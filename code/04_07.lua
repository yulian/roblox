local part = script.Parent
local canGet = true

local function onTouch(otherPart)
    local humanoid = otherPart.Parent:FindFirstChild('Humanoid')
    if humanoid then
        local player = game.Players:FindFirstChild(otherPart.Parent.Name)
        if player and canGet then
            print("Get Point")
            canGet = false
            player.leaderstats.Points.Value = player.leaderstats.Points.Value + 1
            wait(10)
            canGet = true
        end
    end
end

part.Touched:Connect(onTouch)
