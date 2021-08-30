if game.PlaceId == 2050207304 then
-- Instances:
local Stopwatch = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
--Properties:
Stopwatch.Name = "Stopwatch"
Stopwatch.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Stopwatch.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Parent = Stopwatch
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(0, 1543, 0, 104)
TextLabel.Parent = Frame
TextLabel.AnchorPoint = Vector2.new(0.100000001, 0.100000001)
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 12, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 5
TextLabel.Position = UDim2.new(0.679196358, 0, 7.38461542, 0)
TextLabel.Size = UDim2.new(0, 591, 0, 104)
TextLabel.Font = Enum.Font.ArialBold
TextLabel.Text = "Loading Wait..."
TextLabel.TextColor3 = Color3.fromRGB(255, 1, 5)
TextLabel.TextScaled = true
TextLabel.TextSize = 8.000
TextLabel.TextWrapped = true
-- Scripts:
local function RUNVC_fake_script() -- TextLabel.LocalScript 
    local script = Instance.new('LocalScript', TextLabel)
    Stopwatch = 0
    while true do
        Stopwatch = Stopwatch+1
        wait(1)
        script.Parent.Text = (Stopwatch)
    end
end
coroutine.wrap(RUNVC_fake_script)()
end
