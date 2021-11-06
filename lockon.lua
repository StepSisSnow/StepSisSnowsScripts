local Plr = game:GetService("Players").LocalPlayer
local Char = Plr.Character 
local Live = game:GetService("Workspace").Live
local plrs = game:GetService("Players")
local TeamBased = false ; local teambasedswitch = "p"
local presskeytoaim = true; local aimkey = "v"
local raycast = false

local espupdatetime = 5; autoesp = false



local lockaim = true; local lockangle = 5




local Gui = Instance.new("ScreenGui")
local Move = Instance.new("Frame")
local Main = Instance.new("Frame")
local st1 = Instance.new("TextLabel")
local st1_2 = Instance.new("TextLabel")
local st1_3 = Instance.new("TextLabel")
local Name = Instance.new("TextLabel")
--Properties:

-- Scripts:


local plrsforaim = {}

local lplr = game:GetService("Players").LocalPlayer
Move.Draggable = true
Gui.ResetOnSpawn = false
Gui.Name = "Chat"
Gui.DisplayOrder = 999

	Gui.Parent = plrs.LocalPlayer.PlayerGui


f = {}



local cam = game.Workspace.CurrentCamera

local mouse = lplr:GetMouse()
local switch = false
local key = "k"
local aimatpart = nil
mouse.KeyDown:Connect(function(a)
	if a == "t" then
		print("worked1")
		f.addesp()
	elseif a == "u" then
		if raycast == true then
			raycast = false
		else
			raycast = true
		end
	elseif a == "l" then
		if autoesp == false then
			autoesp = true
		else
			autoesp = false
		end
	end
	if a == "j" then
		if mouse.Target then
			mouse.Target:Destroy()
		end
	end
	if a == key then
		if switch == false then
			switch = true
		else
			switch = false
			if aimatpart ~= nil then
				aimatpart = nil
			end
		end
	elseif a == teambasedswitch then
		if TeamBased == true then
			TeamBased = false
			teambasedstatus.Text = tostring(TeamBased)
		else
			TeamBased = true
			teambasedstatus.Text = tostring(TeamBased)
		end
	elseif a == aimkey then
		if not aimatpart then
			local maxangle = math.rad(20)
			for i, plr in pairs(plrs:GetChildren()) do
				if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 1 then
					if TeamBased == true then
						if plr.Team.Name ~= lplr.Team.Name then
							local an = checkfov(plr.Character.Head)
							if an < maxangle then
								maxangle = an
								aimatpart = plr.Character.Head
							end
						end
					else
						local an = checkfov(plr.Character.Head)
							if an < maxangle then
								maxangle = an
								aimatpart = plr.Character.Head
							end
							print(plr)
					end
					plr.Character.Humanoid.Died:Connect(function()
						if aimatpart.Parent == plr.Character or aimatpart == nil then
							aimatpart = nil
						end
					end)
				end
			end
		else
			aimatpart = nil
		end
	end
end)

function getfovxyz (p0, p1, deg)
	local x1, y1, z1 = p0:ToOrientation()
	local cf = CFrame.new(p0.p, p1.p)
	local x2, y2, z2 = cf:ToOrientation()
	--local d = math.deg
	if deg then
		--return Vector3.new(d(x1-x2), d(y1-y2), d(z1-z2))
	else
		return Vector3.new((x1-x2), (y1-y2), (z1-z2))
	end
end

function getaimbotplrs()
	plrsforaim = {}
	for i, plr in pairs(plrs:GetChildren()) do
		if plr.Character and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name and plr.Character.Head then
			
			if TeamBased == true then
				if plr.Team.Name ~= lplr.Team.Name then
					local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, plr.Character.Head.CFrame.p)
					local r = Ray.new(cf, cf.LookVector * 10000)
					local ign = {}
					for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
						if v:IsA("BasePart") then
							table.insert(ign , v)
						end
					end
					local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
					if obj.Parent == plr.Character and obj.Parent ~= lplr.Character then
						table.insert(plrsforaim, obj)
					end
				end
			else
				local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, plr.Character.Head.CFrame.p)
				local r = Ray.new(cf, cf.LookVector * 10000)
				local ign = {}
				for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
					if v:IsA("BasePart") then
						table.insert(ign , v)
					end
				end
				local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
				if obj.Parent == plr.Character and obj.Parent ~= lplr.Character then
					table.insert(plrsforaim, obj)
				end
			end
			
			
		end
	end
end

function aimat(part)
	cam.CFrame = CFrame.new(cam.CFrame.p, part.CFrame.p)
end
function checkfov (part)
	local fov = getfovxyz(game.Workspace.CurrentCamera.CFrame, part.CFrame)
	local angle = math.abs(fov.X) + math.abs(fov.Y)
	return angle
end

game:GetService("RunService").RenderStepped:Connect(function()
	if aimatpart then
		aimat(aimatpart)
		if aimatpart.Parent == plrs.LocalPlayer.Character then
			aimatpart = nil
		end
	end
		
		if raycast == true and switch == false and not aimatpart then
			getaimbotplrs()
			aimatpart = nil
			local maxangle = 999
			for i, v in ipairs(plrsforaim) do
				if v.Parent ~= lplr.Character then
					local an = checkfov(v)
					if an < maxangle and v ~= lplr.Character.Head then
						maxangle = an
						aimatpart = v
						print(v:GetFullName())
						v.Parent.Humanoid.Died:connect(function()
							aimatpart = nil
						end)
					end
				end
			end
		
	end
end)
delay(0, function()
	while wait(espupdatetime) do
		if autoesp == true then
			pcall(function()
			f.addesp()
			end)
		end
	end
end)
