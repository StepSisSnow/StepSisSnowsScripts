local plr = game.Players.LocalPlayer.Name
_G.HealthModeG = ShowHealth
if _G.HealthModeG == "Percent" or _G.HealthModeG == "percent" then
        game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SP.Visible = true
        game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SP.Text = "Broly's Health: " ..math.floor((game:GetService("Workspace").Live["Broly BR"].Humanoid.Health / game:GetService("Workspace").Live["Broly BR"].Humanoid.MaxHealth) * 100) .. "%"
elseif _G.HealthModeG == "Numbers" or _G.HealthModeG == "numbers" then
        game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SP.Visible = true
        game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SP.Text = "Broly's Health: " ..math.floor(game.Workspace.Live["Broly BR"].Humanoid.Health)..
end
