_G.Winner = Winner
_G.Loser = Loser

if game.PlaceId == 3552157537 then
    wait(7)
    game:GetService("TeleportService"):Teleport(3618359401)
end
if game.PlaceId == 3618359401 then
    wait(9.5)
    if _G.Winner == game.Players.LocalPlayer.Name then
        wait(15)
        game:GetService("TeleportService"):Teleport(3552157537)
    end
    if _G.Loser == game.Players.LocalPlayer.Name then
        game:GetService("TeleportService"):Teleport(3552157537)
    end
end
