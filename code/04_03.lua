local platform = script.Parent

local function fade()
    for count = 1, 10 do
        platform.Transparency = count / 10
        wait(0.1)
    end
    platform.CanCollide = false
    wait(5)
    platform.CanCollide = true
    platform.Transparency = 0
end

platform.Touched:Connect(fade)
