local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("GameGuy's Script Hub", "Ocean")
local UniversalTab = Window:NewTab("Scripts")
local UniversalSection1 = UniversalTab:NewSection("General")
local UniversalSection2 = UniversalTab:NewSection("Funky Friday")
local UniversalSection3 = UniversalTab:NewSection("Pet Simulator X")
local UniversalSection4 = UniversalTab:NewSection("Clicker Simulator")
local UniversalSection5 = UniversalTab:NewSection("Other")
local UniversalTab = Window:NewTab("Settings")
local UniversalSection6 = UniversalTab:NewSection("Settings")
local UniversalSection7 = UniversalTab:NewSection("Credits : Efe Tahça")
UniversalSection1:NewButton("Saza Hub", "Executes Saza Hub", function()
    loadstring(game:HttpGet"https://rawscripts.net/raw/SAZA-HUB_496")()
end)
UniversalSection1:NewButton("V.G Hub", "Executes V.G Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"))()
end)
UniversalSection1:NewButton("Shiny Tool", "Executes ShinyTool", function() --Creates a button
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XLinestX/ShinyToolV2/main/Loader.lua"))()
end)
UniversalSection3:NewButton("BK Hack", " Executes BK Hack", function() --Creates a button
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BLACKGAMER1221/Pet-Simulator-X/main/BK%20Pet.lua"))()
end)
UniversalSection1:NewButton("Soggyware", "Executes Soggyware", function() --Creates a button
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SunkenMuch/Soggyware/main/Main',true))()
end)
UniversalSection2:NewButton("Funky Friday Autoplayer", "Funky Friday Script", function() --Creates a button
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua"))()
end)
UniversalSection4:NewButton("LaDamage", "Clicker Simulator Script", function() --Creates a button
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/releases/main/Clicker-Simulator.lua"))()
end)
UniversalSection5:NewButton("Universal", "A script that works in all games with general functions.", function() --Creates a button
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("                               Misc GUI  |  By S I L X N C E", "Ocean")
local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Player Modifications")

Section:NewButton("Anti-AFK", "Never get kicked for being idle", function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end)

Section:NewSlider("WalkSpeed", "Modifies the Walk Speed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("Jump Power", "Modifies the Jump Power", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewButton("Ctrl Click Teleport", "I dont know what to put here :p", function()
    local Plr = game:GetService("Players").LocalPlayer
    local Mouse = Plr:GetMouse()
    Mouse.Button1Down:connect(function()
    if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
    if not Mouse.Target then return end
    Plr.Character:MoveTo(Mouse.Hit.p)
    end)
end)

Section:NewButton("Infinite Jump", "Unlimited Jumps", function()
    local InfiniteJumpEnabled = true
    game:GetService("UserInputService").JumpRequest:connect(function()
       if InfiniteJumpEnabled then
           game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
       end
    end)
end)

Section:NewButton("No Clip (Press E to Toggle)", "Walk Through Shit", function()
    noclip = false
    game:GetService('RunService').Stepped:connect(function()
    if noclip then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
    plr = game.Players.LocalPlayer
    mouse = plr:GetMouse()
    mouse.KeyDown:connect(function(key)
    if key == "e" then
    noclip = not noclip
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
Section:NewKeybind("Hide (Default U)", "Hide", Enum.KeyCode.U, function()
	Library:ToggleUI()
end)
end)
end)
UniversalSection1:NewButton("Supported Games (Click F9 after clicking this)", "Shows Supported Games.", function() --Creates a button
    print("Normal Scripts : Funky Friday, Pet Simulator X | V.G Hub : https://raw.githubusercontent.com/1201for/Funs-and-Features/main/Features-and-games | Saza Hub : Blox Fruits, Pet Simulator X, Anime Clicker Simulator, Build A Boat, King Legacy, Two Piece | Shiny Tool : Pet Simulator X, Clicker Simulator, Magnet Simulator 2, Pet Legacy, Donate Me Pls, Arsenal | Soggyware : Anime Dimensions, Rebirth Champions X, Tapper Simulator, Anime Clicker Simulator, Anime Tappers, Slap Battles, Farm Life, Clicking Simulator, Burn Everything Simulator, A One Piece Game, Collect All Pets, Untitled Tag Game, Boom Simulator, Pet Simulator X, Chicken Life, Smashing Simulator X, Slashing Simulator, Timber, Big Man Simulator, Tapping Legends X, Pet Legacy, Sonic Speed Simulator")
end)
UniversalSection6:NewKeybind("Hide (Default P)", "Hide", Enum.KeyCode.P, function()
	Library:ToggleUI()
end)
