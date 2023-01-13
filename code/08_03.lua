local finishPart = script.Parent

local function finished(otherPart)
    local partParent = otherPart.Parent
    local humanoid = partParent:FindFirstChild("Humanoid")
    if humanoid then
        partParent:PivotTo(game.Workspace.FinishPart.CFrame + Vector3.new(0, 10, 0))
    end

end

finishPart.Touched:Connect(finished)
