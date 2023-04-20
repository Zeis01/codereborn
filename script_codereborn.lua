-- CODE REBORN v1.0.1
-- BY CCODE96
-- POLISH VERSION

-- EXTENSIONS (PLUGINY DO SKRYPTU)
-- NIE USUWAC TEGO!!
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Code Reborn", "GrapeTheme")
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

-- SKRYPT
local main = Window:NewTab("Popularne skrypty")
local sekcjaSkrypty = main:NewSection("Popularne skrypty do robloxa")

-- SEKCJA: POPULARNE SKRYPTY
sekcjaSkrypty:NewButton("Infinite Yield", "Ten przycisk wstrzykuje skrypt Infinite Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

sekcjaSkrypty:NewButton("Dex", "Ten przycisk wstrzykuje skrypt Dex", function()
    loadstring(game:GetObjects("rbxassetid://492016519")[1].Source)()
end)

-- SEKCJA: PLAYER
local Player = Window:NewTab("Player")
local sekcjaPlayer = Player:NewSection("Player")

sekcjaPlayer:NewSlider("Predkosc", "Ustawia to predkosc gracza", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

sekcjaPlayer:NewSlider("Sila wyskoku", "Ustawia to sile wyskoku gracza", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

sekcjaPlayer:NewButton("Reset predkosci i sily wyskoku", "Resetuje predkosc i sile wyskoku do stanu poczatkowego", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

-- SEKCJA: TROLL
local Troll = Window:NewTab("Troll")
local sekcjaTroll = Troll:NewSection("Skrypt z funkcja chatu")

sekcjaTroll:NewButton("Skrypt", "Ten skrypt wstrzykuje skrypt na trollowanie chatu", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
end)

-- SEKCJA: CREDITS
local Credits = Window:NewTab("Credits")
local sekcjaCredits = Credits:NewSection("Developer skrypta:")

sekcjaCredits:NewLabel("Discord: ccode96#9906")
