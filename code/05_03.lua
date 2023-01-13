local textButton = script.Parent.SurfaceGui.TextButton
local textLabel = script.Parent.SurfaceGui.TextLabel

local counter = 0

local function onActivated()
    print("Clicked!!")  
    counter = counter + 1
    textLabel.Text = "Clicks: " .. counter
end

textButton.MouseButton1Click:Connect(onActivated)
