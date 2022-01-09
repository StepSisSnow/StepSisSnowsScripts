local plr = game.Players.LocalPlayer
coroutine.resume(
    coroutine.create(function()
        Timer = RejoinTime - RejoinTime
        while wait(1) do
        Timer = Timer + 1
        end
    end)
)
repeat wait()
    plr.PlayerGui.HUD.Bottom.SP.Visible = true
    _G.HealthModeG = ShowHealth
    if _G.HealthModeG == "Percent" or _G.HealthModeG == "percent" then
            plr.PlayerGui.HUD.Bottom.SP.Text = "Broly's Health: " ..math.floor((game.workspace.Live["Broly BR"].Humanoid.Health / game.workspace.Live["Broly BR"].Humanoid.MaxHealth) * 100) .. "% | Your Health : "..math.floor(plr.Character.Humanoid.Health).." | Duration: ".. Timer.." / ".. RejoinTime
    elseif _G.HealthModeG == "Numbers" or _G.HealthModeG == "numbers" then
            plr.PlayerGui.HUD.Bottom.SP.Text = "Broly's Health: " ..math.floor(game.Workspace.Live["Broly BR"].Humanoid.Health).." | Your Health : "..math.floor(plr.Character.Humanoid.Health).." | Duration: ".. Timer.." / ".. RejoinTime
    end
until(Timer >= RejoinTime)
