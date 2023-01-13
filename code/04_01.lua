local platform = script.Parent

local function disappear()
    platform.CanCollide = false
    platform.Transparency = 1
end

local function appear()
    platform.CanCollide = true
    platform.Transparency = 0
end

while true do
    wait(1)
    disappear()
    wait(1)
    appear()
end
