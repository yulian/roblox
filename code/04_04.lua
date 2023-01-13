local delayTime = 0.01
local chageTime = 0.01

while wait(delayTime) do
    game.Lighting.ClockTime = game.Lighting.ClockTime + chageTime
    print(game.Lighting.ClockTime)
end
