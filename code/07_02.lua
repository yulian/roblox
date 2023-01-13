wait(10)
local part = script.Parent
local bomb = Instance.new("Explosion", game.Workspace)
bomb.Position = part.Position
bomb.BlastRadius = 50
bomb.BlastPressure = 10
