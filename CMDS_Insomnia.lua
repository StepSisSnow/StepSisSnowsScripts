game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Insomnia's CMDS";
    Text = "Way better than NDR's am i right?"
})
wait(1.2)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "How to use?";
    Text = "Type 'cmds to see all the commands available at the moment!"
})

local lplr = game.Players.LocalPlayer
local ilive = game:WaitForChild("Workspace").Live
local char = ilive:WaitForChild(game.Players.LocalPlayer.Name)

Anchoredchar = false
beanyspammy = false
Noslow = false
lplr.Chatted:connect(function(chat)
    if chat:match("'earth") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "Taking you to earth!"
        })
        game:GetService("TeleportService"):Teleport(536102540)
    end

    if chat:match("'namek") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "Taking you to namek!"
        })
        game:GetService("TeleportService"):Teleport(882399924)
    end

    if chat:match("'space") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "Taking you to space!"
        })
        game:GetService("TeleportService"):Teleport(478132461)
    end

    if chat:match("'future") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "Traveling into the future!"
        })
        game:GetService("TeleportService"):Teleport(569994010)
    end

    if chat:match("'sw") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "Traveling to a very secret place!"
        })
        game:GetService("TeleportService"):Teleport(2046990924)
    end

    if chat:match("'queue") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "Time to queue up!"
        })
        game:GetService("TeleportService"):Teleport(3565304751)
    end

    if chat:match("'zaros") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "You're just lame..."
        })
        game:GetService("TeleportService"):Teleport(2651456105)
    end

    if chat:match("'bs") then
        if beanyspammy == false then
            beanyspammy = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Insomnia's CMDS:";
                Text = "Bean spam activated!"
            })
            beanspam = game:GetService("RunService").Stepped:Connect(function()
                game.Players.LocalPlayer.Backpack.ServerTraits.EatSenzu:FireServer("")
            end)
        elseif beanyspammy == true then
            beanyspammy = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Insomnia's CMDS:";
                Text = "It broke :("
            })
            beanspam:Disconnect()
        end
    end

    if chat:match("'re") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "Why...?"
        })
        game.Players.LocalPlayer.Character.UpperTorso:Destroy()
    end

    if chat:match("'cmds") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "Showing you all the commands! Press F9"
        })
        print("Current Commands:")
        print("'earth -- takes you to earth")
        print("'namek -- takes you to namek")
        print("'space -- takes you to space")
        print("'future -- takes you to future")
        print("'sw -- takes you to secret world")
        print("'queue -- takes you to queue world")
        print("'zaros -- takes you to zaros but why tf would u be there")
        print("'bs -- Well, it spams beans // togglable")
        print("'re -- Hard resets.")
        print("'anchor -- anchor's you body to the place you're standing // togglable")
        print("'ns -- activates noslow // togglable")
    end

    if chat:match("'anchor") then
        if Anchoredchar == false then
            Anchoredchar = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Insomnia's CMDS:";
                Text = "Anchored!"
            })
            game:GetService("Workspace").Live[lplr.Name].HumanoidRootPart.Anchored = true
        elseif Anchoredchar == true then
            Anchoredchar = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Insomnia's CMDS:";
                Text = "You're free to go!"
            })
            game:GetService("Workspace").Live[lplr.Name].HumanoidRootPart.Anchored = false
        end
    end

    if chat:match("'ns") then

    if Noslow == false then
        Noslow = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "Noslow activated succesfully!"
        })
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
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Insomnia's CMDS:";
                Text = "Why'd you deactivate?"
            })
            activenoslow:Disconnect()
        end
    end

end)
