	if melee == true then
		repeat wait()
			local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Phys-Damage"]
			local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
			Event:FireServer(A_1)
		until melee == false
	end
	if ki == true then
		repeat wait()
			local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Ki-Damage"]
			local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
			Event:FireServer(A_1)
		until ki == false
	end
	if healthmax == true then
		repeat wait()
			local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Health-Max"]
			local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
			Event:FireServer(A_1)
		until healthmax == false
	end
	if kimax == true then
		repeat wait()
			local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Ki-Max"]
			local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
			Event:FireServer(A_1)
		until kimax == false
	end
	if kiresist == true then
		repeat wait()
			local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Ki-Resist"]
			local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
			Event:FireServer(A_1)
		until kiresist == false
	end
	if meleeresist == true then
		repeat wait()
			local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Phys-Resist"]
			local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
			Event:FireServer(A_1)
		until meleeresist == false
	end
	if speed == true then
		repeat wait()
			local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Speed
			local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
			Event:FireServer(A_1)
		until speed == false
	end
