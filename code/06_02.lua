local DataStoreService = game:GetService("DataStoreService")
local coinStore = DataStoreService:GetDataStore("PlayerCoin")

-- 사용자ID 가져오기
local player = game.Players.PlayerAdded:Wait()

-- 데이터 가져오기
local getSuccess, currentGold = pcall(function()
    return coinStore:GetAsync(player.UserId)
end)
if getSuccess then
    print(currentGold)
end
