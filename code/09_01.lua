local badgeService = game:GetService("BadgeService")
local players = game:GetService("Players")

local function getBadge(player)
    wait(10)
    badgeService:AwardBadge(player.userId, 2130422199)
end

players.PlayerAdded:Connect(getBadge)
