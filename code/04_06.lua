local part = script.Parent

local function onTouch(otherPart)
    local humanoid = otherPart.Parent:FindFirstChild('Humanoid')
    if humanoid then
        local player = game.Players:FindFirstChild(otherPart.Parent.Name)
        if player then
            print("Get Point")
            player.leaderstats.Points.Value = player.leaderstats.Points.Value + 1
        end
    end
end

part.Touched:Connect(onTouch)
