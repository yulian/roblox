local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

local function speedUp(input)
    if input.KeyCode == Enum.KeyCode.LeftShift then
        game.Workspace[player.Name].Humanoid.WalkSpeed = 32
        print("빨리 달리기")
    end
end

local function speedDown(input)
    if input.KeyCode == Enum.KeyCode.LeftShift then
        game.Workspace[player.Name].Humanoid.WalkSpeed = 16
        print("천천히 달리기")
    end
end

UserInputService.InputBegan:Connect(speedUp)
UserInputService.InputEnded:Connect(speedDown)
