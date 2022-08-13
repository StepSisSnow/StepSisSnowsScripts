-- script start: notifications
if not game:IsLoaded() then
	local loadedcheck = Instance.new("Message",workspace)
	loadedcheck.Text = 'Loading...'
	game.Loaded:Wait()
	loadedcheck:Destroy()
end
game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Auto Broly";
        Text = "By Insomnia";
        })
    local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
-- anti kick
game:WaitForChild("CoreGui")
game.CoreGui:WaitForChild("RobloxPromptGui")
game.CoreGui.RobloxPromptGui:WaitForChild("promptOverlay")

Service = game:GetService("RunService").Stepped:connect(function()
    if game:GetService("CoreGui").RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then
         game:GetService("TeleportService"):Teleport(536102540, LocalPlayer)
         Service:Disconnect()
     end
end)
coroutine.resume(
	coroutine.create(function()
		while wait() do
			local race = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Race.Val
			local randomrace = math.random(1,8)
			if randomrace == 1 then
				race.Text = "You're Bad"
			end
			if randomrace == 2 then
				race.Text = "Your mom's toes"
			end
			if randomrace == 3 then
				race.Text = "Alien"
			end
			if randomrace == 4 then
				race.Text = "The fuck you lookin' at?"
			end
			if randomrace == 5 then
				race.Text = "Sex Offender"
			end
			if randomrace == 6 then
				race.Text = "Lick my pussy"
			end
			if randomrace == 7 then
				race.Text = "This is randomized"
			end
			if randomrace == 8 then
				race.Text = "Why tf do u care"
			end
		end
	end)
)
-- functions
if BadPC == true then
	repeat wait()
	 until game:IsLoaded()
	   game.Players.LocalPlayer.PlayerGui:WaitForChild("HUD")
	
	local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
	local g = game
	local w = g.Workspace
	local l = g.Lighting
	local t = w.Terrain
	t.WaterWaveSize = 0
	t.WaterWaveSpeed = 0
	t.WaterReflectance = 0
	t.WaterTransparency = 0
	l.GlobalShadows = false
	l.FogEnd = 9e9
	l.Brightness = 0
	settings().Rendering.QualityLevel = "Level01"
	for i, v in pairs(g:GetDescendants()) do
		if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
			v.Enabled = false
		elseif v:IsA("MeshPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
			v.TextureID = 10385902758728957
		end
	end
	for i, e in pairs(l:GetChildren()) do
		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
			e.Enabled = false
		end
	end
end
-- Earth Loader
if game.PlaceId == 536102540 then
	wait(6)
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.Visible = true
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.BackgroundColor3 = Color3.new(0, 0, 0)
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.BackgroundTransparency = 0.2
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.BorderColor3 = Color3.new(0, 0, 0)
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.Text = "Watching PornHub or XNXX?"
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.TextColor3 = Color3.new(150, 0, 255)
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Visible = true
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Namae.Val.Text = "Anonymous"
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.StatPoints.Val.Text = "Autobroly"
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.FullSize.Quests.TextLabel.Text = "Made by Unfair"
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.FullSize.Money.Text = "Version 3.2"
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.HUD.FullSize.Quests.ImageLabel:Destroy()
	end)
	if ExpFreeze == true then
		game:GetService("RunService").Stepped:Connect(function()
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("True") then
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("True"):Destroy()
			end
		end)
	end
    if Earth == true then
        local plr = game.Players.LocalPlayer
        game.Players.LocalPlayer.Character.PowerOutput:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2751.67725, 3944.85986, -2272.62622)
        game:GetService("Workspace").Live[plr.Name].Humanoid.Animator:Destroy()
        wait(75)
		game:GetService("TeleportService"):Teleport(536102540)
    else
        game:GetService("TeleportService"):Teleport(3565304751)
        wait(15)
        game:GetService("TeleportService"):Teleport(3565304751)
	end
end
-- Queue World Loader
function Twn(HRP,Place,Length)
    local Twn = game:GetService("TweenService"):Create(HRP,
    TweenInfo.new(Length,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),{CFrame = Place})
    Twn:Play()
    Twn.Completed:Wait()
end
local Live = game:WaitForChild("Workspace").Live
local Char = Live:WaitForChild(game.Players.LocalPlayer.Name)
if game.PlaceId == 3565304751 then
	coroutine.resume(
		coroutine.create(function()
			wait(45)
			game:GetService("TeleportService"):Teleport(3565304751)
		end)
	)
	-- credits
	local args = {
		[1] = "Auto Broly by Insomnia",
		[2] = "All"
	}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	wait(0.5)
	local args = {
		[1] = "Only The Best Got This",
		[2] = "All"
	}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.Visible = true
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.BackgroundColor3 = Color3.new(0, 0, 0)
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.BackgroundTransparency = 0.2
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.BorderColor3 = Color3.new(0, 0, 0)
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.Text = "Watching PornHub or XNXX?"
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.TextColor3 = Color3.new(150, 0, 255)
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Visible = true
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Namae.Val.Text = "Anonymous"
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.StatPoints.Val.Text = "Autobroly"
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.FullSize.Quests.TextLabel.Text = "Made by Unfair"
	game:GetService("Players").LocalPlayer.PlayerGui.HUD.FullSize.Money.Text = "Version 3.2"
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.HUD.FullSize.Quests.ImageLabel:Destroy()
	end)
	if FasterAB == false then
    	if AntiLeech == false then do
			if Invisibility == true then
				FasterAB = false
				Twn(Char:WaitForChild("HumanoidRootPart"),CFrame.new(0,238,-1500),1)
				Twn(Char:WaitForChild("HumanoidRootPart"),CFrame.new(0,238,-2000),1)
				Twn(Char:WaitForChild("HumanoidRootPart"),CFrame.new(0,238,-3000),1)
				Char.LowerTorso:Destroy()
			end
		end
		if FasterAB == true then
			game.Players.LocalPlayer.Character.PowerOutput:Destroy()
			local Pads = {}
			for i,v in pairs(game:WaitForChild("Workspace"):GetChildren()) do
				if v.Name:find("BrolyTeleport") then		       
					table.insert(Pads,v)
				end
			end
			if ExpFreeze == true then
				game:GetService("RunService").Stepped:Connect(function()
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("True") then
						game:GetService("Players").LocalPlayer.Character:FindFirstChild("True"):Destroy()
					end
				end)
			end
			local pad = Pads[math.random(1,7)]
			Twn(Char.HumanoidRootPart,pad.PrimaryPart.CFrame,1)
			wait(45)
			game:GetService("TeleportService"):Teleport(536102540)
			end
		end
	end
	-- autobroly loader
	elseif game.PlaceId == 2050207304 then
		coroutine.resume(
			coroutine.create(function()
				wait(RejoinTime)
				if Earth == true then
					game:GetService("TeleportService"):Teleport(536102540)
				else
					game:GetService("TeleportService"):Teleport(3565304751)
			end
		end)
	)
		local B = Live:WaitForChild("Broly BR")
		game:GetService("RunService").Stepped:connect(function()
			if B.Humanoid.Health < 0.00001 then
				if Earth == true then
					game:GetService("TeleportService"):Teleport(536102540)
				else
					game:GetService("TeleportService"):Teleport(3565304751)
				end
			end
		end)
		local plr = game.Players.LocalPlayer
		local MaxKi = plr.Character:WaitForChild("Ki").Value
		coroutine.resume(
			coroutine.create(function()
				while wait() do
					if  game.Workspace.Live[plr.Name].Race.Value == "Android" then
						if game.Players.LocalPlayer.Character.Ki.Value <= MaxKi * 0.6 then
							game.Players.LocalPlayer.Backpack.ServerTraits.Transform:FireServer("g")
						end
					end
				end
			end)
		)
		if game.Workspace.Live[plr.Name].Race.Value ~= "Android" then
			if ChargeTime == 0 then
				wait()
			end
		end
		if  game.Workspace.Live[plr.Name].Race.Value ~= "Android" then
			game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({[1] = "x"},CFrame.new(0,0,0),InputObject)
			wait(ChargeTime)
			game.Players.LocalPlayer.Backpack.ServerTraits.Transform:FireServer("h")
			wait(0.5)
			game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({[1] = "xoff"},CFrame.new(0,0,0),InputObject)
		end
		if TeamDamage == true then
			local plr = game.Players.LocalPlayer
			pcall(function()
			game.Workspace.Live[plr.Name]:WaitForChild("team damage"):Destroy()
			end)
		end
		if ExpFreeze == true then
			game:GetService("RunService").Stepped:Connect(function()
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("True") then
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("True"):Destroy()
				end
			end)
		end
		game:GetService("Workspace").Camera.FieldOfView = 15
		-- credits
		local args = {
			[1] = "Auto Broly by Insomnia",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		wait(0.5)
		local args = {
			[1] = "Only The Best Got This",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		-- grabtimecheck
		coroutine.resume(
			coroutine.create(function()
				wait(GrabTimeCheck)
				while wait() do
				if B.HumanoidRootPart.Transformation1.Enabled == true then
					game:GetService("TeleportService"):Teleport(3565304751)
				end
			end
		end)
		)
		-- SP Load
		game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.BackgroundColor3 = Color3.new(0, 0, 0)
		game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.BackgroundTransparency = 0.2
		game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.BorderColor3 = Color3.new(0, 0, 0)
		game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.TextColor3 = Color3.new(150, 0, 255)
		game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Namae.Val.Text = "Anonymous"
		game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.StatPoints.Val.Text = "Autobroly"
		game:GetService("Players").LocalPlayer.PlayerGui.HUD.FullSize.Quests.TextLabel.Text = "Made by Unfair"
		game:GetService("Players").LocalPlayer.PlayerGui.HUD.FullSize.Money.Text = "Version 3.2"
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.HUD.FullSize.Quests.ImageLabel:Destroy()
		end)
		Twn(Char.HumanoidRootPart,B.HumanoidRootPart.CFrame,1)
		game:GetService("RunService").RenderStepped:connect(function()
			Char.Humanoid:ChangeState(11)
			game.Workspace.CurrentCamera.CFrame = CFrame.new(Char.HumanoidRootPart.Position,B.HumanoidRootPart.Position) * CFrame.new(0,2,20)
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v.Name == "Justice Combination" then
					local action = game.Players.LocalPlayer.Character:WaitForChild("Action")
					if action then wait() action:Destroy() end end
				if v.Name == "Attacking" then
					v:Destroy()
			end
			if v.Name == "Action" then
				v:Destroy()
			end
			if v.Name == "Killed" then
				v:Destroy()
			end
			end
			if Char.Humanoid.Health < 1 then game:GetService("TeleportService"):Teleport(3565304751) end
			game.Players.LocalPlayer.Backpack.ServerTraits.EatSenzu:FireServer("")
			if game.Players.LocalPlayer.Character.Humanoid.Health <= game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 0.2 then
			game.Players.LocalPlayer.Backpack.ServerTraits.Transform:FireServer("g")
			end
			Char.HumanoidRootPart.CFrame = game.Workspace.Live["Broly BR"].HumanoidRootPart.CFrame * CFrame.new(0,0,4.20)
			Char.HumanoidRootPart.CFrame = CFrame.new(Char.HumanoidRootPart.Position,B.HumanoidRootPart.Position)
		end)
		if FasterAB == false then
			if DragonCrush == true then do
			game.Players.LocalPlayer.Backpack["Dragon Crush"].Parent = Char
			Char["Dragon Crush"].Activator["Flip"]:Destroy()
			Char["Dragon Crush"].Activator["Throw"]:Destroy()
			wait(0.5)
			Char["Dragon Crush"]:Activate()
			wait(0.25)
			Char["Dragon Crush"]:Deactivate()
			Char["Dragon Crush"].Parent = game.Players.LocalPlayer.Backpack
			wait(0.2)
			end
		end
	end
	-- AntiLeech
	if AntiLeech == true then
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5000, 0, 2000)
		if game.Players.NumPlayers > 1
		then do
			if Earth == true then
				game:GetService("TeleportService"):Teleport(536102540)
			else
				game:GetService("TeleportService"):Teleport(3565304751)
			end
		end
		end
	end
	coroutine.resume(
		coroutine.create(function()
			local plr = game.Players.LocalPlayer
			coroutine.resume(
				coroutine.create(function()
					DurationTime = RejoinTime - RejoinTime
					while wait(1) do
						DurationTime = DurationTime + 1
					end
				end)
			)
			repeat wait()
				plr.PlayerGui.HUD.Bottom.SP.Visible = true
				_G.HealthModeG = ShowHealth
				if _G.HealthModeG == "Percent" or _G.HealthModeG == "percent" then
					plr.PlayerGui.HUD.Bottom.SP.Text = "Broly's Health: " ..math.floor((game.workspace.Live["Broly BR"].Humanoid.Health / game.workspace.Live["Broly BR"].Humanoid.MaxHealth) * 100) .. "% | Your Health : "..math.floor((plr.Character.Humanoid.Health / game.workspace.Live[plr.Name].Humanoid.MaxHealth) * 100) .."% | Duration: ".. DurationTime.." / ".. RejoinTime
				elseif _G.HealthModeG == "Numbers" or _G.HealthModeG == "numbers" then
					plr.PlayerGui.HUD.Bottom.SP.Text = "Broly's Health: " ..math.floor(game.Workspace.Live["Broly BR"].Humanoid.Health).." | Your Health : "..math.floor(plr.Character.Humanoid.Health).." | Duration: ".. DurationTime.." / ".. RejoinTime
				end
			until(DurationTime >= RejoinTime)
		end)
	)
	while wait() do
		if Char.Ki.Value > Char.Ki.MaxValue/20 then 
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
				if v.Name == Move1 or v.Name == Move2 or v.Name == Move3 or v.Name == Move4 or v.Name == Move5 or v.Name == Move6 or v.Name == Move7 or v.Name == Move8 or v.Name == Move9 or v.Name == Move10 or v.Name == Move11 or v.Name == Move12 then
					v.Parent = game:GetService("Workspace").Live[game.Players.LocalPlayer.Name]
					wait()
					v:Activate()
					v:Deactivate()
					v.Parent = game.Players.LocalPlayer.Backpack
				end
			end
		end
		if AutoPunch == true then
			if Char.Ki.Value < Char.Ki.MaxValue/4 then
				game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({[1] = "m2"},CFrame.new(0,0,0),nil,false)
			end
		end
	end
end
