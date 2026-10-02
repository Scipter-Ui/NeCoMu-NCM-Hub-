--[[
    Necomu Hub Mobile - Complete WindUI Script Hub
    Framework: WindUI (Dark Base with Custom Animated Color Transition Effect)
    Resolution: 600x360
    
    Included Games (12):
    1. Grow A Garden (10 Scripts)
    2. Steal A Brainrot (10 Scripts)
    3. Brookhaven RP (10 Scripts)
    4. Emergency Hamburg (Beanzz Hub + 10 Scripts = 11 Total)
    5. Murder Mystery 2 (9 Scripts)
    6. Evade (10 Scripts)
    7. Blox Fruits (9 Scripts)
    8. Fisch (9 Scripts)
    9. Rivals (9 Scripts)
    10. Prison Life (11 Scripts)
    11. 99 Nights in Forest (13 Scripts)
    + Universal (7 Scripts)
--]]

-- ============================================================
-- 👤 PRODUCERS
-- ============================================================
-- TikTok
-- @necomu.scripts
--
-- YouTube
-- @NeCoMuScripts
-- ============================================================

local WindUI = loadstring(game:HttpGet("https://tree-hub.luau.site/material-ui"))()

local Window = WindUI:CreateWindow({
    Title = "Necomu Hub Mobile",
    Icon = "rbxassetid://10723346959",
    Author = "Necomu Team",
    Folder = "NecomuHub",
    Size = UDim2.fromOffset(600, 360),
    Transparent = true,
    Theme = "Dark"
})

-- Smooth Gradient Color Transition (Purple -> Black -> White -> Purple)
task.spawn(function()
    local mainFrame = Window:GetFrame() or Window.Main
    if mainFrame then
        local gradient = Instance.new("UIGradient")
        gradient.Rotation = 45
        gradient.Parent = mainFrame

        local purple = Color3.fromRGB(128, 0, 128)
        local black = Color3.fromRGB(0, 0, 0)
        local white = Color3.fromRGB(255, 255, 255)

        while task.wait(0.03) do
            -- Purple -> Black
            for i = 0, 1, 0.02 do
                gradient.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, purple:Lerp(black, i)),
                    ColorSequenceKeypoint.new(1, black:Lerp(white, i))
                })
                task.wait(0.03)
            end
            -- Black -> White
            for i = 0, 1, 0.02 do
                gradient.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, black:Lerp(white, i)),
                    ColorSequenceKeypoint.new(1, white:Lerp(purple, i))
                })
                task.wait(0.03)
            end
            -- White -> Purple
            for i = 0, 1, 0.02 do
                gradient.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, white:Lerp(purple, i)),
                    ColorSequenceKeypoint.new(1, purple:Lerp(black, i))
                })
                task.wait(0.03)
            end
        end
    end
end)

local function notify(title, text)
    WindUI:Notify({
        Title = title,
        Content = text,
        Duration = 3
    })
end

local function runScript(url, name)
    notify("Necomu Hub", name .. " çalıştırılıyor...")
    task.spawn(function()
        local success, err = pcall(function()
            loadstring(game:HttpGet(url))()
        end)
        if success then
            notify("Necomu Hub", name .. " başarıyla yüklendi!")
        else
            notify("Hata", name .. " yüklenemedi!")
        end
    end)
end

-- ============================================================
-- UNIVERSAL TAB
-- ============================================================
local Universal = Window:Tab({
    Title = "🌐 Universal",
    Icon = "rbxassetid://10723415903"
})

Universal:Button({
    Title = "Click TP",
    Callback = function()
        runScript(
            "https://rawscripts.net/raw/Universal-Script-Click-TP-224342",
            "Click TP"
        )
    end
})

Universal:Button({
    Title = "Server Browser • Keyless",
    Callback = function()
        runScript(
            "https://rawscripts.net/raw/Universal-Script-Server-browsers-keyless-129205",
            "Server Browser"
        )
    end
})

Universal:Button({
    Title = "Infinite Yield • Universal",
    Callback = function()
        runScript(
            "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
            "Infinite Yield"
        )
    end
})

Universal:Button({
    Title = "Universal ESP • Keyless",
    Callback = function()
        runScript(
            "https://obj.wearedevs.net/140060/scripts/Universal%20ESP.lua",
            "Universal ESP"
        )
    end
})

Universal:Button({
    Title = "0xVyrs ESP Suite • Keyless",
    Callback = function()
        runScript(
            "https://raw.githubusercontent.com/gamer94z/Universal-ROBLOX-ESP-Suite/main/esp.lua",
            "0xVyrs ESP Suite"
        )
    end
})

Universal:Button({
    Title = "Veltrix Universal • Keyless",
    Callback = function()
        runScript(
            "https://raw.githubusercontent.com/diedforhereveryday-spec/Veltrix/main/Veltrix%20Hub",
            "Veltrix Universal"
        )
    end
})

Universal:Button({
    Title = "c00lkidd GUI • Universal",
    Callback = function()
        runScript(
            "https://raw.githubusercontent.com/cfsmi2/c00lguiv1/refs/heads/main/Main.lua",
            "c00lkidd GUI"
        )
    end
})


notify("Necomu Universal", "✅ Universal sekmesi hazır!")

-- ============================================================================
-- TAB 1: Grow A Garden
-- ============================================================================
local TabGAG = Window:Tab({ Title = "Grow A Garden", Icon = "rbxassetid://10723415903" })

TabGAG:Button({ Title = "GAG Script 1 (Main)", Callback = function() runScript("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/GrowAGarden", "GAG Script 1") end })
TabGAG:Button({ Title = "GAG Script 2 (Auto Farm)", Callback = function() runScript("https://raw.githubusercontent.com/Super-Hubs/Super-Hub/refs/heads/main/GrowAGarden.lua", "GAG Script 2") end })
TabGAG:Button({ Title = "GAG Script 3 (Luarmor Loader)", Callback = function() runScript("https://api.luarmor.net/files/v3/loaders/97c3f6db55a2cf72141537a85458e5a7.lua", "GAG Script 3") end })
TabGAG:Button({ Title = "GAG Script 4 (Fruit Hub)", Callback = function() runScript("https://raw.githubusercontent.com/Thund3r-Code/ThunderHub/refs/heads/main/GrowAGarden", "GAG Script 4") end })
TabGAG:Button({ Title = "GAG Script 5 (Garden Auto)", Callback = function() runScript("https://raw.githubusercontent.com/120120120120120120120/sc/refs/heads/main/gag.lua", "GAG Script 5") end })
TabGAG:Button({ Title = "GAG Script 6 (Raito Hub)", Callback = function() runScript("https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script", "GAG Script 6") end })
TabGAG:Button({ Title = "GAG Script 7 (Pastebin Raw)", Callback = function() runScript("https://pastebin.com/raw/5cRUMzzX", "GAG Script 7") end })
TabGAG:Button({ Title = "GAG Script 8 (Jnkie Loader)", Callback = function() runScript("https://api.jnkie.com/api/v1/luascripts/public/4ad6a2d2335968486879c1b1a2dcefc6937ea63c8acb88e703a1ec95a4a146ea/download", "GAG Script 8") end })
TabGAG:Button({ Title = "GAG Script 9 (depthso Auto Farm)", Callback = function() runScript("https://raw.githubusercontent.com/Nyxarth910/Draconic-Hub-X/refs/heads/main/files/Evade/Overhaul.lua", "GAG Script 9") end })
TabGAG:Button({ Title = "GAG Script 10 (riican)", Callback = function() runScript("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/GrowAGarden", "GAG Script 10") end })

-- ============================================================================
-- TAB 2: Steal A Brainrot
-- ============================================================================
local TabSAB = Window:Tab({ Title = "Steal A Brainrot", Icon = "rbxassetid://10723415903" })

TabSAB:Button({ Title = "SAB Script 1 (Snipcola Gist)", Callback = function() runScript("https://gist.githubusercontent.com/snipcola/2be4691920e907c223243de4e9c277c3/raw/Steal%20a%20Brainrot.luau", "SAB Script 1") end })
TabSAB:Button({ Title = "SAB Script 2 (Jake Brock)", Callback = function() runScript("https://raw.githubusercontent.com/Jake-Brock/Scripts/main/Fw%20SAB.lua", "SAB Script 2") end })
TabSAB:Button({ Title = "SAB Script 3 (Luarmor Loader 1)", Callback = function() runScript("https://api.luarmor.net/files/v3/loaders/5cbfadfea337c7a00d249edd9dd6b270.lua", "SAB Script 3") end })
TabSAB:Button({ Title = "SAB Script 4 (Vercel Secure)", Callback = function() runScript("https://v0-fork-of-roblox-secure-hosting.vercel.app/raw.lua", "SAB Script 4") end })
TabSAB:Button({ Title = "SAB Script 5 (Luarmor Loader 2)", Callback = function() runScript("https://api.luarmor.net/files/v3/loaders/97c3f6db55a2cf72141537a85458e5a7.lua", "SAB Script 5") end })
TabSAB:Button({ Title = "SAB Script 6 (Dark Hub SAB)", Callback = function() runScript("https://raw.githubusercontent.com/Jayjayart/Sabscriptdarkhub.lua/refs/heads/main/darkhubstealabrainrotscript.lua", "SAB Script 6") end })
TabSAB:Button({ Title = "SAB Script 7 (Pie Hub V2)", Callback = function() runScript("https://raw.githubusercontent.com/UniversalScriptHub/PieScriptV2/refs/heads/main/PieV2LoaderSAB", "SAB Script 7") end })
TabSAB:Button({ Title = "SAB Script 8 (Arbix Hub OP)", Callback = function() runScript("https://raw.githubusercontent.com/Youifpg/Steal-a-Brainrot-op/refs/heads/main/Arbixhub-obfuscated.lua", "SAB Script 8") end })
TabSAB:Button({ Title = "SAB Script 9 (Pastefy Raw)", Callback = function() runScript("https://pastefy.app/YcuBwWGa/raw", "SAB Script 9") end })
TabSAB:Button({ Title = "SAB Script 10 (Gumanba SAB)", Callback = function() runScript("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/StealaBrainrot", "SAB Script 10") end })

-- ============================================================================
-- TAB 3: Brookhaven RP
-- ============================================================================
local TabBH = Window:Tab({ Title = "Brookhaven RP", Icon = "rbxassetid://10723415903" })

TabBH:Button({ Title = "Brookhaven Script 1", Callback = function() runScript("https://raw.githubusercontent.com/IceMelted/IceHub/main/Brookhaven.lua", "Brookhaven Script 1") end })
TabBH:Button({ Title = "Brookhaven Script 2", Callback = function() runScript("https://raw.githubusercontent.com/M1ZZ001/BrookhavenRPAirplane/main/BrookhavenRPAirplane", "Brookhaven Script 2") end })
TabBH:Button({ Title = "Brookhaven Script 3", Callback = function() runScript("https://raw.githubusercontent.com/RamonScript/Brookhaven/main/Script.lua", "Brookhaven Script 3") end })
TabBH:Button({ Title = "Brookhaven Script 4", Callback = function() runScript("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Brookhaven%20RP", "Brookhaven Script 4") end })
TabBH:Button({ Title = "Brookhaven Script 5", Callback = function() runScript("https://raw.githubusercontent.com/REDzHUB/BrookhavenRP/main/REDzHUB.lua", "Brookhaven Script 5") end })
TabBH:Button({ Title = "Brookhaven Script 6", Callback = function() runScript("https://raw.githubusercontent.com/M1ZZ001/BrookhavenRP/main/BrookhavenRP", "Brookhaven Script 6") end })
TabBH:Button({ Title = "Brookhaven Script 7", Callback = function() runScript("https://raw.githubusercontent.com/Chavez-Hub/ChavezHub/main/BrookhavenRP", "Brookhaven Script 7") end })
TabBH:Button({ Title = "Brookhaven Script 8", Callback = function() runScript("https://raw.githubusercontent.com/Darkness-Hub/DarknessHub/main/BrookhavenRP", "Brookhaven Script 8") end })
TabBH:Button({ Title = "Brookhaven Script 9", Callback = function() runScript("https://raw.githubusercontent.com/SpeedHubX/SpeedHubX/main/BrookhavenRP", "Brookhaven Script 9") end })
TabBH:Button({ Title = "Brookhaven Script 10", Callback = function() runScript("https://raw.githubusercontent.com/VortexHub/Vortex/main/Brookhaven.lua", "Brookhaven Script 10") end })

-- ============================================================================
-- TAB 4: Emergency Hamburg
-- ============================================================================
local TabEH = Window:Tab({ Title = "Emergency Hamburg", Icon = "rbxassetid://10723415903" })

TabEH:Button({ Title = "Beanzz Hub (EH Main)", Callback = function() runScript("https://raw.githubusercontent.com/BeanzzHub/EmergencyHamburg/main/BeanzzHub.lua", "Beanzz Hub") end })
TabEH:Button({ Title = "SorinScripts Autofarm", Callback = function() runScript("https://api.sorinscripts.xyz/scripts/autofarm.lua", "Sorin Autofarm") end })
TabEH:Button({ Title = "DP Hub EH", Callback = function() runScript("https://raw.githubusercontent.com/COOLXPLOI/DP-HUB-coolxploi/refs/heads/main/EH.lua", "DP Hub") end })
TabEH:Button({ Title = "Vortex Main Loader", Callback = function() runScript("https://api.getvortex.vip/scripts/VortexMain", "Vortex Main") end })
TabEH:Button({ Title = "Dexoreh EH Script", Callback = function() runScript("https://dexoreh.com/dexoreh.lua", "Dexoreh EH") end })
TabEH:Button({ Title = "OMEGA Emergency Hamburg", Callback = function() runScript("https://raw.githubusercontent.com/Omegascriptes/Emergency-hamburg/refs/heads/main/emergencyhamburg%20OMEGA.txt", "OMEGA Script") end })
TabEH:Button({ Title = "Froxy AutoRob Skibidi", Callback = function() runScript("https://raw.githubusercontent.com/Ocean-Service/Froxy.AutoRob/refs/heads/main/skibidi.net", "Froxy AutoRob") end })
TabEH:Button({ Title = "Graphibisbang EH", Callback = function() runScript("https://raw.githubusercontent.com/graphibisbang/Emergency-Hamburg/main/Emergency-Hamburg.lua", "Graphibisbang EH") end })
TabEH:Button({ Title = "Pastebin Raw Script", Callback = function() runScript("https://pastebin.com/raw/kWhkbCir", "Pastebin EH Script") end })
TabEH:Button({ Title = "MrSxxo OG Sniper Data", Callback = function() runScript("https://raw.githubusercontent.com/MrSxxo/data/refs/heads/main/ogsniper", "OG Sniper") end })
TabEH:Button({ Title = "Sneekys EH Main", Callback = function() runScript("https://sneekysscripts.uk/Scripts/Emergency_Hamburg/main.luau", "Sneekys EH") end })

-- ============================================================================
-- TAB 5: Murder Mystery 2
-- ============================================================================
local TabMM2 = Window:Tab({ Title = "Murder Mystery 2", Icon = "rbxassetid://10723415903" })

TabMM2:Button({ Title = "MM2 Script 1", Callback = function() runScript("https://raw.githubusercontent.com/GwnS/MM2/main/GwnS.lua", "MM2 Script 1") end })
TabMM2:Button({ Title = "MM2 Script 2", Callback = function() runScript("https://raw.githubusercontent.com/NeonScript/MM2/main/Neon.lua", "MM2 Script 2") end })
TabMM2:Button({ Title = "MM2 Script 3", Callback = function() runScript("https://raw.githubusercontent.com/VortexHub/Vortex/main/MM2.lua", "MM2 Script 3") end })
TabMM2:Button({ Title = "MM2 Script 4", Callback = function() runScript("https://raw.githubusercontent.com/Darkness-Hub/DarknessHub/main/MM2", "MM2 Script 4") end })
TabMM2:Button({ Title = "MM2 Script 5", Callback = function() runScript("https://raw.githubusercontent.com/IceMelted/IceHub/main/MM2.lua", "MM2 Script 5") end })
TabMM2:Button({ Title = "MM2 Script 6", Callback = function() runScript("https://raw.githubusercontent.com/REDzHUB/MM2/main/REDzHUB.lua", "MM2 Script 6") end })
TabMM2:Button({ Title = "MM2 Script 7", Callback = function() runScript("https://raw.githubusercontent.com/SpeedHubX/SpeedHubX/main/MM2", "MM2 Script 7") end })
TabMM2:Button({ Title = "MM2 Script 8", Callback = function() runScript("https://raw.githubusercontent.com/Chavez-Hub/ChavezHub/main/MM2", "MM2 Script 8") end })
TabMM2:Button({ Title = "MM2 Script 9", Callback = function() runScript("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/MM2", "MM2 Script 9") end })

-- ============================================================================
-- TAB 6: Evade
-- ============================================================================
local TabEvade = Window:Tab({ Title = "Evade", Icon = "rbxassetid://10723415903" })

TabEvade:Button({ Title = "Emerson Creator Script", Callback = function() runScript("https://raw.githubusercontent.com/Emerson2-creator/Scripts-Roblox/refs/heads/main/EvadeScript.lua", "Emerson Evade") end })
TabEvade:Button({ Title = "Pastebin Raw 5cRUMzzX", Callback = function() runScript("https://pastebin.com/raw/5cRUMzzX", "Pastebin Evade") end })
TabEvade:Button({ Title = "Azzyy Evade", Callback = function() runScript("https://raw.githubusercontent.com/azzyy1/evade---azzy/refs/heads/main/evade%20-%20azzy", "Azzyy Evade") end })
TabEvade:Button({ Title = "Jnkie Public 1", Callback = function() runScript("https://api.jnkie.com/api/v1/luascripts/public/4ad6a2d2335968486879c1b1a2dcefc6937ea63c8acb88e703a1ec95a4a146ea/download", "Jnkie Evade 1") end })
TabEvade:Button({ Title = "Luarmor Loader 97c3", Callback = function() runScript("https://api.luarmor.net/files/v3/loaders/97c3f6db55a2cf72141537a85458e5a7.lua", "Luarmor Evade") end })
TabEvade:Button({ Title = "LaztDex Evade", Callback = function() runScript("https://github.com/imc72s/LaztDex/raw/refs/heads/main/EvadeScriptLaztDex", "LaztDex Evade") end })
TabEvade:Button({ Title = "Jnkie Loader db030a", Callback = function() runScript("https://api.jnkie.com/api/v1/loaders/public/db030a8e7623efa9647d6a9864f76d6b3234d17500326b41c81a7245d35ab29e/download", "Jnkie Evade 2") end })
TabEvade:Button({ Title = "zReal-King Main", Callback = function() runScript("https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua", "zReal-King Evade") end })
TabEvade:Button({ Title = "Moondiety Loader", Callback = function() runScript("https://moondiety.com/loader", "Moondiety Loader") end })
TabEvade:Button({ Title = "Draconic Hub Overhaul", Callback = function() runScript("https://raw.githubusercontent.com/Nyxarth910/Draconic-Hub-X/refs/heads/main/files/Evade/Overhaul.lua", "Draconic Hub") end })

-- ============================================================================
-- TAB 7: Blox Fruits
-- ============================================================================
local TabBF = Window:Tab({ Title = "Blox Fruits", Icon = "rbxassetid://10723415903" })

TabBF:Button({ Title = "Arcylic Update", Callback = function() runScript("https://raw.githubusercontent.com/bloxfruitsnokey/Arcylic/refs/heads/main/ARC/update.luau", "Arcylic Blox Fruits") end })
TabBF:Button({ Title = "4479 Hub Script", Callback = function() runScript("https://raw.githubusercontent.com/4479cantcode/4479Hub/refs/heads/main/Script.lua", "4479 Hub") end })
TabBF:Button({ Title = "MeoLazy Script V1", Callback = function() runScript("https://raw.githubusercontent.com/MeoLazy/Script/refs/heads/main/V1.lua", "MeoLazy V1") end })
TabBF:Button({ Title = "QuantumOnyx Official", Callback = function() runScript("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua", "QuantumOnyx") end })
TabBF:Button({ Title = "QuantumOnyx Mirror", Callback = function() runScript("https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/QuantumOnyx.lua", "QuantumOnyx Mirror") end })
TabBF:Button({ Title = "Luarmor Blox Fruits", Callback = function() runScript("https://api.luarmor.net/files/v3/loaders/97c3f6db55a2cf72141537a85458e5a7.lua", "Luarmor Blox Fruits") end })
TabBF:Button({ Title = "Kenniel123 BloxFruits", Callback = function() runScript("https://raw.githubusercontent.com/Kenniel123/BloxFruits/refs/heads/main/BloxFruits", "Kenniel123 Blox Fruits") end })
TabBF:Button({ Title = "Redz9999 Blox Fruits", Callback = function() runScript("https://raw.githubusercontent.com/RobloxScriptsExploit/Blox-Fruits/refs/heads/main/redz9999.lua", "Redz9999 Blox Fruits") end })
TabBF:Button({ Title = "Vector Hub Loader", Callback = function() runScript("https://raw.githubusercontent.com/AAwful/VectorHub/main/Loader.lua", "Vector Hub") end })

-- ============================================================================
-- TAB 8: Fisch
-- ============================================================================
local TabFisch = Window:Tab({ Title = "Fisch", Icon = "rbxassetid://10723415903" })

TabFisch:Button({ Title = "FISH v2 (Gist)", Callback = function() runScript("https://gist.githubusercontent.com/Mur4exe/af4ce068bd4910ff0e5715cd0215c143/raw/f3f36618e23d29d064618d1c573ab29e2e407f71/F%25C4%25B0SHv2.lua", "FISH v2") end })
TabFisch:Button({ Title = "Cayden305 Obfuscated", Callback = function() runScript("https://raw.githubusercontent.com/cayden305/Scripts/refs/heads/main/FischObfuscated.lua", "Cayden305 Fisch") end })
TabFisch:Button({ Title = "Y-HUB Fisch", Callback = function() runScript("https://raw.githubusercontent.com/Luarmor123/community-Y-HUB/refs/heads/main/Fisch-YHUB", "Y-HUB Fisch") end })
TabFisch:Button({ Title = "Superman245 SC2", Callback = function() runScript("https://raw.githubusercontent.com/Superman245/sc2/refs/heads/main/s6", "Superman245 Fisch") end })
TabFisch:Button({ Title = "Gitlab LoadUB", Callback = function() runScript("https://gitlab.com/r_soft/main/-/raw/main/LoadUB.lua", "LoadUB Fisch") end })
TabFisch:Button({ Title = "Speed Hub X Fisch", Callback = function() runScript("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", "Speed Hub X") end })
TabFisch:Button({ Title = "SpaceHub Multi", Callback = function() runScript("https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/Multi", "SpaceHub Multi") end })
TabFisch:Button({ Title = "Raito Hub Fisch", Callback = function() runScript("https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script", "Raito Hub") end })
TabFisch:Button({ Title = "Radeon Hub Main", Callback = function() runScript("https://raw.githubusercontent.com/RadeonScripts/RadeonHubMain/main/MainRobloxExploit", "Radeon Hub") end })

-- ============================================================================
-- TAB 9: Rivals
-- ============================================================================
local TabRivals = Window:Tab({ Title = "Rivals", Icon = "rbxassetid://10723415903" })

TabRivals:Button({ Title = "Jnkie Public Rivals", Callback = function() runScript("https://api.jnkie.com/api/v1/luascripts/public/cfda26d328e040be36fe4d7a94035e4c185bd0bea4339112065b20f5062faa35/download", "Jnkie Rivals") end })
TabRivals:Button({ Title = "YesD3v Rivals", Callback = function() runScript("https://raw.githubusercontent.com/YesD3v/rivals/refs/heads/main/script", "YesD3v Rivals") end })
TabRivals:Button({ Title = "GZSSF Rivals.gg", Callback = function() runScript("https://raw.githubusercontent.com/GZSSF/Rivals/refs/heads/main/Rivalsgg", "GZSSF Rivals") end })
TabRivals:Button({ Title = "Imshrak Rivals Main", Callback = function() runScript("https://raw.githubusercontent.com/imshrak/rivals/refs/heads/main/main", "Imshrak Rivals") end })
TabRivals:Button({ Title = "Sneekys Rivals", Callback = function() runScript("https://sneekysscripts.uk/Scripts/Rivals/main.luau", "Sneekys Rivals") end })
TabRivals:Button({ Title = "Mob Hub For Rivals", Callback = function() runScript("https://raw.githubusercontent.com/bapparaja12345-star/Mob_Hub_For_Rivals/main/script.obfuscated.luau", "Mob Hub Rivals") end })
TabRivals:Button({ Title = "Pastebin Raw UmCy5pne", Callback = function() runScript("https://pastebin.com/raw/UmCy5pne", "Pastebin Rivals") end })
TabRivals:Button({ Title = "Luarmor Loader Rivals", Callback = function() runScript("https://api.luarmor.net/files/v3/loaders/97c3f6db55a2cf72141537a85458e5a7.lua", "Luarmor Rivals") end })
TabRivals:Button({ Title = "ClientSkins Rivals", Callback = function() runScript("https://raw.githubusercontent.com/VisualRobloxScripts/ClientSkins/main/Rivals.lua", "ClientSkins Rivals") end })

-- ============================================================================
-- TAB 10: Prison Life
-- ============================================================================
local TabPL = Window:Tab({ Title = "Prison Life", Icon = "rbxassetid://10723415903" })

TabPL:Button({ Title = "Zenss555a Prison Life", Callback = function() runScript("https://raw.githubusercontent.com/zenss555a/script/refs/heads/main/Prison-Life.lua", "Zenss555a PL") end })
TabPL:Button({ Title = "PRISONWARE v1.3", Callback = function() runScript("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt", "PRISONWARE") end })
TabPL:Button({ Title = "Prison.gg Private", Callback = function() runScript("https://raw.githubusercontent.com/kxtOnYT/prison.gg/refs/heads/main/private.lua", "Prison.gg") end })
TabPL:Button({ Title = "2xrW Return Hub", Callback = function() runScript("https://raw.githubusercontent.com/2xrW/return/refs/heads/main/hub", "2xrW Hub") end })
TabPL:Button({ Title = "XYZ Loader PL", Callback = function() runScript("https://raw.githubusercontent.com/f34p9fh3a4/.xyz/refs/heads/main/loader.lua", "XYZ Loader") end })
TabPL:Button({ Title = "PrizzLife Admin", Callback = function() runScript("https://raw.githubusercontent.com/wrtrteyteey23ee/PrizzLife/refs/heads/main/pladmin.lua", "PrizzLife Admin") end })
TabPL:Button({ Title = "Kick Sploit Raw", Callback = function() runScript("https://rawscripts.net/raw/Prison-Life-KICK-SPLOIT-244049", "Kick Sploit") end })
TabPL:Button({ Title = "BloxPaste Admin", Callback = function() runScript("https://bloxpaste.com/lua/prison-life-admin.lua", "BloxPaste Admin") end })
TabPL:Button({ Title = "FlashHub Prison Life", Callback = function() runScript("https://raw.githubusercontent.com/scripture2025/FlashHub/refs/heads/main/PrisonLife", "FlashHub PL") end })
TabPL:Button({ Title = "Lumo Hub Keyless", Callback = function() runScript("https://rawscripts.net/raw/Universal-Script-Lumo-Hub-prison-life-Keyless-117195", "Lumo Hub") end })
TabPL:Button({ Title = "Paste RS RoUb2", Callback = function() runScript("https://paste.rs/RoUb2", "Paste RS PL") end })

-- ============================================================================
-- TAB 11: 99 Nights in Forest
-- ============================================================================
local Tab99N = Window:Tab({ Title = "99 Nights in Forest", Icon = "rbxassetid://10723415903" })

Tab99N:Button({ Title = "Kixdev 99NITF Script", Callback = function() runScript("https://raw.githubusercontent.com/Kixdev/99NITF/main/script", "Kixdev 99NITF") end })
Tab99N:Button({ Title = "Voidware Snow Biome", Callback = function() runScript("https://rawscripts.net/raw/99-Nights-in-the-Forest-SNOW-BIOME-KEYLESS-BEST-99-NIGHTS-IN-THE-FOREST-SCRIPT-VOIDWARE-47274", "Voidware 99NITF") end })
Tab99N:Button({ Title = "Kenniel123 99 Nights", Callback = function() runScript("https://raw.githubusercontent.com/Kenniel123/99-Nights-in-the-Forest/refs/heads/main/99%20Nights%20in%20the%20Forest", "Kenniel123 99NITF") end })
Tab99N:Button({ Title = "Pastefy xKUiQ3CI Raw", Callback = function() runScript("https://pastefy.app/xKUiQ3CI/raw", "Pastefy 99NITF") end })
Tab99N:Button({ Title = "Adib Hub 99 Night", Callback = function() runScript("https://raw.githubusercontent.com/adibhub1/99-nighit-in-forest/refs/heads/main/99%20night%20in%20forest", "Adib Hub 99NITF") end })
Tab99N:Button({ Title = "Lumin Hub Loader", Callback = function() runScript("https://lumin-hub.lol/loader.lua", "Lumin Hub") end })
Tab99N:Button({ Title = "Foxname Hub", Callback = function() runScript("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/FoxnameHub.lua", "Foxname Hub") end })
Tab99N:Button({ Title = "Ringta 99 Nights", Callback = function() runScript("https://raw.githubusercontent.com/wehibuyfgyuwe/99nights.github.io/refs/heads/main/ringta.lua", "Ringta 99NITF") end })
Tab99N:Button({ Title = "MarcillisePex GUI", Callback = function() runScript("https://raw.githubusercontent.com/TheDarkoneMarcillisePex/Other-Scripts/refs/heads/main/99%20Nights%20In%20The%20Forest%20GUI", "MarcillisePex GUI") end })
Tab99N:Button({ Title = "BronxWare Forest", Callback = function() runScript("https://raw.githubusercontent.com/scriptsomega/99nightforforest/refs/heads/main/BronxWare", "BronxWare Forest") end })
Tab99N:Button({ Title = "Pigeon Hub Auto Farm", Callback = function() runScript("https://raw.githubusercontent.com/collonroger/pigeonhub/refs/heads/main/autofarmdiamonds.lua", "Pigeon Hub Diamonds") end })
Tab99N:Button({ Title = "Pastebin Raw quQbccDD", Callback = function() runScript("https://pastebin.com/raw/quQbccDD", "Pastebin 99NITF") end })
Tab99N:Button({ Title = "Iliankytb Best 99 Nights", Callback = function() runScript("https://raw.githubusercontent.com/Iliankytb/Iliankytb/main/Best99NightsInTheForest", "Iliankytb 99NITF") end })

notify("Necomu Hub", "Tüm sekmeler ve scriptler başarıyla yüklendi!")
