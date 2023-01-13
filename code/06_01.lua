local DataStoreService = game:GetService("DataStoreService")
local coinStore = DataStoreService:GetDataStore("PlayerCoin")

-- 데이터 저장을 위한 키와 값
local playerUserID = 1501062716
local playerCoin = 0

-- 데이터 저장
local setSuccess, errorMessage = pcall(function()
    coinStore:SetAsync(playerUserID, playerCoin)
end)
if not setSuccess then
    warn(errorMessage)
end
