local dollHead = game.Workspace.BigDoll.Head
local dollSound = game.Workspace.DollSound

local isStopState = false

local function runState()
    print("run!!!")
    dollHead.Orientation = Vector3.new(0, 180, 0)
    isStopState = false
    dollSound:Play()
end

local function stopState()
    print("stop!!!")
    dollHead.Orientation = Vector3.new(0, 0, 0)
    isStopState = true
    wait(3)
    runState()
end

dollSound.Ended:Connect(stopState)

wait(5)
runState()

local RunService = game:GetService("RunService")

local function findPlayers()
    local allPlayers = game.Players:GetPlayers()
    for _, player in pairs(allPlayers) do
        if player.Character then
            local humanoid = player.Character:FindFirstChild("Humanoid")
            local isMoving = humanoid.MoveDirection.Magnitude == 1
            if isStopState and isMoving then
                humanoid.Health = 0
            end
        end
    end
end

RunService.Heartbeat:Connect(findPlayers)
