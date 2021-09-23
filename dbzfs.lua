local SnowyIsCool = SnowyHubba.Load("SnowyHub")
local FirstPage = SnowyIsCool.AddPage("Main")
local FirstLabel = FirstPage.AddLabel("Main")
local FirstSlider = FirstPage.AddSlider("Hello", {Min = 1, Max = 100, Def = 8000}, function(Value)
    _G.TeleSpeed_Bind = "Q"
    down = false
    velocity = Instance.new("BodyVelocity")
    velocity.maxForce = Vector3.new(10000000, 0, 10000000)
                        local speed = telespeed
    gyro = Instance.new("BodyGyro")
    gyro.maxTorque = Vector3.new(10000000, 0, 10000000)
    local hum = game.Players.LocalPlayer.Character.Humanoid
    function onButton1Down(mouse)
        down = true
        velocity.Parent = game.Players.LocalPlayer.Character.UpperTorso
        velocity.velocity = (hum.MoveDirection) * speed
        gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
        while down do
            if not down then
                break
            end
            velocity.velocity = (hum.MoveDirection) * speed
            local refpos = gyro.Parent.Position + (gyro.Parent.Position - workspace.CurrentCamera.CoordinateFrame.p).unit * 5
            gyro.cframe = CFrame.new(gyro.Parent.Position, Vector3.new(refpos.x, gyro.Parent.Position.y, refpos.z))
            wait(0.1)
        end
    end
    function onButton1Up(mouse)
        velocity.Parent = nil
        gyro.Parent = nil
        down = false
    end
    function onSelected(mouse)
        mouse.KeyDown:connect(function(k)
            if k:upper() == _G.TeleSpeed_Bind then
                onButton1Down(mouse)
            end
        end)
        mouse.KeyUp:connect(function(k)
            if k:upper() == _G.TeleSpeed_Bind then
                onButton1Up(mouse)
            end
        end)
    end
    onSelected(game.Players.LocalPlayer:GetMouse())
end)
local FirstToggle = FirstPage.AddButton("No Slow", function()
    val = slow
    while val do
    wait()
    if game.Players.LocalPlayer.Character:FindFirstChild("Action") then
		game.Players.LocalPlayer.Character:FindFirstChild("Action"):Destroy()
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Attacking") then
		game.Players.LocalPlayer.Character:FindFirstChild("Attacking"):Destroy()
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("Activity") then
        game.Players.LocalPlayer.Character:FindFirstChild("Activity"):Destroy()
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Using") then
		game.Players.LocalPlayer.Character:FindFirstChild("Using"):Destroy()
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("hyper") then
		game.Players.LocalPlayer.Character:FindFirstChild("hyper"):Destroy()
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Hyper") then
		game.Players.LocalPlayer.Character:FindFirstChild("Hyper"):Destroy()
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("heavy") then
		game.Players.LocalPlayer.Character:FindFirstChild("heavy"):Destroy()
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("KiBlasted") then
		game.Players.LocalPlayer.Character:FindFirstChild("KiBlasted"):Destroy()
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Tele") then
		game.Players.LocalPlayer.Character:FindFirstChild("Tele"):Destroy()
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("tele") then
		game.Players.LocalPlayer.Character:FindFirstChild("tele"):Destroy()
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Killed") then
		game.Players.LocalPlayer.Character:FindFirstChild("Killed"):Destroy()
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Slow") then
		game.Players.LocalPlayer.Character:FindFirstChild("Slow"):Destroy()
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("Blocked") then
        game.Players.LocalPlayer.Character:FindFirstChild("Blocked"):Destroy()
	end
    if game.Players.LocalPlayer.Character:FindFirstChild("MoveStart") then
        game.Players.LocalPlayer.Character:FindFirstChild("MoveStart"):Destroy()
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("NotHardBack") then
        game.Players.LocalPlayer.Character:FindFirstChild("NotHardBack"):Destroy()
    end
    end
end)
local FirstToggle = FirstPage.AddToggle("Hello", false, function(Value)
print(Value)
end)
local FirstSlider = FirstPage.AddSlider("Hello", {Min = 0, Max = 255, Def = 50}, function(Value)
print(Value)
end)
local FirstPicker = FirstPage.AddColourPicker("Hello", "white", function(Value)
print(Value)
end)
local FirstDropdown = FirstPage.AddDropdown("Hello", {
"Hello",
"Goodbye"
}, function(Value)
print(Value)
end)
