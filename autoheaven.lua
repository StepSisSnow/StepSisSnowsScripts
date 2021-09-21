_G.Winner = Winner
_G.Loser = Loser

if game.PlaceId == 3552157537 then
    wait(7)
    game:GetService("TeleportService"):Teleport(3618359401)
end
if game.PlaceId == 3618359401 then
    wait(9.5)
    if _G.Winner == game.Players.LocalPlayer.Name then
        if #game.Players:GetPlayers() > 1 then
            for i, player in pairs(game:GetService("Players"):GetPlayers()) do
                wait(15)
                game:GetService("TeleportService"):Teleport(3552157537)
                if player.Name ~= _G.Loser then
                    game:GetService("TeleportService"):Teleport(3618359401)
                end
            end
        elseif #game.Players:GetPlayers() == 1 then
            wait(10)
            game:GetService("TeleportService"):Teleport(3618359401)
        end
    end
elseif _G.Loser == game.Players.LocalPlayer.Name then
    if #game.Players:GetPlayers() > 1 then
        for i, player in pairs(game:GetService("Players"):GetPlayers()) do
            game:GetService("TeleportService"):Teleport(3552157537)
            if player.Name ~= _G.Winner then
                game:GetService("TeleportService"):Teleport(3618359401)
            end
        end
    elseif #game.Players:GetPlayers() == 1 then
        wait(10)
        game:GetService("TeleportService"):Teleport(3618359401)
    end
end
