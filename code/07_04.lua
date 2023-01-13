local spherePart = script.Parent
local soundObject = spherePart.Sound
local debounce = true

function playSoundEffect(otherPart)
    local partParent = otherPart.Parent
    local humanoid = partParent:FindFirstChild("Humanoid")
    if humanoid and debounce then
        debounce = false
        soundObject:Play()
        wait(1)
        spherePart:Destroy()
    end
end

spherePart.Touched:Connect(playSoundEffect)
