ShowHealth = "Numbers"

_G.HealthModeG = ShowHealth

if _G.HealthModeG == "Percent" or _G.HealthModeG == "percent" then
        game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SP.Visible = true
        game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SP.Text = "Atomic's Health: " ..math.floor((game:GetService("Workspace").Live.AtomicWarp.Humanoid.Health / game:GetService("Workspace").Live.AtomicWarp.Humanoid.MaxHealth) * 100) .. "%"
elseif _G.HealthModeG == "Numbers" or _G.HealthModeG == "numbers" then
        game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SP.Visible = true
        game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SP.Text = "Atomic's Health: " ..math.floor(game.Workspace.Live["AtomicWarp"].Humanoid.Health)
end
