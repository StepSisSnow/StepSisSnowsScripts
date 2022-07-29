game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Insomnia's CMDS";
    Text = "Way better than NDR's am i right?"
})

local lplr = game.Players.LocalPlayer

Noslow = false
lplr.Chatted:connect(function(chat)
    if chat:match("'earth") then
        game:GetService("TeleportService"):Teleport(536102540)
    end

    if chat:match("'namek") then
        game:GetService("TeleportService"):Teleport(882399924)
    end

    if chat:match("'space") then
        game:GetService("TeleportService"):Teleport(478132461)
    end

    if chat:match("'future") then
        game:GetService("TeleportService"):Teleport(569994010)
    end

    if chat:match("'sw") then
        game:GetService("TeleportService"):Teleport(2046990924)
    end

    if chat:match("'queue") then
        game:GetService("TeleportService"):Teleport(3565304751)
    end

    if chat:match("'zaros") then
        game:GetService("TeleportService"):Teleport(2651456105)
    end

    if chat:match("'ns") then

    if Noslow == false then
        Noslow = true
        activenoslow = game:GetService("RunService").Stepped:Connect(function()
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "Action" or (v.Name == "Attacking") or 
                    (v.Name == "Using") or (v.Name == "hyper") or 
                    (v.Name == "Hyper") or (v.Name == "heavy") or 
                    (v.Name == "KiBlasted") or (v.Name == "Tele") or 
                    (v.Name == "tele") or (v.Name == "Killed") or
                    (v.Name == "Slow") or (v.Name == "Blocked") or 
                    (v.Name == "MoveStart") or (v.Name == "NotHardBack") then
                v:Destroy();
                    end;
                end
                if game.Players.LocalPlayer.Character.Block.Value then
                    game.Players.LocalPlayer.Character.Block.Value = false;
                end;
            end)
        elseif Noslow == true then
            Noslow = false
            activenoslow:Disconnect()
        end
    end


end)
