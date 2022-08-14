if not game:IsLoaded() then
	local loadedcheck = Instance.new("Message",workspace)
	loadedcheck.Text = 'Loading...'
	game.Loaded:Wait()
	loadedcheck:Destroy()
end
wait(1.2)
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
local ilive = game:WaitForChild("Wokspace").Live
local char = ilive:WaitForChild(game.Players.LocalPlayer.Name)

KISpam = false
meleespam = false
EGod = false
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
        print("'aq -- Anti queue kick. (Destroys wormhole)")
        print("'sl -- changes slots.")
        print("'shaders -- Enables Shaders ingame.")
        print("'mspam -- Spams melee moves // togglable")
        print("'kispam -- Spams ki attacks (does not lag the server) // togglable")
        print("'freeze -- self explanatory. (Equip Dragon Crush and use it)")
        print("'egm -- Enables earth godmode. // togglable")
        print("'anchor -- anchor's you body to the place you're standing // togglable")
        print("'ns -- activates noslow // togglable")
        print("'lag -- lags the server")
    end

    if chat:match("'egm") then
        if EGod == false then
            EGod = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Insomnia's CMDS:";
                Text = "You're a god on earth now!"
            })
		    local God = game.Workspace.Touchy.Part
		    local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
		    EGoddess = game:GetService("RunService").RenderStepped:Connect(function()
				firetouchinterest(Root, God, 0)
				firetouchinterest(Root, God, 1)
				if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Popup") then
					game.Players.LocalPlayer.PlayerGui.Popup:Destroy()
				end
			end)
        elseif EGod == true then
            EGod = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Insomnia's CMDS:";
                Text = "You have lost your god powers... :("
            })
		    EGoddess:Disconnect()
		    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Popup") then
			    game.Players.LocalPlayer.PlayerGui.Popup:Destroy()
		    end
        end
    end

    if chat:match("'sl") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "What slot you gonna use?"
        })
        lplr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Character Slot Changer"])
        task.wait(0.45)
        lplr.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
        task.wait(0.45)
        lplr.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
    end

    if chat:match("'aq") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "Destroyed queue portal!"
        })
        game.Workspace.Wormhole.TouchInterest:Destroy()
    end

    if chat:match("'mspam") then
        if meleespam == false then
            meleespam = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Insomnia's CMDS:";
                Text = "Spamming melee moves!"
            })
            MSPAM = game:GetService("RunService").RenderStepped:Connect(function()
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if
                v.Name == "Meteor Crash" or
                v.Name == "Mach Kick" or
                v.Name == "Anger Rush" or
                v.Name == "Wolf Fang Fist" or
                v.Name == "Neo Wolf Fang Fist" or
                v.Name == "Strong Kick" or
                v.Name == "Spirit Splash" or
                v.Name == "Deadly Dance" or
                v.Name == "God Slicer" or
                v.Name == "TS Molotov"
                 then
                    v.Parent = game:GetService("Workspace").Live[game.Players.LocalPlayer.Name]
                    wait()
                    v:Activate()
                    v:Deactivate()
                    v.Parent = game.Players.LocalPlayer.Backpack
                 end
            end
            end)
        elseif meleespam == true then
            meleespam = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Insomnia's CMDS:";
                Text = "You're too weak..."
            })
            MSPAM:Disconnect()
        end
    end

    if chat:match("'lag") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "Lagging the server!"
        })
        game:GetService("RunService").RenderStepped:Connect(function()
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if
            v.Name == "Big Bang Attack" or
            v.Name == "Burning Attack" or
            v.Name == "Tribeam" or
            v.Name == "Kamehameha" or
            v.Name == "Explosive Wave" or
            v.Name == "Destructo Disk" or
            v.Name == "Double Sunday" or
            v.Name == "Unrelenting Volley" or
            v.Name == "Explosive Grip" or
            v.Name == "Galick Gun" or
            v.Name == "Special Beam Cannon" or
            v.Name == "Blaster Meteor" or
            v.Name == "Burning Blast" or
            v.Name == "Death Beam Barrage" or
            v.Name == "Divine Lasso" or
            v.Name == "Chain Destructo Disk" or
            v.Name == "Pressure Gauge" or
            v.Name == "Heat Dome Attack" or
            v.Name == "Justice Flash" or
            v.Name == "Hell Pillars" or
            v.Name == "Light Grenade" or
            v.Name == "Beam Scatter" or
            v.Name == "Final Flash" or
            v.Name == "Giant Storm" or
            v.Name == "Warp Kamehameha" or
            v.Name == "Genocide Shell" or
            v.Name == "Spirit Bomb" or
            v.Name == "Milky Cannon" or
            v.Name == "Super Nova" or
            v.Name == "Break Cannon" or
            v.Name == "Super Spirit Bomb" or
            v.Name == "Sudden Storm" or
            v.Name == "Final Shine" or
            v.Name == "Final Kame" or
            v.Name == "Holy Wrath" or
            v.Name == "Super Death Beam" or
            v.Name == "Gigantic Breath" or
            v.Name == "Broly Kamehameha" or
            v.Name == "Eraser Cannon" or
            v.Name == "Planet Crusher" or
            v.Name == "God Hakai" or
            v.Name == "God Wrath" or
            v.Name == "GOD Anger" or
            v.Name == "GOD Sphere" or
            v.Name == "Buu Blaster" or
            v.Name == "One-Hand Kamehameha" or
            v.Name == "Big Bang Kamehameha" or
            v.Name == "Double Buster" or
            v.Name == "Flame Kamehameha" or
            v.Name == "Demon Flash" or
            v.Name == "Dark Beam" or
            v.Name == "KKx4 Kamehameha" or
            v.Name == "Finish Breaker" or
            v.Name == "Death Beam" or
            v.Name == "Crusher Ball" or
            v.Name == "Death Saucer" or
            v.Name == "Spirit Ball" or
            v.Name == "Super Volley" or
            v.Name == "Energy Wave" or
            v.Name == "Murder Grenade"
                then
                    v.Parent = game:GetService("Workspace").Live[game.Players.LocalPlayer.Name]
                    wait()
                    v:Activate()
                    v:Deactivate()
                    v.Parent = game.Players.LocalPlayer.Backpack
                end
            end
        end)
    end

    if chat:match("'kispam") then
        if KISpam == false then
            KISpam = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Insomnia's CMDS:";
                Text = "U sure you got enough ki max for this?"
            })
            KSPAM = game:GetService("RunService").RenderStepped:Connect(function()
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if
                v.Name == "Unrelenting Volley" or
                v.Name == "Explosive Grip" or
                v.Name == "Blaster Meteor" or
                v.Name == "Divine Lasso" or
                v.Name == "Pressure Gauge" or
                v.Name == "Justice Flash" or
                v.Name == "Hell Pillars" or
                v.Name == "Beam Scatter" or
                v.Name == "Genocide Shell" or
                v.Name == "Sudden Storm" or
                v.Name == "Big Bang Kamehameha" or
                v.Name == "Demon Flash" or
                v.Name == "Finish Breaker" or
                v.Name == "Crusher Ball" or
                v.Name == "Death Saucer" or
                v.Name == "Spirit Ball" or
                v.Name == "Super Volley" or
                v.Name == "Hellzone Grenade" or
                v.Name == "Murder Grenade"
                    then
                        v.Parent = game:GetService("Workspace").Live[game.Players.LocalPlayer.Name]
                        wait()
                        v:Activate()
                        v:Deactivate()
                        v.Parent = game.Players.LocalPlayer.Backpack
                    end
                end
            end)
        elseif KISpam == true then
            KISpam = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Insomnia's CMDS:";
                Text = "You ran out of ki max..."
            })
            KSPAM:Disconnect()
        end
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

    if chat:match("'shaders") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's Shaders:";
            Text = "Just a test.";
        })
        bloom = Instance.new("BloomEffect",game.Lighting) -- BLOOM Properties
        bloom.Intensity = 0.5
        bloom.Size = 56
        bloom.Threshold = 0.5
         
        blur = Instance.new("BlurEffect",game.Lighting) -- BLUR Properties
        blur.Size = 5
         
        color = Instance.new("ColorCorrectionEffect",game.Ligting) -- COLORCORRECTION Properties
        color.TintColor = Color3.fromRGB(216,216,216)
         
        rays = Instance.new("SunRaysEffect",game.Lighting) -- SUNRAYS Properties
        rays.Intensity = 0.12
        rays.Spread = 1
         
        print("AutoTOP coming soon!")
    end

    if chat:match("'freeze") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Insomnia's CMDS:";
            Text = "Freezing time!"
        })
        lplr.Character:FindFirstChild'Dragon Crush'.Activator.Throw:Destroy()
        wait(5)
        TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
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
