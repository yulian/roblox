local button = script.Parent
local player = game:GetService("Players").LocalPlayer

local function onButtonActivated()
    print("Button activated!!")
    player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
end

button.Activated:Connect(onButtonActivated)
