local dollHead = game.Workspace.BigDoll.Head

local function runState()
    dollHead.Orientation = Vector3.new(0, 180, 0)
end

local function stopState()
    dollHead.Orientation = Vector3.new(0, 0, 0)
end

while true do
    runState()
    print("run!!!")
    wait(5)
    stopState()
    print("stop!!!")
    wait(3)
end
