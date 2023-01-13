local marketplaceService = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer
local productId = 1359242875
local button = script.Parent

local function buyItem()
    marketplaceService:PromptProductPurchase(player, productId)
end

button.MouseButton1Click:Connect(buyItem)
