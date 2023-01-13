local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local CAMERA_DEPTH = 24
local HEIGHT_OFFSET = 2

local function updateCamera()
    local character = player.Character
    if character then
        local root = character:FindFirstChild("HumanoidRootPart")
        if root then
            local rootPosition = root.Position + Vector3.new(0, HEIGHT_OFFSET, 0)
            local cameraPosition = Vector3.new(rootPosition.X, rootPosition.Y, CAMERA_DEPTH)
            camera.CFrame = CFrame.lookAt(cameraPosition, rootPosition)
        end
    end
end

RunService:BindToRenderStep("SideCamera", Enum.RenderPriority.Camera.Value + 1, updateCamera)
