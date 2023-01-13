local ball = script.Parent

function onTrigger()
    local red = math.random(0, 255)
    local green = math.random(0, 255)
    local blue = math.random(0, 255)
    print(red, green, blue)

    ball.Color = Color3.new(red, green, blue)
end

ball.ProximityPrompt.Triggered:Connect(onTrigger)
