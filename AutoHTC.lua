
-- script start
if not game:IsLoaded() then
	local loadedcheck = Instance.new("Message",workspace)
	loadedcheck.Text = 'Loading...'
	game.Loaded:Wait()
	loadedcheck:Destroy()
end
wait()
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "AutoHTC By Insomnia";
  Text = "FUCK NDR! (Updates soon!)";
  })
local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
if game.PlaceId == 536102540 then
  while wait() do
    game:GetService("TeleportService"):Teleport(882375367)
  end
end

if game.PlaceId == 882375367 then
  local plr = game:GetService("Players").LocalPlayer
  local Live = game:WaitForChild("Workspace").Live
  local Char = Live:WaitForChild(game.Players.LocalPlayer.Name)
      wait(5)
      local Players = game:GetService("Players")
      local player = Players:FindFirstChildOfClass("Player")
      coroutine.resume(
        coroutine.create(function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.8978653, 237.826065, -194.40834)
        end)
      )
      if Players:FindFirstChildOfClass("Player") and player.Character then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
          local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Throw")
          if tool then
            humanoid:EquipTool(tool)
          end
        end
      end
      wait()
      if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Throw") then
        game.Players.LocalPlayer.Character["Dragon Throw"].Activator.Flip:Destroy()
      end
      if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Throw") then
        game.Players.LocalPlayer.Character["Dragon Throw"].Activator.Blocked:Destroy()
      end
      wait(0.2)
      Char["Dragon Throw"]:Activate()
      wait(0.25)
      Char["Dragon Throw"]:Deactivate()
      Char["Dragon Throw"].Parent = game.Players.LocalPlayer.Backpack
      game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Visible = true
      game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Namae.Val.Text = "The clown NDR"
      game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.StatPoints.Val.Text = "AutoHTC"
      game:GetService("Players").LocalPlayer.PlayerGui.HUD.FullSize.Quests.TextLabel.Text = "Insomnia on TOP"
      game:GetService("Players").LocalPlayer.PlayerGui.HUD.FullSize.Money.Text = "FUCK NDR!"
      coroutine.resume(
        coroutine.create(function()
            local lvl = tonumber(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.LVL.Val.Text)
            while wait() do
                if lvl == "101" or lvl == "181" or lvl == "251" or lvl == "321" then
                    wait(5)
                    game:GetService("TeleportService"):Teleport(536102540)
                end
            end
        end)
    )
      coroutine.resume(
        coroutine.create(function()
            while wait() do
            game:GetService("Workspace").Live[plr.Name].HumanoidRootPart.Anchored = true
            game.Players.LocalPlayer.Backpack.ServerTraits.EatSenzu:FireServer("")
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
    )
    while wait() do
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
        if v.Name == Move1 or v.Name == Move2 or v.Name == Move3 or v.Name == Move4 or v.Name == Move5 or v.Name == Move6 or v.Name == Move7 or v.Name == Move8 or v.Name == Move9 or v.Name == Move10 or v.Name == Move11 or v.Name == Move12 then
          v.Parent = game:GetService("Workspace").Live[game.Players.LocalPlayer.Name]
          wait()
          v:Activate() 
          v:Deactivate() 
          v.Parent = game.Players.LocalPlayer.Backpack 
          end
      end
      game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({[1] = "m2"},CFrame.new(0,0,0),nil,false)
    end
end
