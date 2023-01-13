local tool = script.Parent

local function toolEquipped()
    tool.Handle.Equip:Play()
end

local function toolActivated()
    tool.Handle.Activate:Play()
end

tool.Equipped:Connect(toolEquipped)
tool.Activated:Connect(toolActivated)
