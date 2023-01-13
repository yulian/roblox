local ContextActionService = game:GetService("ContextActionService")
local RELOAD_ACTION = "reloadWeapon"

local tool = script.Parent

local function onAction(actionName, inputState, inputObject)
    if actionName == RELOAD_ACTION and inputState == Enum.UserInputState.Begin then
        tool.TextureId = "rbxassetid://6593020923"
        wait(2)
        tool.TextureId = "rbxassetid://92628145"
    end
end

local function toolEquipped()
    ContextActionService:BindAction(RELOAD_ACTION, onAction, true, Enum.KeyCode.R)
    tool.Handle.Equip:Play()
end

local function toolUnequipped()
    ContextActionService:UnbindAction(RELOAD_ACTION)
end

local function toolActivated()
    tool.Handle.Activate:Play()
end

tool.Equipped:Connect(toolEquipped)
tool.Unequipped:Connect(toolUnequipped)
tool.Activated:Connect(toolActivated)
