local ChatService = game:GetService("Chat")
local npc = script.Parent

local head = npc.Head
local click = npc.ClickDetector
local dialog = {"안녕하세요~", "반갑습니다!", "무엇을 도와드릴까요?"}

local function speak()
    ChatService:Chat(head, dialog[math.random(1,3)])
end

click.MouseClick:Connect(speak)
