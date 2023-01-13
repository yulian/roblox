local marketplaceService = game:GetService("MarketplaceService")
local players = game:GetService("Players")
local productId = 1359242875

marketplaceService.ProcessReceipt = function(receipt)
    local player = players:GetPlayerByUserId(receipt.PlayerId)
    
    if not player then
        return Enum.ProductPurchaseDecision.NotProcessedYet
    end
    
    if receipt.ProductId == productId then
        print(player.Name.."이(가) 구매완료")
        
        local humanoid = player.Character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.UseJumpPower = true
            humanoid.JumpPower = 100
        end
    end
    return Enum.ProductPurchaseDecision.PurchaseGranted
end
