if game.PlaceId == 2050207304 then
while wait() do
  local x = game.Workspace.Live["Broly BR"].Humanoid.Health
  game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SP.Visible = true
  game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SP.Text = math.round(x)
 end
end
